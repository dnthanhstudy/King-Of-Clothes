package com.laptrinhjavaweb.service.impl.banhang;

import com.laptrinhjavaweb.entity.BienTheEntity;
import com.laptrinhjavaweb.entity.GioHangChiTietEntity;
import com.laptrinhjavaweb.entity.GioHangEntity;
import com.laptrinhjavaweb.entity.HoaDonChiTietEntity;
import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.model.request.ThayDoiSoLuongGioHangRequest;
import com.laptrinhjavaweb.model.response.GioHangResponse;
import com.laptrinhjavaweb.model.response.TongTienResponse;
import com.laptrinhjavaweb.model.response.TongTienResponseClass;
import com.laptrinhjavaweb.repository.BienTheRepository;
import com.laptrinhjavaweb.repository.GioHangChiTietRepository;
import com.laptrinhjavaweb.repository.GioHangRepository;
import com.laptrinhjavaweb.repository.HoaDonChiTietRepository;
import com.laptrinhjavaweb.repository.HoaDonRepository;
import com.laptrinhjavaweb.repository.KhachHangRepository;
import com.laptrinhjavaweb.service.GioHangService;
import com.laptrinhjavaweb.support.supportgiaohang.TrangThaiHoaDon;
import com.laptrinhjavaweb.utils.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GioHangServiceImpl implements GioHangService {

    @Autowired
    GioHangChiTietRepository gioHangChiTietRepository;
    @Autowired
    HoaDonRepository hoaDonRepository;

    @Autowired
    KhachHangRepository khachHangRepository;

    @Autowired
    HoaDonChiTietRepository hoaDonChiTietRepository;

    @Autowired
    BienTheRepository bienTheRepository;

    @Autowired
    GioHangRepository gioHangRepository;


    @Override
    @Transactional
    public ResponseObject thayDoiSoLuong(ThayDoiSoLuongGioHangRequest request) {
        try {
            GioHangChiTietEntity gioHangChiTiet = gioHangChiTietRepository.findById(request.getIdGhct()).orElse(null);
            if (gioHangChiTiet==null){
                return new ResponseObject("Không có giỏ hàng chi tiết này");
            }
            gioHangChiTiet.setSoLuong(request.getSoLuong());
            gioHangChiTiet = gioHangChiTietRepository.save(gioHangChiTiet);
            request.setSoLuong(gioHangChiTiet.getSoLuong());
            request.setTongTien(gioHangChiTiet.getTongTien());
            return new ResponseObject(request);
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public List<GioHangResponse> dsGioHangChiTietByIdKh(Long idKH) {
        return gioHangChiTietRepository.dsGioHangChiTietByIdKh(idKH);
    }
    @Override
    public TongTienResponse tongTienTheoGioHangChiTiet(List<Long> lstGhct) {
        return gioHangChiTietRepository.tongTienTheoGioHangChiTiet( lstGhct);
    }

    @Override
    @Transactional
    public ResponseObject datHang(Long idkh, List<Long> dsghct) {
//        HoaDonChiTietEntity hoaDon = hoaDonRepository.getHoaDonMoiTaoByIdkh(idkh);
//        if (hoaDon!=null){
//            return new ResponseObject("Đang có hoá đơn trạng thái chưa giao hàng,vui lòng xem lại");
//        }
        KhachHangEntity khachHang = khachHangRepository.findById(idkh).orElse(null);
        HoaDonEntity hoaDon = new HoaDonEntity();
        hoaDon.setKhachHang(khachHang);
        hoaDon.setTrangThai(TrangThaiHoaDon.CHUANBIDATHANG);
        hoaDon = hoaDonRepository.save(hoaDon);
        hoaDon.setMa("HD"+hoaDon.getId());
        hoaDonRepository.save(hoaDon);
        for (GioHangChiTietEntity gioHangChiTiet:gioHangChiTietRepository.dsGioHangChiTiet(dsghct)) {
            BienTheEntity bienThe = gioHangChiTiet.getBienThe();
            HoaDonChiTietEntity hoaDonChiTiet = new HoaDonChiTietEntity();
            hoaDonChiTiet.setBienThe(bienThe);
            hoaDonChiTiet.setHoaDon(hoaDon);
            hoaDonChiTiet.setSoLuong(gioHangChiTiet.getSoLuong());
            hoaDonChiTiet.setGia(bienThe.getGia());
            hoaDonChiTiet.setHoaDon(hoaDon);
            gioHangChiTiet.setTrangThai("PENDING");
            hoaDonChiTietRepository.save(hoaDonChiTiet);
        }
        return new ResponseObject("Đặt hàng thành công");
    }

    @Override
    @Transactional
    public Long themVaoGioHang(Long idkh, Long idBienThe,Integer quantity) {
        BienTheEntity bienThe = bienTheRepository.findById(idBienThe).orElse(null);
        KhachHangEntity khachHang = khachHangRepository.findById(idkh).orElse(null);
        assert khachHang != null;
        if (khachHang.getGioHangEntities()==null){
            GioHangEntity gioHang = new GioHangEntity();
            gioHang.setKhachHang(khachHang);
            gioHang.setTrangThai("ACTIVE");
            khachHang.setGioHangEntities(gioHangRepository.save(gioHang));
        }
        GioHangChiTietEntity gioHangChiTiet = gioHangChiTietRepository.findGioHangChiTietEntitiesByBienThe_IdAndGioHang_KhachHang_IdAndTrangThai(idBienThe,idkh,"ACTIVE");
        if (gioHangChiTiet==null){
            gioHangChiTiet = new GioHangChiTietEntity();
            gioHangChiTiet.setBienThe(bienThe);
            gioHangChiTiet.setGioHang(khachHang.getGioHangEntities());
            gioHangChiTiet.setSoLuong(quantity);
            gioHangChiTiet.setTrangThai("ACTIVE");
        }else {
            gioHangChiTiet.setSoLuong(gioHangChiTiet.getSoLuong()+quantity);
        }
      gioHangChiTiet =   gioHangChiTietRepository.save(gioHangChiTiet);
        return gioHangChiTiet.getBienThe().getId();
    }

    @Override
    public GioHangResponse updateGioHangChiTiet(Long idghct, Long bienTheId) {
        GioHangChiTietEntity gioHangChiTiet = gioHangChiTietRepository.findById(idghct).orElse(null);
        assert gioHangChiTiet != null;
        gioHangChiTiet.setBienThe(bienTheRepository.findById(bienTheId).orElse(null));
        gioHangChiTietRepository.save(gioHangChiTiet);
        return gioHangChiTietRepository.getGioHangChiTietResponse(idghct);
    }

    @Override
    public String xoaGioHangChiTiet(Long idghct) {
        gioHangChiTietRepository.delete(gioHangChiTietRepository.findById(idghct).get());
        return "Xoá thành công";
    }

//
//    private BienThe getBienTheByDsThuocTinhChiTiet(List<Long> dsgtttid){
//        Long bienTheId = giaTriThuocTinhBienTheRepository.getIdBienTheByDsttbt(dsgtttid,dsgtttid.size());
//        return bienTheRepository.findById(bienTheId).orElse(null);
//    }
}

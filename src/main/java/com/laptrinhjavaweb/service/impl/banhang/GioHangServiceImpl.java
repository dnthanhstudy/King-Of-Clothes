package com.laptrinhjavaweb.service.impl.banhang;

import com.laptrinhjavaweb.entity.GioHangChiTietEntity;
import com.laptrinhjavaweb.model.request.ThayDoiSoLuongGioHangRequest;
import com.laptrinhjavaweb.model.response.GioHangResponse;
import com.laptrinhjavaweb.repository.GioHangChiTietRepository;
import com.laptrinhjavaweb.service.GioHangService;
import com.laptrinhjavaweb.utils.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
@Service
public class GioHangServiceImpl implements GioHangService {

    @Autowired
    GioHangChiTietRepository gioHangChiTietRepository;
    @Override
    @Transactional
    public ResponseObject thayDoiSoLuong(ThayDoiSoLuongGioHangRequest request) {
        try {
            GioHangChiTietEntity gioHangChiTiet = gioHangChiTietRepository.findById(request.getIdGhct()).orElse(null);
            if (gioHangChiTiet==null){
                return new ResponseObject("Không có giỏ hàng chi tiết này");
            }
            gioHangChiTiet.setSoLuong(gioHangChiTiet.getSoLuong() + request.getSoLuong());
              gioHangChiTietRepository.save(gioHangChiTiet);

            return new ResponseObject("Thay đổi số lượng thành công");
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public List<GioHangResponse> dsGioHangChiTietByIdKh(Long idKH) {
        return gioHangChiTietRepository.dsGioHangChiTietByIdKh(idKH);
    }
//
//    @Override
//    public BigDecimal tongTien(Long idKH) {
//
//        return null;
//    }
//
//    @Override
//    public BigDecimal tongTienTheoGioHangChiTiet(Long idKH, List<Long> lstGhct) {
//        return null;
//    }

//    @Override
//    public List<List<GioHangResponse>> dsGioHangChiaTheoSanPham(Long idKh) {
//        List<Long> dsIdSanPham = gioHangChiTietRepository.getDsIdSanPhamByKhachHang(idKh);
//        List<List<GioHangResponse>> dsGioHangChiaTheoSanPham = new ArrayList<>();
//        for (Long id: dsIdSanPham
//        ) {
//            dsGioHangChiaTheoSanPham.add(gioHangChiTietRepository.getDsspThuocTinhByIdSanPhamAndIdKh(id,idKh));
//        }
//        return dsGioHangChiaTheoSanPham;
//    }
//
//    @Override
//    @Transactional
//    public ResponseObject themVaoGioHang(Long idkh, List<Long> dsgtttid) {
//        BienThe bienThe = getBienTheByDsThuocTinhChiTiet(dsgtttid);
//        GioHang gioHang = gioHangRepository.findGioHangByIdkh(idkh);
////        for (GioHangChiTiet ghct:gioHang.getDsGioHangChiTiet()
////             ) {
////            if (ghct.getBienThe().getId()==bienThe.getId()){
////                return new ResponseObject("Đã có")
////            }
////        }
//        ResponseObject responseObject =  new ResponseObject(gioHangChiTietRepository.themVaoGioHang(gioHang.getId(),bienThe.getId()));
//        return responseObject;
////       // KhachHang khachHang = khachHangRepository.findById(idkh).orElse(null);
////        if (gioHang==null){
////            gioHang = new GioHang();
////            gioHang.setKhachHang(khachHangRepository.findById(idkh).orElse(null));
////            gioHang = gioHangRepository.save(gioHang);
////        }
////        GioHangChiTiet gioHangChiTiet = gioHangChiTietRepository.findGioHangChiTietByBienTheAndGioHang(bienThe,gioHang);
////        if (gioHangChiTiet==null){
////            gioHangChiTiet = new GioHangChiTiet(gioHang,bienThe,1,1);
////            gioHangChiTietRepository.save(gioHangChiTiet);
////            return new ResponseObject("Đã thêm vào giỏ hàng");
////        }else{
////            return new ResponseObject("Đã có sản phẩm này trong giỏ hàng");
////        }
//    }
//
//
//    private BienThe getBienTheByDsThuocTinhChiTiet(List<Long> dsgtttid){
//        Long bienTheId = giaTriThuocTinhBienTheRepository.getIdBienTheByDsttbt(dsgtttid,dsgtttid.size());
//        return bienTheRepository.findById(bienTheId).orElse(null);
//    }
}

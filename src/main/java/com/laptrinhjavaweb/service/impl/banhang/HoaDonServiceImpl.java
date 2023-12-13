package com.laptrinhjavaweb.service.impl.banhang;


import com.laptrinhjavaweb.converter.CaLamConverter;
import com.laptrinhjavaweb.entity.CaLamEntity;
import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.response.HoaDonChiTietResponse;
import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.model.response.TrangThaiGiaoHangResponse;
import com.laptrinhjavaweb.model.response.hoadon.AllThongTinHoaDon;
import com.laptrinhjavaweb.model.response.hoadon.HDCTResponse;
import com.laptrinhjavaweb.model.response.hoadon.ThongTinHoaDonResponse;
import com.laptrinhjavaweb.model.response.hoadon.TongTienResponse;
import com.laptrinhjavaweb.repository.*;
import com.laptrinhjavaweb.response.CaLamResponse;
import com.laptrinhjavaweb.service.HoaDonService;
import com.laptrinhjavaweb.support.supportgiaohang.TrangThaiHoaDon;
import com.laptrinhjavaweb.utils.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class HoaDonServiceImpl implements HoaDonService {

    @Autowired
    GioHangRepository gioHangRepository;

    @Autowired
    HoaDonRepository hoaDonRepository;

    @Autowired
    KhachHangRepository khachHangRepository;

    @Autowired
    GioHangChiTietRepository gioHangChiTietRepository;

    @Autowired
    private CaLamRepository caLamRepository;

    @Autowired
    private CaLamConverter caLamConverter;

//    @Autowired
//    BienTheRepository bienTheRepository;

    @Autowired
    HoaDonChiTietRepository hoaDonChiTietRepository;

    @Autowired
    ThongTinMuaHangRepository thongTinMuaHangRepository;

    @Autowired
    TrangThaiGiaoHangRepository trangThaiGiaoHangRepository;
    
//    @Autowired
//    HoaDonConverter hoaDonConverter;

    @Override
    public void saveHoaDon(HoaDonEntity hoaDon) {
        hoaDonRepository.save(hoaDon);
    }

    @Override
    public HoaDonEntity findById(Long idhd) {
        return hoaDonRepository.findById(idhd).orElse(null);
    }



    @Override
    public List<HoaDonChiTietResponse> findHoaDonMoiDat(Long idkh) {
        return hoaDonChiTietRepository.getHoaDonMoiTaoByIdkh(idkh);
    }

    @Override
    public List<HoaDonChiTietResponse> dsHoaDonChiTietByIdHoaDon(Long idhd) {
        return hoaDonChiTietRepository.dsHoaDonChiTietByIdHoaDon(idhd);
    }

    @Override
    public TongTienResponse tongTienTheoHoaDon(Long idhd) {
        return hoaDonRepository.tongTienByHoaDon(idhd);
    }

    @Override
    public List<HoaDonResponse> dsHoaDonOnline() {
        return hoaDonRepository.dsHoaDonOnline();
    }

    @Override
    public String thayDoiTrangThaiHoaDon(Long idhd, String trangThai) {
        try{
            HoaDonEntity hoaDon = hoaDonRepository.findById(idhd).orElse(null);
            assert hoaDon != null;
            // TrangThaiHoaDonEnum
            hoaDon.setTrangThai(trangThai);
            hoaDonRepository.save(hoaDon);
                return "Thay đổi trạng thái thành công";
        }catch (Exception e){
            return "Có lỗi xảy ra";
        }
    }

    @Override
    public String thayDoiTrangThaiHoaDon(Long idhd, String trangThai,String luuy) {
        try{
            HoaDonEntity hoaDon = hoaDonRepository.findById(idhd).orElse(null);
            assert hoaDon != null;
            // TrangThaiHoaDonEnum
            hoaDon.setTrangThai(trangThai);
            hoaDon.setMoTa(luuy);
            hoaDonRepository.save(hoaDon);
            return "Thay đổi trạng thái thành công";
        }catch (Exception e){
            return "Có lỗi xảy ra";
        }
    }

    @Override
    public List<HoaDonResponse> dsHoaDonTheoTrangThai(Long idkh, String trangThai) {
        return hoaDonRepository.findAllByKhachHang_IdAndTrangThai(idkh,trangThai);
    }

    @Override
    public List<HoaDonResponse> dsHoaDonDaMua(Long idkh) {
        List<String> dsTrangThai = new ArrayList<>();
        dsTrangThai.add(TrangThaiHoaDon.CHUANBIDATHANG);
        return hoaDonRepository.findAllByKhachHang_IdAndTrangThaiNotInOrderByNgayDat(idkh,dsTrangThai);
    }

    @Override
    public List<HoaDonResponse> dsHoadon() {
        return hoaDonRepository.findAllByTrangThaiNotContains(hoaDonRepository.findAllByTrangThaiNotContains("CHUANBIDATHANG").toString());
    }

    @Override
    @Transactional
    public ResponseObject huyDatHang(Long idkh) {
        HoaDonEntity hoaDon = hoaDonRepository.findHoaDonMoiDat(idkh);
        hoaDonRepository.delete(hoaDon);
         int sl =  gioHangChiTietRepository.layLaiDsGioHangChiTiet(idkh);
        return new ResponseObject("Thành công");
    }

    @Override
    public AllThongTinHoaDon allThongTinHoaDon(String maHoaDon) {
        HoaDonEntity hoaDon = hoaDonRepository.findByMa(maHoaDon);
        TongTienResponse tongTienResponse = hoaDonRepository.tongTienByHoaDon(hoaDon.getId());
        ThongTinHoaDonResponse hoaDonResponse = hoaDonRepository.getHoaDonResponse(maHoaDon);
        List<HDCTResponse> dsHoaDonChiTiet = hoaDonChiTietRepository.dsHoaDonChiTietResponse(maHoaDon);
        List<TrangThaiGiaoHangResponse> dsTrangThaiGiaoHang = trangThaiGiaoHangRepository.getTrangThaiDonHangByMaHD(maHoaDon);

      AllThongTinHoaDon thongTinHoaDon = new AllThongTinHoaDon();
      thongTinHoaDon.setTongTien(tongTienResponse);
      thongTinHoaDon.setHoaDon(hoaDonResponse);
      thongTinHoaDon.setDsHoaDonChiTiet(dsHoaDonChiTiet);
      thongTinHoaDon.setTrangThaiGiaoHang(dsTrangThaiGiaoHang);
      return thongTinHoaDon;
    }


//    @Override
//    public CaLamResponse findAllByMaNhanVienAndHoaDon(String ngay, String maNhanVien) {
//        CaLamEntity caLamEntity = caLamRepository.findByCurrentDateAndMaNhanVien(ngay, maNhanVien);
//        CaLamResponse result = caLamConverter.convertToResponse(caLamEntity);
//        List<HoaDonEntity> listHoaDon = hoaDonRepository.findAllByCurrentDateAndMaNhanVien(ngay, maNhanVien);
////        Double tongTienMat = listHoaDon.stream().filter(
////                item -> item.getPhuongThucThanhToan().equals("Tiền mặt")
////        ).mapToDouble(item -> item.getTongTienHang()).sum();
////        Double tongTienChuyenKhoan = listHoaDon.stream().filter(
////                item -> item.getPhuongThucThanhToan().equals("Chuyển khoản")
////        ).mapToDouble(item -> item.getTongTienHang()).sum();
//
//        Double tongTienMat = 0.0;
//        Double tongTienChuyenKhoan = 0.0;
//        for (HoaDonEntity hoaDonEntity : listHoaDon) {
//            if(hoaDonEntity.getPhuongThucThanhToan().equals("Tiền mặt")){
//                tongTienMat += hoaDonEntity.getTongTienHang();
//            }else if(hoaDonEntity.getPhuongThucThanhToan().equals("Chuyển khoản")){
//                tongTienChuyenKhoan += hoaDonEntity.getTongTienHang();
//            }
//        }
//
//        result.setTongHoaDon(listHoaDon.size());
//        result.setTongTienMat(tongTienMat);
//        result.setTongTienChuyenKhoan(tongTienChuyenKhoan);
//        result.setTongTienTrongCa(result.getTongTienMat() + result.getTongTienChuyenKhoan());
//        result.setSoTienCuoiCa(result.getSoTienDauCa() + result.getTongTienTrongCa());
//        return result;
//    }
    public CaLamResponse findAllByMaNhanVienAndHoaDon(String ngay, String maNhanVien) {
        CaLamEntity caLamEntity = caLamRepository.findByCurrentDateAndMaNhanVien(ngay, maNhanVien);
        CaLamResponse result = caLamConverter.convertToResponse(caLamEntity);
        List<HoaDonEntity> listHoaDon = hoaDonRepository.findAllByCurrentDateAndMaNhanVien(ngay, maNhanVien);

        Double tongTienMat = 0.0;
        Double tongTienChuyenKhoan = 0.0;
        for (HoaDonEntity hoaDonEntity : listHoaDon) {
            if(hoaDonEntity.getPhuongThuc().equals("Tiền mặt")){
                tongTienMat += hoaDonEntity.getTongTienHang();
            }else if(hoaDonEntity.getPhuongThuc().equals("Chuyển khoản")){
                tongTienChuyenKhoan += hoaDonEntity.getTongTienHang();
            }
        }

        result.setTongHoaDon(listHoaDon.size());
        result.setTongTienMat(tongTienMat);
        result.setTongTienChuyenKhoan(tongTienChuyenKhoan);
        result.setTongTienTrongCa(result.getTongTienMat() + result.getTongTienChuyenKhoan());
        result.setSoTienCuoiCa(result.getSoTienDauCa() + result.getTongTienTrongCa());
        return result;
    }

}

package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.response.HoaDonChiTietResponse;
import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.model.response.TongTienResponse;
import com.laptrinhjavaweb.model.response.TongTienResponseClass;
import com.laptrinhjavaweb.response.CaLamResponse;
import com.laptrinhjavaweb.utils.ResponseObject;

import java.math.BigDecimal;
import java.util.List;

public interface HoaDonService {

    void saveHoaDon(HoaDonEntity hoaDon);

    HoaDonEntity findById(Long idhd);

    List<HoaDonChiTietResponse> findHoaDonMoiDat(Long idkh);

    List<HoaDonChiTietResponse> dsHoaDonChiTietByIdHoaDon(Long idhd);

    TongTienResponse tongTienTheoHoaDon(Long idhd);

    List<HoaDonResponse> dsHoaDonOnline();

    String thayDoiTrangThaiHoaDon(Long idhd, String trangThai);
    String thayDoiTrangThaiHoaDon(Long idhd, String trangThai,String luuy);

    List<HoaDonResponse> dsHoaDonTheoTrangThai(Long idkh,String trangThai);

    List<HoaDonResponse> dsHoaDonDaMua(Long idkh);

    List<HoaDonResponse> dsHoadon();

    ResponseObject huyDatHang(Long idkh);

    CaLamResponse findAllByMaNhanVienAndHoaDon(String ngay, String maNhanVien);
}

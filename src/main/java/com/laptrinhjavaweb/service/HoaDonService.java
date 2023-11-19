package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.enumentity.TrangThaiHoaDonEnum;
import com.laptrinhjavaweb.model.response.HoaDonChiTietResponse;
import com.laptrinhjavaweb.model.response.HoaDonResponse;

import java.math.BigDecimal;
import java.util.List;

public interface HoaDonService {

    void saveHoaDon(HoaDonEntity hoaDon);
    HoaDonEntity findById(Long idhd);
    List<HoaDonChiTietResponse> findHoaDonMoiDat(Long idkh);
    List<HoaDonChiTietResponse> dsHoaDonChiTietByIdHoaDon(Long idhd);
    BigDecimal tongTienTheoHoaDon(Long idhd);

    List<HoaDonResponse> dsHoaDonOnline();

    String thayDoiTrangThaiHoaDon(Long idhd, String trangThai);
}

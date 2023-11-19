package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.response.HoaDonChiTietResponse;

import java.math.BigDecimal;
import java.util.List;

public interface HoaDonService {

    HoaDonEntity saveHoaDon(HoaDonEntity hoaDon);
    HoaDonEntity findById(Long idhd);
    List<HoaDonChiTietResponse> findHoaDonMoiDat(Long idkh);
    List<HoaDonChiTietResponse> dsHoaDonChiTietByIdHoaDon(Long idhd);
    BigDecimal tongTienTheoHoaDon(Long idhd);
}

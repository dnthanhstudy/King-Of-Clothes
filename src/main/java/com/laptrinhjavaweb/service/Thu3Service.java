package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.model.response.TrangThaiGiaoHangResponse;

import java.util.List;

public interface Thu3Service {

    List<TrangThaiGiaoHangResponse> dsTrangThaiDangGiao(String maGiaoHang);

    List<HoaDonResponse> dsHoaDonDangGiao();

    String themTrangThaiGiaoHang(String maGiaoHang,String tenTrangThai);
}

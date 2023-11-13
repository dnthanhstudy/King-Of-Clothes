package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.NhanVienResponse;

public interface INhanVienService {

    NhanVienResponse findByMaAndTrangThai(String ma, String trangThai);
}

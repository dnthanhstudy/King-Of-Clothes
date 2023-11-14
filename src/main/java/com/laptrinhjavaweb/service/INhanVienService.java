package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.resquest.NhanVienRequest;

public interface INhanVienService {

    NhanVienResponse findByMaAndTrangThai(String ma, String trangThai);

    NhanVienResponse save(NhanVienRequest nhanVienRequest);
}

package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.resquest.NhanVienRequest;

import java.util.Map;

public interface INhanVienService {

    NhanVienResponse findByMaAndTrangThai(String ma, String trangThai);

    NhanVienResponse save(NhanVienRequest nhanVienRequest);

    Map<String, Object> pagingOrSearchOrFindAll(String param, Integer pageCurrent, Integer limit);
}

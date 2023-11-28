package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.entity.NhanVienEntity;
import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.resquest.NhanVienRequest;

import java.util.Map;

public interface INhanVienService {

    NhanVienResponse findByMaAndTrangThai(String ma, String trangThai);

    NhanVienResponse save(NhanVienRequest nhanVienRequest);

    Map<String, Object> pagingOrSearchOrFindAll(String param, Integer pageCurrent, Integer limit);

    NhanVienResponse getDetail(String ma);

    NhanVienResponse update(String ma, NhanVienRequest nhanVienRequest);

    void delete(String ma);

    NhanVienEntity findByEmail(String email);

    String generateRandomPassword();

    NhanVienEntity findByRestToken(String restToken);

    NhanVienEntity insert(NhanVienEntity nhanVienEntity);

    NhanVienResponse moCa(String ma);

    NhanVienResponse dongCa(String ma);
}

package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.entity.NhanVienEntity;
import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.resquest.NhanVienRequest;
import java.util.Map;

public interface INhanVienService {

    NhanVienResponse findByMaAndTrangThai(String ma, String trangThai);

    NhanVienResponse save(NhanVienRequest nhanVienRequest);

    NhanVienResponse getDetail(String ma);

    NhanVienResponse update(String ma, NhanVienRequest request);

    void delete(String ma);

    Map<String, Object> pagingOrSearchOrFindAll(String param, Integer pageCurrent, Integer limit);

    NhanVienEntity findByEmail(String email);

    String generateRandomPassword();

    NhanVienEntity findByRestToken(String restToken);

    NhanVienEntity insert(NhanVienEntity nhanVienEntity);

    String edit(NhanVienEntity nhanVienEntity);
}

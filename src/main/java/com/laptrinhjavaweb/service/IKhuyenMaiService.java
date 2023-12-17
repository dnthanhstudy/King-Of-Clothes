package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.KhuyenMaiResponse;
import com.laptrinhjavaweb.resquest.KhuyenMaiRequest;

import java.util.List;
import java.util.Map;

public interface IKhuyenMaiService {
    List<KhuyenMaiResponse> getAll();
    KhuyenMaiResponse save(KhuyenMaiRequest request);
    String delete(String ma);
    KhuyenMaiResponse update(KhuyenMaiRequest request, String ma);
    KhuyenMaiResponse findById(Long id);
    KhuyenMaiResponse findByMa(String ma);
    void updateDS();

    Map<String, Object> pagingOrSearchOrFindAllOrFilterOrCategories(Integer pageCurrent, Integer limit, String param, Map<String, Object> params, String slug);
}

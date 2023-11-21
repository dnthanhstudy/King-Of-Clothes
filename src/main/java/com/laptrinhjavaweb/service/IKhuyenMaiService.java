package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.KhuyenMaiResponse;
import com.laptrinhjavaweb.resquest.KhuyenMaiRequest;

import java.util.List;

public interface IKhuyenMaiService {
    List<KhuyenMaiResponse> getAll();
    KhuyenMaiResponse save(KhuyenMaiRequest request);
    String delete(Long id);
    KhuyenMaiResponse update(KhuyenMaiRequest request);
    KhuyenMaiResponse findById(Long id);
    KhuyenMaiResponse findByMa(String ma);
}

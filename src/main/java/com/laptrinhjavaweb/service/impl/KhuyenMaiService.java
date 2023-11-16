package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.response.KhuyenMaiResponse;
import com.laptrinhjavaweb.resquest.KhuyenMaiRequest;
import com.laptrinhjavaweb.service.IKhuyenMaiService;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class KhuyenMaiService implements IKhuyenMaiService {
    @Override
    public List<KhuyenMaiResponse> getAll() {
        return null;
    }

    @Override
    public KhuyenMaiResponse save(KhuyenMaiRequest request) {
        return null;
    }

    @Override
    public KhuyenMaiResponse delete(KhuyenMaiRequest request) {
        return null;
    }

    @Override
    public KhuyenMaiResponse update(KhuyenMaiRequest request) {
        return null;
    }

    @Override
    public KhuyenMaiResponse findById(Long id) {
        return null;
    }

    @Override
    public KhuyenMaiResponse findByMa(String ma) {
        return null;
    }
}

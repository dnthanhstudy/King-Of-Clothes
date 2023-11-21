package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.convert.KhuyenMaiConvert;
import com.laptrinhjavaweb.entity.KhuyenMaiEntity;
import com.laptrinhjavaweb.repository.KhuyenMaiRepository;
import com.laptrinhjavaweb.response.KhuyenMaiResponse;
import com.laptrinhjavaweb.resquest.KhuyenMaiRequest;
import com.laptrinhjavaweb.service.IKhuyenMaiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class KhuyenMaiService implements IKhuyenMaiService {
    @Autowired
    private KhuyenMaiRepository khuyenMaiRepository;

    @Autowired
    private KhuyenMaiConvert khuyenMaiConvert;

    @Override
    public List<KhuyenMaiResponse> getAll() {
        List<KhuyenMaiEntity> listEntity = khuyenMaiRepository.findAll();
        List<KhuyenMaiResponse> list = listEntity.stream().map(
                item -> khuyenMaiConvert.convertToResponse(item)
        ).collect(Collectors.toList());
        return list;
    }

    @Override
    public KhuyenMaiResponse save(KhuyenMaiRequest request) {
        return null;
    }

    @Override
    public String delete(Long id) {
        KhuyenMaiEntity km = khuyenMaiRepository.findById(id).orElse(null);
        if (km != null) {
            this.khuyenMaiRepository.delete(km);
            return "Xoa thanh cong";
        } else {
            return "Khong tim thay";
        }
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
        KhuyenMaiEntity entity = khuyenMaiRepository.findByMa(ma);
        KhuyenMaiResponse response = khuyenMaiConvert.convertToResponse(entity);
        return response;
    }
}

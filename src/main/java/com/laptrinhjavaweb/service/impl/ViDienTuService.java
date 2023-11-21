package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.convert.ViDienTuConvert;
import com.laptrinhjavaweb.entity.ViDienTuEntity;
import com.laptrinhjavaweb.repository.ViDienTuRepository;
import com.laptrinhjavaweb.response.ViDienTuResponse;
import com.laptrinhjavaweb.service.IViDienTuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ViDienTuService implements IViDienTuService {

    @Autowired
    private ViDienTuRepository viDienTuRepository;

    @Autowired
    private ViDienTuConvert viDienTuConvert;

    @Override
    public ViDienTuResponse findByIdKhachHang(Long idkh) {
        ViDienTuEntity entity = viDienTuRepository.findByKhachHang(idkh);
        ViDienTuResponse response = viDienTuConvert.convertToResponse(entity);
        return response;
    }
}

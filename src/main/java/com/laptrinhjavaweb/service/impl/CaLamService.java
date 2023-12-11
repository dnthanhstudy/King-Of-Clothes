package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.CaLamConverter;
import com.laptrinhjavaweb.entity.CaLamEntity;
import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.repository.CaLamRepository;
import com.laptrinhjavaweb.response.CaLamResponse;
import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.resquest.CaLamRequest;
import com.laptrinhjavaweb.service.ICaLamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class CaLamService implements ICaLamService {

    @Autowired
    private CaLamRepository caLamRepository;

    @Autowired
    private CaLamConverter caLamConverter;

    @Override
    @Transactional
    public CaLamResponse insert(CaLamRequest caLamRequest) {
        CaLamEntity caLamEntity = caLamConverter.convertToEntity(caLamRequest);
        caLamRepository.save(caLamEntity);
        return caLamConverter.convertToResponse(caLamEntity);
    }

    @Override
    public CaLamResponse update(String ma, CaLamRequest caLamRequest) {
        CaLamEntity caLamEntity = caLamRepository.findByNhanVien_Ma(ma);

        if (caLamEntity == null) {
            return null;
        }
        caLamEntity.setSoTienCuoiCa(caLamRequest.getSoTienCuoiCa());
        caLamEntity.setTienMatBanGiao(caLamRequest.getTienMatBanGiao());
        caLamEntity.setTienChenhLech(caLamRequest.getTienChenhLech());
        caLamEntity.setGhiChu(caLamRequest.getGhiChu());

        caLamRepository.save(caLamEntity);

        return caLamConverter.convertToResponse(caLamEntity);
    }
}

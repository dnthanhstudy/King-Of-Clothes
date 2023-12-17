package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.LichSuTichDiemConverter;
import com.laptrinhjavaweb.entity.LichSuTichDiemEntity;
import com.laptrinhjavaweb.repository.LichSuTichDiemRepository;
import com.laptrinhjavaweb.resquest.LịchSuTichDiemRequest;
import com.laptrinhjavaweb.service.ILichSuTichDiemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LichSuTichDiemService implements ILichSuTichDiemService {

    @Autowired
    private LichSuTichDiemConverter lichSuTichDiemConverter;

    @Autowired
    private LichSuTichDiemRepository lichSuTichDiemRepository;

    @Override
    public void save(LịchSuTichDiemRequest request) {
        LichSuTichDiemEntity entity = lichSuTichDiemConverter.convertToEntity(request);
        lichSuTichDiemRepository.save(entity);
    }
}

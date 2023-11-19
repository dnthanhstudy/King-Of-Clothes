package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.convert.QuyDoiDiemConverter;
import com.laptrinhjavaweb.entity.QuyDoiDiemEntity;
import com.laptrinhjavaweb.repository.QuyDoiDiemRepository;
import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.response.QuyDoiDiemResponse;
import com.laptrinhjavaweb.resquest.QuyDoiDiemRequest;
import com.laptrinhjavaweb.service.IQuyDoiDiemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class QuyDoiDiemService implements IQuyDoiDiemService {

    @Autowired
    private QuyDoiDiemRepository quyDoiDiemRepository;

    @Autowired
    private QuyDoiDiemConverter quyDoiDiemConverter;


    @Override
    public QuyDoiDiemResponse quyDoiDiem(QuyDoiDiemRequest request) {
        QuyDoiDiemEntity quyDoiDiem = new QuyDoiDiemEntity();
        quyDoiDiem.setTien(request.getTien());
        quyDoiDiem.setDiem(request.getDiem());
        quyDoiDiem.setLoai(request.getLoai());

        Optional<QuyDoiDiemEntity> existingQuyDoiDiem = quyDoiDiemRepository.findById(request.getId());
        if (existingQuyDoiDiem.isPresent()) {
            QuyDoiDiemEntity existingEntity = existingQuyDoiDiem.get();
            existingEntity.setTien(quyDoiDiem.getTien());
            existingEntity.setDiem(quyDoiDiem.getDiem());
            existingEntity.setLoai(quyDoiDiem.getLoai());
            quyDoiDiemRepository.save(existingEntity);

            QuyDoiDiemResponse result = quyDoiDiemConverter.convertToResponse(existingEntity);
            return result;
        } else {
            QuyDoiDiemEntity savedEntity = quyDoiDiemRepository.save(quyDoiDiem);

            QuyDoiDiemResponse result = quyDoiDiemConverter.convertToResponse(savedEntity);
            return result;
        }
    }
}

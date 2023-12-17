package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.TichDiemConverter;
import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.entity.TichDiemEntity;
import com.laptrinhjavaweb.repository.KhachHangRepository;
import com.laptrinhjavaweb.repository.TichDiemRepository;
import com.laptrinhjavaweb.response.TichDiemResponse;
import com.laptrinhjavaweb.resquest.TichDiemRequest;
import com.laptrinhjavaweb.service.ITichDiemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TichDiemService implements ITichDiemService {

    @Autowired
    private QuyDoiDiemService quyDoiDiemService;

    @Autowired
    private KhachHangService khachHangService;

    @Autowired
    private KhachHangRepository khachHangRepository;

    @Autowired
    private TichDiemRepository tichDiemRepository;

    @Autowired
    private TichDiemConverter tichDiemConverter;

    @Override
    public TichDiemResponse save(TichDiemRequest request) {

        KhachHangEntity khachHangEntity = khachHangRepository.findByMa(request.getMaKhachHang());
        if(khachHangEntity != null){
            TichDiemEntity khTichDiem = tichDiemRepository.findByKhachHang_id(khachHangEntity.getId());
            if (khTichDiem == null){
                TichDiemEntity entity = new TichDiemEntity();
                entity.setKhachHang(khachHangEntity);
                Double diemCong = quyDoiDiemService.TienQuyDiem(request.getTongHoaDon());
                Integer diem = (int) Math.round(diemCong);
                entity.setSoDiem(diem);
                TichDiemEntity res = tichDiemRepository.save(entity);
                return tichDiemConverter.convertToResponse(res);
            }else{
                Double diemCong = quyDoiDiemService.TienQuyDiem(request.getTongHoaDon());
                Integer diem = khTichDiem.getSoDiem () + (int) Math.round(diemCong) - request.getSoDiemDung();
                khTichDiem.setSoDiem(diem);
                TichDiemEntity res = tichDiemRepository.save(khTichDiem);
                return tichDiemConverter.convertToResponse(res);
            }
        }
        return null;
    }
}

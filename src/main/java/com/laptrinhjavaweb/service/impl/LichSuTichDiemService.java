package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.converter.LichSuTichDiemConverter;
import com.laptrinhjavaweb.entity.ChucVuEntity;
import com.laptrinhjavaweb.entity.DanhMucEntity;
import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.entity.LichSuTichDiemEntity;
import com.laptrinhjavaweb.repository.KhachHangRepository;
import com.laptrinhjavaweb.repository.LichSuTichDiemRepository;
import com.laptrinhjavaweb.response.ChucVuResponse;
import com.laptrinhjavaweb.response.DanhMucResponse;
import com.laptrinhjavaweb.response.LichSuTichDiemResponse;
import com.laptrinhjavaweb.response.PageableResponse;
import com.laptrinhjavaweb.resquest.LịchSuTichDiemRequest;
import com.laptrinhjavaweb.service.ILichSuTichDiemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class LichSuTichDiemService implements ILichSuTichDiemService {

    @Autowired
    private LichSuTichDiemConverter lichSuTichDiemConverter;

    @Autowired
    private LichSuTichDiemRepository lichSuTichDiemRepository;

    @Autowired
    private KhachHangRepository khachHangRepository;

    @Override
    public void save(LịchSuTichDiemRequest request) {
        LichSuTichDiemEntity entity = lichSuTichDiemConverter.convertToEntity(request);
        lichSuTichDiemRepository.save(entity);
    }

    @Override
    public List<LichSuTichDiemResponse> findAll() {
        List<LichSuTichDiemEntity> entity = lichSuTichDiemRepository.findAll();

        List<LichSuTichDiemResponse> result = entity.stream().map(
                item ->
                        lichSuTichDiemConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        return result;
    }

    @Override
    public List<LichSuTichDiemResponse> findAllByIdKhachHang(String sdtKhachHang) {
        KhachHangEntity kh = khachHangRepository.findBySoDienThoai(sdtKhachHang);
        List<LichSuTichDiemEntity> entity = lichSuTichDiemRepository.findAllByKhachHang_id(kh.getId());

        List<LichSuTichDiemResponse> result = entity.stream().map(
                item ->
                        lichSuTichDiemConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        return result;
    }


}

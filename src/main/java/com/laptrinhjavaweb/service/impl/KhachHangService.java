package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.convert.KhachHangConverter;
import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.repository.KhachHangRepository;
import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.service.IKhachHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class KhachHangService implements IKhachHangService {

    @Autowired
    private KhachHangRepository khachHangRepository;

    @Autowired
    private KhachHangConverter khachHangConverter;

    @Override
    public KhacHangResponse findBySoDienThoaiOrEmailAndTrangThai(String sodienThoai, String email, String trangThai) {
        KhachHangEntity khachHangEntity = khachHangRepository.findBySoDienThoaiOrEmailAndTrangThai(sodienThoai, email, trangThai);
        if(khachHangEntity == null){
            return null;
        }
        KhacHangResponse result = khachHangConverter.convertToResponse(khachHangEntity);
        return result;
    }
}

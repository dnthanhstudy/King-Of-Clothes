package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.convert.NhanVienConverter;
import com.laptrinhjavaweb.entity.NhanVienEntity;
import com.laptrinhjavaweb.repository.NhanVienRepository;
import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.service.INhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NhanVienService implements INhanVienService {

    @Autowired
    private NhanVienRepository nhanVienRepository;

    @Autowired
    private NhanVienConverter nhanVienConverter;

    @Override
    public NhanVienResponse findByMaAndTrangThai(String ma, String trangThai) {
        NhanVienEntity nhanVienEntity = nhanVienRepository.findByMaAndTrangThai(ma, trangThai);
        if(nhanVienEntity == null){
            return null;
        }
        NhanVienResponse nhanVienResponse = nhanVienConverter.convertToResponse(nhanVienEntity);
        return nhanVienResponse;
    }
}

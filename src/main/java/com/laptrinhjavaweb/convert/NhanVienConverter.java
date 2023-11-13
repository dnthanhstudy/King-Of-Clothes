package com.laptrinhjavaweb.convert;

import com.laptrinhjavaweb.entity.NhanVienEntity;
import com.laptrinhjavaweb.response.NhanVienResponse;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class NhanVienConverter {

    @Autowired
    private ModelMapper modelMapper;

    public NhanVienResponse convertToResponse(NhanVienEntity entity){
        NhanVienResponse response = modelMapper.map(entity, NhanVienResponse.class);
        response.setMaChucVu(entity.getChucVu().getMa());
        return response;
    }
}

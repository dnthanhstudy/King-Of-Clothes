package com.laptrinhjavaweb.convert;

import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.response.KhacHangResponse;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class KhachHangConverter {

    @Autowired
    private ModelMapper modelMapper;

    public KhacHangResponse convertToResponse(KhachHangEntity entity){
        KhacHangResponse response = modelMapper.map(entity, KhacHangResponse.class);
        return response;
    }
}

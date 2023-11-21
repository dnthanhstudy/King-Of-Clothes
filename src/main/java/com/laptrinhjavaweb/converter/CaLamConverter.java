package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.entity.CaLamEntity;
import com.laptrinhjavaweb.entity.NhanVienEntity;
import com.laptrinhjavaweb.repository.NhanVienRepository;
import com.laptrinhjavaweb.response.CaLamResponse;
import com.laptrinhjavaweb.resquest.CaLamRequest;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CaLamConverter {

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private NhanVienRepository nhanVienRepository;

    public CaLamEntity convertToEntity(CaLamRequest request){
        CaLamEntity entity = modelMapper.map(request, CaLamEntity.class);
        NhanVienEntity nhanVienEntity = nhanVienRepository.findByMa(request.getMaNhanVien());
        entity.setNhanVien(nhanVienEntity);
        return entity;
    }

    public CaLamResponse convertToResponse(CaLamEntity entity){
        CaLamResponse response = modelMapper.map(entity, CaLamResponse.class);
        return response;
    }
}

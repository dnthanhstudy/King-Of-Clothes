package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.entity.KhuyenMaiEntity;
import com.laptrinhjavaweb.response.KhuyenMaiResponse;
import com.laptrinhjavaweb.response.KhuyenMaiSanPhamResponse;
import com.laptrinhjavaweb.resquest.KhuyenMaiRequest;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class KhuyenMaiConvert {
    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private KhuyenMaiSanPhamConvert khuyenMaiSanPhamConvert;

    public KhuyenMaiResponse convertToResponse(KhuyenMaiEntity entity) {
        KhuyenMaiResponse response = modelMapper.map(entity, KhuyenMaiResponse.class);
        List<KhuyenMaiSanPhamResponse> list = entity.getKhuyenMaiSanPhamEntities().stream().map(
                item -> khuyenMaiSanPhamConvert.convertToResponse(item)).collect(Collectors.toList());
        response.setListSanPham(list);
       return response;
    }
    public KhuyenMaiEntity convertToEntity(KhuyenMaiRequest request) {
        KhuyenMaiEntity entity = modelMapper.map(request, KhuyenMaiEntity.class);
        return entity;
    }
}

package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.repository.NhanVienRepository;
import com.laptrinhjavaweb.response.HoaDonChiTietResponse;
import com.laptrinhjavaweb.response.HoaDonResponse;
import com.laptrinhjavaweb.resquest.HoaDonResquest;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class HoaDonConverter {

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private NhanVienRepository nhanVienRepository;

    @Autowired
    private HoaDonChiTietConverter hoaDonChiTietConverter;

    public HoaDonEntity convertToEntity(HoaDonResquest resquest){
        HoaDonEntity entity = modelMapper.map(resquest, HoaDonEntity.class);
        entity.setNhanVien(nhanVienRepository.findByMa(resquest.getMaNhanVien()));
        return entity;
    }

    public HoaDonResponse convertToResponse(HoaDonEntity entity){
        HoaDonResponse response = modelMapper.map(entity, HoaDonResponse.class);
        if(entity.getKhachHang() == null){
            response.setKhachHang("Khách lẻ");
        }else{
            response.setKhachHang(entity.getKhachHang().getTen() + "-" + entity.getKhachHang().getSoDienThoai());
        }
        List<HoaDonChiTietResponse> hoaDonChiTiet = entity.getHoaDonChiTietEntities().stream().map(
                item -> hoaDonChiTietConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        response.setTenNhanVien(entity.getNhanVien().getTen());
        response.setHoaDonChiTiet(hoaDonChiTiet);
        return response;
    }
}

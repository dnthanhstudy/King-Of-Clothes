package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.repository.NhanVienRepository;
import com.laptrinhjavaweb.response.HoaDonResponse;
import com.laptrinhjavaweb.resquest.HoaDonResquest;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class HoaDonConverter {

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private NhanVienRepository nhanVienRepository;

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
        return response;
    }
}

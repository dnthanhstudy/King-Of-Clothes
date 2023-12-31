package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.entity.LichSuTichDiemEntity;
import com.laptrinhjavaweb.repository.HoaDonRepository;
import com.laptrinhjavaweb.repository.KhachHangRepository;
import com.laptrinhjavaweb.response.LichSuTichDiemResponse;
import com.laptrinhjavaweb.resquest.LịchSuTichDiemRequest;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LichSuTichDiemConverter {

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @Autowired
    private KhachHangRepository khachHangRepository;

    public LichSuTichDiemEntity convertToEntity(LịchSuTichDiemRequest request){
        LichSuTichDiemEntity entity = modelMapper.map(request, LichSuTichDiemEntity.class);
        entity.setHoaDon(hoaDonRepository.findByMa(request.getMaHoaDon()));
        entity.setKhachHang(khachHangRepository.findByMa(request.getMaKhachHang()));
        return entity;
    }

    public LichSuTichDiemResponse convertToResponse(LichSuTichDiemEntity entity){
        LichSuTichDiemResponse response = modelMapper.map(entity, LichSuTichDiemResponse.class);
        response.setMaHoaDon(entity.getHoaDon().getMa());
        response.setTenKhachHang(entity.getKhachHang().getTen());
        response.setSoDienThoai(entity.getKhachHang().getSoDienThoai());
        if(entity.getSoDiemDung() == null){
            entity.setSoDiemDung(0);
        }
        return response;

    }
}

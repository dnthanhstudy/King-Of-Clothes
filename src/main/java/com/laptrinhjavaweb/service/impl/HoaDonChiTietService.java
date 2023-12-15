package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.HoaDonChiTietConverter;
import com.laptrinhjavaweb.entity.HoaDonChiTietEntity;
import com.laptrinhjavaweb.repository.HoaDonChiTietRepository;
import com.laptrinhjavaweb.response.HoaDonChiTietResponse;
import com.laptrinhjavaweb.resquest.HoaDonChiTietRequest;
import com.laptrinhjavaweb.service.IHoaDonChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class HoaDonChiTietService implements IHoaDonChiTietService {

    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;

    @Autowired
    private HoaDonChiTietConverter hoaDonChiTietConverter;

    @Transactional
    @Override
    public void save(HoaDonChiTietRequest hoaDonChiTietRequest) {
        HoaDonChiTietEntity entity = hoaDonChiTietConverter.convertToEntity(hoaDonChiTietRequest);
        HoaDonChiTietEntity hoaDonChiTietEntity = hoaDonChiTietRepository.findByHoaDon_maAndSanPham_idAndBienThe_id(hoaDonChiTietRequest.getMaHoaDon(),
                hoaDonChiTietRequest.getIdSanPham(), hoaDonChiTietRequest.getIdBienThe());
        if(hoaDonChiTietEntity != null){
            hoaDonChiTietEntity.setSoLuong(hoaDonChiTietEntity.getSoLuong() + 1);
            hoaDonChiTietEntity.setThanhTien(hoaDonChiTietEntity.getGia() * hoaDonChiTietEntity.getSoLuong());
            hoaDonChiTietRepository.save(hoaDonChiTietEntity);
        }else{
            hoaDonChiTietRepository.save(entity);
        }
    }

    @Override
    @Transactional
    public void update(Long id, Integer soLuong) {
        HoaDonChiTietEntity entity = hoaDonChiTietRepository.findById(id).get();
        entity.setSoLuong(soLuong);
        entity.setThanhTien(entity.getGia() * soLuong);
        hoaDonChiTietRepository.save(entity);
    }

    @Override
    public HoaDonChiTietResponse findById(Long id) {
        HoaDonChiTietEntity hoaDonChiTietEntity = hoaDonChiTietRepository.findById(id).get();
        return hoaDonChiTietConverter.convertToResponse(hoaDonChiTietEntity);
    }

    @Override
    public void delete(Long id) {
        hoaDonChiTietRepository.deleteById(id);
    }
}

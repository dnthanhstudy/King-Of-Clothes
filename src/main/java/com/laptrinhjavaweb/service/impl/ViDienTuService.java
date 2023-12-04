package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.ViDienTuConvert;
import com.laptrinhjavaweb.entity.ChiTieuEntity;
import com.laptrinhjavaweb.entity.ViDienTuEntity;
import com.laptrinhjavaweb.repository.ChiTieuRepository;
import com.laptrinhjavaweb.repository.ViDienTuRepository;
import com.laptrinhjavaweb.response.ViDienTuResponse;
import com.laptrinhjavaweb.service.IViDienTuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class ViDienTuService implements IViDienTuService {

    @Autowired
    private ViDienTuRepository viDienTuRepository;

    @Autowired
    ChiTieuRepository chiTieuRepository;
    @Autowired
    private ViDienTuConvert viDienTuConvert;

    @Override
    public ViDienTuResponse findByIdKhachHang(Long idkh) {
        ViDienTuEntity entity = viDienTuRepository.findByKhachHang(idkh);
        ViDienTuResponse response = viDienTuConvert.convertToResponse(entity);
        return response;
    }

    @Override
    @Transactional
    public void congTien(Double soTien, Long idvidientu) {
        ViDienTuEntity entity = viDienTuRepository.findById(idvidientu).orElse(null);
        Double soDUMoi = entity.getSoTien() + soTien;
        entity.setSoTien(soDUMoi);
        viDienTuRepository.save(entity);
        ChiTieuEntity chiTieuEntity = new ChiTieuEntity();
        chiTieuEntity.setLoaiChiTieu(1);
        chiTieuEntity.setViDienTu(entity);
        chiTieuEntity.setSoTien(soTien);
        chiTieuRepository.save(chiTieuEntity);
    }

}
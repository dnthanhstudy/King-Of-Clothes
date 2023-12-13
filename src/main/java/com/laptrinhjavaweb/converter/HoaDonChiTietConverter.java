package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.entity.HoaDonChiTietEntity;
import com.laptrinhjavaweb.repository.BienTheRepository;
import com.laptrinhjavaweb.repository.HoaDonRepository;
import com.laptrinhjavaweb.repository.KhuyenMaiRepository;
import com.laptrinhjavaweb.repository.SanPhamRepository;
import com.laptrinhjavaweb.resquest.HoaDonChiTietRequest;
import com.laptrinhjavaweb.resquest.SanPhamRequest;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class HoaDonChiTietConverter {

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @Autowired
    private BienTheRepository bienTheRepository;

    @Autowired
    private KhuyenMaiRepository khuyenMaiRepository;

    @Autowired
    private HoaDonRepository hoaDonRepository;

    public HoaDonChiTietEntity convertToEntity(HoaDonChiTietRequest request){
        HoaDonChiTietEntity entity = modelMapper.map(request, HoaDonChiTietEntity.class);
        entity.setSanPham(sanPhamRepository.findById(request.getIdSanPham()).get());
        entity.setBienThe(bienTheRepository.findById(request.getIdBienThe()).get());
        entity.setKhuyenMai(khuyenMaiRepository.findById(request.getIdBienThe()).get());
        entity.setHoaDon(hoaDonRepository.findById(request.getIdHoaDon()).get());
        return entity;
    }
}

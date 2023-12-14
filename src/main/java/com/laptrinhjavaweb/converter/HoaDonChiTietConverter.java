package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.entity.HoaDonChiTietEntity;
import com.laptrinhjavaweb.repository.BienTheRepository;
import com.laptrinhjavaweb.repository.HoaDonRepository;
import com.laptrinhjavaweb.repository.KhuyenMaiRepository;
import com.laptrinhjavaweb.repository.SanPhamRepository;
import com.laptrinhjavaweb.response.HoaDonChiTietResponse;
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
        entity.setKhuyenMai(khuyenMaiRepository.findById(request.getIdKhuyenMai()).get());
        entity.setHoaDon(hoaDonRepository.findByMa(request.getMaHoaDon()));
        return entity;
    }

    public HoaDonChiTietResponse convertToResponse(HoaDonChiTietEntity entity){
        HoaDonChiTietResponse response = modelMapper.map(entity, HoaDonChiTietResponse.class);
        response.setIdHoaDon(entity.getHoaDon().getId());
        response.setIdSanPham(entity.getSanPham().getId());
        response.setIdBienThe(entity.getBienThe().getId());
        response.setIdKhuyenMai(entity.getKM().getId());
        response.setTenSanPham(entity.getSanPham().getTen());
        return response;
    }
}

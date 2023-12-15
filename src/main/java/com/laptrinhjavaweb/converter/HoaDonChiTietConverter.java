package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.entity.BienTheEntity;
import com.laptrinhjavaweb.entity.HoaDonChiTietEntity;
import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.repository.BienTheRepository;
import com.laptrinhjavaweb.repository.HoaDonRepository;
import com.laptrinhjavaweb.repository.KhuyenMaiRepository;
import com.laptrinhjavaweb.repository.SanPhamRepository;
import com.laptrinhjavaweb.response.HoaDonChiTietResponse;
import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.response.ThuocTinhResponse;
import com.laptrinhjavaweb.resquest.HoaDonChiTietRequest;
import com.laptrinhjavaweb.resquest.SanPhamRequest;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

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

    @Autowired
    private SanPhamConverter sanPhamConverter;

    public HoaDonChiTietEntity convertToEntity(HoaDonChiTietRequest request){
        HoaDonChiTietEntity entity = modelMapper.map(request, HoaDonChiTietEntity.class);
        entity.setSanPham(sanPhamRepository.findById(request.getIdSanPham()).get());
        if(request.getIdBienThe() != null){
            entity.setBienThe(bienTheRepository.findById(request.getIdBienThe()).get());
        }
        entity.setKhuyenMai(khuyenMaiRepository.findById(request.getIdKhuyenMai()).get());
        entity.setHoaDon(hoaDonRepository.findByMa(request.getMaHoaDon()));
        return entity;
    }

    public HoaDonChiTietResponse convertToResponse(HoaDonChiTietEntity entity){
        HoaDonChiTietResponse response = modelMapper.map(entity, HoaDonChiTietResponse.class);
        SanPhamEntity sanPhamEntity = sanPhamRepository.findById(entity.getSanPham().getId()).get();
        SanPhamResponse sanPhamResponse = sanPhamConverter.convertToResponse(sanPhamEntity);
        List<ThuocTinhResponse> thuocTinhResponse = sanPhamResponse.getThuocTinh();

        BienTheEntity bienTheEntity = bienTheRepository.findById(entity.getBienThe().getId()).get();
        if(bienTheEntity != null){
            if(bienTheEntity.getHinhAnh() != null){
                response.setImage(bienTheEntity.getHinhAnh());
            }else{
                response.setImage(sanPhamEntity.getAnhSanPhamEntities().get(0).getHinhAnh());
            }
            List<Long> giaTriThuocTinhChecked = bienTheEntity.getGiaTriThuocTinhBienTheEntities().stream().map(
                    item -> item.getGiaTriThuocTinh().getId()
            ).collect(Collectors.toList());
            response.setIdBienThe(bienTheEntity.getId());
            response.setGiaTriThuocTinhChecked(giaTriThuocTinhChecked);
        }else{
            response.setImage(sanPhamEntity.getAnhSanPhamEntities().get(0).getHinhAnh());
        }
        response.setThuocTinh(thuocTinhResponse);
        response.setTenSanPham(sanPhamEntity.getTen());
        response.setTenThuongHieu(sanPhamEntity.getThuongHieu().getTen());
        return response;
    }
}

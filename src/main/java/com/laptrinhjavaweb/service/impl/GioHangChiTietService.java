package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.converter.GioHangChiTietConveter;
import com.laptrinhjavaweb.entity.BienTheEntity;
import com.laptrinhjavaweb.entity.GioHangChiTietEntity;
import com.laptrinhjavaweb.exception.ClientError;
import com.laptrinhjavaweb.repository.BienTheRepository;
import com.laptrinhjavaweb.repository.GioHangChiTietRepository;
import com.laptrinhjavaweb.response.GioHangChiTietResponse;
import com.laptrinhjavaweb.response.TotalCartResponse;
import com.laptrinhjavaweb.resquest.GioHangChiTietRequest;
import com.laptrinhjavaweb.service.IGioHangChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.Optional;

@Service
public class GioHangChiTietService implements IGioHangChiTietService {

    @Autowired
    private GioHangChiTietRepository gioHangChiTietRepository;

    @Autowired
    private GioHangChiTietConveter gioHangChiTietConveter;

    @Autowired
    private BienTheRepository bienTheRepository;

    @Override
    public void save(GioHangChiTietRequest gioHangChiTietRequest) {
        GioHangChiTietEntity gioHangChiTietEntity = gioHangChiTietRepository.findByGioHang_idAndBienThe_idAndTrangThai(gioHangChiTietRequest.getIdGioHang(), gioHangChiTietRequest.getIdBienThe(),
                SystemConstant.ACTICE);
        if (gioHangChiTietEntity != null) {
            Integer quantity = gioHangChiTietEntity.getSoLuong() + gioHangChiTietRequest.getSoLuong();
            if (quantity > gioHangChiTietEntity.getBienThe().getSoLuong()) {
                throw new ClientError("Số lượng sản phẩm quá giới hạn cho phép. Xin kiểm tra lại");
            }
            gioHangChiTietEntity.setSoLuong(quantity);
        } else {
            BienTheEntity bienTheEntity = bienTheRepository.findById(gioHangChiTietRequest.getIdBienThe()).get();
            if (gioHangChiTietRequest.getSoLuong() > bienTheEntity.getSoLuong()) {
                throw new ClientError("Số lượng sản phẩm quá giới hạn cho phép. Xin kiểm tra lại");
            }
            gioHangChiTietEntity = gioHangChiTietConveter.convertToEntity(gioHangChiTietRequest);
        }
        gioHangChiTietRepository.save(gioHangChiTietEntity);
    }

    @Override
    public TotalCartResponse findAllByGioHangChiTiet(List<Long> ids, String maKhachHang) {
        List<GioHangChiTietResponse> listGioHangChiTiet = gioHangChiTietRepository.findAllByIdInAndGioHang_KhachHang_Ma(ids, maKhachHang).stream().map(
                item -> gioHangChiTietConveter.convertToResponse(item)
        ).collect(Collectors.toList());

        Double tongTienHang = listGioHangChiTiet.stream().mapToDouble(
                item -> (item.getSoLuong() * item.getDonGia())
        ).sum();

        Double tongSoTien = listGioHangChiTiet.stream().mapToDouble(
                item -> item.getSoTien()
        ).sum();

        Double tienTietKiem = tongTienHang - tongSoTien;

        TotalCartResponse totalCartResponse = new TotalCartResponse(tongTienHang, tienTietKiem, tongSoTien);
        return totalCartResponse;
    }

    @Override
    public void checkQuantity(List<Long> ids, String maKhachHang) {
        Integer quantyity = gioHangChiTietRepository.findAllByIdInAndGioHang_KhachHang_Ma(ids, maKhachHang).stream().mapToInt(
                item -> item.getSoLuong()
        ).sum();
        if (quantyity > 10) {
            throw new ClientError("Vì 1 số lý do của cửa hàng nên bạn chỉ mua được tối đa 10 sản phẩm. Xin lỗi vì sự bất tiện này");
        }
    }

    @Override
    public GioHangChiTietResponse updated(GioHangChiTietRequest gioHangChiTietRequest) {
        GioHangChiTietEntity gioHangChiTietEntity = gioHangChiTietRepository.findById(gioHangChiTietRequest.getId()).get();
        if (gioHangChiTietEntity.getBienThe().getSoLuong() < gioHangChiTietRequest.getSoLuong()) {
            throw new ClientError("Số lượng sản phẩm quá giới hạn cho phép. Xin kiểm tra lại");
        }

        Boolean isLoadCart = false;
        if(gioHangChiTietEntity.getBienThe().getId().equals(gioHangChiTietRequest.getIdBienThe())){
            gioHangChiTietEntity.setSoLuong(gioHangChiTietRequest.getSoLuong());
        }else{
            GioHangChiTietEntity gioHangChiTietEntityExsits = gioHangChiTietEntity.getGioHang().getGioHangChiTietEntities()
                    .stream()
                    .filter(item -> item.getBienThe().getId().equals(gioHangChiTietRequest.getIdBienThe()))
                    .findFirst()
                    .orElse(null);

            if (gioHangChiTietEntityExsits != null) {
                isLoadCart = true;
                gioHangChiTietRepository.deleteById(gioHangChiTietEntityExsits.getId());
                gioHangChiTietEntity.setSoLuong(gioHangChiTietRequest.getSoLuong() + gioHangChiTietEntityExsits.getSoLuong());
            } else {
                gioHangChiTietEntity.setSoLuong(gioHangChiTietRequest.getSoLuong());
            }
        }

        gioHangChiTietEntity.setBienThe(bienTheRepository.findById(gioHangChiTietRequest.getIdBienThe()).get());
        gioHangChiTietRepository.save(gioHangChiTietEntity);

        GioHangChiTietResponse result = gioHangChiTietConveter.convertToResponse(gioHangChiTietEntity);
        result.setIsLoadCart(isLoadCart);
        return result;
    }

    @Override
    public void delete(Long id) {
        gioHangChiTietRepository.deleteById(id);
    }
}

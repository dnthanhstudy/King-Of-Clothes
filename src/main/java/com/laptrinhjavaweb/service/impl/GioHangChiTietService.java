package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.GioHangChiTietConveter;
import com.laptrinhjavaweb.entity.BienTheEntity;
import com.laptrinhjavaweb.entity.GioHangChiTietEntity;
import com.laptrinhjavaweb.exception.ClientError;
import com.laptrinhjavaweb.repository.BienTheRepository;
import com.laptrinhjavaweb.repository.GioHangChiTietRepository;
import com.laptrinhjavaweb.resquest.GioHangChiTietRequest;
import com.laptrinhjavaweb.service.IGioHangChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
        GioHangChiTietEntity gioHangChiTietEntity = gioHangChiTietRepository.findByGioHang_idAndBienThe_id(gioHangChiTietRequest.getIdGioHang(), gioHangChiTietRequest.getIdBienThe());
        if(gioHangChiTietEntity != null){
            Integer quantity = gioHangChiTietEntity.getSoLuong() + gioHangChiTietRequest.getSoLuong();
            if(quantity > gioHangChiTietEntity.getBienThe().getSoLuong()){
                throw new ClientError("Số lượng sản phẩm quá giới hạn cho phép. Xin kiểm tra lại");
            }
            gioHangChiTietEntity.setSoLuong(quantity);
        }else{
            BienTheEntity bienTheEntity = bienTheRepository.findById(gioHangChiTietRequest.getIdBienThe()).get();
            if(gioHangChiTietRequest.getSoLuong() > bienTheEntity.getSoLuong()){
                throw new ClientError("Số lượng sản phẩm quá giới hạn cho phép. Xin kiểm tra lại");
            }
            gioHangChiTietEntity = gioHangChiTietConveter.convertToEntity(gioHangChiTietRequest);
        }
        gioHangChiTietRepository.save(gioHangChiTietEntity);
    }
}

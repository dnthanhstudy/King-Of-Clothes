package com.laptrinhjavaweb.model.response;

import com.laptrinhjavaweb.entity.HoaDonChiTietEntity;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.rest.core.config.Projection;

import java.math.BigDecimal;

@Projection(types = {HoaDonChiTietEntity.class})
public interface HoaDonChiTietResponse {
    @Value("#{target.id}")
    Long getIdHdct();

    @Value("#{target.hoaDon.khachHang.id}")
    Long getIdKhachHang();
    @Value("#{target.hoaDon.id}")
    Long getIdHoaDon();

    @Value("#{target.bienThe.id}")
    Long getIdBienThe();

    @Value("#{target.soLuong}")
    Integer getSoLuong();

    @Value("#{target.bienThe.gia}")
    BigDecimal getGiaTien();
    @Value("#{target.bienThe.sanPham.danhMuc.ten}")
    String getTenDanhMuc();
    @Value("#{target.bienThe.ten}")
    String getTenBienThe();

//    @Value("#{target.tongTien}")
//    BigDecimal getTongTien();
    @Value("#{target.bienThe.sanPham.ten}")
    String getTenSanPham();

    @Value("#{target.hoaDon.id}")
    Long getIdhd();
}

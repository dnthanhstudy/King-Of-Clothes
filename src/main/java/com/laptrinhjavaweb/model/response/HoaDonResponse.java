package com.laptrinhjavaweb.model.response;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.rest.core.config.Projection;

import java.util.Date;

@Projection(types = {HoaDonEntity.class})
public interface HoaDonResponse {

    @Value("#{target.id}")
    Long getId();

    @Value("#{target.ma}")
    String getMa();

//    @Value("#{target.nhanVien.id}")
//    Long getNhanVienId();

    @Value("#{target.tenNguoiNhan}")
    String getTenNguoiNhan();
    @Value("#{target.ngayDat}")
    Date getThoiGianDat();
    @Value("#{target.tongTienHang}")
    Double getTongTienHang();
    @Value("#{target.tongTien}")
    Double getTongTien();

    @Value("#{target.tienKhachTraOnline}")
    Double getTienKhachTra();
    @Value("#{target.phuongThucThanhToan}")
    String getPhuongThucThanhToan();

    @Value("#{target.trangThai}")
    String getTrangThai();

}

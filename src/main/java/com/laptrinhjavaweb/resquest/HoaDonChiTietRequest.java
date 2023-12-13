package com.laptrinhjavaweb.resquest;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class HoaDonChiTietRequest{

    private Long idHoaDon;

    private Long idSanPham;

    private Long idBienThe;

    private Long idKhuyenMai;

    private Long gia;

    private Long soLuong;

    private Long thanhTien;

    private String trangThai = "ACTIVE";
}

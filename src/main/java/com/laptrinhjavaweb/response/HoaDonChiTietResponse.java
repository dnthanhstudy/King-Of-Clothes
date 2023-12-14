package com.laptrinhjavaweb.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class HoaDonChiTietResponse {

    private Long id;

    private Long idBienThe;

    private Long idHoaDon;

    private Long idSanPham;

    private String tenSanPham;

    private Long idKhuyenMai;

    private Integer soLuong;

    private Double gia;

    private Double thanhTien;

    private String trangThai = "ACTIVE";
}

package com.laptrinhjavaweb.resquest;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class HoaDonResquest{

    private Long id;

    private String ma;

    private String maNhanVien;

    private String trangThai = "ACTIVE";

    private String phuongThucThanhToan;

    private String loai;

    private Double tienKhachTra;

    private Double tongTienHang;

    private Double tienGiamGia;

    private String maKhachHang;
}

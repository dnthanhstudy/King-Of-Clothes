package com.laptrinhjavaweb.response;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class HoaDonResponse {

    private Long id;

    private String ma;

    private String khachHang;

    private Double tongTienHang;

    private Double tienKhachTra;

    private Double tienThua;

    private List<HoaDonChiTietResponse> hoaDonChiTiet;
}
package com.laptrinhjavaweb.response;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class GioHangResponse {

    private List<GioHangChiTietResponse> gioHang;

    private Double tongTienHang;

    private Double tietKiem;

    private Double tongSoTien;
}

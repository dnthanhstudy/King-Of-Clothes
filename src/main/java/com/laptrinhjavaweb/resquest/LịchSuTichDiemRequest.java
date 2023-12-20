package com.laptrinhjavaweb.resquest;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LịchSuTichDiemRequest {

    private String maHoaDon;

    private String maKhachHang;

    private Integer soDiemDung;

    private Integer soDiemTichDuoc;

    private String trangThai = "ACTIVE";
}

package com.laptrinhjavaweb.resquest;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class TichDiemRequest {

    private String maKhachHang;

    private Integer soDiemDung;

    private Integer soDiemTichDuoc;

    private String trangThai = "ACTIVE";
}

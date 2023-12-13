package com.laptrinhjavaweb.resquest;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class HoaDonResquest{

    private String maNhanVien;

    private String trangThai = "ACTIVE";

    private String loai;
}

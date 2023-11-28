package com.laptrinhjavaweb.resquest;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class KhachHangRequest {

    private  String ma;

    private String soDienThoai;

    private String email;

    private String ten;

    private String gioiTinh;

    private String matKhau;

    private Date ngaySinh;

    private String moTa;
}

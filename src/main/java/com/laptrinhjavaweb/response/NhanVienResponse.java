package com.laptrinhjavaweb.response;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;

@Setter
@Getter
public class NhanVienResponse {

    private Long id;

    private String ten;

    private String ma;

    private String matKhau;

    private String maChucVu;

    private String tenChucVu;

    private String soDienThoai;

    private String anh;

    private String email;

    private String diaChi;

    private Date ngaySinh;

    private Date ngayCap;

    private String canCuocCongDan;

    private String gioiTinh;

    private ChucVuResponse chucVuResponse;


}

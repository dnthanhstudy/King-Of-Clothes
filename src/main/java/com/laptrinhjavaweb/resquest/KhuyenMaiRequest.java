package com.laptrinhjavaweb.resquest;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
@Getter
@Setter
public class KhuyenMaiRequest {
    private Long id;

    private String ma;

    private String ten;

    private String loai;

    private Date ngayBatDau;

    private Date ngayKetThuc;

    private Integer soLuong;

    private Integer tong;
}

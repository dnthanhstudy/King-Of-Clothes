package com.laptrinhjavaweb.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class KhuyenMaiHienThiResponse {

    private String ma;

    private String ten;

    private String loai;

    private String giaTri;

    private Integer soLuong;

    private String expired;

    private Double gia;
}

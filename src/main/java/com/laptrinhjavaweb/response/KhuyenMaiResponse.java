package com.laptrinhjavaweb.response;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.util.List;

@Getter
@Setter
public class KhuyenMaiResponse {
    private Long id;

    private String ma;

    private String ten;

    private String loai;

    private Date ngayBatDau;

    private Date ngayKetThuc;

    private Integer soLuong;

    private Integer tong;

    private String trangThai;

    private Date ngayTao;

    private List<KhuyenMaiSanPhamResponse> listSanPham;
}

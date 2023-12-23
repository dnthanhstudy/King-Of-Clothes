package com.laptrinhjavaweb.response;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class GioHangChiTietResponse {

    private String tenSanPham;

    private String image;

    private Double donGia;

    private Integer soLuong;

    private Double giaMua;

    private Double thanhTien;

    private List<ThuocTinhResponse> thuocTinh;

    private List<Long> giaTriThuocTinhChecked;
}

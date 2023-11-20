package com.laptrinhjavaweb.resquest;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SanPhamRequest {

    private String slug;

    private String ten;

    private Double gia;

    private Integer soLuong;

    private String moTa;

    private String thongTinChiTiet;

    private String danhMucSlug;

    private String thuongHieuSlug;

    private List<ThuocTinhRequest> thuocTinh;

    private List<AnhSanPhamRequest> anh;

    private List<BienTheRequest> bienThe;

    private Integer sanPhamMoi;

    private Integer sanPhamNhieuLuotXem;

    private Integer sanPhamNoiBat;

    private Integer sanPhamPhoBien;
}

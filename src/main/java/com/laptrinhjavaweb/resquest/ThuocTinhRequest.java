package com.laptrinhjavaweb.resquest;

import java.util.List;

public class ThuocTinhRequest {

    private String slug;

    private String ten;

    private List<String> giaTris;

    private Long idSanPham;

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public List<String> getGiaTris() {
        return giaTris;
    }

    public void setGiaTris(List<String> giaTris) {
        this.giaTris = giaTris;
    }

    public Long getIdSanPham() {
        return idSanPham;
    }

    public void setIdSanPham(Long idSanPham) {
        this.idSanPham = idSanPham;
    }
}

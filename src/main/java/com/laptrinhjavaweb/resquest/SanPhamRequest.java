package com.laptrinhjavaweb.resquest;

import java.util.List;

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

    public Double getGia() {
        return gia;
    }

    public void setGia(Double gia) {
        this.gia = gia;
    }

    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getThongTinChiTiet() {
        return thongTinChiTiet;
    }

    public void setThongTinChiTiet(String thongTinChiTiet) {
        this.thongTinChiTiet = thongTinChiTiet;
    }

    public String getDanhMucSlug() {
        return danhMucSlug;
    }

    public void setDanhMucSlug(String danhMucSlug) {
        this.danhMucSlug = danhMucSlug;
    }

    public String getThuongHieuSlug() {
        return thuongHieuSlug;
    }

    public void setThuongHieuSlug(String thuongHieuSlug) {
        this.thuongHieuSlug = thuongHieuSlug;
    }

    public List<ThuocTinhRequest> getThuocTinh() {
        return thuocTinh;
    }

    public void setThuocTinh(List<ThuocTinhRequest> thuocTinh) {
        this.thuocTinh = thuocTinh;
    }

    public List<AnhSanPhamRequest> getAnh() {
        return anh;
    }

    public void setAnh(List<AnhSanPhamRequest> anh) {
        this.anh = anh;
    }

    public List<BienTheRequest> getBienThe() {
        return bienThe;
    }

    public void setBienThe(List<BienTheRequest> bienThe) {
        this.bienThe = bienThe;
    }

    public Integer getSanPhamMoi() {
        return sanPhamMoi;
    }

    public void setSanPhamMoi(Integer sanPhamMoi) {
        this.sanPhamMoi = sanPhamMoi;
    }

    public Integer getSanPhamNhieuLuotXem() {
        return sanPhamNhieuLuotXem;
    }

    public void setSanPhamNhieuLuotXem(Integer sanPhamNhieuLuotXem) {
        this.sanPhamNhieuLuotXem = sanPhamNhieuLuotXem;
    }

    public Integer getSanPhamNoiBat() {
        return sanPhamNoiBat;
    }

    public void setSanPhamNoiBat(Integer sanPhamNoiBat) {
        this.sanPhamNoiBat = sanPhamNoiBat;
    }

    public Integer getSanPhamPhoBien() {
        return sanPhamPhoBien;
    }

    public void setSanPhamPhoBien(Integer sanPhamPhoBien) {
        this.sanPhamPhoBien = sanPhamPhoBien;
    }
}

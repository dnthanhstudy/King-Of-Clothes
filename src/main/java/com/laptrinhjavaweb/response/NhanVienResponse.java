package com.laptrinhjavaweb.response;

import java.util.Date;

public class NhanVienResponse {

    private String ten;

    private String ma;

    private String matKhau;

    private String soDienThoai;

    private String anh;

    private String email;

    private ChucVuResponse chucVu;

    private String diaChi;

    private Date ngaySinh;

    private Date ngayCap;

    private String canCuocCongDan;

    private String gioiTinh;

    private ChucVuResponse chucVuResponse;

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

	public ChucVuResponse getChucVu() {
		return chucVu;
	}

	public void setChucVu(ChucVuResponse chucVu) {
		this.chucVu = chucVu;
	}

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public Date getNgayCap() {
        return ngayCap;
    }

    public void setNgayCap(Date ngayCap) {
        this.ngayCap = ngayCap;
    }

    public String getCanCuocCongDan() {
        return canCuocCongDan;
    }

    public void setCanCuocCongDan(String canCuocCongDan) {
        this.canCuocCongDan = canCuocCongDan;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public ChucVuResponse getChucVuResponse() {
        return chucVuResponse;
    }

    public void setChucVuResponse(ChucVuResponse chucVuResponse) {
        this.chucVuResponse = chucVuResponse;
    }
}

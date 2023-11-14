package com.laptrinhjavaweb.response;

public class NhanVienResponse {

    private String ten;

    private String ma;

    private String matKhau;

    private String maChucVu;

    private String soDienThoai;

    private String anh;

    private String email;

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

    public String getMaChucVu() {
        return maChucVu;
    }

    public void setMaChucVu(String maChucVu) {
        this.maChucVu = maChucVu;
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

    public ChucVuResponse getChucVuResponse() {
        return chucVuResponse;
    }

    public void setChucVuResponse(ChucVuResponse chucVuResponse) {
        this.chucVuResponse = chucVuResponse;
    }
}

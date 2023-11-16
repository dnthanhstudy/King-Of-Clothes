package com.laptrinhjavaweb.response;

public class NhanVienResponse {

    private Long id;
    private String ten;

    private String ma;

    private String matKhau;

    private String soDienThoai;

    private String anh;

    private String email;
        
    private ChucVuResponse chucVu;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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
}

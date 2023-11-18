package com.laptrinhjavaweb.resquest;

public class BienTheRequest {

    private String ten;

    private Double gia;

    private Integer soLuong;

    private String base64;

    private String anh;

    private Long idSanPham;

    private Long idThuocTinh;

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

    public String getBase64() {
        if(base64 != null){
            return base64.split(",")[1];
        }
        return base64;
    }

    public void setBase64(String base64) {
        this.base64 = base64;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public Long getIdSanPham() {
        return idSanPham;
    }

    public void setIdSanPham(Long idSanPham) {
        this.idSanPham = idSanPham;
    }

    public Long getIdThuocTinh() {
        return idThuocTinh;
    }

    public void setIdThuocTinh(Long idThuocTinh) {
        this.idThuocTinh = idThuocTinh;
    }
}

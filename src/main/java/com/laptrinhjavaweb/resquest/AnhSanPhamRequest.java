package com.laptrinhjavaweb.resquest;

public class AnhSanPhamRequest {

    private String hinhAnh;

    private String base64;

    private Long idSanPham;

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
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

    public Long getIdSanPham() {
        return idSanPham;
    }

    public void setIdSanPham(Long idSanPham) {
        this.idSanPham = idSanPham;
    }
}

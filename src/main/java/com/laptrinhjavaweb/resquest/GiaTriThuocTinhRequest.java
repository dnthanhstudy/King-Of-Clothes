package com.laptrinhjavaweb.resquest;

public class GiaTriThuocTinhRequest {

    private Long idThuocTinh;

    private Long idSanPham;

    private String giaTri;

    public GiaTriThuocTinhRequest() {
    }

    public GiaTriThuocTinhRequest(Long idThuocTinh, Long idSanPham, String giaTri) {
        this.idThuocTinh = idThuocTinh;
        this.idSanPham = idSanPham;
        this.giaTri = giaTri;
    }

    public Long getIdThuocTinh() {
        return idThuocTinh;
    }

    public void setIdThuocTinh(Long idThuocTinh) {
        this.idThuocTinh = idThuocTinh;
    }

    public Long getIdSanPham() {
        return idSanPham;
    }

    public void setIdSanPham(Long idSanPham) {
        this.idSanPham = idSanPham;
    }

    public String getGiaTri() {
        return giaTri;
    }

    public void setGiaTri(String giaTri) {
        this.giaTri = giaTri;
    }
}

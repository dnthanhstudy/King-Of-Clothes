package com.laptrinhjavaweb.response;

import java.util.List;

public class SanPhamResponse {
	private String slug;
	
	private String ma;
	
	private String ten;
	
	private Double gia;

	private Integer soLuong;
	
	private String moTa;
	
	private String thongTinChiTiet;
	
	private DanhMucResponse danhMuc;
	
	private ThuongHieuResponse thuongHieu;
	
	private List<ThuocTinhResponse> thuocTinh;

	private List<AnhSanPhamResponse> anh;

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public String getMa() {
		return ma;
	}

	public void setMa(String ma) {
		this.ma = ma;
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

	public DanhMucResponse getDanhMuc() {
		return danhMuc;
	}

	public void setDanhMuc(DanhMucResponse danhMuc) {
		this.danhMuc = danhMuc;
	}

	public ThuongHieuResponse getThuongHieu() {
		return thuongHieu;
	}

	public void setThuongHieu(ThuongHieuResponse thuongHieu) {
		this.thuongHieu = thuongHieu;
	}

	public List<ThuocTinhResponse> getThuocTinh() {
		return thuocTinh;
	}

	public void setThuocTinh(List<ThuocTinhResponse> thuocTinh) {
		this.thuocTinh = thuocTinh;
	}

	public List<AnhSanPhamResponse> getAnh() {
		return anh;
	}

	public void setAnh(List<AnhSanPhamResponse> anh) {
		this.anh = anh;
	}
}

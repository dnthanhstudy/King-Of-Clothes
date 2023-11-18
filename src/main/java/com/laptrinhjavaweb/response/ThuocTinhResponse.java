package com.laptrinhjavaweb.response;

import java.util.List;

public class ThuocTinhResponse {
	private Long id;

	private String ten;
	
	private List<GiaTriThuocTinhResponse> giaTriThuocTinh;

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

	public List<GiaTriThuocTinhResponse> getGiaTriThuocTinh() {
		return giaTriThuocTinh;
	}

	public void setGiaTriThuocTinh(List<GiaTriThuocTinhResponse> giaTriThuocTinh) {
		this.giaTriThuocTinh = giaTriThuocTinh;
	}
}

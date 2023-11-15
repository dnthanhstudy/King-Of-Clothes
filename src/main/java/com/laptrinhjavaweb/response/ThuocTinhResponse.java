package com.laptrinhjavaweb.response;

import java.util.List;

public class ThuocTinhResponse {

	private String ten;
	
	private List<GiaTriThuocTinhResponse> giaTriThuocTinh;

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

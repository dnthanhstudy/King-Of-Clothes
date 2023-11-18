package com.laptrinhjavaweb.response;

import java.util.Set;

public class FilterResponse {
	
	private String ma;

	private String ten;
	
	private Set<String> giaTri;

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

	public Set<String> getGiaTri() {
		return giaTri;
	}

	public void setGiaTri(Set<String> giaTri) {
		this.giaTri = giaTri;
	}
}

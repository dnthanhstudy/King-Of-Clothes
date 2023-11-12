package com.laptrinhjavaweb.entity;

import javax.persistence.*;
@Entity
@Table(name = "anhsanpham")
public class AnhSanPhamEntity extends BaseEntity{

	@Column(name = "ma", columnDefinition = "char(10)")
	private String ma;
	
	@ManyToOne
	@JoinColumn(name = "idsanpham")
	private SanPhamEntity sanPham;

	public String getMa() {
		return ma;
	}

	public void setMa(String ma) {
		this.ma = ma;
	}

	public SanPhamEntity getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPhamEntity sanPham) {
		this.sanPham = sanPham;
	}
}

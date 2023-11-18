package com.laptrinhjavaweb.entity;

import javax.persistence.*;
@Entity
@Table(name = "anhsanpham")
public class AnhSanPhamEntity extends BaseEntity{

	@Column(name = "hinhanh", columnDefinition = "char(10)")
	private String hinhAnh;
	
	@ManyToOne
	@JoinColumn(name = "idsanpham")
	private SanPhamEntity sanPham;

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String ma) {
		this.hinhAnh = ma;
	}

	public SanPhamEntity getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPhamEntity sanPham) {
		this.sanPham = sanPham;
	}
}

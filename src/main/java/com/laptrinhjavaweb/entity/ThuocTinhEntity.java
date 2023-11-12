package com.laptrinhjavaweb.entity;

import javax.persistence.*;
@Entity
@Table(name = "thuoctinh")
public class ThuocTinhEntity extends BaseEntity{
	
	@Column(name = "slug")
	private String slug;
	
	@Column(name = "ten", columnDefinition = "nvarchar(255)")
	private String ten;
	
	@ManyToOne
	@JoinColumn(name = "idsanpham")
	private SanPhamEntity sanPham;

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public SanPhamEntity getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPhamEntity sanPham) {
		this.sanPham = sanPham;
	}
}

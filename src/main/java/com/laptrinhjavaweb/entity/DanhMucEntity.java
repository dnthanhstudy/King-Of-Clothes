package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "danhmuc")
public class DanhMucEntity extends BaseEntity {

	@Column(name = "slug", unique = true)
	private String slug;

	@Column(name = "ten", columnDefinition = "nvarchar(255)")
	private String ten;

	@Column(name = "hienthi")
	private Integer hienThi;

	@OneToMany(mappedBy = "danhMuc", fetch = FetchType.LAZY)
	private List<SanPhamEntity> sanPhamEntities = new ArrayList<>();

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

	public Integer getHienThi() {
		return hienThi;
	}

	public void setHienThi(Integer hienThi) {
		this.hienThi = hienThi;
	}

	public List<SanPhamEntity> getSanPhamEntities() {
		return sanPhamEntities;
	}

	public void setSanPhamEntities(List<SanPhamEntity> sanPhamEntities) {
		this.sanPhamEntities = sanPhamEntities;
	}
}

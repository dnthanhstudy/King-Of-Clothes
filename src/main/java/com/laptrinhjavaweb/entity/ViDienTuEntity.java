package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "vidientu")
public class ViDienTuEntity extends BaseEntity {
	
	@ManyToOne
	@JoinColumn(name = "idkhachhang")
	private KhachHangEntity khachHang;
	
	@Column(name = "sotien")
	private Double soTien;

	@OneToMany(mappedBy = "viDienTu", fetch = FetchType.LAZY)
	private List<ChiTieuEntity> chiTieuEntities = new ArrayList<>();

	public KhachHangEntity getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHangEntity khachHang) {
		this.khachHang = khachHang;
	}

	public Double getSoTien() {
		return soTien;
	}

	public void setSoTien(Double soTien) {
		this.soTien = soTien;
	}

	public List<ChiTieuEntity> getChiTieuEntities() {
		return chiTieuEntities;
	}

	public void setChiTieuEntities(List<ChiTieuEntity> chiTieuEntities) {
		this.chiTieuEntities = chiTieuEntities;
	}
}

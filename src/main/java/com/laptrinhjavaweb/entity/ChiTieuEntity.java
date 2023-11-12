package com.laptrinhjavaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "chitieu")
public class ChiTieuEntity extends BaseEntity{
	
	@Column(name = "sotien")
	private Double soTien;
	
	@Column(name = "loaichitieu")
	private Integer loaiChiTieu;
	
	@ManyToOne
	@JoinColumn(name = "idvidientu")
	private ViDienTuEntity viDienTu;

	public Double getSoTien() {
		return soTien;
	}

	public void setSoTien(Double soTien) {
		this.soTien = soTien;
	}

	public Integer getLoaiChiTieu() {
		return loaiChiTieu;
	}

	public void setLoaiChiTieu(Integer loaiChiTieu) {
		this.loaiChiTieu = loaiChiTieu;
	}

	public ViDienTuEntity getViDienTu() {
		return viDienTu;
	}

	public void setViDienTu(ViDienTuEntity viDienTu) {
		this.viDienTu = viDienTu;
	}
}

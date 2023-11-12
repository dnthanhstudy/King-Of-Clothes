package com.laptrinhjavaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "khuyenmaisanpham")
public class KhuyenMaiSanPhamEntity extends BaseEntity{

	@ManyToOne
	@JoinColumn(name = "idkhuyenmai")
	private KhuyenMaiEntity khuyenMai;
	
	@ManyToOne
	@JoinColumn(name = "idbienthe")
	private BienTheEntity bienThe;
	
	@ManyToOne
	@JoinColumn(name = "idsanpham")
	private SanPhamEntity sanPham;

	public KhuyenMaiEntity getKhuyenMai() {
		return khuyenMai;
	}

	public void setKhuyenMai(KhuyenMaiEntity khuyenMai) {
		this.khuyenMai = khuyenMai;
	}

	public BienTheEntity getBienThe() {
		return bienThe;
	}

	public void setBienThe(BienTheEntity bienThe) {
		this.bienThe = bienThe;
	}

	public SanPhamEntity getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPhamEntity sanPham) {
		this.sanPham = sanPham;
	}
}

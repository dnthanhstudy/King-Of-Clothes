package com.laptrinhjavaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "danhgiasanpham")
public class DanhGiaSanPhamEntity extends BaseEntity {
	
	@Column(name = "sosao")
	private Integer soSao;
	
	@Column(name = "noidung", columnDefinition = "TEXT")
	private String noiDung;

	@ManyToOne
	@JoinColumn(name = "idsanpham")
	private SanPhamEntity sanPham;
	
	@ManyToOne
	@JoinColumn(name = "idkhachhang")
	private KhachHangEntity khachHang;

	public Integer getSoSao() {
		return soSao;
	}

	public void setSoSao(Integer soSao) {
		this.soSao = soSao;
	}

	public String getNoiDung() {
		return noiDung;
	}

	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}

	public SanPhamEntity getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPhamEntity sanPham) {
		this.sanPham = sanPham;
	}

	public KhachHangEntity getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHangEntity khachHang) {
		this.khachHang = khachHang;
	}
}

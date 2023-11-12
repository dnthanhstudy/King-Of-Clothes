package com.laptrinhjavaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "thongtinmuahang")
public class ThongTinMuaHangEntity extends BaseEntity{

	@Column(name = "ten", columnDefinition = "nvarchar(255)")
	private String ten;
	
	@Column(name = "sodienthoai", columnDefinition = "char(10)")
	private String soDienThoai;
	
	@Column(name = "diachi", columnDefinition = "char(10)")
	private String diaChi;
	
	@ManyToOne
	@JoinColumn(name = "idkhachhang")
	private KhachHangEntity khachHang;

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public KhachHangEntity getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHangEntity khachHang) {
		this.khachHang = khachHang;
	}
}

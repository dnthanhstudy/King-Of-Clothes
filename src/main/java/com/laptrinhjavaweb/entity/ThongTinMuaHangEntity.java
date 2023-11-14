package com.laptrinhjavaweb.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "thongtinmuahang")
public class ThongTinMuaHangEntity extends BaseEntity{

	@Column(name = "ten", columnDefinition = "nvarchar(255)")
	private String ten;
	
	@Column(name = "sodienthoai", columnDefinition = "char(10)")
	private String soDienThoai;
	
	@Column(name = "diachi", columnDefinition = "nvarchar(255)")
	private String diaChi;
	
	@Column(name = "idthanhpho")
	private Integer idThanhPho;
	
	@Column(name = "idhuyen")
	private Integer idHuyen;
	
	@Column(name = "idxa")
	private String idXa;
	
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

	public Integer getIdThanhPho() {
		return idThanhPho;
	}

	public void setIdThanhPho(Integer idThanhPho) {
		this.idThanhPho = idThanhPho;
	}

	public Integer getIdHuyen() {
		return idHuyen;
	}

	public void setIdHuyen(Integer idHuyen) {
		this.idHuyen = idHuyen;
	}

	public String getIdXa() {
		return idXa;
	}

	public void setIdXa(String idXa) {
		this.idXa = idXa;
	}
}

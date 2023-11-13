package com.laptrinhjavaweb.entity;

import com.laptrinhjavaweb.model.enumentity.TrangThaiTTMHEnum;

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
	@Column(name = "idthanhpho")

	private Integer idThanhPho;
	@Column(name = "idhuyen")
	private Integer idHuyen;
	@Column(name = "idxa")
	private Integer idXa;

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

	public Integer getIdXa() {
		return idXa;
	}

	public void setIdXa(Integer idXa) {
		this.idXa = idXa;
	}

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

	public void setTrangThai(TrangThaiTTMHEnum trangThai) {
		if (trangThai == TrangThaiTTMHEnum.MACDINH){
			super.setTrangThai("DEFAULT");
		}else if (trangThai == TrangThaiTTMHEnum.BINHTHUONG){
			super.setTrangThai("ACTIVE");
		}else {
			super.setTrangThai("DELETE");
		}
	}
	public Boolean getDefault(){
		return super.getTrangThai().equals("DEFAULT");
	}
}

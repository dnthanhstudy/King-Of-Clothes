package com.laptrinhjavaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "hoadonchitiet")
public class HoaDonChiTietEntity extends BaseEntity{

	@Column(name = "soluong")
	private Integer soLuong;
	
	@Column(name = "gia")
	private Double gia;
	
	@Column(name = "thanhtien")
	private Double thanhtien;
		
	@ManyToOne
	@JoinColumn(name = "idbienthe")
	private BienTheEntity bienThe;
	
	@ManyToOne
	@JoinColumn(name = "idkhuyenmai")
	private KhuyenMaiEntity khuyenMai;
	
	@ManyToOne
	@JoinColumn(name = "idhoadon")
	private HoaDonEntity hoaDon;

	public Double getTongTien(){
		if (bienThe.getGia()==null){
			return bienThe.getSanPham().getGia()*soLuong;
		}
		return bienThe.getGia()*soLuong;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}

	public Double getGia() {
		return gia;
	}

	public void setGia(Double gia) {
		this.gia = gia;
	}

	public Double getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(Double thanhtien) {
		this.thanhtien = thanhtien;
	}

	public BienTheEntity getBienThe() {
		return bienThe;
	}

	public void setBienThe(BienTheEntity bienThe) {
		this.bienThe = bienThe;
	}

	public KhuyenMaiEntity getKhuyenMai() {
		return khuyenMai;
	}

	public void setKhuyenMai(KhuyenMaiEntity khuyenMai) {
		this.khuyenMai = khuyenMai;
	}

	public HoaDonEntity getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(HoaDonEntity hoaDon) {
		this.hoaDon = hoaDon;
	}
}

package com.laptrinhjavaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "giohangchitiet")
public class GioHangChiTietEntity extends BaseEntity{

	@ManyToOne
	@JoinColumn(name = "idbienthe")
	private BienTheEntity bienThe;
	
	@ManyToOne
	@JoinColumn(name = "idgiohang")
	private GioHangEntity gioHang;
	
	@ManyToOne
	@JoinColumn(name = "idsanpham")
	private SanPhamEntity sanPham;
	
//	@Column(name = "gia")
//	private Double gia;
	
	@Column(name = "soluong")
	private Integer soLuong;

	public Double getTongTien(){
		if (bienThe.getGia()==null){
			return sanPham.getGia()*soLuong;
		}
		return bienThe.getGia()*soLuong;
	}

	public BienTheEntity getBienThe() {
		return bienThe;
	}

	public void setBienThe(BienTheEntity bienThe) {
		this.bienThe = bienThe;
	}

	public GioHangEntity getGioHang() {
		return gioHang;
	}

	public void setGioHang(GioHangEntity gioHang) {
		this.gioHang = gioHang;
	}

	public SanPhamEntity getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPhamEntity sanPham) {
		this.sanPham = sanPham;
	}

//	public Double getGia() {
//		return gia;
//	}
//
//	public void setGia(Double gia) {
//		this.gia = gia;
//	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}
}

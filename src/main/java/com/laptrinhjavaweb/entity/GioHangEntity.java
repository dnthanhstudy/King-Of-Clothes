package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "giohang")
public class GioHangEntity extends BaseEntity{

	@OneToOne
	@JoinColumn(name = "idkhachhang")
	private KhachHangEntity khachHang;
	
	@OneToMany(mappedBy = "gioHang", fetch = FetchType.LAZY)
	private List<GioHangChiTietEntity> gioHangChiTietEntities = new ArrayList<>();

	public KhachHangEntity getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHangEntity khachHang) {
		this.khachHang = khachHang;
	}

	public List<GioHangChiTietEntity> getGioHangChiTietEntities() {
		return gioHangChiTietEntities;
	}

	public void setGioHangChiTietEntities(List<GioHangChiTietEntity> gioHangChiTietEntities) {
		this.gioHangChiTietEntities = gioHangChiTietEntities;
	}
}

package com.laptrinhjavaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "timkiemsanpham")
public class TimKiemSanPhamEntity extends BaseEntity {

	@Column(name = "timkiem", columnDefinition = "nvarchar(255)")
	private String timKiem;
	
	@ManyToOne
	@JoinColumn(name = "idkhachhang")
	private KhachHangEntity khachHang;

	public String getTimKiem() {
		return timKiem;
	}

	public void setTimKiem(String timKiem) {
		this.timKiem = timKiem;
	}

	public KhachHangEntity getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHangEntity khachHang) {
		this.khachHang = khachHang;
	}
}

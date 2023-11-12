package com.laptrinhjavaweb.entity;

import javax.persistence.*;
@Entity
@Table(name = "chitietcalam")
public class ChiTietCaLamEntity extends BaseEntity{

	@ManyToOne
	@JoinColumn(name = "idcalam")
	private CaLamEntity caLam;
	
	@ManyToOne
	@JoinColumn(name = "idhoadon")
	private HoaDonEntity hoaDon;

	public CaLamEntity getCaLam() {
		return caLam;
	}

	public void setCaLam(CaLamEntity caLam) {
		this.caLam = caLam;
	}

	public HoaDonEntity getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(HoaDonEntity hoaDon) {
		this.hoaDon = hoaDon;
	}
}

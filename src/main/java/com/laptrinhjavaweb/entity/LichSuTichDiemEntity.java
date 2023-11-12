package com.laptrinhjavaweb.entity;

import javax.persistence.*;
@Entity
@Table(name = "lichsutichdiem")
public class LichSuTichDiemEntity extends BaseEntity{

	@ManyToOne
	@JoinColumn(name = "idtichdiem")
	private TichDiemEntity tichDiem;
	
	@ManyToOne
	@JoinColumn(name = "idhoadon")
	private HoaDonEntity hoaDon;
	
	@Column(name = "sodiem")
	private Integer soDiem;

	public TichDiemEntity getTichDiem() {
		return tichDiem;
	}

	public void setTichDiem(TichDiemEntity tichDiem) {
		this.tichDiem = tichDiem;
	}

	public HoaDonEntity getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(HoaDonEntity hoaDon) {
		this.hoaDon = hoaDon;
	}

	public Integer getSoDiem() {
		return soDiem;
	}

	public void setSoDiem(Integer soDiem) {
		this.soDiem = soDiem;
	}
}

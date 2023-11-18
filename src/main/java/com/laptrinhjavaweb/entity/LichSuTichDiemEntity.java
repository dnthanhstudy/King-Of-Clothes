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
	
	@Column(name = "sodiemdung")
	private Integer soDiemDung;

	@Column(name = "sodiemtichduoc")
	private Integer soDiemTichDuoc;

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

	public Integer getSoDiemDung() {
		return soDiemDung;
	}

	public void setSoDiemDung(Integer soDiemDung) {
		this.soDiemDung = soDiemDung;
	}

	public Integer getSoDiemTichDuoc() {
		return soDiemTichDuoc;
	}

	public void setSoDiemTichDuoc(Integer soDiemTichDuoc) {
		this.soDiemTichDuoc = soDiemTichDuoc;
	}
}

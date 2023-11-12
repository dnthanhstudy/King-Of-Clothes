package com.laptrinhjavaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "quydoidiem")
public class QuyDoiDiemEntity extends BaseEntity{

	@Column(name = "tien")
	private Double tien;
	
	@Column(name = "diem")
	private Integer diem;
	
	@Column(name = "loai", columnDefinition = "nvarchar(255)")
	private String loai;

	public Double getTien() {
		return tien;
	}

	public void setTien(Double tien) {
		this.tien = tien;
	}

	public Integer getDiem() {
		return diem;
	}

	public void setDiem(Integer diem) {
		this.diem = diem;
	}

	public String getLoai() {
		return loai;
	}

	public void setLoai(String loai) {
		this.loai = loai;
	}
}

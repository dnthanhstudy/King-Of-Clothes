package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "tichdiem")
public class TichDiemEntity extends BaseEntity{
	
	@ManyToOne
	@JoinColumn(name = "idkhachhang")
	private KhachHangEntity khachHang;
	
	@Column(name = "sodiem")
	private Integer soDiem;
	
	@OneToMany(mappedBy = "tichDiem", fetch = FetchType.LAZY)
	private List<LichSuTichDiemEntity> lichSuTichDiemEntities = new ArrayList<>();

	public KhachHangEntity getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHangEntity khachHang) {
		this.khachHang = khachHang;
	}

	public Integer getSoDiem() {
		return soDiem;
	}

	public void setSoDiem(Integer soDiem) {
		this.soDiem = soDiem;
	}

	public List<LichSuTichDiemEntity> getLichSuTichDiemEntities() {
		return lichSuTichDiemEntities;
	}

	public void setLichSuTichDiemEntities(List<LichSuTichDiemEntity> lichSuTichDiemEntities) {
		this.lichSuTichDiemEntities = lichSuTichDiemEntities;
	}
}

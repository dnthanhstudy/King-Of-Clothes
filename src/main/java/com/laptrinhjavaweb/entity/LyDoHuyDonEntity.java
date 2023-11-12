package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "lydohuydon")
public class LyDoHuyDonEntity extends BaseEntity{

	@Column(name = "lydo", columnDefinition = "TEXT")
	private String lyDo;
	
	@Column(name = "mota", columnDefinition = "TEXT")
	private String moTa;
	
	@OneToMany(mappedBy = "lyDoHuyDon", fetch = FetchType.LAZY)
	private List<HoaDonEntity> hoaDonEntities  = new ArrayList<>();

	public String getLyDo() {
		return lyDo;
	}

	public void setLyDo(String lyDo) {
		this.lyDo = lyDo;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public List<HoaDonEntity> getHoaDonEntities() {
		return hoaDonEntities;
	}

	public void setHoaDonEntities(List<HoaDonEntity> hoaDonEntities) {
		this.hoaDonEntities = hoaDonEntities;
	}
}

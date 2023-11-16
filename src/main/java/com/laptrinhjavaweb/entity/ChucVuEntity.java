package com.laptrinhjavaweb.entity;

import javax.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "chucvu")
public class ChucVuEntity extends BaseEntity {
	@Column(name = "ma" , nullable = false)
	private String ma;
	
	@Column(name = "ten", columnDefinition = "nvarchar(255)")
	private String ten;
	
	@OneToMany(mappedBy = "chucVu", fetch = FetchType.LAZY)
	private List<NhanVienEntity> nhanVienEntities = new ArrayList<>();

	public String getMa() {
		return ma;
	}

	public void setMa(String ma) {
		this.ma = ma;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public List<NhanVienEntity> getNhanVienEntities() {
		return nhanVienEntities;
	}

	public void setNhanVienEntities(List<NhanVienEntity> nhanVienEntities) {
		this.nhanVienEntities = nhanVienEntities;
	}
}

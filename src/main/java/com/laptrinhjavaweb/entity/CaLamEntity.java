package com.laptrinhjavaweb.entity;

import javax.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "calam")
public class CaLamEntity extends BaseEntity{

	@Column(name = "sotiendauca")
	private Double soTienDauCa;
	
	@Column(name = "sotiencuoica")
	private Double soTienCuoiCa;
	
	@ManyToOne
	@JoinColumn(name = "idnhanvien")
	private NhanVienEntity nhanVien;
	
	@OneToMany(mappedBy = "caLam")
	private List<ChiTietCaLamEntity> chiTietCaLamEntities = new ArrayList<>();

	public Double getSoTienDauCa() {
		return soTienDauCa;
	}

	public void setSoTienDauCa(Double soTienDauCa) {
		this.soTienDauCa = soTienDauCa;
	}

	public Double getSoTienCuoiCa() {
		return soTienCuoiCa;
	}

	public void setSoTienCuoiCa(Double soTienCuoiCa) {
		this.soTienCuoiCa = soTienCuoiCa;
	}

	public NhanVienEntity getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVienEntity nhanVien) {
		this.nhanVien = nhanVien;
	}

	public List<ChiTietCaLamEntity> getChiTietCaLamEntities() {
		return chiTietCaLamEntities;
	}

	public void setChiTietCaLamEntities(List<ChiTietCaLamEntity> chiTietCaLamEntities) {
		this.chiTietCaLamEntities = chiTietCaLamEntities;
	}
}

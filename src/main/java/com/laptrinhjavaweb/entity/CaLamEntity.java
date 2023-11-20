package com.laptrinhjavaweb.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "calam")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
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
}

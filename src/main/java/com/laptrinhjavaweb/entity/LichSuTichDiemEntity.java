package com.laptrinhjavaweb.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
@Entity
@Table(name = "lichsutichdiem")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
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
}

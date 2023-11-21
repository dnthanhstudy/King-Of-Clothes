package com.laptrinhjavaweb.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "hoadonchitiet")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class HoaDonChiTietEntity extends BaseEntity{

	@Column(name = "soluong")
	private Integer soLuong;
	
	@Column(name = "gia")
	private Double gia;
	
	@Column(name = "thanhtien")
	private Double thanhtien;
		
	@ManyToOne
	@JoinColumn(name = "idbienthe")
	private BienTheEntity bienThe;
	
	@ManyToOne
	@JoinColumn(name = "idkhuyenmai")
	private KhuyenMaiEntity khuyenMai;
	
	@ManyToOne
	@JoinColumn(name = "idhoadon")
	private HoaDonEntity hoaDon;

	public Double getTongTien(){
		if (bienThe.getGia()==null){
			return bienThe.getSanPham().getGia()*soLuong;
		}
		return bienThe.getGia()*soLuong;
	}
}

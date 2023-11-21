package com.laptrinhjavaweb.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "giohangchitiet")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class GioHangChiTietEntity extends BaseEntity{

	@ManyToOne
	@JoinColumn(name = "idbienthe")
	private BienTheEntity bienThe;
	
	@ManyToOne
	@JoinColumn(name = "idgiohang")
	private GioHangEntity gioHang;
	
	@ManyToOne
	@JoinColumn(name = "idsanpham")
	private SanPhamEntity sanPham;
	
	@Column(name = "gia")
	private Double gia;
	
	@Column(name = "soluong")
	private Integer soLuong;

	@JsonProperty("getTongTien")
	public Double getTongTien(){
		if (bienThe.getGia()==null){
			return sanPham.getGia()*soLuong;
		}
		return bienThe.getGia()*soLuong;
	}
}

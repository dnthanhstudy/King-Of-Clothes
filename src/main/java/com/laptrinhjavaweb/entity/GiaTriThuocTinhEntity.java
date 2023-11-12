package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "giatrithuoctinh")
public class GiaTriThuocTinhEntity extends BaseEntity{

	@Column(name = "giatri", columnDefinition = "nvarchar(255)")
	private String giaTri;
	
	@ManyToOne
	@JoinColumn(name = "idsanpham")
	private SanPhamEntity sanPham;
	
	@ManyToOne
	@JoinColumn(name = "idthuoctinh")
	private ThuocTinhEntity thuocTinh;	
	
	@OneToMany(mappedBy = "giaTriThuocTinh", fetch = FetchType.LAZY)
	private List<GiaTriThuocTinhBienTheEntity> giaTriThuocTinhBienTheEntities = new ArrayList<>();

	public String getGiaTri() {
		return giaTri;
	}

	public void setGiaTri(String giaTri) {
		this.giaTri = giaTri;
	}

	public SanPhamEntity getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPhamEntity sanPham) {
		this.sanPham = sanPham;
	}

	public ThuocTinhEntity getThuocTinh() {
		return thuocTinh;
	}

	public void setThuocTinh(ThuocTinhEntity thuocTinh) {
		this.thuocTinh = thuocTinh;
	}

	public List<GiaTriThuocTinhBienTheEntity> getGiaTriThuocTinhBienTheEntities() {
		return giaTriThuocTinhBienTheEntities;
	}

	public void setGiaTriThuocTinhBienTheEntities(List<GiaTriThuocTinhBienTheEntity> giaTriThuocTinhBienTheEntities) {
		this.giaTriThuocTinhBienTheEntities = giaTriThuocTinhBienTheEntities;
	}
}

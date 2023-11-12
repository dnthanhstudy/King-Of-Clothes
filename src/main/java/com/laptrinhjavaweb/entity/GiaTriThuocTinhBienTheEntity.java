package com.laptrinhjavaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "giatrithuoctinhbienthe")
public class GiaTriThuocTinhBienTheEntity extends BaseEntity {

	@ManyToOne
	@JoinColumn(name = "idgiatrithuoctinh")
	private GiaTriThuocTinhEntity giaTriThuocTinh;
	
	@ManyToOne
	@JoinColumn(name = "idbienthe")
	private BienTheEntity bienThe;

	public GiaTriThuocTinhEntity getGiaTriThuocTinh() {
		return giaTriThuocTinh;
	}

	public void setGiaTriThuocTinh(GiaTriThuocTinhEntity giaTriThuocTinh) {
		this.giaTriThuocTinh = giaTriThuocTinh;
	}

	public BienTheEntity getBienThe() {
		return bienThe;
	}

	public void setBienThe(BienTheEntity bienThe) {
		this.bienThe = bienThe;
	}
}

package com.laptrinhjavaweb.entity;

import javax.persistence.*;

import com.laptrinhjavaweb.model.enumentity.TrangThaiTTMHEnum;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.util.Date;

@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class BaseEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@CreatedDate
	@Column(name = "ngaytao", columnDefinition = "DATETIME")
	private Date ngayTao;

	@CreatedBy
	@Column(name = "nguoitao", columnDefinition = "nvarchar(255)")
	private String nguoiTao;

	@LastModifiedDate
	@Column(name = "ngaysua", columnDefinition = "DATETIME")
	private Date ngaySua;

	@LastModifiedBy
	@Column(name = "nguoisua", columnDefinition = "nvarchar(255)")
	private String nguoiSua;

	@Column(name = "trangthai", columnDefinition = "NVARCHAR(255) default 'ACTIVE'")
	private String trangThai;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getNgayTao() {
		return ngayTao;
	}

	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}

	public String getNguoiTao() {
		return nguoiTao;
	}

	public void setNguoiTao(String nguoiTao) {
		this.nguoiTao = nguoiTao;
	}

	public Date getNgaySua() {
		return ngaySua;
	}

	public void setNgaySua(Date ngaySua) {
		this.ngaySua = ngaySua;
	}

	public String getNguoiSua() {
		return nguoiSua;
	}

	public void setNguoiSua(String nguoiSua) {
		this.nguoiSua = nguoiSua;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

}

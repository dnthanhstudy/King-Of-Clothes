package com.laptrinhjavaweb.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import com.laptrinhjavaweb.model.enumentity.TrangThaiTTMHEnum;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public abstract class BaseEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@CreatedDate
	@Column(name = "ngaytao", columnDefinition = "TIMESTAMP", updatable = false)
	private Date ngayTao;

	@CreatedBy
	@Column(name = "nguoitao", updatable = false)
	private String nguoiTao;

	@LastModifiedDate
	@Column(name = "ngaysua", columnDefinition = "TIMESTAMP", insertable = false)
	private Date ngaySua;

	@LastModifiedBy
	@Column(name = "nguoisua", insertable = false)
	private String nguoiSua;

	@Column(name = "trangthai", columnDefinition = "varchar(255) default 'ACTIVE'", insertable = false)
	private String trangThai;

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

//	public void setTrangThai(TrangThaiTTMHEnum trangThai) {
//		if (trangThai == TrangThaiTTMHEnum.MACDINH){
//			this.trangThai = "DEFAULT";
//		}else if (trangThai == TrangThaiTTMHEnum.BINHTHUONG){
//		this.trangThai = "ACTIVE";
//		}else {
//		this.trangThai = "DELETE";
//		}
//	}
}

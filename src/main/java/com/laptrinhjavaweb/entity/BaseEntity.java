package com.laptrinhjavaweb.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

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
	@Column(name = "ngaysua", columnDefinition = "TIMESTAMP")
	private Date ngaySua;

	@LastModifiedBy
	@Column(name = "nguoisua")
	private String nguoiSua;

	@Column(name = "trangthai", columnDefinition = "varchar(255) default 'ACTIVE'")
	private String trangThai;
}

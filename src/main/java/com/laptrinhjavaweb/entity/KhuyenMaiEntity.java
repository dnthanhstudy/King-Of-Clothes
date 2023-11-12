package com.laptrinhjavaweb.entity;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "khuyenmai")
public class KhuyenMaiEntity extends BaseEntity {

	@Column(name = "ma", unique = true, columnDefinition = "char(10)")
	private String ma;
	
	@Column(name = "ten", columnDefinition = "nvarchar(255)")
	private String ten;
	
	@Column(name = "loai", columnDefinition = "nvarchar(255)")
	private String loai;
	
	@Column(name = "ngaybatdau", columnDefinition = "DATETIME")
	private Date ngayBatDau;
	
	@Column(name = "ngayketthuc", columnDefinition = "DATETIME")
	private Date ngayKetThuc;
	
	@Column(name = "soluong")
	private Integer soLuong;
	
	@Column(name = "tong")
	private Integer tong;
	
	@OneToMany(mappedBy = "khuyenMai", fetch = FetchType.LAZY)
	private List<KhuyenMaiSanPhamEntity> khuyenMaiSanPhamEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "khuyenMai", fetch = FetchType.LAZY)
	private List<HoaDonChiTietEntity> hoaDonChiTietEntities = new ArrayList<>();

	public String getMa() {
		return ma;
	}

	public void setMa(String ma) {
		this.ma = ma;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getLoai() {
		return loai;
	}

	public void setLoai(String loai) {
		this.loai = loai;
	}

	public Date getNgayBatDau() {
		return ngayBatDau;
	}

	public void setNgayBatDau(Date ngayBatDau) {
		this.ngayBatDau = ngayBatDau;
	}

	public Date getNgayKetThuc() {
		return ngayKetThuc;
	}

	public void setNgayKetThuc(Date ngayKetThuc) {
		this.ngayKetThuc = ngayKetThuc;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}

	public Integer getTong() {
		return tong;
	}

	public void setTong(Integer tong) {
		this.tong = tong;
	}

	public List<KhuyenMaiSanPhamEntity> getKhuyenMaiSanPhamEntities() {
		return khuyenMaiSanPhamEntities;
	}

	public void setKhuyenMaiSanPhamEntities(List<KhuyenMaiSanPhamEntity> khuyenMaiSanPhamEntities) {
		this.khuyenMaiSanPhamEntities = khuyenMaiSanPhamEntities;
	}

	public List<HoaDonChiTietEntity> getHoaDonChiTietEntities() {
		return hoaDonChiTietEntities;
	}

	public void setHoaDonChiTietEntities(List<HoaDonChiTietEntity> hoaDonChiTietEntities) {
		this.hoaDonChiTietEntities = hoaDonChiTietEntities;
	}
}

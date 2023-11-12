package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
@Entity
@Table(name = "bienthe")
public class BienTheEntity extends BaseEntity{

	@Column(name = "ten", columnDefinition = "nvarchar(255)")
	private String ten;
	
	@Column(name = "gia")
	private Double gia;
	
	@Column(name = "hinhanh", columnDefinition = "char(10)")
	private String hinhAnh;
	
	@Column(name = "soluong")
	private Integer soLuong;
	
	@ManyToOne
	@JoinColumn(name = "idsanpham")
	private SanPhamEntity sanPham;
	
	@OneToMany(mappedBy = "bienThe", fetch = FetchType.LAZY)
	private List<KhuyenMaiSanPhamEntity> khuyenMaiSanPhamEntities = new ArrayList<>();
		
	@OneToMany(mappedBy = "bienThe", fetch = FetchType.LAZY)
	private List<GiaTriThuocTinhBienTheEntity> giaTriThuocTinhBienTheEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "bienThe", fetch = FetchType.LAZY)
	private List<HoaDonChiTietEntity> hoaDonChiTietEntities = new ArrayList<>();

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public Double getGia() {
		return gia;
	}

	public void setGia(Double gia) {
		this.gia = gia;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}

	public SanPhamEntity getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPhamEntity sanPham) {
		this.sanPham = sanPham;
	}

	public List<KhuyenMaiSanPhamEntity> getKhuyenMaiSanPhamEntities() {
		return khuyenMaiSanPhamEntities;
	}

	public void setKhuyenMaiSanPhamEntities(List<KhuyenMaiSanPhamEntity> khuyenMaiSanPhamEntities) {
		this.khuyenMaiSanPhamEntities = khuyenMaiSanPhamEntities;
	}

	public List<GiaTriThuocTinhBienTheEntity> getGiaTriThuocTinhBienTheEntities() {
		return giaTriThuocTinhBienTheEntities;
	}

	public void setGiaTriThuocTinhBienTheEntities(List<GiaTriThuocTinhBienTheEntity> giaTriThuocTinhBienTheEntities) {
		this.giaTriThuocTinhBienTheEntities = giaTriThuocTinhBienTheEntities;
	}

	public List<HoaDonChiTietEntity> getHoaDonChiTietEntities() {
		return hoaDonChiTietEntities;
	}

	public void setHoaDonChiTietEntities(List<HoaDonChiTietEntity> hoaDonChiTietEntities) {
		this.hoaDonChiTietEntities = hoaDonChiTietEntities;
	}
}

package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "sanpham")
public class SanPhamEntity extends BaseEntity{
	@Column(name = "ten", columnDefinition = "nvarchar(255)")
	private String ten;
	
	@Column(name = "slug", unique = true)
	private String slug;
	
	@Column(name = "gia")
	private Double gia;

	@Column(name = "soluong")
	private Integer soLuong;
	
	@Column(name = "mota", columnDefinition = "TEXT")
	private String moTa;
	
	@Column(name = "thongtinchitiet", columnDefinition = "TEXT")
	private String thongTinChiTiet;
	
	@Column(name = "sanphammoi")
	private Integer sanPhamMoi;
	
	@Column(name = "sanphamnoibat")
	private Integer sanPhamNoiBat;
	
	@Column(name = "sanphamnhieuluotxem")
	private Integer sanPhamNhieuLuotXem;
	
	@Column(name = "sanphamphobien")
	private Integer sanPhamPhoBien;
	
	@ManyToOne
	@JoinColumn(name = "iddanhmuc")
	private DanhMucEntity danhMuc;
	
	@ManyToOne
	@JoinColumn(name = "idthuonghieu")
	private ThuongHieuEntity thuongHieu;
	
	@OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
	private List<DanhGiaSanPhamEntity> danhGiaSanPhamEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
	private List<KhuyenMaiSanPhamEntity> khuyenMaiSanPhamEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
	private List<AnhSanPhamEntity> anhSanPhamEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
	private List<BienTheEntity> bienTheEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
	private List<GioHangChiTietEntity> gioHangChiTietEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
	private List<KhachHangYeuThichSanPhamEntity> khachHangYeuThichSanPhamEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
	private List<ThuocTinhEntity> thuocTinhEntities = new ArrayList<>();
	
	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public Double getGia() {
		return gia;
	}

	public void setGia(Double gia) {
		this.gia = gia;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getThongTinChiTiet() {
		return thongTinChiTiet;
	}

	public void setThongTinChiTiet(String thongTinChiTiet) {
		this.thongTinChiTiet = thongTinChiTiet;
	}

	public Integer getSanPhamMoi() {
		return sanPhamMoi;
	}

	public void setSanPhamMoi(Integer sanPhamMoi) {
		this.sanPhamMoi = sanPhamMoi;
	}

	public Integer getSanPhamNoiBat() {
		return sanPhamNoiBat;
	}

	public void setSanPhamNoiBat(Integer sanPhamNoiBat) {
		this.sanPhamNoiBat = sanPhamNoiBat;
	}

	public Integer getSanPhamNhieuLuotXem() {
		return sanPhamNhieuLuotXem;
	}

	public void setSanPhamNhieuLuotXem(Integer sanPhamNhieuLuotXem) {
		this.sanPhamNhieuLuotXem = sanPhamNhieuLuotXem;
	}

	public Integer getSanPhamPhoBien() {
		return sanPhamPhoBien;
	}

	public void setSanPhamPhoBien(Integer sanPhamPhoBien) {
		this.sanPhamPhoBien = sanPhamPhoBien;
	}

	public DanhMucEntity getDanhMuc() {
		return danhMuc;
	}

	public void setDanhMuc(DanhMucEntity danhMuc) {
		this.danhMuc = danhMuc;
	}

	public ThuongHieuEntity getThuongHieu() {
		return thuongHieu;
	}

	public void setThuongHieu(ThuongHieuEntity thuongHieu) {
		this.thuongHieu = thuongHieu;
	}

	public List<DanhGiaSanPhamEntity> getDanhGiaSanPhamEntities() {
		return danhGiaSanPhamEntities;
	}

	public void setDanhGiaSanPhamEntities(List<DanhGiaSanPhamEntity> danhGiaSanPhamEntities) {
		this.danhGiaSanPhamEntities = danhGiaSanPhamEntities;
	}

	public List<KhuyenMaiSanPhamEntity> getKhuyenMaiSanPhamEntities() {
		return khuyenMaiSanPhamEntities;
	}

	public void setKhuyenMaiSanPhamEntities(List<KhuyenMaiSanPhamEntity> khuyenMaiSanPhamEntities) {
		this.khuyenMaiSanPhamEntities = khuyenMaiSanPhamEntities;
	}

	public List<AnhSanPhamEntity> getAnhSanPhamEntities() {
		return anhSanPhamEntities;
	}

	public void setAnhSanPhamEntities(List<AnhSanPhamEntity> anhSanPhamEntities) {
		this.anhSanPhamEntities = anhSanPhamEntities;
	}

	public List<BienTheEntity> getBienTheEntities() {
		return bienTheEntities;
	}

	public void setBienTheEntities(List<BienTheEntity> bienTheEntities) {
		this.bienTheEntities = bienTheEntities;
	}

	public List<GioHangChiTietEntity> getGioHangChiTietEntities() {
		return gioHangChiTietEntities;
	}

	public void setGioHangChiTietEntities(List<GioHangChiTietEntity> gioHangChiTietEntities) {
		this.gioHangChiTietEntities = gioHangChiTietEntities;
	}

	public List<KhachHangYeuThichSanPhamEntity> getKhachHangYeuThichSanPhamEntities() {
		return khachHangYeuThichSanPhamEntities;
	}

	public void setKhachHangYeuThichSanPhamEntities(List<KhachHangYeuThichSanPhamEntity> khachHangYeuThichSanPhamEntities) {
		this.khachHangYeuThichSanPhamEntities = khachHangYeuThichSanPhamEntities;
	}

	public List<ThuocTinhEntity> getThuocTinhEntities() {
		return thuocTinhEntities;
	}

	public void setThuocTinhEntities(List<ThuocTinhEntity> thuocTinhEntities) {
		this.thuocTinhEntities = thuocTinhEntities;
	}
}

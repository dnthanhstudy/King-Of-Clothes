package com.laptrinhjavaweb.entity;

import javax.persistence.*;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "hoadon")
public class HoaDonEntity extends BaseEntity{

	@Column(name = "ma", unique = true, columnDefinition = "char(10)")
	private String ma;
	
	@Column(name = "mota", columnDefinition = "TEXT")
	private String moTa;
	
	@Column(name = "tongtienhang")
	private Double tongTienHang;
	
	@Column(name = "tienkhachtra")
	private Double tienKhachTra;
	
	@Column(name = "phuongthucthanhtoan")
	private String phuongThucThanhToan;
	
	@Column(name = "ngaydat", columnDefinition = "DATETIME")
	private Date ngayDat;
	
	@Column(name = "ngaydukiengiaohang", columnDefinition = "DATETIME")
	private Date ngayDuKienGiaoHang;
	
	@Column(name = "ngaythanhtoan", columnDefinition = "DATETIME")
	private Date ngayThanhToan;
	
	@Column(name = "ngaynhanhang", columnDefinition = "DATETIME")
	private Date ngayNhanHang;
	
	@Column(name = "tennguoinhan", columnDefinition = "nvarchar(255)")
	private String tenNguoiNhan;
	
	@Column(name = "sodienthoai", columnDefinition = "char(10)")
	private String sodienthoai;
	
	@Column(name = "diachi", columnDefinition = "nvarchar(255)")
	private String diaChi;
	
	@ManyToOne
	@JoinColumn(name = "idnhanvien")
	private NhanVienEntity nhanVien;
	
	@ManyToOne
	@JoinColumn(name = "idkhachhang")
	private KhachHangEntity khachHang;
	
	@ManyToOne
	@JoinColumn(name = "idlydohuydon")
	private LyDoHuyDonEntity lyDoHuyDon;
	
	@OneToMany(mappedBy = "hoaDon")
	private List<ChiTietCaLamEntity> chiTietCaLamEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "hoaDon")
	private List<HoaDonChiTietEntity> hoaDonChiTietEntities  = new ArrayList<>();
	
	@OneToMany(mappedBy = "hoaDon", fetch = FetchType.LAZY)
	private List<LichSuTichDiemEntity> lichSuTichDiemEntities = new ArrayList<>();

	public String getMa() {
		return ma;
	}

	public void setMa(String ma) {
		this.ma = ma;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public Double getTongTienHang() {
		return tongTienHang;
	}

	public void setTongTienHang(Double tongTienHang) {
		this.tongTienHang = tongTienHang;
	}

	public Double getTienKhachTra() {
		return tienKhachTra;
	}

	public void setTienKhachTra(Double tienKhachTra) {
		this.tienKhachTra = tienKhachTra;
	}

	public String getPhuongThucThanhToan() {
		return phuongThucThanhToan;
	}

	public void setPhuongThucThanhToan(String phuongThucThanhToan) {
		this.phuongThucThanhToan = phuongThucThanhToan;
	}

	public Date getNgayDat() {
		return ngayDat;
	}

	public void setNgayDat(Date ngayDat) {
		this.ngayDat = ngayDat;
	}

	public Date getNgayDuKienGiaoHang() {
		return ngayDuKienGiaoHang;
	}

	public void setNgayDuKienGiaoHang(Date ngayDuKienGiaoHang) {
		this.ngayDuKienGiaoHang = ngayDuKienGiaoHang;
	}

	public Date getNgayThanhToan() {
		return ngayThanhToan;
	}

	public void setNgayThanhToan(Date ngayThanhToan) {
		this.ngayThanhToan = ngayThanhToan;
	}

	public Date getNgayNhanHang() {
		return ngayNhanHang;
	}

	public void setNgayNhanHang(Date ngayNhanHang) {
		this.ngayNhanHang = ngayNhanHang;
	}

	public String getTenNguoiNhan() {
		return tenNguoiNhan;
	}

	public void setTenNguoiNhan(String tenNguoiNhan) {
		this.tenNguoiNhan = tenNguoiNhan;
	}

	public String getSodienthoai() {
		return sodienthoai;
	}

	public void setSodienthoai(String sodienthoai) {
		this.sodienthoai = sodienthoai;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public NhanVienEntity getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVienEntity nhanVien) {
		this.nhanVien = nhanVien;
	}

	public KhachHangEntity getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHangEntity khachHang) {
		this.khachHang = khachHang;
	}

	public LyDoHuyDonEntity getLyDoHuyDon() {
		return lyDoHuyDon;
	}

	public void setLyDoHuyDon(LyDoHuyDonEntity lyDoHuyDon) {
		this.lyDoHuyDon = lyDoHuyDon;
	}

	public List<ChiTietCaLamEntity> getChiTietCaLamEntities() {
		return chiTietCaLamEntities;
	}

	public void setChiTietCaLamEntities(List<ChiTietCaLamEntity> chiTietCaLamEntities) {
		this.chiTietCaLamEntities = chiTietCaLamEntities;
	}

	public List<HoaDonChiTietEntity> getHoaDonChiTietEntities() {
		return hoaDonChiTietEntities;
	}

	public void setHoaDonChiTietEntities(List<HoaDonChiTietEntity> hoaDonChiTietEntities) {
		this.hoaDonChiTietEntities = hoaDonChiTietEntities;
	}

	public List<LichSuTichDiemEntity> getLichSuTichDiemEntities() {
		return lichSuTichDiemEntities;
	}

	public void setLichSuTichDiemEntities(List<LichSuTichDiemEntity> lichSuTichDiemEntities) {
		this.lichSuTichDiemEntities = lichSuTichDiemEntities;
	}
}

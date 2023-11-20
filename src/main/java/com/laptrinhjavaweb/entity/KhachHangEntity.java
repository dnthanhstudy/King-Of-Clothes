package com.laptrinhjavaweb.entity;

import java.util.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "khachhang")
public class KhachHangEntity extends BaseEntity{
	
	@Column(name = "ma", unique = true, nullable = false)
	private String ma;
	
	@Column(name = "matkhau")
	private String matKhau;
	
	@Column(name = "ten", columnDefinition = "nvarchar(255)")
	private String ten;
	
	@Column(name = "sodienthoai", unique = true, columnDefinition = "char(10)")
	private String soDienThoai;
	
	@Column(name = "email", columnDefinition = "char(100)")
	private String email;
	
	@Column(name = "gioitinh", columnDefinition = "nvarchar(20)")
	private String gioiTinh;
	
	@Column(name = "ngaysinh", columnDefinition = "DATETIME")
	private Date ngaySinh;
	
	@Column(name = "mota", columnDefinition = "nvarchar(255)")
	private String moTa;
	
	@Column(name = "ngaydangky", columnDefinition = "DATETIME")
	private Date ngayDangKy;
	
	@OneToMany(mappedBy = "khachHang", fetch = FetchType.LAZY)
	private List<HoaDonEntity> hoaDonEntities  = new ArrayList<>();
	
	@OneToMany(mappedBy = "khachHang", fetch = FetchType.LAZY)
	private List<DanhGiaSanPhamEntity> danhGiaSanPhamEntities = new ArrayList<>();
	
	@OneToOne(mappedBy = "khachHang", fetch = FetchType.LAZY)
	private GioHangEntity gioHangEntities ;


	@OneToMany(mappedBy = "khachHang", fetch = FetchType.LAZY)
	private List<KhachHangYeuThichSanPhamEntity> khachHangYeuThichSanPhamEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "khachHang", fetch = FetchType.LAZY)
	private List<ThongTinMuaHangEntity> thongTinMuaHangEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "khachHang", fetch = FetchType.LAZY)
	private List<TichDiemEntity> tichDiemEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "khachHang", fetch = FetchType.LAZY)
	private List<TimKiemSanPhamEntity> timKiemSanPhamEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "khachHang", fetch = FetchType.LAZY)
	private List<ViDienTuEntity> viDienTuEntities = new ArrayList<>();

	public GioHangEntity getGioHangEntities() {
		return gioHangEntities;
	}

	public void setGioHangEntities(GioHangEntity gioHangEntities) {
		this.gioHangEntities = gioHangEntities;
	}

	public String getMa() {
		return ma;
	}

	public void setMa(String ma) {
		this.ma = ma;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public Date getNgayDangKy() {
		return ngayDangKy;
	}

	public void setNgayDangKy(Date ngayDangKy) {
		this.ngayDangKy = ngayDangKy;
	}

	public List<HoaDonEntity> getHoaDonEntities() {
		return hoaDonEntities;
	}

	public void setHoaDonEntities(List<HoaDonEntity> hoaDonEntities) {
		this.hoaDonEntities = hoaDonEntities;
	}

	public List<DanhGiaSanPhamEntity> getDanhGiaSanPhamEntities() {
		return danhGiaSanPhamEntities;
	}

	public void setDanhGiaSanPhamEntities(List<DanhGiaSanPhamEntity> danhGiaSanPhamEntities) {
		this.danhGiaSanPhamEntities = danhGiaSanPhamEntities;
	}


	public List<KhachHangYeuThichSanPhamEntity> getKhachHangYeuThichSanPhamEntities() {
		return khachHangYeuThichSanPhamEntities;
	}

	public void setKhachHangYeuThichSanPhamEntities(List<KhachHangYeuThichSanPhamEntity> khachHangYeuThichSanPhamEntities) {
		this.khachHangYeuThichSanPhamEntities = khachHangYeuThichSanPhamEntities;
	}

	public List<ThongTinMuaHangEntity> getThongTinMuaHangEntities() {
		return thongTinMuaHangEntities;
	}

	public void setThongTinMuaHangEntities(List<ThongTinMuaHangEntity> thongTinMuaHangEntities) {
		this.thongTinMuaHangEntities = thongTinMuaHangEntities;
	}

	public List<TichDiemEntity> getTichDiemEntities() {
		return tichDiemEntities;
	}

	public void setTichDiemEntities(List<TichDiemEntity> tichDiemEntities) {
		this.tichDiemEntities = tichDiemEntities;
	}

	public List<TimKiemSanPhamEntity> getTimKiemSanPhamEntities() {
		return timKiemSanPhamEntities;
	}

	public void setTimKiemSanPhamEntities(List<TimKiemSanPhamEntity> timKiemSanPhamEntities) {
		this.timKiemSanPhamEntities = timKiemSanPhamEntities;
	}

	public List<ViDienTuEntity> getViDienTuEntities() {
		return viDienTuEntities;
	}

	public void setViDienTuEntities(List<ViDienTuEntity> viDienTuEntities) {
		this.viDienTuEntities = viDienTuEntities;
	}
}

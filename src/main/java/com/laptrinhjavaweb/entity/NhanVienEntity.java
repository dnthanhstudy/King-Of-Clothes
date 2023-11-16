package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "nhanvien")
public class NhanVienEntity extends BaseEntity{
	
	@Column(name = "ma" , unique = true, nullable = false)
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
	
	@Column(name = "ngaysinh", columnDefinition = "DATE")
	private Date ngaySinh;
	
	@Column(name = "anh")
	private String anh;
	
	@Column(name = "diachi", columnDefinition = "nvarchar(255)")
	private String diaChi;
	
	@Column(name = "cancuoccongdan", columnDefinition = "char(12)")
	private String canCuocCongDan;
	
	@Column(name = "ngaycap", columnDefinition = "DATE")
	private Date ngayCap;
	
	@Column(name = "resttoken")
	private String restToken;
	
	@ManyToOne
	@JoinColumn(name = "idchucvu")
	private ChucVuEntity chucVu;
	
	@OneToMany(mappedBy = "nhanVien", fetch = FetchType.LAZY)
	private List<CaLamEntity> caLamEntities = new ArrayList<>();
	
	@OneToMany(mappedBy = "nhanVien", fetch = FetchType.LAZY)
	private List<HoaDonEntity> hoaDonEntities  = new ArrayList<>();

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

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getCanCuocCongDan() {
		return canCuocCongDan;
	}

	public void setCanCuocCongDan(String canCuocCongDan) {
		this.canCuocCongDan = canCuocCongDan;
	}

	public Date getNgayCap() {
		return ngayCap;
	}

	public void setNgayCap(Date ngayCap) {
		this.ngayCap = ngayCap;
	}

	public String getRestToken() {
		return restToken;
	}

	public void setRestToken(String restToken) {
		this.restToken = restToken;
	}

	public ChucVuEntity getChucVu() {
		return chucVu;
	}

	public void setChucVu(ChucVuEntity chucVu) {
		this.chucVu = chucVu;
	}

	public List<CaLamEntity> getCaLamEntities() {
		return caLamEntities;
	}

	public void setCaLamEntities(List<CaLamEntity> caLamEntities) {
		this.caLamEntities = caLamEntities;
	}

	public List<HoaDonEntity> getHoaDonEntities() {
		return hoaDonEntities;
	}

	public void setHoaDonEntities(List<HoaDonEntity> hoaDonEntities) {
		this.hoaDonEntities = hoaDonEntities;
	}
}

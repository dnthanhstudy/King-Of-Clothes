package com.laptrinhjavaweb.entity;

import com.laptrinhjavaweb.model.enumentity.TrangThaiHoaDonEnum;
import com.laptrinhjavaweb.support.supportgiaohang.TrangThaiHoaDon;

import javax.persistence.*;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "hoadon")

public class HoaDonEntity extends BaseEntity{

	@Column(name = "ma", unique = true, columnDefinition = "char(10)")
	private String ma;
	@Column(name = "magiaohang", unique = true)
	private String maGiaoHang;

	public String getMaGiaoHang() {
		return maGiaoHang;
	}

	public void setMaGiaoHang(String maGiaoHang) {
		this.maGiaoHang = maGiaoHang;
	}

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

	@Column(name = "tienship")
	private Double tienShip;


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

	public void setTrangThai(TrangThaiHoaDonEnum trangThai){
		if (trangThai == TrangThaiHoaDonEnum.CHUANBIDATHANNG){
			super.setTrangThai("CHUANBIDATHANG");
		} else if (trangThai==TrangThaiHoaDonEnum.CHONHANDON){
			super.setTrangThai("CHONHANDON");
		}else if (trangThai==TrangThaiHoaDonEnum.DANHANDON){
			super.setTrangThai("DANHANDON");
		}else if (trangThai==TrangThaiHoaDonEnum.DANGVANCHUYEN){
			super.setTrangThai("DANGVANCHUYEN");
		}else if (trangThai==TrangThaiHoaDonEnum.DANHANHANG){
			super.setTrangThai("DANHANHANG");
		}
	}
	@Override
	public String getTrangThai() {
		String tt = super.getTrangThai();
		return tt.equals(TrangThaiHoaDon.CHONHANDON)?"Chờ nhận đơn":
				tt.equals(TrangThaiHoaDon.DANHANDON)?"Đã nhận đơn"
				:tt.equals(TrangThaiHoaDon.DANGGIAOHANG)?"Đang giao hàng":
				tt.equals(TrangThaiHoaDon.HUYDON)?"Huỷ đơn":
				tt.equals(TrangThaiHoaDon.DANHANHANG)?"Đã nhận hàng":"";
	}

	public void setThongTinDatHang(ThongTinMuaHangEntity thongTinMuaHang){
		diaChi = thongTinMuaHang.getDiaChi();
		sodienthoai = thongTinMuaHang.getSoDienThoai();
		tenNguoiNhan = thongTinMuaHang.getTen();
//		StringBuilder stringBuilder = new StringBuilder();
//		stringBuilder.append(thongTinMuaHang.getIdXa()).append(" ").append(thongTinMuaHang.getIdHuyen()).append(" ").append(thongTinMuaHang.getIdThanhPho());
//		diaChiId = stringBuilder.toString();
	}

	public Double getTienShip() {
		return tienShip;
	}

	public void setTienShip(Double tienShip) {
		this.tienShip = tienShip;
	}

	public String getMa() {
		return ma.trim();
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
	public Double getTongTien() {
		try {
			return tongTienHang+tienShip;
		}catch (Exception e){
			return 0D;
		}
	}
	public Double getTienKhachTraOnline() {
		if (phuongThucThanhToan.equals("CHUYENKHOAN")){
			return 0D;
		}
		return tienShip==null?tongTienHang:tienShip+tongTienHang;
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
		return phuongThucThanhToan.equals("CHUYENKHOAN")?"Đã thanh toán":"Thanh toán khi nhận hàng";
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

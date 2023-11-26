package com.laptrinhjavaweb.entity;

import java.util.Date;
import com.laptrinhjavaweb.model.enumentity.TrangThaiHoaDonEnum;
import com.laptrinhjavaweb.support.supportgiaohang.TrangThaiHoaDon;

import javax.persistence.*;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.laptrinhjavaweb.model.enumentity.TrangThaiHoaDonEnum;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.context.annotation.Bean;

@Entity
@Table(name = "hoadon")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class HoaDonEntity extends BaseEntity{

	@Column(name = "ma", unique = true)
	private String ma;

	@Column(name = "magiaohang", unique = true)
	private String maGiaoHang;

	@Column(name = "mota", columnDefinition = "TEXT")
	private String moTa;
	
	@Column(name = "tongtienhang")
	private Double tongTienHang;
	
	@Column(name = "tienkhachtra")
	private Double tienKhachTra;
	
	@Column(name = "phuongthucthanhtoan")
	private String phuongThucThanhToan;
	
	@Column(name = "ngaydat", columnDefinition = "TIMESTAMP")
	private Date ngayDat;
	
	@Column(name = "ngaydukiengiaohang", columnDefinition = "TIMESTAMP")
	private Date ngayDuKienGiaoHang;
	
	@Column(name = "ngaythanhtoan", columnDefinition = "TIMESTAMP")
	private Date ngayThanhToan;
	
	@Column(name = "ngaynhanhang", columnDefinition = "TIMESTAMP")
	private Date ngayNhanHang;
	
	@Column(name = "tennguoinhan")
	private String tenNguoiNhan;
	
	@Column(name = "sodienthoai")
	private String sodienthoai;
	
	@Column(name = "diachi")
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
	
	@OneToMany(mappedBy = "hoaDon",cascade = CascadeType.REMOVE)
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

	public Double getTienShip() {
		return tienShip==null?0:tienShip;
	}

	public Double getTienKhachTraOnline() {
		if (phuongThucThanhToan.equals("CHUYENKHOAN")){
			return 0D;
		}
		return getTienShip()+tongTienHang;
	}

	public String getPhuongThucThanhToan() {
		return phuongThucThanhToan.equals("CHUYENKHOAN")?"Đã thanh toán":"Thanh toán khi nhận hàng";
	}

}

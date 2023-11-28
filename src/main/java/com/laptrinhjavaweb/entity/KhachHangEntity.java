package com.laptrinhjavaweb.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class KhachHangEntity extends BaseEntity{
	
	@Column(name = "ma", unique = true, nullable = false)
	private String ma;
	
	@Column(name = "matkhau")
	private String matKhau;
	
	@Column(name = "ten")
	private String ten;
	
	@Column(name = "sodienthoai", unique = true)
	private String soDienThoai;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "gioitinh")
	private String gioiTinh;
	
	@Column(name = "ngaysinh", columnDefinition = "TIMESTAMP")
	private Date ngaySinh;
	
	@Column(name = "mota")
	private String moTa;
	
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
}

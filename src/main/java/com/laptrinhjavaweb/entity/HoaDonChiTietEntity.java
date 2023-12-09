package com.laptrinhjavaweb.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Entity
@Table(name = "hoadonchitiet")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class HoaDonChiTietEntity extends BaseEntity{

	@Column(name = "soluong")
	private Integer soLuong;
	
	@Column(name = "gia")
	private Double gia;
	
	@Column(name = "thanhtien")
	private Double thanhtien;
		
	@ManyToOne
	@JoinColumn(name = "idbienthe")
	private BienTheEntity bienThe;
	
	@ManyToOne
	@JoinColumn(name = "idkhuyenmai")
	private KhuyenMaiEntity khuyenMai;
	
	@ManyToOne
	@JoinColumn(name = "idhoadon")
	private HoaDonEntity hoaDon;

	public Double getGiaTien(){
		if (bienThe.getGia()==null){
			return bienThe.getSanPham().getGia()*soLuong;
		}else return bienThe.getGia();
	}


	public Double getGiaTienKm(){
		List<KhuyenMaiSanPhamEntity> dsKhuyenMai = bienThe.getSanPham().getKhuyenMaiSanPhamEntities();
		LocalDate ngayHienTai = LocalDate.now();

		Optional<KhuyenMaiSanPhamEntity> khuyenMaiHopLeOptional = dsKhuyenMai.stream()
				.filter(khuyenMai -> {
					Date ngayBatDau = khuyenMai.getKhuyenMai().getNgayBatDau();
					Date ngayKetThuc = khuyenMai.getKhuyenMai().getNgayKetThuc();

					LocalDate localNgayBatDau = ngayBatDau.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
					LocalDate localNgayKetThuc = ngayKetThuc.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();

					return !localNgayBatDau.isAfter(ngayHienTai) && !localNgayKetThuc.isBefore(ngayHienTai);
				})
				.findFirst();

		if (khuyenMaiHopLeOptional.isPresent()) {
			KhuyenMaiSanPhamEntity khuyenMaiHopLe = khuyenMaiHopLeOptional.get();
			KhuyenMaiEntity khuyenMai = khuyenMaiHopLe.getKhuyenMai();
			Double giaTri = Double.parseDouble(khuyenMai.getGiaTri());
			if (khuyenMai.getLoai().equals("1"))
				return getGiaTien()*giaTri;
			return getGiaTien()-giaTri;
		} else {
			return null;
		}


	}
	public Double getTongTien(){
		return getGiaTien()*soLuong;
	}
	public String getHinhAnh() {
		return bienThe.getHinhAnh()==null?
				bienThe.getSanPham().getAnhSanPhamEntities().get(0).getHinhAnh(): bienThe.getHinhAnh();
	}

}

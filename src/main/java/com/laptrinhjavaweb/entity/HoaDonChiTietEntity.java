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
	private Double thanhTien;

	@ManyToOne
	@JoinColumn(name = "idsanpham")
	private SanPhamEntity sanPham;
		
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

	public KhuyenMaiEntity getKM(){
		return this.khuyenMai;
	}

	private Optional<KhuyenMaiSanPhamEntity> getKhuyenMai(){
		List<KhuyenMaiSanPhamEntity> dsKhuyenMai = bienThe.getSanPham().getKhuyenMaiSanPhamEntities();
		LocalDate ngayHienTai = LocalDate.now();

		return dsKhuyenMai.stream()
				.filter(khuyenMai1 -> {
					Date ngayBatDau = khuyenMai1.getKhuyenMai().getNgayBatDau();
					Date ngayKetThuc = khuyenMai1.getKhuyenMai().getNgayKetThuc();

					LocalDate localNgayBatDau = ngayBatDau.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
					LocalDate localNgayKetThuc = ngayKetThuc.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();

					return !localNgayBatDau.isAfter(ngayHienTai) &&
							!localNgayKetThuc.isBefore(ngayHienTai)&&khuyenMai1.getKhuyenMai().getSoLuong()>0
							&&!khuyenMai1.getTrangThai().equals("EXPIRED");
				})
				.findFirst();
	}
	public Double getGiaTienKm(){
		Optional<KhuyenMaiSanPhamEntity> khuyenMaiHopLeOptional = getKhuyenMai();
		if (khuyenMaiHopLeOptional.isPresent()) {
			KhuyenMaiSanPhamEntity khuyenMaiHopLe = khuyenMaiHopLeOptional.get();
			if (khuyenMaiHopLe.getTrangThai().equals("EXPIRED")||khuyenMaiHopLe.getTrangThai().equals("DELETE")){
				return null;
			}
			KhuyenMaiEntity khuyenMai = khuyenMaiHopLe.getKhuyenMai();
			Double giaTri = khuyenMai.getGiaTri();
			if (khuyenMai.getLoai().equals("1"))
			{
				return getGiaTien() * (100 - giaTri) / 100;
			}
			return getGiaTien()-giaTri;
		} else {
			return null;
		}
	}

	public Double getTongTien(){
		Double giaTienKm = getGiaTienKm();
		if (giaTienKm==null){
			return getGiaTien()*soLuong;
		}
		return giaTienKm*soLuong;
	}
	public String getHinhAnh() {
		return bienThe.getHinhAnh()==null?
				bienThe.getSanPham().getAnhSanPhamEntities().get(0).getHinhAnh(): bienThe.getHinhAnh();
	}

}

package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.entity.*;
import com.laptrinhjavaweb.repository.DanhMucRepository;
import com.laptrinhjavaweb.repository.KhuyenMaiSanPhamRepository;
import com.laptrinhjavaweb.repository.ThuongHieuRepository;
import com.laptrinhjavaweb.response.AnhSanPhamResponse;
import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.response.ThuocTinhResponse;
import com.laptrinhjavaweb.resquest.SanPhamRequest;
import com.laptrinhjavaweb.utils.DateUtil;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class SanPhamConverter {

	@Autowired
	private ModelMapper modelMapper;
	
	@Autowired
	private AnhSanPhamConverter anhSanPhamConverter;
	
	@Autowired
	private ThuocTinhConverter thuocTinhConverter;
	
	@Autowired
	private DanhMucConverter danhMucConverter;
	
	@Autowired
	private ThuongHieuConverter thuongHieuConverter;

	@Autowired
	private DanhMucRepository danhMucRepository;

	@Autowired
	private ThuongHieuRepository thuongHieuRepository;

	@Autowired
	private KhuyenMaiSanPhamRepository khuyenMaiSanPhamRepository;


	public SanPhamResponse convertToResponse(SanPhamEntity entity) {
		SanPhamResponse response = modelMapper.map(entity, SanPhamResponse.class);
		response.setDanhMuc(danhMucConverter.convertToResponse(entity.getDanhMuc()));
		response.setThuongHieu(thuongHieuConverter.convertToResponse(entity.getThuongHieu()));
		List<AnhSanPhamResponse> anhSanPhamResponses = entity.getAnhSanPhamEntities().stream().map(
				item -> anhSanPhamConverter.convertToResponse(item)).collect(Collectors.toList());
		List<ThuocTinhResponse> thuocTinhResponses = entity.getThuocTinhEntities().stream().map(
				item -> thuocTinhConverter.convertToResponse(item)).collect(Collectors.toList());
		KhuyenMaiSanPhamEntity khuyenMaiSanPhamEntity = khuyenMaiSanPhamRepository.findBySanPham_idAndTrangThai(entity.getId(), SystemConstant.ACTICE);
		if(khuyenMaiSanPhamEntity != null){
			response.setIsCoupon(true);
			KhuyenMaiEntity khuyenMaiEntity = khuyenMaiSanPhamEntity.getKhuyenMai();
			String loaiGiammGia = null;
			Double giaBan = null;
			Double giaTri = Double.parseDouble(khuyenMaiEntity.getGiaTri());
			if(khuyenMaiEntity.getLoai().equals("1")){
				loaiGiammGia = "%";
				giaBan = entity.getGia() * ((100 - giaTri) / 100);
			}else{
				loaiGiammGia = "VNĐ";
				giaBan = entity.getGia() - giaTri;
			}

			response.setGiaTri(giaTri);
			response.setSoLuongKhuyenMai(khuyenMaiEntity.getSoLuong());
			response.setLoaiGiamGia(loaiGiammGia);
			response.setGiaBan(giaBan);
			response.setExpired(DateUtil.findDifference(khuyenMaiEntity.getNgayBatDau() , khuyenMaiEntity.getNgayKetThuc()));
		}
		response.setThuocTinh(thuocTinhResponses);
		response.setAnh(anhSanPhamResponses);
		return response;
	}

	public SanPhamEntity convertToEntity(SanPhamRequest request){
		SanPhamEntity entity = modelMapper.map(request, SanPhamEntity.class);
		DanhMucEntity danhMucEntity = danhMucRepository.findBySlug(request.getDanhMucSlug());
		ThuongHieuEntity thuongHieuEntity = thuongHieuRepository.findBySlug(request.getThuongHieuSlug());
		entity.setDanhMuc(danhMucEntity);
		entity.setThuongHieu(thuongHieuEntity);
		return entity;
	}
}

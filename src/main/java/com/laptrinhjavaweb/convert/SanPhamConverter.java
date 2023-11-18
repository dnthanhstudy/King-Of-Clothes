package com.laptrinhjavaweb.convert;

import java.util.List;
import java.util.stream.Collectors;

import com.laptrinhjavaweb.entity.DanhMucEntity;
import com.laptrinhjavaweb.entity.ThuongHieuEntity;
import com.laptrinhjavaweb.repository.DanhMucRepository;
import com.laptrinhjavaweb.repository.ThuongHieuRepository;
import com.laptrinhjavaweb.resquest.SanPhamRequest;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.response.AnhSanPhamResponse;
import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.response.ThuocTinhResponse;

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
	
	public SanPhamResponse convertToResponse(SanPhamEntity entity) {
		SanPhamResponse response = modelMapper.map(entity, SanPhamResponse.class);
		response.setDanhMuc(danhMucConverter.convertToResponse(entity.getDanhMuc()));
		response.setThuongHieu(thuongHieuConverter.convertToResponse(entity.getThuongHieu()));
		List<AnhSanPhamResponse> anhSanPhamResponses = entity.getAnhSanPhamEntities().stream().map(
				item -> anhSanPhamConverter.convertToResponse(item)).collect(Collectors.toList());
		List<ThuocTinhResponse> thuocTinhResponses = entity.getThuocTinhEntities().stream().map(
				item -> thuocTinhConverter.convertToResponse(item)).collect(Collectors.toList());
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

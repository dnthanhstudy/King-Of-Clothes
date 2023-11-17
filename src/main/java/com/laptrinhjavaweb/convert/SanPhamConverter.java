package com.laptrinhjavaweb.convert;

import java.util.List;
import java.util.stream.Collectors;

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
}

package com.laptrinhjavaweb.convert;

import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.entity.ThuocTinhEntity;
import com.laptrinhjavaweb.response.GiaTriThuocTinhResponse;
import com.laptrinhjavaweb.response.ThuocTinhResponse;

@Component
public class ThuocTinhConverter {

	@Autowired
	private ModelMapper modelMapper;
	
	@Autowired
	private GiaTriThuocTinhConverter giaTriThuocTinhConverter;
	
	public ThuocTinhResponse convertToResponse(ThuocTinhEntity entity) {
		ThuocTinhResponse response = modelMapper.map(entity, ThuocTinhResponse.class);
		List<GiaTriThuocTinhResponse> giaTriThuocTinhResponses = entity.getGiaTriThuocTinhEntities().stream().map(
				item -> giaTriThuocTinhConverter.convertToResponse(item)
				).collect(Collectors.toList());
		response.setGiaTriThuocTinh(giaTriThuocTinhResponses);
		return response;
	}
}

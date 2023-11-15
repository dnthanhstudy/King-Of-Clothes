package com.laptrinhjavaweb.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.entity.GiaTriThuocTinhEntity;
import com.laptrinhjavaweb.response.GiaTriThuocTinhResponse;

@Component
public class GiaTriThuocTinhConverter {

	@Autowired
	private ModelMapper modelMapper;
	
	public GiaTriThuocTinhResponse convertToResponse(GiaTriThuocTinhEntity entity) {
		GiaTriThuocTinhResponse response = modelMapper.map(entity, GiaTriThuocTinhResponse.class);
		return response;
	}
}

package com.laptrinhjavaweb.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.entity.DanhMucEntity;
import com.laptrinhjavaweb.response.DanhMucResponse;

@Component
public class DanhMucConverter {

	@Autowired
	private ModelMapper modelMapper;
	
	public DanhMucResponse convertToResponse(DanhMucEntity entity) {
		DanhMucResponse response = modelMapper.map(entity, DanhMucResponse.class);
		return response;
	}
}

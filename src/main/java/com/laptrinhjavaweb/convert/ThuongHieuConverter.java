package com.laptrinhjavaweb.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.entity.ThuongHieuEntity;
import com.laptrinhjavaweb.response.ThuongHieuResponse;

@Component
public class ThuongHieuConverter {

	@Autowired
	private ModelMapper modelMapper;
	
	public ThuongHieuResponse convertToResponse(ThuongHieuEntity entity) {
		ThuongHieuResponse response = modelMapper.map(entity, ThuongHieuResponse.class);
		return response;
	}
}

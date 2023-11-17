package com.laptrinhjavaweb.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.entity.AnhSanPhamEntity;
import com.laptrinhjavaweb.response.AnhSanPhamResponse;

@Component
public class AnhSanPhamConverter {

	@Autowired
	private ModelMapper modelMapper;
	
	public AnhSanPhamResponse convertToResponse(AnhSanPhamEntity entity) {
		AnhSanPhamResponse response = modelMapper.map(entity, AnhSanPhamResponse.class);
		return response;
	}
}

package com.laptrinhjavaweb.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.entity.BienTheEntity;
import com.laptrinhjavaweb.response.BienTheResponse;

@Component
public class BienTheConverter {

	@Autowired
	private ModelMapper modelMapper;
	
	public BienTheResponse convertToResponse(BienTheEntity entity) {
		BienTheResponse response = modelMapper.map(entity, BienTheResponse.class);
		return response;
	}
}

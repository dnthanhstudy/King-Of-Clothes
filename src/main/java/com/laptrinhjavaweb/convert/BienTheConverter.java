package com.laptrinhjavaweb.convert;

import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.repository.SanPhamRepository;
import com.laptrinhjavaweb.resquest.BienTheRequest;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.entity.BienTheEntity;
import com.laptrinhjavaweb.response.BienTheResponse;

@Component
public class BienTheConverter {

	@Autowired
	private ModelMapper modelMapper;

	@Autowired
	private SanPhamRepository sanPhamRepository;
	
	public BienTheResponse convertToResponse(BienTheEntity entity) {
		BienTheResponse response = modelMapper.map(entity, BienTheResponse.class);
		return response;
	}

	public BienTheEntity convertToEntity(BienTheRequest request){
		BienTheEntity entity = modelMapper.map(request, BienTheEntity.class);
		SanPhamEntity sanPhamEntity = sanPhamRepository.findById(request.getIdSanPham()).get();
		entity.setSanPham(sanPhamEntity);
		return entity;
	}
}

package com.laptrinhjavaweb.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.convert.BienTheConverter;
import com.laptrinhjavaweb.entity.BienTheEntity;
import com.laptrinhjavaweb.repository.BienTheRepository;
import com.laptrinhjavaweb.repository.GiaTriThuocTinhBienTheRepository;
import com.laptrinhjavaweb.response.BienTheResponse;
import com.laptrinhjavaweb.service.IBienTheService;

@Service
public class BienTheService implements IBienTheService{

	@Autowired
	private GiaTriThuocTinhBienTheRepository giaTriThuocTinhBienTheRepository;
	
	@Autowired
	private BienTheRepository bienTheRepository;
	
	@Autowired
	private BienTheConverter bienTheConverter;

	@Override
	public BienTheResponse findByIdGiaTriThuocTinh(List<Long> giaTriThuocTinhIds) {
		Long idBienThe = giaTriThuocTinhBienTheRepository.findBienThe(giaTriThuocTinhIds);
		if(idBienThe == null) {
			return null;
		}
		BienTheEntity bienTheEntity = bienTheRepository.findById(idBienThe).get();
		BienTheResponse bienTheResponse = bienTheConverter.convertToResponse(bienTheEntity);
		return bienTheResponse;
	}
}

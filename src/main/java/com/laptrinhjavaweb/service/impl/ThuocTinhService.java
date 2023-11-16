package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.convert.ThuocTinhConverter;
import com.laptrinhjavaweb.entity.ThuocTinhEntity;
import com.laptrinhjavaweb.repository.ThuocTinhRepository;
import com.laptrinhjavaweb.response.FilterResponse;
import com.laptrinhjavaweb.service.IThuocTinhService;

@Service
public class ThuocTinhService implements IThuocTinhService{

	@Autowired
	private ThuocTinhRepository thuocTinhRepository;
	
	@Autowired
	private ThuocTinhConverter thuocTinhConvert;
	
	@Override
	public List<FilterResponse> filter() {
		List<FilterResponse> results = new ArrayList<>();
		List<String> slugs = thuocTinhRepository.findAllDistinctSlug();
		for (String slug : slugs) {
			List<ThuocTinhEntity> thuocTinhEntities = thuocTinhRepository.findAllBySlug(slug);
			FilterResponse filterResponse = thuocTinhConvert.convertToFilterResponse(thuocTinhEntities);
			results.add(filterResponse);
		}
		return results;
	}

}

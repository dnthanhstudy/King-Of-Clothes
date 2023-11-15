package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.convert.SanPhamConverter;
import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.repository.SanPhamRepository;
import com.laptrinhjavaweb.response.PageableResponse;
import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.service.ISanPhamService;

@Service
public class SanPhamService implements ISanPhamService{
	
	@Autowired
	private SanPhamRepository sanPhamRepository;
	
	@Autowired
	private SanPhamConverter sanPhamConvert;

	@Override
	public Map<String, Object> pagingOrSearchOrFindAll(String param, Integer pageCurrent, Integer limit) {
		Map<String, Object> results = new HashMap<>();
		Boolean isAll = false;
		Page<SanPhamEntity> page = null;
		List<SanPhamResponse> listSanPhamResponse = new ArrayList<>();
		if(pageCurrent == null && limit == null) {
			isAll = true;
			Pageable wholePage = Pageable.unpaged();
			page = sanPhamRepository.findAll(wholePage);
		}else {
			Pageable pageable = PageRequest.of(pageCurrent - 1, limit);
			if(param != null) {
				List<SanPhamEntity> listSanPhamEntity = sanPhamRepository.seachs(param);
				int sizeOfListSanPhamEntityt = listSanPhamEntity.size();
				int start = (int) pageable.getOffset();
				int end = Math.min((start + pageable.getPageSize()), sizeOfListSanPhamEntityt);
				List<SanPhamEntity> pageContent = listSanPhamEntity.subList(start, end);
				page = new PageImpl<>(pageContent, pageable, sizeOfListSanPhamEntityt);

			}else {
				page = sanPhamRepository.findAll(pageable);
			}
		}
		listSanPhamResponse = page.getContent().stream().map(
				item -> sanPhamConvert.convertToResponse(item)
		).collect(Collectors.toList());
		
		if(listSanPhamResponse.isEmpty()) {
			return null;
		}
		results.put("data", listSanPhamResponse);
		if(!isAll) {
			PageableResponse pageableResponse = new PageableResponse();
			pageableResponse.setPageCurrent(pageCurrent);
			pageableResponse.setTotalPage(page.getTotalPages());
			results.put("meta", pageableResponse);
		}
		return results;
	}

	@Override
	public SanPhamResponse findBySlug(String slug) {
		SanPhamEntity sanPhamEntity = sanPhamRepository.findBySlug(slug);
		if(sanPhamEntity == null) {
			return null;
		}
		return sanPhamConvert.convertToResponse(sanPhamEntity);
	}

}

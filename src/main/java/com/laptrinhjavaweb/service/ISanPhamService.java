package com.laptrinhjavaweb.service;

import java.util.Map;

import com.laptrinhjavaweb.response.SanPhamResponse;

public interface ISanPhamService {

	Map<String, Object> pagingOrSearchOrFindAll(String param, Integer pageCurrent, Integer limit);
	
	SanPhamResponse findBySlug(String slug);
}

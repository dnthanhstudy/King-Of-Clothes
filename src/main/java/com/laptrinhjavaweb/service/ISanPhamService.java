package com.laptrinhjavaweb.service;

import java.util.List;
import java.util.Map;

import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.resquest.SanPhamRequest;

public interface ISanPhamService {

	Map<String, Object> pagingOrSearchOrFindAll(String param, Integer pageCurrent, Integer limit);
	
	SanPhamResponse findBySlug(String slug);

	List<SanPhamResponse> filters(Map<String, Object> params);

	SanPhamResponse save(SanPhamRequest sanPhamRequest);
}

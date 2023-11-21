package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.resquest.SanPhamRequest;

import java.util.Map;

public interface ISanPhamService {

	Map<String, Object> pagingOrSearchOrFindAllOrFilter(Integer pageCurrent, Integer limit, String param, Map<String, Object> params);

	SanPhamResponse findBySlug(String slug);

	SanPhamResponse save(SanPhamRequest sanPhamRequest);
}

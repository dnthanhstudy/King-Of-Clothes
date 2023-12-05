package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.resquest.SanPhamRequest;

import java.util.Map;

public interface ISanPhamService {

	Map<String, Object> pagingOrSearchOrFindAllOrFilterOrCategories(Integer pageCurrent, Integer limit, String param, Map<String, Object> params, String slug);

	SanPhamResponse findBySlug(String slug);

	SanPhamEntity findEntityBySlug(String slug);

	SanPhamResponse save(SanPhamRequest sanPhamRequest);

}

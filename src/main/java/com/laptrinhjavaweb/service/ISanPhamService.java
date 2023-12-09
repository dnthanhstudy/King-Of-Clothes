package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.resquest.SanPhamRequest;

import java.util.List;
import java.util.Map;

public interface ISanPhamService {

	Map<String, Object> pagingOrSearchOrFindAllOrFilterOrCategories(Integer pageCurrent, Integer limit, String param, Map<String, Object> params, String slug);

	SanPhamResponse findBySlug(String slug);

	SanPhamResponse save(SanPhamRequest sanPhamRequest);

	List<SanPhamResponse> random(
			Integer sanPhamBanChay, Integer sanPhamMoi, Integer sanPhamNhieuLuotXem, Integer sanPhamNoiBat, Integer sanPhamPhoBien,
			Integer limit);

	List<SanPhamResponse> same(String slug);

	void delete(String slug);

}

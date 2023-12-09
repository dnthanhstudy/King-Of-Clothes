package com.laptrinhjavaweb.repository.custom;

import java.util.List;
import java.util.Map;

import com.laptrinhjavaweb.entity.SanPhamEntity;

public interface SanPhamRepositoryCustom {
	
	List<SanPhamEntity> seachs(String param);

	List<Long> filters(Map<String, Object> params);

	List<SanPhamEntity> random(
			Integer sanPhamBanChay, Integer sanPhamMoi, Integer sanPhamNhieuLuotXem, Integer sanPhamNoiBat, Integer sanPhamPhoBien,
			Integer limit);

	List<SanPhamEntity> same(String slug);
}

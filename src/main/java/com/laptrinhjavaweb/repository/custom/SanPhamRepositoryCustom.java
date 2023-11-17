package com.laptrinhjavaweb.repository.custom;

import java.util.List;

import com.laptrinhjavaweb.entity.SanPhamEntity;

public interface SanPhamRepositoryCustom {
	
	List<SanPhamEntity> seachs(String param);

}

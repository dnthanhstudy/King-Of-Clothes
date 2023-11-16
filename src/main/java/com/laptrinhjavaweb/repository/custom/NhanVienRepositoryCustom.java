package com.laptrinhjavaweb.repository.custom;

import java.util.List;

import com.laptrinhjavaweb.entity.NhanVienEntity;

public interface NhanVienRepositoryCustom {

	List<NhanVienEntity> searchs(String param);
}

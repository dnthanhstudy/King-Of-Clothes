package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.ThuongHieuEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ThuongHieuRepository extends JpaRepository<ThuongHieuEntity, Long>{
	
	ThuongHieuEntity findBySlug(String slug);

	List<ThuongHieuEntity> findAllByTrangThai(String trangThai);
}

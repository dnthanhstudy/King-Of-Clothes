package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.ThuongHieuEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ThuongHieuRepository extends JpaRepository<ThuongHieuEntity, Long>{
	
	ThuongHieuEntity findBySlug(String slug);

}

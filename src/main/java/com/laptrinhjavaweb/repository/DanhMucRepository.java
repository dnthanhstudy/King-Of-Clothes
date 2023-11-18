package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.DanhMucEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DanhMucRepository extends JpaRepository<DanhMucEntity, Long>{
	
	DanhMucEntity findBySlug(String slug);

}

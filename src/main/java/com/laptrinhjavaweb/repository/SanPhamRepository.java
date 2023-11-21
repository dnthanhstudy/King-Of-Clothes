package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.repository.custom.SanPhamRepositoryCustom;

public interface SanPhamRepository extends JpaRepository<SanPhamEntity, Long>, SanPhamRepositoryCustom{

	SanPhamEntity findBySlug(String slug);
}

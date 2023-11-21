package com.laptrinhjavaweb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.ThuocTinhEntity;
import com.laptrinhjavaweb.repository.custom.ThuocTinhRepositoryCustom;

public interface ThuocTinhRepository extends JpaRepository<ThuocTinhEntity, Long>, ThuocTinhRepositoryCustom {

	List<ThuocTinhEntity> findAllBySlug(String slug);
}

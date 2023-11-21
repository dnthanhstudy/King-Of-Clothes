package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.repository.custom.GiaTriThuocTinhBienTheRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.GiaTriThuocTinhBienTheEntity;

public interface GiaTriThuocTinhBienTheRepository extends JpaRepository<GiaTriThuocTinhBienTheEntity, Long>, GiaTriThuocTinhBienTheRepositoryCustom {

}

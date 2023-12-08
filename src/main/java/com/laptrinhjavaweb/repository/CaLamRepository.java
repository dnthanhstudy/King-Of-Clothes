package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.CaLamEntity;
import com.laptrinhjavaweb.repository.custom.CaLamRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CaLamRepository extends JpaRepository<CaLamEntity, Long>, CaLamRepositoryCustom {
}

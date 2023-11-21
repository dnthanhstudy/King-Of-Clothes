package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.GioHangEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GioHangRepository extends JpaRepository<GioHangEntity,Long> {
}

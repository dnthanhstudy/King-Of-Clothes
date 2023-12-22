package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.GioHangEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GioHangRepository extends JpaRepository<GioHangEntity,Long> {

    GioHangEntity findByKhachHang_ma(String ma);
}

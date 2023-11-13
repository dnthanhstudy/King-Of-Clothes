package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.NhanVienEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NhanVienRepository extends JpaRepository<NhanVienEntity, Long> {

    NhanVienEntity findByMaAndTrangThai(String ma, String trangThai);
}

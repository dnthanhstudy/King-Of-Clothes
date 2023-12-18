package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.LichSuTichDiemEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LichSuTichDiemRepository extends JpaRepository<LichSuTichDiemEntity, Long> {

    List<LichSuTichDiemEntity> findAll();

    List<LichSuTichDiemEntity> findAllByKhachHang_id(Long idKhachHang);
}

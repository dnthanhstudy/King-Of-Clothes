package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.ChiTieuEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ChiTieuRepository extends JpaRepository<ChiTieuEntity, Long> {
    @Query(value = "SELECT id,ngaysua, ngaytao, nguoisua, nguoitao, trangthai, loaichitieu,sotien, idvidientu  FROM duantotnghiep.chitieu where idvidientu = ?1", nativeQuery = true)
    List<ChiTieuEntity> findByIdVi(Long id);
}

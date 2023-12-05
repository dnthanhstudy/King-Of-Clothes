package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.KhuyenMaiEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface KhuyenMaiRepository extends JpaRepository<KhuyenMaiEntity, Long> {

    KhuyenMaiEntity findByMa(String ma);

    @Query("SELECT km FROM KhuyenMaiEntity km WHERE km.trangThai = ?1")
    List<KhuyenMaiEntity> findAllByTrangThai(String active);
}

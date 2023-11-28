package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.KhuyenMaiEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KhuyenMaiRepository extends JpaRepository<KhuyenMaiEntity, Long> {

    KhuyenMaiEntity findByMa(String ma);
}

package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.BienTheEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;

public interface BienTheRepository extends JpaRepository<BienTheEntity, Long>{
    @Transactional
    @Modifying
    @Query(value = "UPDATE bienthe bt SET bt.trangThai = 'CHANGEVARIANT' WHERE bt.id = :id", nativeQuery = true)
    void updateStatus(@Param("id") Long id);
}

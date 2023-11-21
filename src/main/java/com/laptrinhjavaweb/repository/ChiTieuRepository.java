package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.ChiTieuEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ChiTieuRepository extends JpaRepository<ChiTieuEntity, Long> {
    @Query(value = "SELECT [id]\n" +
            "      ,[ngaysua]\n" +
            "      ,[ngaytao]\n" +
            "      ,[nguoisua]\n" +
            "      ,[nguoitao]\n" +
            "      ,[trangthai]\n" +
            "      ,[loaichitieu]\n" +
            "      ,[sotien]\n" +
            "      ,[idvidientu]\n" +
            "  FROM [dbo].[chitieu]\n" +
            "  WHERE [idvidientu] = ?1", nativeQuery = true)
    List<ChiTieuEntity> findByIdVi(Long id);
}

package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.TrangThaiGiaoHangEntity;
import com.laptrinhjavaweb.model.response.TrangThaiGiaoHangResponse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TrangThaiGiaoHangRepository extends JpaRepository<TrangThaiGiaoHangEntity,Long> {

    @Query("select ttgh from TrangThaiGiaoHangEntity ttgh where ttgh.hoaDon.maGiaoHang=:magiaohang")
    List<TrangThaiGiaoHangResponse> getTrangThaiDonHangByMaGiaoHang(@Param("magiaohang") String maGiaoHang);
}

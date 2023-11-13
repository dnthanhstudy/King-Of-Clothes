package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.GioHangChiTietEntity;
import com.laptrinhjavaweb.model.response.GioHangResponse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GioHangChiTietRepository extends JpaRepository<GioHangChiTietEntity,Long> {

    @Query("select ghct from GioHangChiTietEntity ghct where ghct.gioHang.khachHang.id=:idkh")
    List<GioHangResponse> dsGioHangChiTietByIdKh(@Param("idkh")Long idkh);
}

package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.GioHangChiTietEntity;
import com.laptrinhjavaweb.model.response.GioHangResponse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface GioHangChiTietRepository extends JpaRepository<GioHangChiTietEntity,Long> {

    @Query("select ghct from GioHangChiTietEntity ghct where ghct.gioHang.khachHang.id=:idkh and ghct.trangThai<>'DELETE'")
    List<GioHangResponse> dsGioHangChiTietByIdKh(@Param("idkh")Long idkh);

    @Query("SELECT SUM(ghct.bienThe.gia*ghct.soLuong) FROM GioHangChiTietEntity ghct" +
            " WHERE ghct.gioHang.khachHang.id = :idkh AND ghct.id IN (:lstghct)")
    BigDecimal tongTienTheoGioHangChiTiet(@Param("idkh") Long idkh, @Param("lstghct") List<Long> lstghct);

}

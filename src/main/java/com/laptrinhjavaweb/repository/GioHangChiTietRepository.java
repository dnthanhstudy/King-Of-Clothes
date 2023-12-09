package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.GioHangChiTietEntity;
import com.laptrinhjavaweb.model.response.GioHangResponse;
import com.laptrinhjavaweb.model.response.TongTienGioHangResponse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

@Repository
public interface GioHangChiTietRepository extends JpaRepository<GioHangChiTietEntity,Long> {

    @Query("select ghct from GioHangChiTietEntity ghct where ghct.gioHang.khachHang.id=:idkh and ghct.trangThai not in ('DELETE','PENDING')")
    List<GioHangResponse> dsGioHangChiTietByIdKh(@Param("idkh")Long idkh);

    GioHangChiTietEntity findGioHangChiTietEntitiesByBienThe_IdAndGioHang_KhachHang_IdAndTrangThai(Long bienTheId,Long khachHangId,String trangThai);

    @Query(value = "SELECT SUM(giagoc) as giagoc, SUM(giagiam) as giagiam FROM vw_giohangchitiet_summary WHERE id IN (:lstghct)", nativeQuery = true)
    TongTienGioHangResponse tongTienTheoGioHangChiTiet(@Param("lstghct") List<Long> lstghct);

    @Query(value = "SELECT * FROM giohangchitiet WHERE id IN (:dsghct)",nativeQuery = true)
    List<GioHangChiTietEntity> dsGioHangChiTiet(@Param("dsghct") List<Long> dsghct);

    @Query(value = "update giohangchitiet ghct \n" +
            "join giohang gh on ghct.idgiohang = gh.id \n" +
            "set ghct.trangthai = 'ACTIVE' \n" +
            "where ghct.trangthai = 'PENDING' AND idkhachhang =:idkh",nativeQuery = true)
    @Modifying
    Integer layLaiDsGioHangChiTiet(@Param("idkh")Long idkh);

    @Query(value ="select ghct from GioHangChiTietEntity ghct where ghct.id =:idghct")
    GioHangResponse getGioHangChiTietResponse(@Param("idghct")Long idghct);

    @Modifying
    @Query(value ="update giohangchitiet ghct join giohang gh on  gh.id =ghct.idgiohang\n" +
            "  set ghct.trangthai = 'DELETE' WHERE ghct.TRANGTHAI = 'PENDING' AND idkhachhang =:idkh",nativeQuery = true)
    int updateTrangThaiDaDatThanhCong(@Param("idkh")Long idkh);
}

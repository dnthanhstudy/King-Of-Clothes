package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.HoaDonChiTietEntity;
import com.laptrinhjavaweb.model.response.HoaDonChiTietResponse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HoaDonChiTietRepository extends JpaRepository<HoaDonChiTietEntity,Long> {
    @Query("select hdct from HoaDonChiTietEntity hdct where hdct.hoaDon.id=:idhd ")
    List<HoaDonChiTietResponse> dsHoaDonChiTietByIdHoaDon(@Param("idhd")Long idhd);

    @Query("select hdct from HoaDonChiTietEntity hdct where hdct.hoaDon.id=:idhd ")
    List<HoaDonChiTietEntity> findByHoaDon(@Param("idhd")Long idhd);

    @Query("select hdct from HoaDonChiTietEntity hdct where hdct.hoaDon.trangThai = 'CHUANBIDATHANG' and hdct.hoaDon.khachHang.id=:idkh")
    List<HoaDonChiTietResponse> getHoaDonMoiTaoByIdkh(@Param("idkh")Long idkh);

    HoaDonChiTietEntity findByHoaDon_maAndSanPham_idAndBienThe_id(String maHoaDon, Long idSanPham, Long idKhuyeMai);

}

package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.response.HoaDonChiTietResponse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigDecimal;
import java.util.List;

public interface HoaDonRepository extends JpaRepository<HoaDonEntity,Long> {
    @Query("select hd from HoaDonEntity hd order by hd.ngayDat desc")
    List<HoaDonEntity> dsHoaDon();


    @Query(value = "SELECT SUM(COALESCE(bt.gia, sp.gia) * hdct.soluong) AS total\n" +
            "FROM dbo.hoadon hd\n" +
            "JOIN dbo.hoadonchitiet hdct ON hdct.id = hd.id\n" +
            "JOIN dbo.bienthe bt ON bt.id = hdct.idbienthe\n" +
            "JOIN dbo.sanpham sp ON sp.id = bt.idsanpham\n" +
            "WHERE hd.id =:idhd",nativeQuery = true)
    BigDecimal tongTienByHoaDon(@Param("idhd")Long idhd);
    @Query("select hd from HoaDonEntity hd where hd.trangThai ='CHUANBIDATHANG' and hd.khachHang.id=:idkh ")
    HoaDonEntity findHoaDonMoiDat(@Param("idkh") Long idkh);
}

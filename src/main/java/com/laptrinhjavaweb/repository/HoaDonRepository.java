package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.repository.custom.HoaDonRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigDecimal;
import java.util.List;

public interface HoaDonRepository extends JpaRepository<HoaDonEntity,Long>, HoaDonRepositoryCustom {
    @Query("select hd from HoaDonEntity hd order by hd.ngayDat desc")
    List<HoaDonEntity> dsHoaDon();


    @Query(value = "SELECT SUM(COALESCE(bt.gia, sp.gia) * hdct.soluong) AS total\n" +
            "FROM hoadon hd\n" +
            "left JOIN hoadonchitiet hdct ON hdct.idhoadon = hd.id\n" +
            "left JOIN bienthe bt ON bt.id = hdct.idbienthe\n" +
            "left JOIN sanpham sp ON sp.id = bt.idsanpham\n" +
            "WHERE hd.id =:idhd",nativeQuery = true)
    BigDecimal tongTienByHoaDon(@Param("idhd")Long idhd);
    @Query("select hd from HoaDonEntity hd where hd.trangThai ='CHUANBIDATHANG' and hd.khachHang.id=:idkh ")
    HoaDonEntity findHoaDonMoiDat(@Param("idkh") Long idkh);

    @Query("select hd from HoaDonEntity hd where hd.trangThai not in('HUYDON','DANHANHANG','CHUANBIDATHANG')")
    List<HoaDonResponse> dsHoaDonOnline();

    List<HoaDonResponse> findAllByKhachHang_IdAndTrangThai(Long idkh,String trangThai);

    List<HoaDonResponse> findAllByKhachHang_IdAndTrangThaiNotInOrderByNgayDat(Long idkh,List<String> trangThais);

    List<HoaDonResponse> findAllByTrangThaiNotContains(String trangThai);

    @Query("select hd from HoaDonEntity hd where hd.trangThai ='DANGGIAOHANG' order by hd.ngayGiaoHang")
    List<HoaDonResponse> dsHoaDonDangGiao();

    HoaDonEntity findByMaGiaoHang(String maGiaoHang);
    @Modifying
    @Query("update HoaDonEntity hd set hd.trangThai=:trangthai where hd.maGiaoHang=:magiaohang")
    void thayDoiTrangThaiGiaoHangTheoMaGiaoHang(@Param("magiaohang")String maGiaoHang,@Param("trangthai")String trangThai);

}

package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.model.response.TongTienResponse;
import com.laptrinhjavaweb.repository.custom.HoaDonRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface HoaDonRepository extends JpaRepository<HoaDonEntity,Long>, HoaDonRepositoryCustom {

    HoaDonEntity findByMa(String ma);

    @Query("select hd from HoaDonEntity hd order by hd.ngayDat desc")
    List<HoaDonEntity> dsHoaDon();


    @Query(value = "SELECT SUM(giagoc) as giagoc, SUM(giagiam) as giagiam ," +
            "sum(thucte) as thucte FROM vw_hoadonchitiet_summary WHERE idhoadon =:idhd", nativeQuery = true)
    TongTienResponse tongTienByHoaDon(@Param("idhd")Long idhd);
    @Query("select hd from HoaDonEntity hd where hd.trangThai ='CHUANBIDATHANG' and hd.khachHang.id=:idkh ")
    HoaDonEntity findHoaDonMoiDat(@Param("idkh") Long idkh);

    @Query("select hd from HoaDonEntity hd where hd.trangThai not in('HUYDON','DANHANHANG','CHUANBIDATHANG')")
    List<HoaDonResponse> dsHoaDonOnline();

    List<HoaDonResponse> findAllByKhachHang_IdAndTrangThai(Long idkh,String trangThai);

    List<HoaDonResponse> findAllByKhachHang_IdAndTrangThaiNotInOrderByNgayDat(Long idkh,List<String> trangThais);

    List<HoaDonResponse> findAllByTrangThaiNotContains(String trangThai);

    @Query("select hd from HoaDonEntity hd where hd.trangThai in ('DANGGIAOHANG','DANHANHANG','HUYDON')" +
            " order by hd.ngayGiaoHang")
    List<HoaDonResponse> dsHoaDonDangGiao();

    HoaDonEntity findByMaGiaoHang(String maGiaoHang);
    @Modifying
    @Query("update HoaDonEntity hd set hd.trangThai=:trangthai where hd.maGiaoHang=:magiaohang")
    void thayDoiTrangThaiGiaoHangTheoMaGiaoHang(@Param("magiaohang")String maGiaoHang,@Param("trangthai")String trangThai);

}

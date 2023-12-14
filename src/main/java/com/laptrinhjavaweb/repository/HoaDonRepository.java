package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.model.response.hoadon.ThongTinHoaDonResponse;
import com.laptrinhjavaweb.model.response.hoadon.TongTienResponse;
import com.laptrinhjavaweb.model.response.thongke.DoanhThuBanHangResponse;
import com.laptrinhjavaweb.repository.custom.HoaDonRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface HoaDonRepository extends JpaRepository<HoaDonEntity,Long>, HoaDonRepositoryCustom {
//    @Query("select hd from HoaDonEntity hd order by hd.ngayDat desc")
//    List<HoaDonEntity> dsHoaDon();

    @Query("select hd from HoaDonEntity hd where hd.ma=:mahd")
    ThongTinHoaDonResponse getHoaDonResponse(@Param("mahd")String idhd);

    HoaDonEntity findByMa(String maHoaDon);


    @Query(value = "select * from vw_hoadonchitiet_summary where idhoadon =:idhd", nativeQuery = true)
    TongTienResponse tongTienByHoaDon(@Param("idhd")Long idhd);
    @Query("select hd from HoaDonEntity hd where hd.trangThai ='CHUANBIDATHANG' and hd.khachHang.id=:idkh ")
    HoaDonEntity findHoaDonMoiDat(@Param("idkh") Long idkh);

    @Query("select hd from HoaDonEntity hd where hd.trangThai not in('HUYDON','DANHANHANG','CHUANBIDATHANG') and hd.loai='Online'")
    List<HoaDonResponse> dsHoaDonOnline();

    List<HoaDonResponse> findAllByKhachHang_IdAndTrangThaiAndLoai(Long idkh,String trangThai,String loai);

    List<HoaDonResponse> findAllByKhachHang_IdAndTrangThaiNotInOrderByNgayDat(Long idkh,List<String> trangThais);

    List<HoaDonResponse> findAllByTrangThaiNotContainsAndLoai(String trangThai,String loai);

    @Query("select hd from HoaDonEntity hd where hd.loai='Online' and hd.trangThai in ('DANGGIAOHANG','DANHANHANG','HUYDON')" +
            " order by hd.ngayGiaoHang")
    List<HoaDonResponse> dsHoaDonDangGiao();

    HoaDonEntity findByMaGiaoHang(String maGiaoHang);
    @Modifying
    @Query("update HoaDonEntity hd set hd.trangThai=:trangthai where hd.maGiaoHang=:magiaohang")
    void thayDoiTrangThaiGiaoHangTheoMaGiaoHang(@Param("magiaohang")String maGiaoHang,@Param("trangthai")String trangThai);

//    DoanhThuBanHangResponse doanhThuBanHang();

    List<HoaDonEntity> findAllByTrangThai(String trangThai);

}

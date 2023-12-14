package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.HoaDonChiTietEntity;
import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.model.response.hoadon.ThongTinHoaDonResponse;
import com.laptrinhjavaweb.model.response.hoadon.TongTienResponse;
import com.laptrinhjavaweb.model.response.thongke.DoanhThuBanHangResponse;
import com.laptrinhjavaweb.model.response.thongke.TopResponse;
import com.laptrinhjavaweb.repository.custom.HoaDonRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface HoaDonRepository extends JpaRepository<HoaDonEntity,Long>, HoaDonRepositoryCustom {
//    @Query("select hd from HoaDonEntity hd order by hd.ngayDat desc")
//    List<HoaDonEntity> dsHoaDon();

//    @Procedure(name = "SP_ThongKe")
//    DoanhThuBanHangResponse thongKeDoanhThu(@Param("selectType") Integer selectType);

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



    @Query("select sum(hdct.soLuong) as tong,sp.id,sp.ten as ten from HoaDonChiTietEntity hdct join BienTheEntity bt on hdct.bienThe.id = bt.id " +
            "join SanPhamEntity  sp on sp.id = bt.sanPham.id" +
            " WHERE DATE(hdct.hoaDon.ngayDat) = CURDATE() group by sp.ten,sp.id order by tong desc")
    List<TopResponse> dsKhachHangMuaNhieuNhatTheoTuan();

    @Query("select sum(hdct.soLuong) as tong,sp.id,sp.ten as ten from HoaDonChiTietEntity hdct join BienTheEntity bt on hdct.bienThe.id = bt.id " +
            "join SanPhamEntity  sp on sp.id = bt.sanPham.id" +
            " WHERE DATE(hdct.hoaDon.ngayDat) = CURDATE() group by sp.ten,sp.id order by tong desc")
    List<TopResponse> dsSanPhamBanChayTheoNgay();
    @Query("select sum(hdct.soLuong) as tong,sp.id,sp.ten as ten from HoaDonChiTietEntity hdct join BienTheEntity bt on hdct.bienThe.id = bt.id " +
            "join SanPhamEntity  sp on sp.id = bt.sanPham.id" +
            " WHERE YEARWEEK(hdct.hoaDon.ngayDat) = YEARWEEK(CURDATE()) " +
            "and YEAR(hdct.hoaDon.ngayDat) = YEAR(CURDATE()) group by sp.ten,sp.id order by tong desc")
    List<TopResponse> dsSanPhamBanChayTheoTuan();
    @Query("select sum(hdct.soLuong) as tong,sp.id,sp.ten as ten from HoaDonChiTietEntity hdct join BienTheEntity bt on hdct.bienThe.id = bt.id " +
            "join SanPhamEntity  sp on sp.id = bt.sanPham.id" +
            " WHERE YEAR(hdct.hoaDon.ngayDat) = YEAR(CURDATE()) AND MONTH(hdct.hoaDon.ngayDat) = MONTH(CURDATE()) group by sp.ten,sp.id order by tong desc")
    List<TopResponse> dsSanPhamBanChayTheoThang();
    @Query("select sum(hdct.soLuong) as tong,sp.id,sp.ten as ten from HoaDonChiTietEntity hdct join BienTheEntity bt on hdct.bienThe.id = bt.id " +
            "join SanPhamEntity  sp on sp.id = bt.sanPham.id" +
            " WHERE YEAR(hdct.hoaDon.ngayDat) = YEAR(CURDATE()) group by sp.ten,sp.id order by tong desc")
    List<TopResponse> dsSanPhamBanChayTheoNam();


    @Query(value = "SELECT \n" +
            "                SUM(CASE WHEN loai = 'Online' THEN tongtienhang ELSE 0 END) AS doanhthuonline,\n" +
            "                SUM(CASE WHEN loai = 'Ofline' THEN tongtienhang ELSE 0 END) AS doanhThuOffline,\n" +
            "                sum(hdct.soluong) as tongSoSanPhamDaBan,\n" +
            "                sum(case when hdct.idkhuyenmai is not null then 1 else 0 end) as soLuongKhuyenMaiDaBan\n" +
            "            FROM hoadon hd join hoadonchitiet hdct on hdct.idhoadon = hd.id\n" +
            "            WHERE DATE(ngaydat) = CURDATE()",nativeQuery = true)
    DoanhThuBanHangResponse doanhThuNgay();
    @Query(value = "SELECT \n" +
            "                SUM(CASE WHEN loai = 'Online' THEN tongtienhang ELSE 0 END) AS doanhThuOnline,\n" +
            "                SUM(CASE WHEN loai = 'Ofline' THEN tongtienhang ELSE 0 END) AS doanhThuOffline,\n" +
            "\t\t\t\tsum(hdct.soluong) as tongSoSanPhamDaBan,\n" +
            "                sum(case when hdct.idkhuyenmai is not null then 1 else 0 end) as soLuongKhuyenMaiDaBan\n" +
            "            FROM hoadon hd join hoadonchitiet hdct on hdct.idhoadon = hd.id\n" +
            "            WHERE YEARWEEK(ngaydat) = YEARWEEK(CURDATE()) and YEAR(ngaydat) = YEAR(CURDATE());",nativeQuery = true)
    DoanhThuBanHangResponse doanhThuTuan();
    @Query(value = "SELECT \n" +
            "                SUM(CASE WHEN loai = 'Online' THEN tongtienhang ELSE 0 END) AS doanhThuOnline,\n" +
            "                SUM(CASE WHEN loai = 'Ofline' THEN tongtienhang ELSE 0 END) AS doanhThuOffline,\n" +
            "\t\t\t\tsum(hdct.soluong) as tongSoSanPhamDaBan,\n" +
            "                sum(case when hdct.idkhuyenmai is not null then 1 else 0 end) as soLuongKhuyenMaiDaBan\n" +
            "            FROM hoadon hd join hoadonchitiet hdct on hdct.idhoadon = hd.id\n" +
            "            WHERE YEAR(ngaydat) = YEAR(CURDATE()) AND MONTH(ngaydat) = MONTH(CURDATE());",nativeQuery = true)
    DoanhThuBanHangResponse doanhThuThang();
    @Query(value = "  SELECT \n" +
            "                SUM(CASE WHEN loai = 'Online' THEN tongtienhang ELSE 0 END) AS doanhThuOnline,\n" +
            "                SUM(CASE WHEN loai = 'Ofline' THEN tongtienhang ELSE 0 END) AS doanhThuOffline,\n" +
            "                sum(hdct.soluong) as tongSoSanPhamDaBan,\n" +
            "                sum(case when hdct.idkhuyenmai is not null then 1 else 0 end) as soLuongKhuyenMaiDaBan\n" +
            "            FROM hoadon hd join hoadonchitiet hdct on hdct.idhoadon = hd.id\n" +
            "            WHERE YEAR(ngaydat) = YEAR(CURDATE());",nativeQuery = true)
    DoanhThuBanHangResponse doanhThuNam();
}

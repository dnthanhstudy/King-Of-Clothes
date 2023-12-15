package com.laptrinhjavaweb.repository.custom.impl;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.repository.custom.HoaDonRepositoryCustom;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
public class HoaDonRepositoryImpl implements HoaDonRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<HoaDonEntity> findAllByCurrentDateAndMaNhanVien(String ngay, String maNhanVien) {
        String sql = "SELECT * FROM hoadon WHERE DATE(ngaytao) = '" + ngay  + "' AND nguoitao = '" + maNhanVien + "'";
        Query query = entityManager.createNativeQuery(sql, HoaDonEntity.class);
        return query.getResultList();
    }

//    @Override
//    public List<HoaDonEntity> searchs(String param) {
//        String sql = "select hoadon.* from hoadon join nhanvien on hoadon.idnhanvien = nhanvien.id" +
//                " join khachhang on hoadon.idkhachhang = khachhang.id "
//                + " where (hoadon.ma LIKE '%" + param
//                + "%' OR khachhang.ma LIKE '%" + param
//                + "%' OR khachhang.ten LIKE '%" + param
//                + "%' OR nhanvien.ma LIKE '%" + param
//                + "%' OR nhanvien.ten LIKE '%" + param
//                + "%'" + ")" ;
//        Query query = entityManager.createNativeQuery(sql, HoaDonEntity.class);
//        return query.getResultList();
//    }
}

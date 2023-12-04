package com.laptrinhjavaweb.repository.custom.impl;

import com.laptrinhjavaweb.entity.HoaDonEntity;
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
}

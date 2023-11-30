package com.laptrinhjavaweb.repository.custom.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.entity.NhanVienEntity;
import com.laptrinhjavaweb.repository.custom.NhanVienRepositoryCustom;

@Repository
public class NhanVienRepositoryImpl implements NhanVienRepositoryCustom{

	@PersistenceContext
	private EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<NhanVienEntity> searchs(String param) {
		String sql = "select nhanvien.* from nhanvien join chucvu on nhanvien.idchucvu = chucvu.id"
				+ " where nhanvien.ten LIKE '%" + param
				+ "%' OR nhanvien.ma LIKE '%" + param
				+ "%' OR soDienThoai LIKE '%" + param
				+ "%' OR email LIKE '%" + param
				+ "%' OR chucvu.ma LIKE '%" + param
				+ "%' OR chucvu.ten LIKE '%" + param
				+ "%' AND nhanvien.trangthai <> 'DELETE'";
		Query query = entityManager.createNativeQuery(sql, NhanVienEntity.class);
		return query.getResultList();
	}

}

package com.laptrinhjavaweb.repository.custom.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.repository.custom.SanPhamRepositoryCustom;

@Repository
public class SanPhamRepositoryImpl implements SanPhamRepositoryCustom {

	@PersistenceContext
	private EntityManager entityManager;

	@SuppressWarnings("unchecked")
	@Override
	public List<SanPhamEntity> seachs(String param) {
		String sql = "FROM SanPhamEntity WHERE ten LIKE '%" + param + "%' OR mota LIKE '%" + param
				+ "%' OR thongtinchitiet LIKE '%" + param + "%'";
		Query query = entityManager.createQuery(sql, SanPhamEntity.class);
        return query.getResultList();
	}

}

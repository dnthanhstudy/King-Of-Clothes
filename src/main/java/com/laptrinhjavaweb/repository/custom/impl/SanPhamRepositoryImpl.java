package com.laptrinhjavaweb.repository.custom.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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

	@SuppressWarnings("unchecked")
	@Override
	public List<Long> filters(Map<String, Object> params) {
		String sql = buildSQL(params);
		System.out.println(sql);
		Query query = entityManager.createNativeQuery(sql);
		return query.getResultList();
	}

	private String buildSQL(Map<String, Object> params) {
		String queryFinal = "SELECT distinct sanpham.id FROM thuoctinh"
				+ " JOIN giatrithuoctinh ON thuoctinh.id = giatrithuoctinh.idthuoctinh"
				+ " JOIN sanpham ON sanpham.id = thuoctinh.idsanpham"
				+ " JOIN thuonghieu ON thuonghieu.id = sanpham.idthuonghieu";
		List<String> whereSQL = new ArrayList<>();
		List<String> inSlugSQL = new ArrayList<>();
		List<String> inGiaTriSQL = new ArrayList<>();
		params.forEach((k, v) -> {
			String query = null;
			if(k.equals("thuong-hieu")) {
				query = "thuonghieu.slug" + "=" + v;
			}
			else if(k.equals("gia-tu")) {
				List<String> gias = Arrays.asList(v.toString().split(","));
				query = "sanpham.gia >= " + Double.parseDouble(gias.get(0)) + " and sanpham.gia <= " + Double.parseDouble(gias.get(1));
			}
			else if(k.equals("gia-den")) {
				query = "sanpham.gia <=" + v;
			}else {
				inSlugSQL.add(k);
				List<String> strs = Arrays.asList(v.toString().split(","));
				inGiaTriSQL.addAll(strs);
			}
			if(query != null) {
				whereSQL.add(query);
			}

		});
		String sqlInSlug = null;
		if(!inSlugSQL.isEmpty()) {
			sqlInSlug = inSlugSQL.stream().map(x -> "'" + x + "'").collect(Collectors.joining(", ", "(", ")"));
		}
		String sqlInGiaTri = null;
		if(!inGiaTriSQL.isEmpty()) {
			sqlInGiaTri = inGiaTriSQL.stream().map(x -> "N'" + x + "'").collect(Collectors.joining(", ", "(", ")"));
		}
		if(sqlInSlug != null) {
			sqlInSlug = "thuoctinh.slug IN "+ sqlInSlug;
			whereSQL.add(sqlInSlug);
		}
		if(sqlInGiaTri != null) {
			sqlInGiaTri = "giatrithuoctinh.giatri IN " + sqlInGiaTri;
			whereSQL.add(sqlInGiaTri);
		}
		queryFinal = queryFinal + " WHERE " + String.join(" AND ", whereSQL);
		System.out.println(queryFinal);
		return queryFinal;
	}
}

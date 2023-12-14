package com.laptrinhjavaweb.repository.custom.impl;

import java.util.*;
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
	public List<SanPhamEntity> seachs(String param, Map<String, Object> filters) {
		String sql = buildSQL(filters, " JOIN danhmuc ON danhmuc.id = subquery.iddanhmuc ", null) + " AND (" +
				" subquery.ten LIKE '%" + param + "%'" +
				" OR subquery.thongtinchitiet LIKE '%" + param + "%'" +
				" OR danhmuc.ten LIKE '%" + param + "%'" +
				" )";
		System.out.println("SQL serach " + sql);
		Query query = entityManager.createNativeQuery(sql, SanPhamEntity.class);
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SanPhamEntity> filters(Map<String, Object> params) {
		String sql = buildSQL(params, null, null);
		Query query = entityManager.createNativeQuery(sql, SanPhamEntity.class);
		return query.getResultList();
	}

	@Override
	public List<SanPhamEntity> categories(String slug, Map<String, Object> fliters) {
		String sql = buildSQL(fliters, " JOIN danhmuc ON danhmuc.id = subquery.iddanhmuc ", " danhmuc.slug = '" + slug + "'");
		Query query = entityManager.createNativeQuery(sql, SanPhamEntity.class);
		System.out.println("SQL categories " + sql);
		return query.getResultList();
	}

	@Override
	public List<SanPhamEntity> random(Integer sanPhamBanChay, Integer sanPhamMoi, Integer sanPhamNhieuLuotXem, Integer sanPhamNoiBat, Integer sanPhamPhoBien,
									  Integer limit) {
		String sql = "SELECT * FROM sanpham WHERE ";
		if(sanPhamMoi != null){
			sql += "sanphambanchay = 1";
		}else if(sanPhamMoi != null){
			sql += "sanmhammoi = 1";
		}else if(sanPhamNhieuLuotXem != null){
			sql += "sapnhamnhieuluotxem = 1";
		}else if(sanPhamPhoBien != null){
			sql += "sanphamnoibat = 1";
		}else {
			sql += "sanphamphobien = 1";
		}
		sql += " ORDER BY ngaytao DESC, RAND() LIMIT " + limit;
		Query query = entityManager.createNativeQuery(sql, SanPhamEntity.class);
		return query.getResultList();
	}

	@Override
	public List<SanPhamEntity> same(String slug) {
		String sql = "SELECT sp1.*" +
				" FROM sanpham AS sp1" +
				" WHERE EXISTS " +
				"(" +
				"    SELECT sp2.*" +
				"    FROM sanpham AS sp2 " +
				"    WHERE sp2.slug = '" + slug + "'" +
				"        AND (sp1.iddanhmuc = sp2.iddanhmuc OR sp1.idthuonghieu = sp2.idthuonghieu" +
				"   		)" +
				"        		AND sp1.id <> sp2.id" +
				")" +
				"ORDER BY ngaytao DESC, RAND() LIMIT 4";
		Query query = entityManager.createNativeQuery(sql, SanPhamEntity.class);
		return query.getResultList();
	}

	private String buildSQL(Map<String, Object> params, String joinDanhMuc, String queryDanhMuc) {
		String queryFinal = "SELECT subquery.* FROM " +
				"(  SELECT " +
				"        sanpham.*, " +
				"        CASE " +
				"            WHEN khuyenmai.loai = 1 and khuyenmaisanpham.trangthai = 'ACTIVE' THEN sanpham.gia * (1 - khuyenmai.giatri / 100) " +
				"            WHEN khuyenmai.loai = 2 and khuyenmaisanpham.trangthai = 'ACTIVE' THEN sanpham.gia - khuyenmai.giatri " +
				"            ELSE sanpham.gia " +
				"        END AS giakhuyenmai " +
				"    FROM sanpham " +
				"    JOIN khuyenmaisanpham ON sanpham.id = khuyenmaisanpham.idsanpham " +
				"    JOIN khuyenmai ON khuyenmai.id = khuyenmaisanpham.idkhuyenmai" +
				") AS subquery ";

		Set<String> joinSQL = new HashSet<>();
		List<String> whereSQL = new ArrayList<>();
		List<String> inSlugSQL = new ArrayList<>();
		List<String> inGiaTriSQL = new ArrayList<>();
		params.forEach((k, v) -> {
			String query = null;
			if(k.equals("thuong-hieu")) {
				joinSQL.add("JOIN thuonghieu ON thuonghieu.id = subquery.idthuonghieu");
				query = "thuonghieu.slug" + "='" + v + "'";
			}
			else if(k.equals("gia")) {
				List<String> gias = Arrays.asList(v.toString().split(","));
				query = "giakhuyenmai >= " + Double.parseDouble(gias.get(0))+ " AND " + " giakhuyenmai <= " + Double.parseDouble(gias.get(1));
			}else {
				joinSQL.add("JOIN thuoctinh ON subquery.id = thuoctinh.idsanpham " +
						"JOIN giatrithuoctinh ON thuoctinh.id = giatrithuoctinh.idthuoctinh");

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
			sqlInGiaTri = inGiaTriSQL.stream().map(x -> "'" + x + "'").collect(Collectors.joining(", ", "(", ")"));
		}
		if(sqlInSlug != null) {
			sqlInSlug = "thuoctinh.slug IN "+ sqlInSlug;
			whereSQL.add(sqlInSlug);
		}
		if(sqlInGiaTri != null) {
			sqlInGiaTri = "giatrithuoctinh.giatri IN " + sqlInGiaTri;
			whereSQL.add(sqlInGiaTri);
		}
		if(joinDanhMuc != null){
			joinSQL.add(joinDanhMuc);
		}
		if(queryDanhMuc != null){
			whereSQL.add(queryDanhMuc);
		}
		queryFinal = queryFinal + String.join(" ", joinSQL) + " WHERE subquery.trangthai = 'ACTIVE' AND 1 = 1 ";
		if(!whereSQL.isEmpty()){
			queryFinal = queryFinal + " AND " + String.join(" AND ", whereSQL);
		}
		System.out.println(queryFinal);
		return queryFinal;
	}
}

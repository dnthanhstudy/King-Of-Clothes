package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.converter.SanPhamConverter;
import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.repository.SanPhamRepository;
import com.laptrinhjavaweb.response.PageableResponse;
import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.response.ThuocTinhResponse;
import com.laptrinhjavaweb.resquest.*;
import com.laptrinhjavaweb.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class SanPhamService implements ISanPhamService{
	
	@Autowired
	private SanPhamRepository sanPhamRepository;
	
	@Autowired
	private SanPhamConverter sanPhamConvert;

	@Autowired
	private IAnhSanPhamService anhSanPhamService;

	@Autowired
	private IThuocTinhService thuocTinhService;

	@Autowired
	private IGiaTriThuocTinhService giaTriThuocTinhService;

	@Autowired
	private IBienTheService bienTheService;

	@Override
	public Map<String, Object> pagingOrSearchOrFindAllOrFilterOrCategories(Integer pageCurrent, Integer limit, String param, Map<String, Object> fliters, String slug) {
		Map<String, Object> results = new HashMap<>();
		Boolean isAll = false;
		Page<SanPhamEntity> page = null;
		List<SanPhamResponse> listSanPhamResponse = new ArrayList<>();
		if(pageCurrent == null && limit == null) {
			isAll = true;
			Pageable wholePage = Pageable.unpaged();
			page = sanPhamRepository.findByTrangThaiOrderByNgayTaoDesc(SystemConstant.ACTICE,wholePage);
		}else {
			Pageable pageable = PageRequest.of(pageCurrent - 1, limit);
			if(param != null || fliters != null || slug != null) {
				List<SanPhamEntity> listSanPhamEntity = new ArrayList<>();
				if(param != null) {
					listSanPhamEntity = sanPhamRepository.seachs(param, fliters);
				}else if(slug != null){
					listSanPhamEntity = sanPhamRepository.categories(slug, fliters);
				}else{
					listSanPhamEntity = sanPhamRepository.filters(fliters);
				}
				int sizeOfListSanPhamEntity = listSanPhamEntity.size();
				int start = (int) pageable.getOffset();
				int end = Math.min((start + pageable.getPageSize()), sizeOfListSanPhamEntity);
				List<SanPhamEntity> pageContent = listSanPhamEntity.subList(start, end);
				page = new PageImpl<>(pageContent, pageable, sizeOfListSanPhamEntity);

			}else {
				page = sanPhamRepository.findByTrangThaiOrderByNgayTaoDesc(SystemConstant.ACTICE, pageable);
			}
		}
		listSanPhamResponse = page.getContent().stream().map(
				item -> sanPhamConvert.convertToResponse(item)
		).collect(Collectors.toList());
		results.put("data", listSanPhamResponse);
		if(!isAll) {
			PageableResponse pageableResponse = new PageableResponse();
			pageableResponse.setPageCurrent(pageCurrent);
			pageableResponse.setTotalPage(page.getTotalPages());
			results.put("meta", pageableResponse);
		}
		return results;
	}


	@Override
	public SanPhamResponse findBySlug(String slug) {
		SanPhamEntity sanPhamEntity = sanPhamRepository.findBySlug(slug);
		if(sanPhamEntity == null) {
			return null;
		}
		return sanPhamConvert.convertToResponse(sanPhamEntity);
	}

	@Override
	public SanPhamEntity findEntityBySlug(String slug) {
		SanPhamEntity sanPhamEntity = sanPhamRepository.findBySlug(slug);
		if(sanPhamEntity == null) {
			return null;
		}
		return sanPhamEntity;
	}

	@SuppressWarnings("unused")
	@Transactional
	@Override
	public SanPhamResponse save(SanPhamRequest sanPhamRequest) {
		try {
			SanPhamEntity sanPhamEntity = sanPhamRepository.findBySlug(sanPhamRequest.getSlug());
			if(sanPhamEntity != null){
				return null;
			}
			sanPhamEntity = sanPhamConvert.convertToEntity(sanPhamRequest);
			sanPhamRepository.save(sanPhamEntity);
			SanPhamResponse result = sanPhamConvert.convertToResponse(sanPhamEntity);
			final Long idSanPham = sanPhamEntity.getId();
			List<AnhSanPhamRequest> listAnh = sanPhamRequest.getAnh().stream().map(
					item -> {
						item.setIdSanPham(idSanPham);
						anhSanPhamService.save(item);
						return item;
					}
			).collect(Collectors.toList());

			List<ThuocTinhRequest> listThuocTinh = sanPhamRequest.getThuocTinh().stream().map(
					item -> {
						item.setIdSanPham(idSanPham);
						ThuocTinhResponse thuocTinhResponse = thuocTinhService.save(item);
						Long idThuocTinh = thuocTinhResponse.getId();
						for(String giaTri: item.getGiaTris()){
							GiaTriThuocTinhRequest giaTriThuocTinhRequest = new GiaTriThuocTinhRequest(idThuocTinh, idSanPham, giaTri);
							giaTriThuocTinhService.save(giaTriThuocTinhRequest);
						}
						return item;
					}
			).collect(Collectors.toList());

			List<BienTheRequest> listBienThe = sanPhamRequest.getBienThe().stream().map(
					item -> {
						item.setIdSanPham(idSanPham);
						bienTheService.save(item);
						return item;
					}
			).collect(Collectors.toList());
			return result;
		}catch(Exception ex) {
			throw new RuntimeException("Error");
		}
	}

	@Override
	public List<SanPhamResponse> random(Integer sanPhamBanChay, Integer sanPhamMoi, Integer sanPhamNhieuLuotXem, Integer sanPhamNoiBat, Integer sanPhamPhoBien,
										Integer limit) {
		List<SanPhamResponse> results = sanPhamRepository.random(sanPhamBanChay, sanPhamMoi, sanPhamNhieuLuotXem, sanPhamNoiBat, sanPhamPhoBien, limit)
														.stream().map(item -> sanPhamConvert.convertToResponse(item))
														.collect(Collectors.toList());
		return results;
	}

	@Override
	public List<SanPhamResponse> same(String slug) {
		List<SanPhamResponse> results = sanPhamRepository.same(slug)
														.stream().map(item -> sanPhamConvert.convertToResponse(item))
														.collect(Collectors.toList());
		return results;
	}

	@Override
	public void delete(String slug) {
		SanPhamEntity sanPhamEntity = sanPhamRepository.findBySlug(slug);
		sanPhamEntity.setTrangThai("INACTIVE");
		sanPhamRepository.save(sanPhamEntity);
	}

	@Override
	public void updateTrangThai(String slug, String trangThai) {
		SanPhamEntity sanPhamEntity = sanPhamRepository.findBySlug(slug);
		sanPhamEntity.setTrangThai(trangThai);
		sanPhamRepository.save(sanPhamEntity);
	}

	@Override
	public Map<String, Object> findÁll(Integer pageCurrent, Integer limit) {
		Map<String, Object> results = new HashMap<>();
		Pageable pageable = PageRequest.of(pageCurrent - 1, limit);
		Page<SanPhamEntity> page = sanPhamRepository.findAllByOrderByNgayTaoDesc(pageable);

		List<SanPhamResponse> listSanPhamResponse = page.getContent().stream().map(
				item -> sanPhamConvert.convertToResponse(item)
		).collect(Collectors.toList());

		PageableResponse pageableResponse = new PageableResponse();
		pageableResponse.setPageCurrent(pageCurrent);
		pageableResponse.setTotalPage(page.getTotalPages());
		results.put("meta", pageableResponse);
		results.put("data", listSanPhamResponse);
		return results;
	}

}

package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.KhuyenMaiConvert;
import com.laptrinhjavaweb.entity.KhuyenMaiEntity;
import com.laptrinhjavaweb.entity.KhuyenMaiSanPhamEntity;
import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.repository.KhuyenMaiRepository;
import com.laptrinhjavaweb.repository.KhuyenMaiSanPhamRepository;
import com.laptrinhjavaweb.response.KhuyenMaiResponse;
import com.laptrinhjavaweb.response.PageableResponse;
import com.laptrinhjavaweb.resquest.KhuyenMaiRequest;
import com.laptrinhjavaweb.service.IKhuyenMaiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class KhuyenMaiService implements IKhuyenMaiService {
    @Autowired
    private KhuyenMaiRepository khuyenMaiRepository;

    @Autowired
    private KhuyenMaiConvert khuyenMaiConvert;

    @Autowired
    private KhuyenMaiSanPhamRepository khuyenMaiSanPhamRepository;

    @Autowired
    private SanPhamService sanPhamService;

    @Override
    public List<KhuyenMaiResponse> getAll() {
        List<KhuyenMaiEntity> listEntity = khuyenMaiRepository.findAllByTrangThai("DELETE");
        List<KhuyenMaiResponse> list = listEntity.stream().map(
                item -> khuyenMaiConvert.convertToResponse(item)
        ).collect(Collectors.toList());
        return list;
    }

    @Override
    public KhuyenMaiResponse save(KhuyenMaiRequest request) {
       KhuyenMaiEntity khuyenMaiEntity = khuyenMaiConvert.convertToEntity(request);


        KhuyenMaiEntity result = khuyenMaiRepository.save(khuyenMaiEntity);
        Date timeNow = new Date();
        if (khuyenMaiEntity.getNgayBatDau().compareTo(timeNow) > 0) {
            khuyenMaiEntity.setTrangThai("UPCOMING");
            khuyenMaiRepository.save(khuyenMaiEntity);
            result.setTrangThai("UPCOMING");
        }

       List<String> list = request.getListSanPham();
        for (String x : list ){
            SanPhamEntity spEntity = sanPhamService.findEntityBySlug(x);
            KhuyenMaiSanPhamEntity entity = new KhuyenMaiSanPhamEntity();
            entity.setKhuyenMai(result);
            entity.setSanPham(spEntity);
            khuyenMaiSanPhamRepository.save(entity);
        }
        KhuyenMaiEntity km = khuyenMaiRepository.findById(result.getId()).orElse(null);
        return khuyenMaiConvert.convertToResponse(km);
    }

    @Override
    public String delete(String ma) {
        KhuyenMaiEntity km = khuyenMaiRepository.findByMa(ma);
        if (km != null) {
            List<KhuyenMaiSanPhamEntity> list = km.getKhuyenMaiSanPhamEntities();
            for (KhuyenMaiSanPhamEntity kmsp:list
                 ) {
                kmsp.setTrangThai("DELETE");
                khuyenMaiSanPhamRepository.save(kmsp);
            }
            km.setTrangThai("DELETE");
            this.khuyenMaiRepository.save(km);
            return "Xoa thanh cong";
        } else {
            return "Khong tim thay";
        }
    }

    @Override
    public KhuyenMaiResponse update(KhuyenMaiRequest request, String ma) {
        KhuyenMaiEntity km = khuyenMaiRepository.findByMa(ma);
        if (km != null) {
            KhuyenMaiEntity khuyenMaiEntity = khuyenMaiConvert.convertToEntity(request);
            khuyenMaiEntity.setId(km.getId());
            KhuyenMaiEntity result = khuyenMaiRepository.save(khuyenMaiEntity);
            List<KhuyenMaiSanPhamEntity> list = km.getKhuyenMaiSanPhamEntities();
            for (KhuyenMaiSanPhamEntity kmsp:list
            ) {
                khuyenMaiSanPhamRepository.delete(kmsp);
            }
            List<String> listSlug = request.getListSanPham();
            for (String x : listSlug ){
                SanPhamEntity spEntity = sanPhamService.findEntityBySlug(x);
                KhuyenMaiSanPhamEntity entity = new KhuyenMaiSanPhamEntity();
                entity.setKhuyenMai(result);
                entity.setSanPham(spEntity);
                khuyenMaiSanPhamRepository.save(entity);
            }
            return khuyenMaiConvert.convertToResponse(result);
        } else {
            return null;
        }

    }

    @Override
    public KhuyenMaiResponse findById(Long id) {
        return null;
    }

    @Override
    public KhuyenMaiResponse findByMa(String ma) {
        KhuyenMaiEntity entity = khuyenMaiRepository.findByMa(ma);
        KhuyenMaiResponse response = khuyenMaiConvert.convertToResponse(entity);
        return response;
    }

    @Override
    public Map<String, Object> pagingOrSearchOrFindAllOrFilterOrCategories(Integer pageCurrent, Integer limit, String param, Map<String, Object> params, String slug) {
        Map<String, Object> results = new HashMap<>();
        Boolean isAll = false;
        Page<KhuyenMaiEntity> page = null;
        List<KhuyenMaiResponse> listKhuyenMaiResponses = new ArrayList<>();
        if(pageCurrent == null && limit == null) {
            isAll = true;
            Pageable wholePage = Pageable.unpaged();
            page = khuyenMaiRepository.findAllByTrangThai("DELETE", wholePage);
        }else {
            Pageable pageable = PageRequest.of(pageCurrent - 1, limit);
            if(param != null || params != null || slug != null) {
                List<KhuyenMaiEntity> listKhuyenMaiEntity = new ArrayList<>();
                if(param != null) {
                    listKhuyenMaiEntity = khuyenMaiRepository.seachs(param);
                }else if(params != null && !params.isEmpty()){
                    List<Long> ids = khuyenMaiRepository.filters(params);
                    for (Long id : ids) {
                        KhuyenMaiEntity khuyenMaiEntity = khuyenMaiRepository.findById(id).get();
                        listKhuyenMaiEntity.add(khuyenMaiEntity);
                    }
                }else{

                }
                int sizeOfListSanPhamEntity = listKhuyenMaiEntity.size();
                int start = (int) pageable.getOffset();
                int end = Math.min((start + pageable.getPageSize()), sizeOfListSanPhamEntity);
                List<KhuyenMaiEntity> pageContent = listKhuyenMaiEntity.subList(start, end);
                page = new PageImpl<>(pageContent, pageable, sizeOfListSanPhamEntity);

            }else {
                page = khuyenMaiRepository.findAllByTrangThai("DELETE", pageable);
            }
        }
        listKhuyenMaiResponses = page.getContent().stream().map(
                item -> khuyenMaiConvert.convertToResponse(item)
        ).collect(Collectors.toList());
        results.put("data", listKhuyenMaiResponses);
        if(!isAll) {
            PageableResponse pageableResponse = new PageableResponse();
            pageableResponse.setPageCurrent(pageCurrent);
            pageableResponse.setTotalPage(page.getTotalPages());
            results.put("meta", pageableResponse);
        }
        return results;
    }
}

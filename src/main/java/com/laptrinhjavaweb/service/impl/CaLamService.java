package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.CaLamConverter;
import com.laptrinhjavaweb.entity.CaLamEntity;
import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.repository.CaLamRepository;
import com.laptrinhjavaweb.response.CaLamResponse;
import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.response.PageableResponse;
import com.laptrinhjavaweb.resquest.CaLamRequest;
import com.laptrinhjavaweb.service.ICaLamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
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
public class CaLamService implements ICaLamService {

    @Autowired
    private CaLamRepository caLamRepository;

    @Autowired
    private CaLamConverter caLamConverter;

    @Override
    @Transactional
    public CaLamResponse insert(CaLamRequest caLamRequest) {
        CaLamEntity caLamEntity = caLamConverter.convertToEntity(caLamRequest);
        caLamRepository.save(caLamEntity);
        return caLamConverter.convertToResponse(caLamEntity);
    }

    @Override
    public CaLamResponse update(String maNhanVien, CaLamRequest caLamRequest) {
        CaLamEntity caLamEntity = caLamRepository.findByNhanVien_Ma(maNhanVien);

        if (caLamEntity == null) {
            return null;
        }
        caLamEntity.setSoTienCuoiCa(caLamRequest.getSoTienCuoiCa());
        caLamEntity.setTienMatBanGiao(caLamRequest.getTienMatBanGiao());
        caLamEntity.setTienChenhLech(caLamRequest.getTienChenhLech());
        caLamEntity.setGhiChu(caLamRequest.getGhiChu());

        caLamRepository.save(caLamEntity);

        return caLamConverter.convertToResponse(caLamEntity);
    }

    @Override
    public Map<String, Object> pagingOrFindAll(Integer pageCurrent, Integer limit) {
        Map<String, Object> results = new HashMap<>();
        Boolean isAll = false;
        Page<CaLamEntity> page = null;
        List<CaLamResponse> listCaLamResponse = new ArrayList<>();
        if(pageCurrent == null && limit == null) {
            isAll = true;
            Pageable wholePage = Pageable.unpaged();
            page = caLamRepository.findAll(wholePage);
        }else {
            Pageable pageable = PageRequest.of(pageCurrent - 1, limit);
            page = caLamRepository.findAll(pageable);
        }
        listCaLamResponse = page.getContent().stream().map(
                item -> caLamConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        results.put("data", listCaLamResponse);
        if(!isAll) {
            PageableResponse pageableResponse = new PageableResponse();
            pageableResponse.setPageCurrent(pageCurrent);
            pageableResponse.setTotalPage(page.getTotalPages());
            results.put("meta", pageableResponse);
        }
        return results;
    }

    @Override
    public CaLamResponse getDetail(Long id) {
        CaLamEntity caLamEntity = caLamRepository.findById(id).orElse(null);
        if (caLamEntity == null) {
            return null;
        }
        return caLamConverter.convertToResponse(caLamEntity);
    }
}

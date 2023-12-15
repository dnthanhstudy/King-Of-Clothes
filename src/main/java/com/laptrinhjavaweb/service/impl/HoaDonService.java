package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.converter.HoaDonConverter;
import com.laptrinhjavaweb.entity.HoaDonChiTietEntity;
import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.model.enumentity.TrangThaiHoaDonEnum;
import com.laptrinhjavaweb.repository.HoaDonChiTietRepository;
import com.laptrinhjavaweb.repository.HoaDonRepository;
import com.laptrinhjavaweb.repository.TrangThaiGiaoHangRepository;
import com.laptrinhjavaweb.response.HoaDonResponse;
import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.response.PageableResponse;
import com.laptrinhjavaweb.resquest.HoaDonResquest;
import com.laptrinhjavaweb.service.IHoaDonService;
import com.laptrinhjavaweb.utils.GenerateStringUtils;
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
public class HoaDonService implements IHoaDonService {

    @Autowired
    private HoaDonConverter hoaDonConverter;

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;

    @Autowired
    private TrangThaiGiaoHangRepository trangThaiGiaoHangRepository;

    @Override
    @Transactional
    public HoaDonResponse save(HoaDonResquest hoaDonResquest) {
        HoaDonEntity entity = hoaDonConverter.convertToEntity(hoaDonResquest);
        entity.setTrangThai(TrangThaiHoaDonEnum.TREO);
        entity.setMa(GenerateStringUtils.generate(6));
        hoaDonRepository.save(entity);
        HoaDonResponse result = hoaDonConverter.convertToResponse(entity);
        return result;
    }

    @Override
    public HoaDonResponse findByMa(String ma) {
        HoaDonEntity entity = hoaDonRepository.findByMa(ma);
        HoaDonResponse result = hoaDonConverter.convertToResponse(entity);
        return result;
    }

    @Override
    public List<HoaDonResponse> findByMaStatus(String trangThai) {
        List<HoaDonEntity> list = hoaDonRepository.findAllByTrangThai(trangThai);
        List<HoaDonResponse> result = list.stream().map(
                item -> hoaDonConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        return result;
    }

    @Override
    public HoaDonResponse update(HoaDonResquest hoaDonResquest) {
        HoaDonEntity entity = hoaDonConverter.convertToEntity(hoaDonResquest);
        HoaDonEntity result = hoaDonRepository.save(entity);
        return hoaDonConverter.convertToResponse(result);
    }
}

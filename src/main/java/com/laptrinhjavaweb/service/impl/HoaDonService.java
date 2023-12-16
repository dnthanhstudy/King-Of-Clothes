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

//    @Override
//    public Map<String, Object> pagingOrSearchOrFindByMaStatus(Integer pageCurrent, Integer limit, String param, String trangThai) {
//        Map<String, Object> results = new HashMap<>();
//        Boolean isAll = false;
//        Page<HoaDonEntity> page = null;
//        List<HoaDonResponse> listHoaDonResponse = list.stream().map(
//                item -> hoaDonConverter.convertToResponse(item)
//        ).collect(Collectors.toList());
//        if (pageCurrent == null && limit == null) {
//            isAll = true;
//            Pageable wholePage = Pageable.unpaged();
//            page = hoaDonRepository.findAllByTrangThai(trangThai, wholePage);
//
//        } else {
//            Pageable pageable = PageRequest.of(pageCurrent - 1, limit);
//            if (param != null) {
//                List<KhachHangEntity> listKhachHangEntity = khachHangRepository.searchs(param);
//                int sizeOflistKhachHangEntity = listKhachHangEntity.size();
//                int start = (int) pageable.getOffset();
//                int end = Math.min((start + pageable.getPageSize()), sizeOflistKhachHangEntity);
//                List<KhachHangEntity> pageContent = listKhachHangEntity.subList(start, end);
//                page = new PageImpl<>(pageContent, pageable, sizeOflistKhachHangEntity);
//
//            } else {
//                page = khachHangRepository.findAllByTrangThaiNot(SystemConstant.IN_ACTICE, pageable);
//            }
//        }
//        listKhachHangResponse = page.getContent().stream().map(
//                item -> khachHangConverter.convertToResponse(item)
//        ).collect(Collectors.toList());
//        results.put("data", listKhachHangResponse);
//        if (!isAll) {
//            PageableResponse pageableResponse = new PageableResponse();
//            pageableResponse.setPageCurrent(pageCurrent);
//            pageableResponse.setTotalPage(page.getTotalPages());
//            results.put("meta", pageableResponse);
//        }
//        return results;
//    }

    @Override
    public HoaDonResponse update(HoaDonResquest hoaDonResquest) {
        HoaDonEntity entity = hoaDonConverter.convertToEntity(hoaDonResquest);
        HoaDonEntity result = hoaDonRepository.save(entity);
        return hoaDonConverter.convertToResponse(result);
    }

//    @Override
//    @Transactional
//    public String delete(String ma) {
//        HoaDonEntity entity = hoaDonRepository.findByMa(ma);
//        if(entity!= null){
//            List<HoaDonChiTietEntity> listHDCT = entity.getHoaDonChiTietEntities();
//                if(!listHDCT.isEmpty()){
//                    for (HoaDonChiTietEntity hdct: listHDCT) {
//                        hoaDonChiTietRepository.deleteHoaDonCT(hdct.getId());
//                    }
//                }
//
//            trangThaiGiaoHangRepository.deleteByHoaDonId(entity);
//            hoaDonRepository.deleteHoaDon(entity.getId());
//            return "Xóa thành công";
//        }
//        return "Không tìm thấy hoá đơn";
//    }

    @Override
    public void delete(String ma) {
        HoaDonEntity hoaDonEntity = hoaDonRepository.findByMa(ma);
        hoaDonEntity.setTrangThai("HUYDON");
        hoaDonRepository.save(hoaDonEntity);
    }

}

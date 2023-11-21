package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.converter.ThuongHieuConverter;
import com.laptrinhjavaweb.repository.ThuongHieuRepository;
import com.laptrinhjavaweb.response.ThuongHieuResponse;
import com.laptrinhjavaweb.service.IThuongHieuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ThuongHieuService implements IThuongHieuService {

    @Autowired
    private ThuongHieuRepository thuongHieuRepository;

    @Autowired
    private ThuongHieuConverter thuongHieuConverter;

    @Override
    public List<ThuongHieuResponse> findAllByTrangThai() {
        List<ThuongHieuResponse> results = thuongHieuRepository.findAllByTrangThai(SystemConstant.ACTICE).stream().map(
                item -> thuongHieuConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        return results;
    }
}

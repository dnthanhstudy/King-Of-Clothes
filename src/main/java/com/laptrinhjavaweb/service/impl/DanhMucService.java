package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.convert.DanhMucConverter;
import com.laptrinhjavaweb.repository.DanhMucRepository;
import com.laptrinhjavaweb.response.DanhMucResponse;
import com.laptrinhjavaweb.service.IDanhMucService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DanhMucService implements IDanhMucService {

    @Autowired
    private DanhMucRepository danhMucRepository;

    @Autowired
    private DanhMucConverter danhMucConverter;

    @Override
    public List<DanhMucResponse> findAll() {
        List<DanhMucResponse> results = danhMucRepository.findAll().stream().map(
                item -> danhMucConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        return results;
    }
}
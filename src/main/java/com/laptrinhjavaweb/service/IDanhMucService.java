package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.DanhMucResponse;

import java.util.List;

public interface IDanhMucService {

    List<DanhMucResponse> findAll();
}

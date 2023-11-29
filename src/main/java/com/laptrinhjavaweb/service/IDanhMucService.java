package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.DanhMucResponse;
import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.resquest.DanhMucRequest;
import com.laptrinhjavaweb.resquest.KhachHangRequest;

import java.util.List;
import java.util.Map;

public interface IDanhMucService {

    List<DanhMucResponse> findAllByTrangThai();

    Map<String, Object> pagingOrSearchOrFindAll(String param, Integer pageCurrent, Integer limit);

    DanhMucResponse create(DanhMucRequest danhMucRequest);
}

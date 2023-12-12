package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.CaLamResponse;
import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.resquest.CaLamRequest;
import com.laptrinhjavaweb.resquest.KhachHangRequest;

import java.util.Map;

public interface ICaLamService {

    CaLamResponse insert (CaLamRequest caLamRequest);

    CaLamResponse update(String maNhanVien, CaLamRequest caLamRequest);

    Map<String, Object> pagingOrFindAll(Integer pageCurrent, Integer limit);

    CaLamResponse getDetail(Long id);
}

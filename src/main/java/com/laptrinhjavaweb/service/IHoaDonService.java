package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.HoaDonResponse;
import com.laptrinhjavaweb.resquest.HoaDonResquest;

import java.util.List;
import java.util.Map;

public interface IHoaDonService {

    HoaDonResponse save(HoaDonResquest hoaDonResquest);

    HoaDonResponse findByMa(String ma);

    List<HoaDonResponse> findByMaStatus(String trangThai);

//    Map<String, Object> pagingOrSearchOrFindByMaStatus(Integer pageCurrent, Integer limit, String param, String trangThai );

    HoaDonResponse update(HoaDonResquest hoaDonResquest);

}

package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.HoaDonResponse;
import com.laptrinhjavaweb.resquest.HoaDonResquest;

import java.util.List;
import java.util.Map;

public interface IHoaDonService {

    HoaDonResponse save(HoaDonResquest hoaDonResquest);

    HoaDonResponse findByMa(String ma);

    List<HoaDonResponse> findByMaStatus(String trangThai);

    HoaDonResponse update(HoaDonResquest hoaDonResquest);

    String delete(String ma);

    List<HoaDonResponse> searchs(String param, String trangThai);

}

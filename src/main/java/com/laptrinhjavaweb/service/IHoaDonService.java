package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.HoaDonResponse;
import com.laptrinhjavaweb.resquest.HoaDonResquest;

public interface IHoaDonService {

    HoaDonResponse save(HoaDonResquest hoaDonResquest);
}

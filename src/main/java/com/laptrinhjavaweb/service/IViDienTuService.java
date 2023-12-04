package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.ViDienTuResponse;

public interface IViDienTuService {

    ViDienTuResponse findByIdKhachHang(Long idkh);

    void congTien(Double soTien, Long idvidientu);
}

package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.KhacHangResponse;

public interface IKhachHangService {

    KhacHangResponse findBySoDienThoaiOrEmailAndTrangThai(String sodienThoai, String email, String trangThai);
}

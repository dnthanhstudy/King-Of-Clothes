package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.ThuongHieuResponse;

import java.util.List;

public interface IThuongHieuService {

    List<ThuongHieuResponse> findAllByTrangThai();
}

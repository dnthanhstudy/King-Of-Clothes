package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.response.BienTheResponse;

public interface IBienTheService {

	BienTheResponse findByIdGiaTriThuocTinh(List<Long> giaTriThuocTinhIds);
}

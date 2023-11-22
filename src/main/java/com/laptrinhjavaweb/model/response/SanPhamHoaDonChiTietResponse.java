package com.laptrinhjavaweb.model.response;

import com.laptrinhjavaweb.entity.HoaDonChiTietEntity;
import org.springframework.data.rest.core.config.Projection;

@Projection(types = {HoaDonChiTietEntity.class})
public interface SanPhamHoaDonChiTietResponse {
}

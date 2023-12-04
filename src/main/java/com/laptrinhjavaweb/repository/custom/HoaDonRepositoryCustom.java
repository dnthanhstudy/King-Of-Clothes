package com.laptrinhjavaweb.repository.custom;

import com.laptrinhjavaweb.entity.HoaDonEntity;

import java.util.List;

public interface HoaDonRepositoryCustom {

    List<HoaDonEntity> findAllByCurrentDateAndMaNhanVien(String ngay, String maNhanVien);
}

package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.NhanVienEntity;
import com.laptrinhjavaweb.repository.custom.NhanVienRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NhanVienRepository extends JpaRepository<NhanVienEntity, Long>, NhanVienRepositoryCustom {

    NhanVienEntity findByMaAndTrangThai(String ma, String trangThai);

    NhanVienEntity findBySoDienThoaiOrEmailOrCanCuocCongDan(String soDienThoai, String email, String canCuocCongDan);
}

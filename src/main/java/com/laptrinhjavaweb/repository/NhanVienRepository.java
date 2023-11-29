package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.NhanVienEntity;
import com.laptrinhjavaweb.repository.custom.NhanVienRepositoryCustom;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface NhanVienRepository extends JpaRepository<NhanVienEntity, Long>, NhanVienRepositoryCustom {


    Page<NhanVienEntity> findAllByTrangThaiNotAndChucVu_Ma(String trangThai, String chucVu, Pageable pageable);

    NhanVienEntity findByMaAndTrangThai(String ma, String trangThai);

    NhanVienEntity findBySoDienThoaiOrEmailOrCanCuocCongDan(String soDienThoai, String email, String canCuocCongDan);

    NhanVienEntity findByMa(String ma);

    NhanVienEntity findByEmail(String email);

    NhanVienEntity findByRestToken(String email);
}

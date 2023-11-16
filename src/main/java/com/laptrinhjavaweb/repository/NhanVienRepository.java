package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.NhanVienEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface NhanVienRepository extends JpaRepository<NhanVienEntity, Long> {

    Page<NhanVienEntity> findAllByTrangThai(String trangThai, Pageable pageable);

    NhanVienEntity findByMaAndTrangThai(String ma, String trangThai);

    NhanVienEntity findBySoDienThoaiOrEmailOrCanCuocCongDan(String soDienThoai, String email, String canCuocCongDan);

    List<NhanVienEntity> findAllByTenContainingOrSoDienThoaiContainingOrEmailContainingOrMaContainingOrChucVu_TenContaining(
            String ten, String soDienThoai, String  email, String ma, String tenChucVu
    );

    NhanVienEntity findByMa(String ma);

    NhanVienEntity findByEmail(String email);

    NhanVienEntity findByRestToken(String email);
}

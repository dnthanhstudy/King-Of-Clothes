package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.KhachHangEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface KhachHangRepository extends JpaRepository<KhachHangEntity, Long> {

    List<KhachHangEntity> findAllByTrangThai(String trangThai);

    KhachHangEntity findBySoDienThoaiOrEmailAndTrangThai(String soDienThoai, String email, String trangThai);

    KhachHangEntity findBySoDienThoaiOrEmail(String soDienThoai, String email);

    KhachHangEntity findByMa(String ma);

    List<KhachHangEntity> findAllByMaContainingOrTenContainingOrEmailContainingOrSoDienThoaiContainingOrGioiTinhContainingOrMoTaContainingAndTrangThai(String ma, String ten, String email, String soDienThoai, String gioiTinh, String moTa, String trangThai);

}

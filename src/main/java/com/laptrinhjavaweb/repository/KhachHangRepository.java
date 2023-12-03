package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.repository.custom.KhachHangRepositoryCustom;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface KhachHangRepository extends JpaRepository<KhachHangEntity, Long>, KhachHangRepositoryCustom {

    Page<KhachHangEntity> findAllByTrangThaiNot(String trangThai, Pageable pageable);

    KhachHangEntity findBySoDienThoaiOrEmailAndTrangThai(String soDienThoai, String email, String trangThai);

    KhachHangEntity findBySoDienThoaiOrEmail(String soDienThoai, String email);

    KhachHangEntity findByMa(String ma);

    List<KhachHangEntity> findAllByMaContainingOrTenContainingOrEmailContainingOrSoDienThoaiContainingOrGioiTinhContainingOrMoTaContainingAndTrangThai(String ma, String ten, String email, String soDienThoai, String gioiTinh, String moTa, String trangThai);

}

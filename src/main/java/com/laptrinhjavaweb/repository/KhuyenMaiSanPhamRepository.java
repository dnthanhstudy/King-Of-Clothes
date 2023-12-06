package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.KhuyenMaiSanPhamEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface KhuyenMaiSanPhamRepository extends JpaRepository<KhuyenMaiSanPhamEntity, Long> {

    KhuyenMaiSanPhamEntity findBySanPham_idAndTrangThai(Long idSanPham, String trangThai);

    KhuyenMaiSanPhamEntity findByBienThe_idAndTrangThai(Long idBienThe, String trangThai);
}

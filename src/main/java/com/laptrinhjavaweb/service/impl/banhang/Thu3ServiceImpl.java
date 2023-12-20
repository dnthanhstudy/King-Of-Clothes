package com.laptrinhjavaweb.service.impl.banhang;

import com.laptrinhjavaweb.entity.TrangThaiGiaoHangEntity;
import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.model.response.TrangThaiGiaoHangResponse;
import com.laptrinhjavaweb.repository.HoaDonRepository;
import com.laptrinhjavaweb.repository.TrangThaiGiaoHangRepository;
import com.laptrinhjavaweb.service.Thu3Service;
import com.laptrinhjavaweb.support.supportgiaohang.TrangThaiHoaDon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Thu3ServiceImpl implements Thu3Service {
    @Autowired
    private TrangThaiGiaoHangRepository trangThaiGiaoHangRepository;

    @Autowired
    private HoaDonRepository hoaDonRepository;
    @Override
    public List<TrangThaiGiaoHangResponse> dsTrangThaiDangGiao(Long maGiaoHang) {
        return trangThaiGiaoHangRepository.getTrangThaiDonHangByMaGiaoHang(maGiaoHang);
    }

    @Override
    public List<HoaDonResponse> dsHoaDonDangGiao() {
        return hoaDonRepository.dsHoaDonDangGiao();
    }

    @Override
    public String themTrangThaiGiaoHang(Long idhd, String tenTrangThai) {
        TrangThaiGiaoHangEntity trangThaiGiaoHangEntity = new TrangThaiGiaoHangEntity();
        trangThaiGiaoHangEntity.setTenTrangThai(tenTrangThai);
        trangThaiGiaoHangEntity.setHoaDon(hoaDonRepository.findById(idhd).orElse(null));
        trangThaiGiaoHangRepository.save(trangThaiGiaoHangEntity);
        return "Thành công";
    }

    @Override
    public String themTrangThaiGiaoHang(Long idhd, String maVanhang, String tenTrangThai) {
        TrangThaiGiaoHangEntity trangThaiGiaoHangEntity = new TrangThaiGiaoHangEntity();
        trangThaiGiaoHangEntity.setTenTrangThai(tenTrangThai);
        trangThaiGiaoHangEntity.setTrangThaiHoaDon(maVanhang);
        trangThaiGiaoHangEntity.setHoaDon(hoaDonRepository.findById(idhd).orElse(null));
        trangThaiGiaoHangRepository.save(trangThaiGiaoHangEntity);
        return "Thành công";
    }

}

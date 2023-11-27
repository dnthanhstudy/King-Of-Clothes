package com.laptrinhjavaweb.service.impl.banhang;

import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.model.response.TrangThaiGiaoHangResponse;
import com.laptrinhjavaweb.repository.HoaDonRepository;
import com.laptrinhjavaweb.repository.TrangThaiGiaoHangRepository;
import com.laptrinhjavaweb.service.Thu3Service;
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
    public List<TrangThaiGiaoHangResponse> dsTrangThaiDangGiao(String maGiaoHang) {
        return trangThaiGiaoHangRepository.getTrangThaiDonHangByMaGiaoHang(maGiaoHang);
    }

    @Override
    public List<HoaDonResponse> dsHoaDonDangGiao() {
        return hoaDonRepository.dsHoaDonDangGiao();
    }

}

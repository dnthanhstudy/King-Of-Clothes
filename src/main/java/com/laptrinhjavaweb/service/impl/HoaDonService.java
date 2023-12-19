package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.HoaDonConverter;
import com.laptrinhjavaweb.entity.BienTheEntity;
import com.laptrinhjavaweb.entity.HoaDonChiTietEntity;
import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.model.enumentity.TrangThaiHoaDonEnum;
import com.laptrinhjavaweb.repository.*;
import com.laptrinhjavaweb.response.HoaDonResponse;
import com.laptrinhjavaweb.resquest.HoaDonResquest;
import com.laptrinhjavaweb.service.IHoaDonService;
import com.laptrinhjavaweb.utils.GenerateStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class HoaDonService implements IHoaDonService {

    @Autowired
    private HoaDonConverter hoaDonConverter;

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;

    @Autowired
    private TrangThaiGiaoHangRepository trangThaiGiaoHangRepository;

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @Autowired
    private BienTheRepository bienTheRepository;

    @Override
    @Transactional
    public HoaDonResponse save(HoaDonResquest hoaDonResquest) {
        HoaDonEntity entity = hoaDonConverter.convertToEntity(hoaDonResquest);
        entity.setTrangThai(TrangThaiHoaDonEnum.TREO);
        entity.setMa(GenerateStringUtils.generate(6));
        hoaDonRepository.save(entity);
        HoaDonResponse result = hoaDonConverter.convertToResponse(entity);
        return result;
    }

    @Override
    public HoaDonResponse findByMa(String ma) {
        HoaDonEntity entity = hoaDonRepository.findByMa(ma);
        HoaDonResponse result = hoaDonConverter.convertToResponse(entity);
        return result;
    }

    @Override
    public List<HoaDonResponse> findByMaStatus(String trangThai) {
        List<HoaDonEntity> list = hoaDonRepository.findAllByTrangThaiOrderByNgayTaoDesc(trangThai);
        List<HoaDonResponse> result = list.stream().map(
                item -> hoaDonConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        return result;
    }

    @Override
    @Transactional
    public HoaDonResponse update(HoaDonResquest hoaDonResquest) {
        String trangThai = hoaDonResquest.getTrangThai();
        HoaDonEntity entity = hoaDonConverter.convertToEntity(hoaDonResquest);
        if (trangThai.equals("THANHCONG")) {
            List<HoaDonChiTietEntity> hoaDonChiTietEntities = hoaDonChiTietRepository.findAllByHoaDon_ma(hoaDonResquest.getMa());
            hoaDonChiTietEntities.forEach(
                    item -> {
                            if (item.getBienThe() != null) {
                                BienTheEntity bienTheEntity = item.getBienThe();
                                bienTheEntity.setSoLuong(bienTheEntity.getSoLuong() - item.getSoLuong());
                                bienTheRepository.save(bienTheEntity);
                            } else {
                                SanPhamEntity sanPhamEntity = item.getSanPham();
                                sanPhamEntity.setSoLuong(sanPhamEntity.getSoLuong() - item.getSoLuong());
                                sanPhamRepository.save(sanPhamEntity);
                            }
                        }
            );
        }
        HoaDonEntity result = hoaDonRepository.save(entity);
        return hoaDonConverter.convertToResponse(result);
    }

    @Override
    @Transactional
    public String delete(String ma) {
        HoaDonEntity entity = hoaDonRepository.findByMa(ma);
        if (entity != null) {
            List<HoaDonChiTietEntity> listHDCT = entity.getHoaDonChiTietEntities();
            if (!listHDCT.isEmpty()) {
                for (HoaDonChiTietEntity hdct : listHDCT) {
                    hoaDonChiTietRepository.deleteHoaDonCT(hdct.getId());
                }
            }

            trangThaiGiaoHangRepository.deleteByHoaDonId(entity);
            hoaDonRepository.deleteHoaDon(entity.getId());
            return "Xóa thành công";
        }
        return "Không tìm thấy hoá đơn";
    }

}

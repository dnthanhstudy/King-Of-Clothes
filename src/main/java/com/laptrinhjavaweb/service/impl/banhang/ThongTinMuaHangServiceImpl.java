package com.laptrinhjavaweb.service.impl.banhang;

import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.entity.ThongTinMuaHangEntity;
import com.laptrinhjavaweb.model.enumentity.TrangThaiTTMHEnum;
import com.laptrinhjavaweb.model.request.DiaChiGiaoHangRequest;
import com.laptrinhjavaweb.model.response.ThongTinMuaHangResponse;
import com.laptrinhjavaweb.repository.ThongTinMuaHangRepository;
import com.laptrinhjavaweb.service.ThongTinMuaHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ThongTinMuaHangServiceImpl implements ThongTinMuaHangService {

    @Autowired
    private ThongTinMuaHangRepository thongTinMuaHangRepository;

    @Override
    public ThongTinMuaHangEntity findById(Long idttmh) {
        return thongTinMuaHangRepository.findById(idttmh).orElse(null);
    }

    @Override
    public ThongTinMuaHangResponse findThongTinMuaHangDefault(Long idkh) {
        return thongTinMuaHangRepository.getTTMuaHangByIdKHAndTrangThai(idkh,"DEFAULT");
    }

    @Override
    public List<ThongTinMuaHangResponse> dsThongTinMuaHang(Long idkh) {
        return thongTinMuaHangRepository.dsThongTinMuaHangByIdKhachHang(idkh);
    }

    @Override
    public String themDiaChiGiaoHang(Long idkh,DiaChiGiaoHangRequest request) {
        KhachHangEntity khachHang = new KhachHangEntity();
        khachHang.setId(idkh);
        ThongTinMuaHangEntity thongTinMuaHang  = ThongTinMuaHangEntity.builder().idThanhPho(request.getIdThanhPho()).
                idHuyen(request.getIdHuyen())
                        .idXa(request.getIdXa())
                                .ten(request.getTenNguoiNhan())
                                        .soDienThoai(request.getSoDienThoai())
                .khachHang(khachHang)
                .diaChi(request.getDiaChi())
                .soNha(request.getSoNha())
                .build();

        if (request.getMacDinh()){
            thongTinMuaHangRepository.updateTrangThaiThongTinMuaHang(idkh);
            thongTinMuaHang.setTrangThai(TrangThaiTTMHEnum.MACDINH);
        }else{
            thongTinMuaHang.setTrangThai(TrangThaiTTMHEnum.BINHTHUONG);
        }
        thongTinMuaHang = thongTinMuaHangRepository.save(thongTinMuaHang);
        return "Thêm thành công";
    }

    @Override
    public String suaDiaChiGiaoHang(Long idttgh, DiaChiGiaoHangRequest request) {
        ThongTinMuaHangEntity thongTinMuaHang = thongTinMuaHangRepository.findById(idttgh).orElse(null);
        if (thongTinMuaHang==null){
            return "Không có thông tin mua hàng này";
        }
        KhachHangEntity khachHang = new KhachHangEntity();
        khachHang.setId(thongTinMuaHang.getKhachHang().getId());
        ThongTinMuaHangEntity thongTinMuaHangUpdate  = ThongTinMuaHangEntity.builder().idThanhPho(request.getIdThanhPho()).
                idHuyen(request.getIdHuyen())
                .idXa(request.getIdXa())
                .ten(request.getTenNguoiNhan())
                .soDienThoai(request.getSoDienThoai())
                .khachHang(khachHang)
                .diaChi(request.getDiaChi())
                .soNha(request.getSoNha())
                .build();
    thongTinMuaHangUpdate.setId(idttgh);
        if (request.getMacDinh()){
            thongTinMuaHangRepository.updateTrangThaiThongTinMuaHang(khachHang.getId());
            thongTinMuaHangUpdate.setTrangThai(TrangThaiTTMHEnum.MACDINH);
        }else{
            thongTinMuaHangUpdate.setTrangThai(TrangThaiTTMHEnum.BINHTHUONG);
        }
        thongTinMuaHang = thongTinMuaHangRepository.save(thongTinMuaHangUpdate);
        return "Sửa thành công";
    }

    @Override
    public ThongTinMuaHangResponse findThongTinMuaHangById(Long idThongTinMuaHang) {
        return thongTinMuaHangRepository.getThongTinMuaHangByIdTT(idThongTinMuaHang);
    }
}

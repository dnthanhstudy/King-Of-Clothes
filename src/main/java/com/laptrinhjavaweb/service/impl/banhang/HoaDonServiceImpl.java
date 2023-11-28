package com.laptrinhjavaweb.service.impl.banhang;


import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.enumentity.TrangThaiHoaDonEnum;
import com.laptrinhjavaweb.model.response.HoaDonChiTietResponse;
import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.repository.GioHangChiTietRepository;
import com.laptrinhjavaweb.repository.GioHangRepository;
import com.laptrinhjavaweb.repository.HoaDonChiTietRepository;
import com.laptrinhjavaweb.repository.HoaDonRepository;
import com.laptrinhjavaweb.repository.KhachHangRepository;
import com.laptrinhjavaweb.repository.ThongTinMuaHangRepository;
import com.laptrinhjavaweb.service.HoaDonService;
import com.laptrinhjavaweb.support.supportgiaohang.TrangThaiHoaDon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Service
public class HoaDonServiceImpl implements HoaDonService {

    @Autowired
    GioHangRepository gioHangRepository;
    @Autowired
    HoaDonRepository hoaDonRepository;

    @Autowired
    KhachHangRepository khachHangRepository;

    @Autowired
    GioHangChiTietRepository gioHangChiTietRepo;

//    @Autowired
//    BienTheRepository bienTheRepository;

    @Autowired
    HoaDonChiTietRepository hoaDonChiTietRepository;

    @Autowired
    ThongTinMuaHangRepository thongTinMuaHangRepository;

//    @Autowired
//    HoaDonConverter hoaDonConverter;

    @Override
    public void saveHoaDon(HoaDonEntity hoaDon) {
        hoaDonRepository.save(hoaDon);
    }

    @Override
    public HoaDonEntity findById(Long idhd) {
        return hoaDonRepository.findById(idhd).orElse(null);
    }



    @Override
    public List<HoaDonChiTietResponse> findHoaDonMoiDat(Long idkh) {
        return hoaDonChiTietRepository.getHoaDonMoiTaoByIdkh(idkh);
    }

    @Override
    public List<HoaDonChiTietResponse> dsHoaDonChiTietByIdHoaDon(Long idhd) {
        return hoaDonChiTietRepository.dsHoaDonChiTietByIdHoaDon(idhd);
    }

    @Override
    public BigDecimal tongTienTheoHoaDon(Long idhd) {
        return hoaDonRepository.tongTienByHoaDon(idhd);
    }

    @Override
    public List<HoaDonResponse> dsHoaDonOnline() {
        return hoaDonRepository.dsHoaDonOnline();
    }

    @Override
    public String thayDoiTrangThaiHoaDon(Long idhd, String trangThai) {
        try{
            HoaDonEntity hoaDon = hoaDonRepository.findById(idhd).orElse(null);
            assert hoaDon != null;
            // TrangThaiHoaDonEnum
            hoaDon.setTrangThai(trangThai);
            hoaDonRepository.save(hoaDon);
            return "Thay đổi trạng thái thành công";
        }catch (Exception e){
            return "Có lỗi xảy ra";
        }
    }

    @Override
    public List<HoaDonResponse> dsHoaDonTheoTrangThai(Long idkh, String trangThai) {
        return hoaDonRepository.findAllByKhachHang_IdAndTrangThai(idkh,trangThai);
    }

    @Override
    public List<HoaDonResponse> dsHoaDonDaMua(Long idkh) {
        List<String> dsTrangThai = new ArrayList<>();
        dsTrangThai.add(TrangThaiHoaDon.CHUANBIDATHANG);
        return hoaDonRepository.findAllByKhachHang_IdAndTrangThaiNotInOrderByNgayDat(idkh,dsTrangThai);
    }


//    @Override
//    public List<HoaDonEntity> getDsHoaDon1() {
//        return hoaDonRepository.findAll();
//    }

//    @Override
//    public HoaDonEntity saveOrUpdate(HoaDonEntity hoaDon) {
//        return hoaDonRepository.save(hoaDon);
//    }
//
//    @Override
//    public void delete(Long id) {
//        hoaDonRepository.deleteById(id);
//    }

    // tuấn
//    @Override
//    public List<HoaDonDTO> getDsHoaDon() {
//        List<HoaDon> listHD = hoaDonRepository.findAll();
//        List<HoaDonDTO> listHDDTO = listHD.stream().map(
//                item ->
//                     hoaDonConverter.convertToDTO(item)
//                ).collect(Collectors.toList());
//        return listHDDTO;
//    }
//
//    @Override
//    public String getCurrentDateTime() {
//        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm");
//        Date date = new Date();
//        return dateFormat.format(date);
//    }
}

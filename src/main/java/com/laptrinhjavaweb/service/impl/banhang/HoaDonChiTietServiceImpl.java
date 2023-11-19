package com.laptrinhjavaweb.service.impl.banhang;

import com.laptrinhjavaweb.repository.HoaDonChiTietRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class HoaDonChiTietServiceImpl
        //implements HoaDonChiTietService
{

    @Autowired
    HoaDonChiTietRepository hoaDonChiTietRepository;

//    @Autowired
//    HoaDonChiTietConverter hoaDonChiTietConverter;
//
//    @Override
//    public List<HoaDonChiTietDTO> getDsHoaDonChiTiet(Long idhd) {
//        List<HoaDonChiTiet> listHDCT = hoaDonChiTietRepository.findByHoaDon(idhd);
//        List<HoaDonChiTietDTO> listHdctDTO = listHDCT.stream().map(
//                item ->
//                        hoaDonChiTietConverter.convertToDTO(item)
//        ).collect(Collectors.toList());
//        return listHdctDTO;
//    }
}

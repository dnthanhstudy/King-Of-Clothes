package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.convert.KhachHangConverter;
import com.laptrinhjavaweb.convert.TimKiemSanPhamConvert;
import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.repository.KhachHangRepository;
import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.response.TimKiemSanPhamResponse;
import com.laptrinhjavaweb.resquest.KhachHangRequest;
import com.laptrinhjavaweb.service.IKhachHangService;
import com.laptrinhjavaweb.utils.GenerateStringUtils;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class KhachHangService implements IKhachHangService {

    @Autowired
    private KhachHangRepository khachHangRepository;

    @Autowired
    private KhachHangConverter khachHangConverter;

    @Autowired
    private TimKiemSanPhamConvert timKiemSanPhamConvert;

    @Override
    public KhacHangResponse findBySoDienThoaiOrEmailAndTrangThai(String sodienThoai, String email, String trangThai) {
        KhachHangEntity khachHangEntity = khachHangRepository.findBySoDienThoaiOrEmailAndTrangThai(sodienThoai, email, trangThai);
        if(khachHangEntity == null){
            return null;
        }
        KhacHangResponse result = khachHangConverter.convertToResponse(khachHangEntity);
        return result;
    }

    @Override
    public List<KhacHangResponse> getDsKhachHang() {
        List<KhachHangEntity> entity = khachHangRepository.findAllByTrangThai(SystemConstant.ACTICE);

        List<KhacHangResponse> result = entity.stream().map(
                item ->
                        khachHangConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        return result;
    }

    @Override
    public KhacHangResponse update(String ma, KhachHangRequest khachHangRequest) {
        KhachHangEntity khachHangEntity = khachHangRepository.findByMa(ma);

        if (khachHangEntity != null) {
            khachHangEntity.setTen(khachHangRequest.getTen());
            khachHangEntity.setEmail(khachHangRequest.getEmail());
            khachHangEntity.setSoDienThoai(khachHangRequest.getSoDienThoai());
            khachHangEntity.setNgaySinh(khachHangRequest.getNgaySinh());
            khachHangEntity.setMoTa(khachHangRequest.getMoTa());
            khachHangEntity.setGioiTinh(khachHangRequest.getGioiTinh());

            khachHangRepository.save(khachHangEntity);
            KhacHangResponse result = khachHangConverter.convertToResponse(khachHangEntity);
            return result;
        }
        return null;
    }

    @Override
    public KhacHangResponse insert(KhachHangRequest khachHangRequest) {
        KhachHangEntity khachHangEntity = khachHangRepository.findBySoDienThoaiOrEmail(
                khachHangRequest.getSoDienThoai(), khachHangRequest.getEmail()
        );
        if(khachHangEntity != null){
            return null;
        }
        khachHangEntity = khachHangConverter.convertToEntity(khachHangRequest);
        khachHangEntity.setMa(GenerateStringUtils.generateMa(khachHangRequest.getTen()));
        khachHangEntity.setTrangThai("ACTIVE");
        khachHangRepository.save(khachHangEntity);
        KhacHangResponse result = khachHangConverter.convertToResponse(khachHangEntity);
        return result;
    }

    @Override
    public void delete(String ma) {
        KhachHangEntity khachHangEntity = khachHangRepository.findByMa(ma);
        khachHangEntity.setTrangThai("INACTIVE");
        khachHangRepository.save(khachHangEntity);
    }

    @Override
    public KhacHangResponse getDetail(String ma) {
        KhachHangEntity khachHangEntity = khachHangRepository.findByMa(ma);
        if (khachHangEntity == null) {
            return null;
        }
        return khachHangConverter.convertToResponse(khachHangEntity);
    }


    @Override
    public List<KhacHangResponse> findAllAndTrangThai(
            String ma, String ten, String email, String soDienThoai, String trangThai) {
        List<KhachHangEntity> entity = khachHangRepository
                .findAllByMaContainingOrTenContainingOrEmailContainingOrSoDienThoaiContainingAndTrangThai(ma,ten,email,soDienThoai, SystemConstant.ACTICE);
        if (entity == null) {
            return null;
        }
        List<KhacHangResponse> result = entity.stream().map(
                item -> khachHangConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        return result;
    }

    @Override
    public List<TimKiemSanPhamResponse> histosies(String ma) {
        KhachHangEntity khachHangEntity = khachHangRepository.findByMa(ma);
        List<TimKiemSanPhamResponse> results = khachHangEntity.getTimKiemSanPhamEntities().stream().map(
                item -> timKiemSanPhamConvert.convertToResponse(item)
        ).collect(Collectors.toList());
        return results;
    }


}

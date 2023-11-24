package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.converter.KhachHangConverter;
import com.laptrinhjavaweb.converter.TimKiemSanPhamConverter;
import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.repository.KhachHangRepository;
import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.response.TimKiemSanPhamResponse;
import com.laptrinhjavaweb.resquest.KhachHangRequest;
import com.laptrinhjavaweb.service.IKhachHangService;
import com.laptrinhjavaweb.utils.GenerateStringUtils;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class KhachHangService implements IKhachHangService {

    @Autowired
    private KhachHangRepository khachHangRepository;

    @Autowired
    private KhachHangConverter khachHangConverter;

    @Autowired
    private TimKiemSanPhamConverter timKiemSanPhamConverter;

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
        result.setId(khachHangEntity.getId());
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
            String ma, String ten, String email, String soDienThoai, String gioiTinh, String moTa, String trangThai) {
        List<KhachHangEntity> entity = khachHangRepository
                .findAllByMaContainingOrTenContainingOrEmailContainingOrSoDienThoaiContainingOrGioiTinhContainingOrMoTaContainingAndTrangThai(ma,ten,email,soDienThoai, gioiTinh, moTa, SystemConstant.ACTICE);
        if (entity == null) {
            return null;
        }
        List<KhacHangResponse> result = entity.stream().map(
                item -> khachHangConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        return result;
    }

    @Override
    public void importFromExcel(MultipartFile file) {
        try {
            InputStream inputStream = file.getInputStream();
            Workbook workbook = new XSSFWorkbook(inputStream);
            Sheet sheet = workbook.getSheetAt(0);

            for (Row row : sheet) {
                if (row.getRowNum() == 0) {
                    // Skip the header row
                    continue;
                }

                KhachHangRequest khachHangRequest = new KhachHangRequest();
                khachHangRequest.setMa(row.getCell(0).getStringCellValue());
                khachHangRequest.setTen(row.getCell(1).getStringCellValue());
                khachHangRequest.setSoDienThoai(row.getCell(2).getStringCellValue());
                khachHangRequest.setEmail(row.getCell(3).getStringCellValue());
                khachHangRequest.setGioiTinh(row.getCell(4).getStringCellValue());

                java.util.Date utilDate = row.getCell(5).getDateCellValue();
                java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
                khachHangRequest.setNgaySinh(sqlDate);
                khachHangRequest.setMoTa(row.getCell(6).getStringCellValue());

                // Call your existing service method to save the customer
                insert(khachHangRequest);
            }

            workbook.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<TimKiemSanPhamResponse> histosies(String ma) {
        KhachHangEntity khachHangEntity = khachHangRepository.findByMa(ma);
        List<TimKiemSanPhamResponse> results = khachHangEntity.getTimKiemSanPhamEntities().stream().map(
                item -> timKiemSanPhamConverter.convertToResponse(item)
        ).collect(Collectors.toList());
        return results;
    }


}

package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.convert.NhanVienConverter;
import com.laptrinhjavaweb.entity.NhanVienEntity;
import com.laptrinhjavaweb.repository.NhanVienRepository;
import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.resquest.NhanVienRequest;
import com.laptrinhjavaweb.service.INhanVienService;
import com.laptrinhjavaweb.utils.GenerateStringUtils;
import com.laptrinhjavaweb.utils.UploadFileUtils;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class NhanVienService implements INhanVienService {
    @Autowired
    private NhanVienRepository nhanVienRepository;

    @Autowired
    private NhanVienConverter nhanVienConverter;

    @Autowired
    private UploadFileUtils uploadFileUtils;

    @Override
    public NhanVienResponse findByMaAndTrangThai(String ma, String trangThai) {
        NhanVienEntity nhanVienEntity = nhanVienRepository.findByMaAndTrangThai(ma, trangThai);
        if(nhanVienEntity == null){
            return null;
        }
        NhanVienResponse nhanVienResponse = nhanVienConverter.convertToResponse(nhanVienEntity);
        return nhanVienResponse;
    }

    @Override
    @Transactional
    public NhanVienResponse save(NhanVienRequest nhanVienRequest) {
        NhanVienEntity nhanVienEntity = nhanVienRepository.findBySoDienThoaiOrEmailOrCanCuocCongDan(
                nhanVienRequest.getSoDienThoai(), nhanVienRequest.getEmail(), nhanVienRequest.getCanCuocCongDan()
        );
        if(nhanVienEntity != null){
            return null;
        }
        if(nhanVienRequest.getAnh() != null){
            nhanVienRequest.setAnh(GenerateStringUtils.generate() + ".png");
            saveImage(nhanVienRequest);
        }
        nhanVienEntity = nhanVienConverter.convertToEntity(nhanVienRequest);
        nhanVienEntity.setMa(GenerateStringUtils.generateMa(nhanVienRequest.getTen()));
        nhanVienEntity.setTrangThai("INACTIVE");
        nhanVienRepository.save(nhanVienEntity);
        NhanVienResponse result = nhanVienConverter.convertToResponse(nhanVienEntity);
        return result;
    }

    public void saveImage(NhanVienRequest nhanVienRequest) {
        String path = "F:/Workspace/DATN/base-project-web/src/main/webapp/assets/images/nhanvien/" + nhanVienRequest.getAnh();
        if (nhanVienRequest.getBase64() != null) {
            byte[] bytes = Base64.decodeBase64(nhanVienRequest.getBase64().getBytes());
            uploadFileUtils.writeOrUpdate(path, bytes);
        }
    }
}

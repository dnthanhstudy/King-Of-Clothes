package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.convert.ChucVuConvert;
import com.laptrinhjavaweb.entity.ChucVuEntity;
import com.laptrinhjavaweb.repository.ChucVuRepository;
import com.laptrinhjavaweb.response.ChucVuResponse;
import com.laptrinhjavaweb.service.IChucVuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChucVuService implements IChucVuService {

    @Autowired
    private ChucVuRepository chucVuRepository;

    @Autowired
    private ChucVuConvert chucVuConvert;

    @Override
    public ChucVuResponse findByMa(String ma) {
        ChucVuEntity chucVuEntity = chucVuRepository.findByMa(ma);
        if(chucVuEntity == null){
            return null;
        }
        ChucVuResponse result = chucVuConvert.convertToResponse(chucVuEntity);
        return result;
    }
}

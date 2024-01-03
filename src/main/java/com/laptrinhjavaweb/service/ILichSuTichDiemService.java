package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.LichSuTichDiemResponse;
import com.laptrinhjavaweb.resquest.LịchSuTichDiemRequest;

import java.util.List;
import java.util.Map;

public interface ILichSuTichDiemService {

    void save(LịchSuTichDiemRequest request);

   List<LichSuTichDiemResponse> findAll();

   List<LichSuTichDiemResponse> findAllByIdKhachHang(String sdtKhachHang);

   List<LichSuTichDiemResponse> findAllByMaKH(String ma);
}

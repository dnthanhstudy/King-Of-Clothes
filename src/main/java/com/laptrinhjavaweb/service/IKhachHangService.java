package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.resquest.KhachHangRequest;
import org.apache.poi.ss.usermodel.Workbook;
import java.io.InputStream;
import java.util.List;

public interface IKhachHangService {

    KhacHangResponse findBySoDienThoaiOrEmailAndTrangThai(String sodienThoai, String email, String trangThai);

    List<KhacHangResponse> getDsKhachHang();

    KhacHangResponse update(String ma, KhachHangRequest khachHangRequest);

    KhacHangResponse insert(KhachHangRequest khachHangRequest);

    void delete(String ma);

    KhacHangResponse getDetail(String ma);

    List<KhacHangResponse> findAllAndTrangThai(String ma, String ten, String email, String soDienThoai, String trangThai);

//    void importCustomersFromExcel(InputStream inputStream);
//
//    Workbook exportCustomersToExcel(List<KhachHangEntity> customers);
}

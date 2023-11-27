package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.response.TimKiemSanPhamResponse;
import com.laptrinhjavaweb.resquest.KhachHangRequest;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

public interface IKhachHangService {

    KhacHangResponse findBySoDienThoaiOrEmailAndTrangThai(String sodienThoai, String email, String trangThai);

    Map<String, Object> pagingOrSearchOrFindAll(String param, Integer pageCurrent, Integer limit);

//    List<KhacHangResponse> getDsKhachHang();

    KhacHangResponse update(String ma, KhachHangRequest khachHangRequest);

    KhacHangResponse insert(KhachHangRequest khachHangRequest);

    void delete(String ma);

    KhacHangResponse getDetail(String ma);

    List<KhacHangResponse> findAllAndTrangThai(String ma, String ten, String email, String soDienThoai,  String gioiTinh, String moTa, String trangThai);

    void importFromExcel(MultipartFile file);

    List<TimKiemSanPhamResponse> histosies(String ma);
}

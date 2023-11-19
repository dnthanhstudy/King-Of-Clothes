package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.model.request.ThayDoiSoLuongGioHangRequest;
import com.laptrinhjavaweb.model.response.GioHangResponse;
import com.laptrinhjavaweb.utils.ResponseObject;

import java.math.BigDecimal;
import java.util.List;

public interface GioHangService {

    ResponseObject thayDoiSoLuong(ThayDoiSoLuongGioHangRequest request);

    List<GioHangResponse> dsGioHangChiTietByIdKh(Long idKH);

//    BigDecimal tongTien(Long idKH);
    BigDecimal tongTienTheoGioHangChiTiet(Long idKH,List<Long> lstGhct);

    ResponseObject datHang(Long idkh, List<Long> dsghct);
//
//    List<List<GioHangResponse>> dsGioHangChiaTheoSanPham(Long idKh);
//
//    ResponseObject themVaoGioHang(Long idkh, List<Long> dsgtttid);

}

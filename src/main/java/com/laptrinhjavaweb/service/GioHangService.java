package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.model.request.ThayDoiSoLuongGioHangRequest;
import com.laptrinhjavaweb.model.response.hoadon.TongTienResponse;
import com.laptrinhjavaweb.model.response.GioHangResponse;
import com.laptrinhjavaweb.utils.ResponseObject;

import java.util.List;

public interface GioHangService {

    ResponseObject thayDoiSoLuong(ThayDoiSoLuongGioHangRequest request);

    List<GioHangResponse> dsGioHangChiTietByIdKh(Long idKH);

//    BigDecimal tongTien(Long idKH);
    TongTienResponse tongTienTheoGioHangChiTiet(List<Long> lstGhct);

    String datHang(Long idkh, List<Long> dsghct);
//
//    List<List<GioHangResponse>> dsGioHangChiaTheoSanPham(Long idKh);
//
    String themVaoGioHang(Long idkh, Long bienTheId,Integer quantity);
    GioHangResponse updateGioHangChiTiet(Long idghct, Long bienTheId);

    String xoaGioHangChiTiet(Long idghct);

    Long tongSoSanPhamTrongGioHang(Long idkh);

}

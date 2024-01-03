package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.response.XoaBienTheResponse;
import com.laptrinhjavaweb.service.IXoaBienTheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/xoa-bien-the")
public class XoaBienTheAPI {

    @Autowired
    private IXoaBienTheService xoaBienTheService;

    @GetMapping("/cart/{maKhachHang}")
    public ResponseEntity<?> findAllByMaKhachHang (
            @PathVariable("maKhachHang") String maKhachHang
    ){
        List<XoaBienTheResponse> results = xoaBienTheService.findAllByMaKhachHang(maKhachHang);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }

    @GetMapping("/invoice/{maHoaDon}")
    public ResponseEntity<?> findAllByMaHoaDon (
            @PathVariable("maHoaDon") String maHoaDon
    ){
        List<XoaBienTheResponse> results = xoaBienTheService.findAllByMaHoaDon(maHoaDon);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
}

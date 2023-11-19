package com.laptrinhjavaweb.api.user;

import com.laptrinhjavaweb.repository.HoaDonChiTietRepository;
import com.laptrinhjavaweb.service.impl.HoaDonChiTietService;
import com.laptrinhjavaweb.utils.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/hdct")
public class ApiHoaDonChiTietController {
    @Autowired
    HoaDonChiTietService hoaDonChiTietService;
    @GetMapping("/{idhd}")
    public ResponseObject findAllHoaDonChiTietByHoaDon(@PathVariable("idhd")Long idhd){
        return new ResponseObject(hoaDonChiTietService.getHoaDonChiTiet(idhd));
    }
}

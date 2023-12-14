package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.resquest.HoaDonChiTietRequest;
import com.laptrinhjavaweb.service.IHoaDonChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/hoa-don-chi-tiet")
public class HoaDonChiTietAPI {

    @Autowired
    private IHoaDonChiTietService hoaDonChiTietService;

    @PostMapping
    public void created(@RequestBody HoaDonChiTietRequest hoaDonChiTietRequest){
        hoaDonChiTietService.save(hoaDonChiTietRequest);
    }
}

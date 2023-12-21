package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.resquest.GioHangChiTietRequest;
import com.laptrinhjavaweb.service.IGioHangChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/gio-hang-chi-tiet")

public class GioHangChiTietAPI {

    @Autowired
    private IGioHangChiTietService gioHangChiTietService;

    @PostMapping
    public void save(@RequestBody GioHangChiTietRequest gioHangChiTietRequest){
        gioHangChiTietService.save(gioHangChiTietRequest);
    }
}

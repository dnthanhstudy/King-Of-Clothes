package com.laptrinhjavaweb.api.user;

import com.laptrinhjavaweb.service.HoaDonService;
import com.laptrinhjavaweb.utils.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/user/hoadon")
public class ApiHoaDonController {

    @Autowired
    HoaDonService hoaDonService;

    @GetMapping("/hdct/{idkh}")
    public ResponseObject getHoaDonChiTiet(@PathVariable(name = "idkh")Long idkh){
        return new ResponseObject(hoaDonService.findHoaDonMoiDat(idkh));
    }
}

package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.response.HoaDonResponse;
import com.laptrinhjavaweb.resquest.HoaDonResquest;
import com.laptrinhjavaweb.service.IHoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/hoa-don-off")
public class HoaDonAPI {

    @Autowired
    private IHoaDonService hoaDonService;

    @PostMapping
    public ResponseEntity<?> created(@RequestBody HoaDonResquest hoaDonResquest){
        HoaDonResponse result = hoaDonService.save(hoaDonResquest);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
}

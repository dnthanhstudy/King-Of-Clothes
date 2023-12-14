package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.response.HoaDonResponse;
import com.laptrinhjavaweb.resquest.HoaDonResquest;
import com.laptrinhjavaweb.service.IHoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/hoa-don-off")
public class HoaDonAPI {

    @Autowired
    private IHoaDonService hoaDonService;

    @PostMapping
    public ResponseEntity<?> created(@RequestBody HoaDonResquest hoaDonResquest){
        HoaDonResponse result = hoaDonService.save(hoaDonResquest);
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }

    @GetMapping("/{ma}")
    public ResponseEntity<?> detail(@PathVariable("ma") String ma){
        HoaDonResponse result = hoaDonService.findByMa(ma);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
}

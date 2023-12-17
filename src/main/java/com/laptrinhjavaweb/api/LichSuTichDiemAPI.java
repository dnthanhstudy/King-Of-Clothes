package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.resquest.LịchSuTichDiemRequest;
import com.laptrinhjavaweb.service.ILichSuTichDiemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/lich-su-tich-diem")
public class LichSuTichDiemAPI {

    @Autowired
    private ILichSuTichDiemService lichSuTichDiemService;

    @PostMapping
    public void save(@RequestBody LịchSuTichDiemRequest request){
        lichSuTichDiemService.save(request);
    }
}

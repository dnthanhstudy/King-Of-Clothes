package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.exception.EntityNotFoundException;
import com.laptrinhjavaweb.response.TichDiemResponse;
import com.laptrinhjavaweb.resquest.TichDiemRequest;
import com.laptrinhjavaweb.service.impl.TichDiemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/tich-diem")
public class TichDiemAPI {
    @Autowired
    private TichDiemService tichDiemService;

    @PostMapping
    public ResponseEntity<?> save(TichDiemRequest request){
        TichDiemResponse results = tichDiemService.save(request);
        if(results == null){
            throw new EntityNotFoundException("Không tìm thấy khách hàng!");
        }
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
}

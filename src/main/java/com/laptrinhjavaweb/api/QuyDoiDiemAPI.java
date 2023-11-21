package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.response.QuyDoiDiemResponse;
import com.laptrinhjavaweb.resquest.QuyDoiDiemRequest;
import com.laptrinhjavaweb.service.impl.QuyDoiDiemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/quy-doi-diem")
public class QuyDoiDiemAPI {

    @Autowired
    private QuyDoiDiemService quyDoiDiemService;


    @GetMapping
    public ResponseEntity<?> getAll(){
        List<QuyDoiDiemResponse> result = quyDoiDiemService.getAll();
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @PostMapping()
    public ResponseEntity<?> saveOrUpdate(@RequestBody List<QuyDoiDiemRequest> requests) {
        List<QuyDoiDiemResponse> results = quyDoiDiemService.saveOrUpdate(requests);
        return new ResponseEntity<>(results, HttpStatus.CREATED);
    }
}

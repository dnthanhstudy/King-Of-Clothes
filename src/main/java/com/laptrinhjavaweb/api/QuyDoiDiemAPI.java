package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.response.QuyDoiDiemResponse;
import com.laptrinhjavaweb.resquest.QuyDoiDiemRequest;
import com.laptrinhjavaweb.service.impl.QuyDoiDiemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/quy-doi-diem")
public class QuyDoiDiemAPI {

    @Autowired
    private QuyDoiDiemService quyDoiDiemService;

    @PostMapping
    public ResponseEntity<?> QuyDoiDiem(@RequestBody QuyDoiDiemRequest request) {
        try {
            QuyDoiDiemResponse result = quyDoiDiemService.quyDoiDiem(request);
            return ResponseEntity.ok(result);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
}

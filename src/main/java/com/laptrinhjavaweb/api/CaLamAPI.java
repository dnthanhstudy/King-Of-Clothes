package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.response.CaLamResponse;
import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.resquest.CaLamRequest;
import com.laptrinhjavaweb.service.ICaLamService;
import com.laptrinhjavaweb.service.INhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/ca-lam")
public class CaLamAPI {

    @Autowired
    private INhanVienService nhanVienService;

    @Autowired
    private ICaLamService caLamService;

    @GetMapping("/mo-ca/{ma}")
    public ResponseEntity<?> moCa(
            @PathVariable("ma") String ma
    ){
        NhanVienResponse result = nhanVienService.moCa(ma);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<?> themCa(@RequestBody CaLamRequest request){
        CaLamResponse result = caLamService.insert(request);
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }
}

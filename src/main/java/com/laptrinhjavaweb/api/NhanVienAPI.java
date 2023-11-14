package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.exception.ClientError;
import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.resquest.NhanVienRequest;
import com.laptrinhjavaweb.service.INhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/nhan-vien")
public class NhanVienAPI {

    @Autowired
    private INhanVienService nhanVienService;

    @PostMapping
    public ResponseEntity<?> created(@RequestBody NhanVienRequest request){
        NhanVienResponse result = nhanVienService.save(request);
        if(result == null){
            throw new ClientError("Số điện thoại hoặc email hoặc căn cước công dân đã tồn tại");
        }
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }
}

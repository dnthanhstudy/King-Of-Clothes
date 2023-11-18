package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.exception.ClientError;
import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.resquest.NhanVienRequest;
import com.laptrinhjavaweb.service.INhanVienService;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    
    @GetMapping("/search")
    public ResponseEntity<?> searchs(
            @RequestParam(name = "q") String param,
            @RequestParam(name = "page", defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "2") Integer limit){
        Map<String, Object> results = nhanVienService.pagingOrSearchOrFindAll(param, page, limit);
    	if(results == null){
            return new ResponseEntity<>("Không tìm thấy kết quả phù hợp!", HttpStatus.OK);
        }
        return new ResponseEntity<>(results, HttpStatus.OK);
    }

    @GetMapping("/pagination")
    public ResponseEntity<?> pagination(@RequestParam(name = "page", defaultValue = "1") Integer page,
                                        @RequestParam(name = "limit", required = false, defaultValue = "2") Integer limit
    ){
        Map<String, Object> results = nhanVienService.pagingOrSearchOrFindAll(null, page, limit);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<?> findAll(){
        Map<String, Object> results = nhanVienService.pagingOrSearchOrFindAll(null, null, null);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
}

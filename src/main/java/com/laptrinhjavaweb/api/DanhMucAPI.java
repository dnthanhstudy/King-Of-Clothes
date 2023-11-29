package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.exception.ClientError;
import com.laptrinhjavaweb.response.DanhMucResponse;
import com.laptrinhjavaweb.resquest.DanhMucRequest;
import com.laptrinhjavaweb.service.IDanhMucService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/danh-muc")
public class DanhMucAPI {

    @Autowired
    private IDanhMucService danhMucService;

    @PostMapping
    public ResponseEntity<?> created(@RequestBody DanhMucRequest request){
        DanhMucResponse result = danhMucService.create(request);
        if(result == null){
            throw new ClientError("Slug này đã tồn tại. Xin kiểm tra lại!");
        }
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }

    @GetMapping("/search")
    public ResponseEntity<?> searchs(
            @RequestParam(name = "q") String param,
            @RequestParam(name = "page", defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "5") Integer limit){
        Map<String, Object> results = danhMucService.pagingOrSearchOrFindAll(param, page, limit);
        if(results == null){
            return new ResponseEntity<>("Không tìm thấy kết quả phù hợp!", HttpStatus.OK);
        }
        return new ResponseEntity<>(results, HttpStatus.OK);
    }

    @GetMapping("/pagination")
    public ResponseEntity<?> pagination(@RequestParam(name = "page", defaultValue = "1") Integer page,
                                        @RequestParam(name = "limit", required = false, defaultValue = "5") Integer limit
    ){
        Map<String, Object> results = danhMucService.pagingOrSearchOrFindAll(null, page, limit);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<?> findAll(){
        Map<String, Object> results = danhMucService.pagingOrSearchOrFindAll(null, null, null);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
}

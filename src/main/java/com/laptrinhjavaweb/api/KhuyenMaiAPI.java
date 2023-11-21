package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.response.KhuyenMaiResponse;
import com.laptrinhjavaweb.service.IKhuyenMaiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/khuyen-mai")
public class KhuyenMaiAPI {
    @Autowired
    private IKhuyenMaiService khuyenMaiService;
    @GetMapping
    public ResponseEntity<?> findAll(){
        List<KhuyenMaiResponse> results = khuyenMaiService.getAll();
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
    @GetMapping("/detail/{ma}")
    public ResponseEntity<?> findByMa(@PathVariable String ma){
        KhuyenMaiResponse results = khuyenMaiService.findByMa(ma);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
    @GetMapping("/delete/{ma}")
    public ResponseEntity<?> delete(@PathVariable Long id){
        String results = khuyenMaiService.delete(id);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
}

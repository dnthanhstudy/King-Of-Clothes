package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.response.KhuyenMaiResponse;
import com.laptrinhjavaweb.resquest.KhuyenMaiRequest;
import com.laptrinhjavaweb.service.IKhuyenMaiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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
    @DeleteMapping("/delete/{ma}")
    public ResponseEntity<?> delete(@PathVariable(name = "ma") String ma){
        String results = khuyenMaiService.delete(ma);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
    @PostMapping("/create")
    public ResponseEntity<?> create(@RequestBody KhuyenMaiRequest km){
        KhuyenMaiResponse results = khuyenMaiService.save(km);
        return new ResponseEntity<>(results, HttpStatus.CREATED);
    }
    @PutMapping("/update/{ma}")
    public ResponseEntity<?> update(@RequestBody KhuyenMaiRequest km, @PathVariable String ma){
        KhuyenMaiResponse results = khuyenMaiService.update(km, ma);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
}

package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.response.HoaDonResponse;
import com.laptrinhjavaweb.resquest.HoaDonResquest;
import com.laptrinhjavaweb.service.IHoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/hoa-don-off")
public class HoaDonAPI {

    @Autowired
    private IHoaDonService hoaDonService;

    @PostMapping
    public ResponseEntity<?> created(@RequestBody HoaDonResquest hoaDonResquest){
        HoaDonResponse result = hoaDonService.save(hoaDonResquest);
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }

    @GetMapping("/{ma}")
    public ResponseEntity<?> detail(@PathVariable("ma") String ma){
        HoaDonResponse result = hoaDonService.findByMa(ma);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
//    tìm kiếm theo trạng thái
    @GetMapping("/find-by-status")
    public ResponseEntity<?> findByStatus(@RequestParam String trangThai){
        List<HoaDonResponse> result = hoaDonService.findByMaStatus(trangThai);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
//  update hoa don theo ma
    @PutMapping("/{ma}")
    public ResponseEntity<?> update(@RequestBody HoaDonResquest hoaDonResquest){
        HoaDonResponse result = hoaDonService.update(hoaDonResquest);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
    //  delete hoa don theo ma, xoa db
//    @DeleteMapping("/{ma}")
//    public ResponseEntity<?> delete(@PathVariable("ma") String ma){
//        String result = hoaDonService.delete(ma);
//        return new ResponseEntity<>(result, HttpStatus.OK);
//    }

    @DeleteMapping("/{ma}")
    public ResponseEntity<?> delete(@PathVariable(name = "ma") String ma){
        hoaDonService.delete(ma);
        return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
    }
}

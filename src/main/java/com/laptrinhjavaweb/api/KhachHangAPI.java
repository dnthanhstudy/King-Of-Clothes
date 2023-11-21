package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.entity.KhachHangEntity;
import com.laptrinhjavaweb.exception.ClientError;
import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.response.TimKiemSanPhamResponse;
import com.laptrinhjavaweb.resquest.KhachHangRequest;
import com.laptrinhjavaweb.service.IKhachHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.List;

@RestController
@RequestMapping("/api/khach-hang")
public class KhachHangAPI {

    @Autowired
    private IKhachHangService khachHangService;

    @GetMapping
    public ResponseEntity<?> getDsKhachHang(){
        List<KhacHangResponse> result = khachHangService.getDsKhachHang();
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<?> created(@RequestBody KhachHangRequest request){
        KhacHangResponse result = khachHangService.insert(request);
        if(result == null){
            throw new ClientError("Số điện thoại hoặc email đã tồn tại");
        }
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }


    @DeleteMapping("/{ma}")
    public ResponseEntity<?> delete(@PathVariable(name = "ma") String ma){
        khachHangService.delete(ma);
        return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
    }

    @GetMapping("/{ma}")
    public ResponseEntity<?> findByMa(@PathVariable String ma) {
        KhacHangResponse result = khachHangService.getDetail(ma);
        if (result == null) {
            return new ResponseEntity<>("Khách hàng không tồn tại", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @PutMapping("/{ma}")
    public ResponseEntity<?> updateKhachHang(@PathVariable String ma, @RequestBody KhachHangRequest khachHangRequest) {
        KhacHangResponse result = khachHangService.update(ma, khachHangRequest);

        if (result != null) {
            return ResponseEntity.ok(result); 
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Không tìm thấy khách hàng với mã " + ma);
        }
    }

    @GetMapping("/search")
    public ResponseEntity<?> searchKhachHang( @RequestParam(name = "search") String param) {

        List<KhacHangResponse> result = khachHangService.findAllAndTrangThai(
                param, param, param, param, SystemConstant.ACTICE);
        if(result == null) {
            return new ResponseEntity<>("Không tìm thấy kết quả phù hợp!", HttpStatus.OK);
        }
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @GetMapping("/histories")
    public ResponseEntity<?> historiesSerach (@RequestParam(name = "ma") String ma){
        List<TimKiemSanPhamResponse> results = khachHangService.histosies(ma);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }
}

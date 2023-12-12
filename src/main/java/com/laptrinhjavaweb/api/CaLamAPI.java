package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.response.CaLamResponse;
import com.laptrinhjavaweb.response.MyUserResponse;
import com.laptrinhjavaweb.response.NhanVienResponse;
import com.laptrinhjavaweb.resquest.CaLamRequest;
import com.laptrinhjavaweb.security.utils.SecurityUtils;
import com.laptrinhjavaweb.service.HoaDonService;
import com.laptrinhjavaweb.service.ICaLamService;
import com.laptrinhjavaweb.service.INhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/ca-lam")
public class CaLamAPI {

    @Autowired
    private INhanVienService nhanVienService;

    @Autowired
    private ICaLamService caLamService;

    @Autowired
    private HoaDonService hoaDonService;

    @GetMapping("/mo-ca/{ma}")
    public ResponseEntity<?> moCa(
            @PathVariable("ma") String ma
    ){
        NhanVienResponse result = nhanVienService.moCa(ma);
        MyUserResponse myUserResponse = SecurityUtils.getPrincipal();
        myUserResponse.setTrangThai("ACTIVE");
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @GetMapping("/dong-ca/{ma}")
    public ResponseEntity<?> dongCa(
            @PathVariable("ma") String ma
    ){
        NhanVienResponse result = nhanVienService.dongCa(ma);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<?> themCa(@RequestBody CaLamRequest request){
        CaLamResponse result = caLamService.insert(request);
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }

    @GetMapping("/ket-ca")
    public ResponseEntity<?> ketCa(
            @RequestParam(name = "ngay") String ngay,
            @RequestParam(name = "ma") String maNhanVien
    ){
        CaLamResponse result = hoaDonService.findAllByMaNhanVienAndHoaDon(ngay, maNhanVien);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @PutMapping("/{ma}")
    public ResponseEntity<?> updateCaLam(@PathVariable("ma") String maNhanVien, @RequestBody CaLamRequest caLamRequest) {
        CaLamResponse result = caLamService.update(maNhanVien, caLamRequest);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<?> pagination(@RequestParam(name = "page", defaultValue = "1") Integer page,
                                        @RequestParam(name = "limit", required = false, defaultValue = "5") Integer limit
    ){
        Map<String, Object> results = caLamService.pagingOrFindAll(page, limit);
        return new ResponseEntity<>(results, HttpStatus.OK);
    }

    @GetMapping("/{ma}")
    public ResponseEntity<?> findByID(@PathVariable Long id) {
        CaLamResponse result = caLamService.getDetail(id);
        if (result == null) {
            return new ResponseEntity<>("Ca làm không tồn tại", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

}

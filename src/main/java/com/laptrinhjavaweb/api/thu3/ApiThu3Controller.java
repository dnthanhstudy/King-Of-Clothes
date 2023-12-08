package com.laptrinhjavaweb.api.thu3;

import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.model.response.TrangThaiGiaoHangResponse;
import com.laptrinhjavaweb.service.Thu3Service;
import com.laptrinhjavaweb.utils.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/thu3")
public class ApiThu3Controller {
    @Autowired
    Thu3Service thu3Service;

    @GetMapping("")
    public List<HoaDonResponse> dsHoaDonDangGiao(){
        return thu3Service.dsHoaDonDangGiao();
    }
    @GetMapping("/dstrangthai/{magiaohang}")
    public List<TrangThaiGiaoHangResponse> dsTrangThaiGiaoHang(@PathVariable(name = "magiaohang") String maGiaoHang){
        return thu3Service.dsTrangThaiDangGiao(maGiaoHang);
    }
    @GetMapping("/themtrangthai/{magiaohang}")
    public ResponseObject themTrangThaiGiaoHang(@PathVariable(name = "magiaohang")String maGiaoHang,

                                                @RequestParam("tentrangthai") String tenTrangThai){
        return new ResponseObject(thu3Service.themTrangThaiGiaoHang(maGiaoHang,tenTrangThai));
    }
//    public ResponseObject thayDoiTrangThaiDangGiao(String maGiaoHang,String tenTrangThaiGiao){
//
//    }
}

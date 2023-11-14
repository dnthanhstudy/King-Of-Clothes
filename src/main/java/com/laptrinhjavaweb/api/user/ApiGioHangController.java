package com.laptrinhjavaweb.api.user;

import com.laptrinhjavaweb.model.request.ChiTietThuocTinhBienTheRequest;
import com.laptrinhjavaweb.model.request.ThayDoiSoLuongGioHangRequest;
import com.laptrinhjavaweb.model.response.GioHangResponse;
import com.laptrinhjavaweb.service.GioHangService;
import com.laptrinhjavaweb.utils.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/user/giohang")
public class ApiGioHangController {
    @Autowired
    GioHangService gioHangService;


    @GetMapping("/{id}")
    public List<GioHangResponse> dsGioHangChiTietByKhachHang(@PathVariable(name = "id")Long idkh){
        return gioHangService.dsGioHangChiTietByIdKh(idkh);
    }

    @PostMapping("/subtotaltheoghct/{idkh}")
    public ResponseObject totalGioHangByKhachHangAndGioHangChiTiet(
            @PathVariable(name = "idkh")Long idkh,
            @RequestBody Map<String, List<Long>> requestBody
    ){
        return  new ResponseObject(gioHangService.tongTienTheoGioHangChiTiet(idkh, requestBody.get("collection")));
    }
    @PostMapping("/thaydoisoluong")
    public ResponseObject totalGioHangByKhachHang(@RequestBody ThayDoiSoLuongGioHangRequest request){
        return new ResponseObject(gioHangService.thayDoiSoLuong(request));
    }
    @PostMapping("/{idkh}")
    public ResponseObject datHang(@PathVariable(name = "idkh") Long idkh
            ,@RequestBody Map<String, Object> requestBody){
        List<Integer> dsghct = (List<Integer>) requestBody.get("dsghct");
        return gioHangService.datHang(idkh,dsghct);
    }
//
//    @GetMapping("/subtotal/{id}")
//    public ResponseObject totalGioHangByKhachHang(@PathVariable(name = "id")Long idkh){
//        return new ResponseObject(gioHangService.tongTien(idkh));
//    }
//

//    @GetMapping("/dsspttchiatheosp/{id}")
//    public ResponseObject dsSpttChiaTheoSanPhamByIdKh(@PathVariable(name = "id")Long idkh){
//        return new ResponseObject(gioHangService.dsGioHangChiaTheoSanPham(idkh));
//    }
//    @PostMapping("/themsanphamvaogio/{idkh}")
//    public ResponseObject themSanPhamVaoGioHang(@PathVariable(name = "idkh") Long idkh,
//                                                @RequestBody ChiTietThuocTinhBienTheRequest request) {
//        return gioHangService.themVaoGioHang(idkh, Arrays.asList(request.getDsThuocTinhBienThe()));
//    }
}

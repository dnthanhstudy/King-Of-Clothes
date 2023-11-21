package com.laptrinhjavaweb.api.user;

import com.laptrinhjavaweb.entity.BienTheEntity;
import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.request.ThayDoiSoLuongGioHangRequest;
import com.laptrinhjavaweb.model.response.GioHangResponse;
import com.laptrinhjavaweb.response.BienTheResponse;
import com.laptrinhjavaweb.service.GiaoHangService;
import com.laptrinhjavaweb.service.GioHangService;
import com.laptrinhjavaweb.service.IBienTheService;
import com.laptrinhjavaweb.utils.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/user/giohang")
public class ApiGioHangController {
    @Autowired
    GioHangService gioHangService;

    @Autowired
    IBienTheService bienTheService;

    @Autowired
    GiaoHangService giaoHangService;
    @GetMapping("/{id}")
    public List<GioHangResponse> dsGioHangChiTietByKhachHang(@PathVariable(name = "id")Long idkh){
        return gioHangService.dsGioHangChiTietByIdKh(idkh);
    }

    @PostMapping("/thaydoisoluong")
    public ResponseObject totalGioHangByKhachHang(@RequestBody ThayDoiSoLuongGioHangRequest request){
        return gioHangService.thayDoiSoLuong(request);
    }
    @PostMapping("/dathang/{idkh}")
    public ResponseObject datHang(@PathVariable(name = "idkh") Long idkh
            ,@RequestBody Map<String, Object> requestBody){
        List<Long> dsghct = (List<Long>) requestBody.get("dsghct");
        return gioHangService.datHang(idkh,dsghct);
    }

    @GetMapping("/addcart")
    public String themSanPhamVaoGio(
            @RequestParam("data") String params,
            @RequestParam("idkh") Long idkh

    ) {
       List<Long> ds = convertStringToLongList(params);
        BienTheResponse bienThe = bienTheService.findByIdGiaTriThuocTinh(ds);
        return gioHangService.themVaoGioHang(idkh,bienThe.getId());
    }
    public static List<Long> convertStringToLongList(String params) {
        List<Long> ds = new ArrayList<>();
        for (String number : params.split(",")) {
            ds.add(Long.parseLong(number)); // Chuyển đổi từ chuỗi sang số nguyên và thêm vào danh sách
        }
        return ds;
    }
//
    @GetMapping("/tongtienghct")
    public ResponseObject totalGioHangByKhachHang(
                                                  @RequestParam("dsghct")String dsghctStr
                                                  ){
        List<Long> dsghct = convertStringToLongList(dsghctStr);
        return new ResponseObject(gioHangService.tongTienTheoGioHangChiTiet(dsghct));
    }



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

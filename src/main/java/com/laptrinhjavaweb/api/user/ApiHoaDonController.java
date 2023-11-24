package com.laptrinhjavaweb.api.user;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.service.GiaoHangService;
import com.laptrinhjavaweb.service.GioHangService;
import com.laptrinhjavaweb.service.HoaDonService;
import com.laptrinhjavaweb.support.supportgiaohang.ApiResponse;
import com.laptrinhjavaweb.support.supportgiaohang.ConvertJson;
import com.laptrinhjavaweb.support.supportgiaohang.PreviewGiaoHang;
import com.laptrinhjavaweb.support.supportgiaohang.TrangThaiHoaDon;
import com.laptrinhjavaweb.utils.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/api/hoadon")
public class ApiHoaDonController {

    @Autowired
    HoaDonService hoaDonService;

    @Autowired
    GiaoHangService giaoHangService;

    @Autowired
    RestTemplate restTemplate;

    @Autowired
    ApiGiaoHangController giaoHangController;

    @GetMapping("/dshoadondamua/{idkh}")
    public ResponseObject getDsHoaDonTheoTrangThai(@PathVariable("idkh")Long idkh){
        return new ResponseObject(hoaDonService.dsHoaDonDaMua(idkh));
    }

    @GetMapping("/dshdtheott/{idkh}")
    public ResponseObject getDsHoaDonTheoTrangThai(@PathVariable("idkh")Long idkh,
                                                   @RequestParam("trangthai")String trangThai){
        return new ResponseObject(hoaDonService.dsHoaDonTheoTrangThai(idkh,trangThai));
    }

    @GetMapping("/hdct/{idkh}")
    public ResponseObject getHoaDonChiTiet(@PathVariable(name = "idkh")Long idkh){
        return new ResponseObject(hoaDonService.findHoaDonMoiDat(idkh));
    }


    @GetMapping("/dshoadon")
    public ResponseObject dsHoaDonOnline(){
        return new ResponseObject(hoaDonService.dsHoaDonOnline());
    }


    @GetMapping("/thaydoitrangthai")
    public String thayDoiTrangThai(@RequestParam("idhd")Long idhd,@RequestParam("trangthai")String trangThai){
        hoaDonService.thayDoiTrangThaiHoaDon(idhd,trangThai);
//        if (trangThai.equals(TrangThaiHoaDon.DANHANDON)){
//            HoaDonEntity hoaDon = hoaDonService.findById(idhd);
//            giaoHangController.datHang(idhd);
//        }
       return  "Thay đổi trạng thái thành công";
    }

    @GetMapping("/dathangnhanhang")
    public ResponseObject datHangNhanHang(@RequestParam(name = "idkh")Long idkh,
                                          @RequestParam(name = "ttgh")Long ttgh,
                                          @RequestParam(name = "phiship")Double phiShip

    ){
        HoaDonEntity hoaDon = giaoHangService.thanhToan(idkh,ttgh,"THANHTOANNHANHANG",phiShip);
        return new ResponseObject("Đặt hàng thành công");
    }
//    private void taoHangGiaoHangNhanh(Long idhd){
//        String url = "http://localhost:8080/api/user/giaohang/datHang/"+idhd;
//        Object responseEntity = ConvertJson.convert(restTemplate, url
//                , HttpMethod.POST, null
//                , new ParameterizedTypeReference<ApiResponse<Object>>() {
//                }
//        );
//        hoaDon.setMa(responseEntity.getMaHoaDon());
//        hoaDon.setMaGiaoHang(responseEntity.getMaHoaDon());
//        hoaDonService.saveHoaDon(hoaDon);

//    }
}

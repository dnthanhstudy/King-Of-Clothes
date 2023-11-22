package com.laptrinhjavaweb.controller.web;

import com.laptrinhjavaweb.api.user.ApiGiaoHangController;
import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.service.GiaoHangService;
import com.laptrinhjavaweb.service.HoaDonService;
import com.laptrinhjavaweb.service.impl.giaohang.Order;
import com.laptrinhjavaweb.service.impl.giaohang.PaypalService;
import com.laptrinhjavaweb.support.supportgiaohang.ApiResponse;
import com.laptrinhjavaweb.support.supportgiaohang.ConvertJson;
import com.laptrinhjavaweb.support.supportgiaohang.PreviewGiaoHang;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller()
@RequestMapping("/pay")
public class PaypalController {
    @Autowired
    private RestTemplate restTemplate;
    @Autowired
    PaypalService service;

    @Autowired
    ApiGiaoHangController giaoHangController;

    @Autowired
    GiaoHangService giaoHangService ;

    @Autowired
    HoaDonService hoaDonService;

    public static final String SUCCESS_URL = "pay/success";
    public static final String CANCEL_URL = "pay/cancel";

    @GetMapping("")
    public String home() {
        return "paypal/index";
    }

    @PostMapping("")
    public String payment(@ModelAttribute Order order) {
//        Order order = new Order();
//        order.setPrice(10);
//        order.setDescription("Test payment");
//        order.setMethod("paypal");
//        order.setCurrency("USD");
//        order.setIntent("sale");
        System.out.println(order);
        try {
            Payment payment = service.createPayment(order.getPrice(), order.getCurrency(), order.getMethod(),
                    order.getIntent(), order.getDescription(), "http://localhost:8080/" + CANCEL_URL,
                    "http://localhost:8080/" + SUCCESS_URL+"/"+order.getIdkh()+"/"+order.getIdttmuahang()+"/"+order.getPhiShip());
            for(Links link:payment.getLinks()) {
                if(link.getRel().equals("approval_url")) {
                    return "redirect:"+link.getHref();
                }
            }

        } catch (PayPalRESTException e) {

            e.printStackTrace();
        }
        return "redirect:/pay";
    }

    @GetMapping(value = CANCEL_URL)
    public String cancelPay() {
        return "cancel";
    }

    @GetMapping(value = "/success/{idkh}/{ttgh}/{phiship}")
    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId,
                             @PathVariable(name = "idkh")Long idkh,
                             @PathVariable(name = "ttgh")Long ttgh,
                             @PathVariable(name = "phiship")Double phiship
    ) {
        try {
            Payment payment = service.executePayment(paymentId, payerId);
            System.out.println(payment.toJSON());
            if (payment.getState().equals("approved")) {
               HoaDonEntity hoaDon= giaoHangService.thanhToan(idkh,ttgh,"CHUYENKHOAN",phiship);
                if (hoaDon==null){
                    return "web/403";
                }
      //          taoHangGiaoHangNhanh(hoaDon);
                return "paypal/success";
            }
        } catch (PayPalRESTException e) {
            System.out.println(e.getMessage());
        }
        return "redirect:/pay";
    }
    @GetMapping(value = "/cancel")
    public String cancel(
    ) {
        return "paypal/cancel";
    }
    @GetMapping(value = "/success")
    public String successPayData(
    ) {
        return "paypal/success";
    }
    private void taoHangGiaoHangNhanh(HoaDonEntity hoaDon){
        String url = "http://localhost:8080/api/user/giaohang/datHang/"+hoaDon.getId();
        PreviewGiaoHang responseEntity = ConvertJson.convert(restTemplate, url
                , HttpMethod.POST, null
                , new ParameterizedTypeReference<ApiResponse<PreviewGiaoHang>>() {
                }
        );
        hoaDon.setMaGiaoHang(responseEntity.getMaHoaDon());
        hoaDon.setTienShip(responseEntity.getTongPhiGiao());
        hoaDonService.saveHoaDon(hoaDon);

    }
}

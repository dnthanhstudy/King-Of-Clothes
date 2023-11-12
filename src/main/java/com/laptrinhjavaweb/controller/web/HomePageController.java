
package com.laptrinhjavaweb.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class HomePageController {

    @GetMapping("/trang-chu")
    public String homePage(){
        return "web/homepage";
    }

    @GetMapping("/shop")
    public String shop(){
        return "web/shop";
    }

    @GetMapping("/sanphams/{slug}")
    public String detail(@PathVariable("slug") String slug){
        return "web/detail";
    }

    @GetMapping("/checkout")
    public String checkout(){
        return "web/checkout";
    }

    @GetMapping("/cart")
    public String cart(){
        return "web/cart";
    }

    @GetMapping("/contact")
    public String contact(){
        return "web/contact";
    }

    @GetMapping("/faqs")
    public String faqs(){
        return "web/faqs";
    }

    @GetMapping("/shop_us")
    public String shop_us(){
        return "web/shop_us";
    }

    @GetMapping("/403")
    public String web403(){
        return "web/403";
    }

}


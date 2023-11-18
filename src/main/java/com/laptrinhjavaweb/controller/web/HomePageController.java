package com.laptrinhjavaweb.controller.web;

import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.service.ISanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
public class HomePageController {

    @Autowired
    private ISanPhamService sanPhamService;

    @GetMapping("/trang-chu")
    public String homePage(){
        return "web/homepage";
    }

    @GetMapping("/shop")
    public ModelAndView shop(
            @RequestParam(name = "page", defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "2") Integer limit
    ){
        ModelAndView mav = new ModelAndView("web/shop");
        Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAll(null, page, limit);
        mav.addObject("mapProduct", results);
        return mav;
    }

    @GetMapping("/search")
    public ModelAndView search(
            @RequestParam(name = "q") String param,
            @RequestParam(name = "page", defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "2") Integer limit
    ){
        ModelAndView mav = new ModelAndView("web/search");
        Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAll(param, page, limit);
        mav.addObject("mapProduct", results);
        return mav;
    }

    @GetMapping("/san-pham/{slug}")
    public ModelAndView detail(@PathVariable("slug") String slug){
        ModelAndView mav = new ModelAndView("web/detail");
        SanPhamResponse result = sanPhamService.findBySlug(slug);
        mav.addObject("product", result);
        return mav;
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


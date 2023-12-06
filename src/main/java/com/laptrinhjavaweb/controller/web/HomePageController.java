package com.laptrinhjavaweb.controller.web;

import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.service.ISanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
public class HomePageController {

    @Autowired
    private ISanPhamService sanPhamService;

    @GetMapping("/trang-chu")
    public ModelAndView homePage(){
        ModelAndView mav = new ModelAndView("web/homepage");
        mav.addObject("productOutstanding", sanPhamService.random(null, null, 1, null, 6));
        mav.addObject("productPopular", sanPhamService.random(null, null, null, 1, 6));
        return mav;
    }

    @GetMapping("/danh-muc/{slug}")
    public ModelAndView danhMuc(
            @RequestParam(name = "page", defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "9") Integer limit,
            @PathVariable(name = "slug") String slug
    ){
        ModelAndView mav = new ModelAndView("web/category");
        Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAllOrFilterOrCategories(page, limit, null, null, slug);
        mav.addObject("mapProduct", results);
        return mav;
    }

    @GetMapping("/danh-sach-san-pham")
    public ModelAndView shop(
            @RequestParam(name = "page", defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "9") Integer limit,
            @RequestParam Map<String, Object> params
    ){
        deleteKeyFromMap(params);
        ModelAndView mav = new ModelAndView("web/shop");
        Map<String, Object> results = new HashMap<>();
        if(params == null || params.isEmpty()){
            results = sanPhamService.pagingOrSearchOrFindAllOrFilterOrCategories(page, limit, null, null, null);
        }else{
            results = sanPhamService.pagingOrSearchOrFindAllOrFilterOrCategories(page, limit, null, params, null);
            mav.addObject("attributeChecked", params);
        }
        mav.addObject("mapProduct", results);
        return mav;
    }

    @GetMapping("/search")
    public ModelAndView search(
            @RequestParam(name = "q") String param,
            @RequestParam(name = "page", defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "9") Integer limit
    ){
        ModelAndView mav = new ModelAndView("web/search");
        Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAllOrFilterOrCategories(page, limit, param, null, null);
        mav.addObject("mapProduct", results);
        return mav;
    }

    @GetMapping("/san-pham/{slug}")
    public ModelAndView detail(@PathVariable("slug") String slug){
        ModelAndView mav = new ModelAndView("web/detail");
        SanPhamResponse result = sanPhamService.findBySlug(slug);
        mav.addObject("product", result);
        mav.addObject("sameProduct", sanPhamService.same(slug));
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

    @GetMapping("/test")
    public String test(){
        return  "web/test";
    }

    private void deleteKeyFromMap(Map<String, Object> params){
        params.remove("page");
        params.remove("limit");
    }
}


package com.laptrinhjavaweb.controller.web;

import com.laptrinhjavaweb.response.FilterResponse;
import com.laptrinhjavaweb.service.IThuocTinhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

@ControllerAdvice
public class GlobalControllerAdvice {

    @Autowired
    private IThuocTinhService thuocTinhService;

    @ModelAttribute
    public void filterResponse(Model model){
        List<FilterResponse> filterResponses = thuocTinhService.filter();
        model.addAttribute("filterProduct", filterResponses);
    }
}

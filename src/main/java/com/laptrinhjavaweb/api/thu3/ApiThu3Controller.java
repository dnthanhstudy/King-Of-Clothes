package com.laptrinhjavaweb.api.thu3;

import com.laptrinhjavaweb.service.Thu3Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/thu3")
public class ApiThu3Controller {
    @Autowired
    Thu3Service thu3Service;

//    public HoaDOn
}

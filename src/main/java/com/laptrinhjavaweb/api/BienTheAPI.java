package com.laptrinhjavaweb.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.exception.ClientError;
import com.laptrinhjavaweb.response.BienTheResponse;
import com.laptrinhjavaweb.service.IBienTheService;

@RestController
@RequestMapping("/api/bien-the")
public class BienTheAPI {
	
	@Autowired
	private IBienTheService bienTheService;
	
	@GetMapping
	public ResponseEntity<?> findByBienThe(@RequestBody List<Long> params){
		BienTheResponse results = bienTheService.findByIdGiaTriThuocTinh(params);
		if(results == null) {
			throw new ClientError("Vui lòng chọn thuộc tính của sản phẩm");
		}
		return new ResponseEntity<>(results, HttpStatus.OK);
	}
}

package com.laptrinhjavaweb.api;

import java.util.List;
import java.util.Map;

import com.laptrinhjavaweb.exception.ClientError;
import com.laptrinhjavaweb.resquest.SanPhamRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.laptrinhjavaweb.exception.EntityNotFoundException;
import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.service.ISanPhamService;

@RestController
@RequestMapping("/api/san-pham")
public class SanPhamAPI {

	@Autowired
	private ISanPhamService sanPhamService;
	
	@GetMapping("/{slug}")
	public ResponseEntity<?> findBySlug(@PathVariable("slug") String slug){
		SanPhamResponse results = sanPhamService.findBySlug(slug);
		if(results == null){
			throw new EntityNotFoundException("Không tồn tại slug này!");
		}
		return new ResponseEntity<>(results, HttpStatus.OK);
	}
	
	@GetMapping("/pagination")
	public ResponseEntity<?> pagination(@RequestParam(name = "page", defaultValue = "1") Integer page,
										@RequestParam(name = "limit", required = false, defaultValue = "2") Integer limit
										){
		Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAll(null, page, limit);
		return new ResponseEntity<>(results, HttpStatus.OK);
	}
	
	@GetMapping
	public ResponseEntity<?> findAll(){
		Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAll(null, null, null);
		return new ResponseEntity<>(results, HttpStatus.OK);
	}
	
	@GetMapping("/search")
    public ResponseEntity<?> search(
           @RequestParam(name = "q") String param,
           @RequestParam(name = "page", defaultValue = "1") Integer page,
           @RequestParam(name = "limit", required = false, defaultValue = "2") Integer limit){
		Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAll(param, page, limit);
		if(results == null) {
			return new ResponseEntity<>("Không tìm thấy kết quả phù hợp!", HttpStatus.OK);
		}
		return new ResponseEntity<>(results, HttpStatus.OK);
    }

	@GetMapping("/filter")
	public ResponseEntity<?> filter(
			@RequestParam Map<String, Object> params){
		List<SanPhamResponse> results = sanPhamService.filters(params);
		if(results == null) {
			return new ResponseEntity<>("Không tìm thấy kết quả phù hợp!", HttpStatus.OK);
		}
		return new ResponseEntity<>(results, HttpStatus.OK);
	}

	@PostMapping
	public ResponseEntity<?> createdSanPham(@RequestBody SanPhamRequest request){
		SanPhamResponse result = sanPhamService.save(request);
		if(result == null){
			throw new ClientError("Slug này đã tồn tại. Xin kiểm tra lại!");
		}
		return new ResponseEntity<>(result, HttpStatus.CREATED);
	}
}

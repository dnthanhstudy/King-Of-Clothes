package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.exception.ClientError;
import com.laptrinhjavaweb.exception.EntityNotFoundException;
import com.laptrinhjavaweb.response.SanPhamResponse;
import com.laptrinhjavaweb.resquest.SanPhamRequest;
import com.laptrinhjavaweb.service.ISanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/san-pham")
public class SanPhamAPI {

	@Autowired
	private ISanPhamService sanPhamService;
	
	@GetMapping("/{slug}")
	public ResponseEntity<?> findBySlug(@PathVariable("slug") String slug){
		SanPhamResponse result = sanPhamService.findBySlug(slug);
		if(result == null){
			throw new EntityNotFoundException("Không tồn tại slug này!");
		}
		return new ResponseEntity<>(result, HttpStatus.OK);
	}

	@GetMapping("/pagination")
	public ResponseEntity<?> pagination(@RequestParam(name = "page", defaultValue = "1") Integer page,
										@RequestParam(name = "limit", required = false, defaultValue = "5") Integer limit
	){
		Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAllOrFilterOrCategories(page, limit, null, null, null);
		return new ResponseEntity<>(results, HttpStatus.OK);
	}

	@GetMapping
	public ResponseEntity<?> findAll(){
		Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAllOrFilterOrCategories(null, null, null, null,null);
		return new ResponseEntity<>(results, HttpStatus.OK);
	}

	@GetMapping("/search")
	public ResponseEntity<?> search(
			@RequestParam(name = "q") String param,
			@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "limit", required = false, defaultValue = "5") Integer limit){
		Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAllOrFilterOrCategories(page, limit, param, null, null);
		if(results == null) {
			return new ResponseEntity<>("Không tìm thấy kết quả phù hợp!", HttpStatus.OK);
		}
		return new ResponseEntity<>(results, HttpStatus.OK);
	}

	@GetMapping("/danh-muc/{slug}")
	public ResponseEntity<?> categories(
			@PathVariable(name = "slug") String slug,
			@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "limit", required = false, defaultValue = "2") Integer limit){
		Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAllOrFilterOrCategories(page, limit, null, null, slug);
		if(results == null) {
			return new ResponseEntity<>("Không tìm thấy kết quả phù hợp!", HttpStatus.OK);
		}
		return new ResponseEntity<>(results, HttpStatus.OK);
	}

	@GetMapping("/filter")
	public ResponseEntity<?> filter(
			@RequestParam Map<String, Object> params,
			@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "limit", required = false, defaultValue = "2") Integer limit){
		Map<String, Object> results = sanPhamService.pagingOrSearchOrFindAllOrFilterOrCategories(page, limit, null, params, null);
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

	@DeleteMapping("/{slug}")
	public ResponseEntity<?> delete(@PathVariable(name = "slug") String slug){
		sanPhamService.delete(slug);
		return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
	}

}

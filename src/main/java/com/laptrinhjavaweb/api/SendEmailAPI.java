package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.entity.NhanVienEntity;
import com.laptrinhjavaweb.response.SendMailResponse;
import com.laptrinhjavaweb.service.IKhachHangService;
import com.laptrinhjavaweb.service.INhanVienService;
import com.laptrinhjavaweb.service.ISendEmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.NoSuchElementException;

@RestController
@RequestMapping("/api")
public class SendEmailAPI {


    @Autowired
    private ISendEmailService emailService;

    @PostMapping("/quenmatkhau")
    public ResponseEntity<?> quenmatkhau(@RequestParam String email) {
        try {
            emailService.processPasswordReset(email);
            return ResponseEntity.ok(SendMailResponse.builder().status("Thành công").build());
        } catch (NoSuchElementException e) {
            return ResponseEntity.badRequest().body(SendMailResponse.builder().status("Thất bại").build());
        }
    }
    @PostMapping("/resetPasswordByToken")
    public ResponseEntity<String> resetPasswordByToken(
            @RequestParam String restToken,
            @RequestParam String matKhau) {

        String result = emailService.resetPasswordByToken(restToken, matKhau);

        if ("Đổi mật khẩu thành công.".equals(result)) {
            return ResponseEntity.ok(result);
        } else {
            return ResponseEntity.badRequest().body(result);
        }
    }

}

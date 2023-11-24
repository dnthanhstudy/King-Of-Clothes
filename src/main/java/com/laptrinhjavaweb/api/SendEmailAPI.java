package com.laptrinhjavaweb.api;

import com.laptrinhjavaweb.entity.NhanVienEntity;
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

@RestController
@RequestMapping("/api")
public class SendEmailAPI {

    private static final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public static String encodePassword(String password) {
        return passwordEncoder.encode(password);
    }

    @Autowired
    private ISendEmailService emailService;

    @Autowired
    private INhanVienService nhanVienService;

    @PostMapping("/quenmatkhau")
    public ResponseEntity<String> quenmatkhau(@RequestParam String email) {
        NhanVienEntity nhanVienEntity = nhanVienService.findByEmail(email);

        if (nhanVienEntity != null) {
            String newPassword = nhanVienService.generateRandomPassword();
            LocalDateTime now = LocalDateTime.now();
            LocalDateTime expireTime = now.plusMinutes(5); // Hạn 5 phút
            nhanVienEntity.setRestToken(newPassword);
            nhanVienEntity.setExpireTime(expireTime);
            nhanVienService.insert(nhanVienEntity);
            emailService.sendPasswordResetEmail(nhanVienEntity.getEmail(), newPassword);
            return ResponseEntity.ok("Thành công");
        } else {
            return ResponseEntity.badRequest().body("Thất bại");
        }
    }

    @PostMapping("/resetPasswordByToken")
    public ResponseEntity<String> resetPasswordByToken(
            @RequestParam String restToken,
            @RequestParam String matKhau) {

        NhanVienEntity nhanVienEntity = nhanVienService.findByRestToken(restToken);

        if (nhanVienEntity != null) {
            LocalDateTime now = LocalDateTime.now();
            if (nhanVienEntity.getExpireTime() != null && nhanVienEntity.getExpireTime().isBefore(now)) {
                return ResponseEntity.badRequest().body("Mã code đã hết hạn.");
            }
            String newPassword = passwordEncoder.encode(matKhau);
            nhanVienEntity.setMatKhau(newPassword);
            nhanVienEntity.setRestToken(null);
            nhanVienEntity.setExpireTime(null);
            nhanVienService.insert(nhanVienEntity);

            return ResponseEntity.ok("Đổi mật khẩu thành công.");
        } else {
            return ResponseEntity.badRequest().body("Thất bại");
        }
    }
}

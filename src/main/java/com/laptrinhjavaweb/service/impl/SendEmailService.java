package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.service.ISendEmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class SendEmailService implements ISendEmailService {

    @Autowired
    private JavaMailSender javaMailSender;

    @Value("datnnhom@gmail.com") private String sender;

    @Override
    public void sendPasswordResetEmail(String recipient, String password) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(sender);
        mailMessage.setTo(recipient);
        mailMessage.setSubject("Yêu cầu đặt lại mật khẩu");
        mailMessage.setText("Mật khẩu mới của bạn là: " + password);

        javaMailSender.send(mailMessage);
    }
}

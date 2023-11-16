package com.laptrinhjavaweb.service;

public interface ISendEmailService {
    void sendPasswordResetEmail(String recipient, String password);
}

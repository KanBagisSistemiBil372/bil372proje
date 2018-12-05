package com.bil372.bil372.service;

public interface SecurityService {
    String findLoggedInUsername();

    void autologin(String username, String password);
}

package com.bil372.bil372.service;


public class LoginService {
    public boolean validateUser(String userid, String password) {
        // in28minutes, dummy
        return userid.equalsIgnoreCase("ipekakova@etu.edu.tr")
                && password.equalsIgnoreCase("dummy");
    }
}

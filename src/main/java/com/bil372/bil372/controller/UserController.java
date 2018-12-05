package com.bil372.bil372.controller;

import com.bil372.bil372.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null) {
            model.addAttribute("error", "Kullanıcı adı veya şifre hatalı");
        }
        if (logout != null) {
            model.addAttribute("message", "Başarılı bir şekilde çıkış yapıldı");
        }
        return "login";
    }

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Iterable<? extends GrantedAuthority> rols = auth.getAuthorities(); // Rolleri Döner

        if (!rols.iterator().hasNext()) {
            auth.setAuthenticated(false);
            return "login";
        }
        GrantedAuthority authority = rols.iterator().next();
        String rol = authority.toString();

        if (rol.equals("admin"))
            return "adminpage";
        else {
            return "hasta";
        }
    }

    @RequestMapping("/donor")
    public String donorpage() {
        return "homepage";
    }

    @RequestMapping("/patient")
    public String patientpage() {
        return "homepage";
    }



}

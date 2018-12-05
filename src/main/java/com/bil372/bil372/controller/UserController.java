package com.bil372.bil372.controller;

import com.bil372.bil372.model.UserEntity;
import com.bil372.bil372.service.SecurityService;
import com.bil372.bil372.service.UserService;
import com.bil372.bil372.service.UserServiceImpl;
import com.bil372.bil372.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;


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
        else if (rol.equals("hasta")) {
            return "patient";
        } else {
            return "donor";
        }
    }

    @RequestMapping("/donor")
    public String donorpage() {
        return "donor";
    }

    @RequestMapping("/patient")
    public String patientpage() {
        return "patient";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new UserEntity());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") UserEntity userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }
        userService.save(userForm);
        securityService.autologin(userForm.getUsername(), userForm.getPassword());
        return "redirect:/welcome";
    }

}

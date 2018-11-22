package com.bil372.bil372.controller;

import com.bil372.bil372.model.UserEntity;
import com.bil372.bil372.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.bil372.bil372.service.LoginService;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class DenemeController {
    UserService userService = new UserService();
    LoginService service = new LoginService();

    @RequestMapping("/")
    public String welcome() {
        return "homepage";
    }
/*
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }
    */
    // Login Validation
    @RequestMapping( value="/",method = RequestMethod.POST)
    public String loginValidation(ModelMap model, @RequestParam String name, @RequestParam String password){

        boolean isValidUser = service.validateUser(name, password);

        if (!isValidUser) {
            model.put("errorMessage", "Invalid Credentials");
            return "homepage";
        }
        model.put("name", name);
        model.put("password", password);

        return "hasta";
    }
    @RequestMapping("/register")
    public String register(){return "register";}

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String registrationValidation(ModelMap model, @RequestParam String name, @RequestParam String surname,@RequestParam String tc_id,@RequestParam String phone,@RequestParam String blood_type,@RequestParam String email,@RequestParam String password,@RequestParam String user_type){
        //System.out.println(name,surname,hasta_mi,bagisci_mi);
        //model.put("errorMessage", "Hesabiniz basarili bir sekilde olusturuldu.");
        UserEntity user = new UserEntity(Long.valueOf(tc_id),name,surname,phone,email,password,blood_type,user_type);
        model.put("name",name);
        model.put("password", password);
        // userService.save(user);
        // htmlde belirtmek gerektiği için hata veriyor.
        //return "redirect:/homepage";
        return "homepage";
    }
    /*
    @RequestMapping(value="/register", method = RequestMethod.POST)
    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password){

        boolean isValidUser = service.validateUser(name, password);

        if (!isValidUser) {
            model.put("errorMessage", "Invalid Credentials");
            return "homepage";
        }

        model.put("name", name);
        model.put("password", password);

        return "homepage";
    }

    */
}
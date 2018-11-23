package com.bil372.bil372.controller;

import com.bil372.bil372.model.UserEntity;
import com.bil372.bil372.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class DenemeController {

    @Autowired
    private UserRepository userRepository;

    @RequestMapping("/")
    public String welcome() {
        //System.out.println(userRepository.findByUsername("merveakinci@gmail.com").getPassword());
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

        String realPassword = userRepository.findByUsername(name).getPassword();
        String userType = userRepository.findByUsername(name).getUsertype();
        //System.out.println("gercek sifre: " + realPassword + " siteden alinan: "+ password);
        //System.out.println("userype: " + userType);
        if ( ( password.equals ( realPassword ) ) && ( userType.equalsIgnoreCase ( "off" ) ) ) {
            model.put("name", name);
            model.put("password", password);
            return "patient";
        }
        else if ( ( password.equals ( realPassword ) ) && ( userType.equalsIgnoreCase ( "on" ) ) ) {
            model.put("name", name);
            model.put("password", password);
            return "donor";
        }
        else {
            model.put("errorMessage", "Your username and password is invalid.");
            return "homepage";
        }
    }

    @RequestMapping("/register")
    public String register(){return "register";}

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String registrationValidation(ModelMap model, @RequestParam String name, @RequestParam String surname,@RequestParam String tc_id,@RequestParam String phone,@RequestParam String blood_type,@RequestParam String email,@RequestParam String password,@RequestParam String user_type){
        //System.out.println(name,surname,hasta_mi,bagisci_mi);
        //model.put("errorMessage", "Hesabiniz basarili bir sekilde olusturuldu.");
        UserEntity user = new UserEntity(Long.parseLong(tc_id),name,surname,phone,email,password,blood_type,user_type);
        model.put("name",name);
        model.put("password", password);
        userRepository.save(user);
        // htmlde belirtmek gerektiği için hata veriyor.
        //return "redirect:/homepage";
        return "homepage";
    }

}
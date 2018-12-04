package com.bil372.bil372.controller;

import com.bil372.bil372.model.UserEntity;
import com.bil372.bil372.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

    //Uye Ol butonuna tiklandiginda kod bu metoda giriyor ve register.jsp sayfası return ediliyor.
    @RequestMapping(value = "/register")
    public String register() {
        return "register";
    }


    @RequestMapping(value = "/aa", method = RequestMethod.POST)
    public ResponseEntity<?> registrationValidation(@RequestParam (value ="name", required = true)  String name,
                                                    @RequestParam (value ="surname", required = true) String surname,
                                                    @RequestParam (value ="tc_id", required = true) String tc_id,
                                                    @RequestParam (value ="phone", required = true)String phone,
                                                    @RequestParam (value ="blood_type", required = true) String blood_type,
                                                    @RequestParam (value ="username", required = true) String email,
                                                    @RequestParam (value ="password", required = true) String password,
                                                    @RequestParam (value ="patient") String patient,
                                                    @RequestParam (value = "donor") String donor) {
        String hashedPassword = PasswordHashing.hashPassword(password);
        UserEntity user = new UserEntity(Long.parseLong(tc_id), name, surname, phone, email, hashedPassword, blood_type, "h");
        userService.save(user);
        return ResponseEntity.ok("1");
    }

}

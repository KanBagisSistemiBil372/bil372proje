package com.bil372.bil372.controller;

import com.bil372.bil372.model.UserEntity;
import com.bil372.bil372.service.SecurityService;
import com.bil372.bil372.service.UserService;
import com.bil372.bil372.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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

    @RequestMapping(value = "/deneme")
    public String deneme() {
        return "deneme";
    }

    // method-local inner class
    class Patient {
        private Long id;
        private String name;
        private String surname;
        private String phone;
        private String username;
        private String bloodtype;
        private String hospital_name;
        private String hospital_location;
        private Long amount_of_need;

        public Patient(Long id, String name, String surname, String phone, String username, String bloodtype, String hospital_name, String hospital_location, Long amount_of_need) {
            this.id = id;
            this.name = name;
            this.surname = surname;
            this.phone = phone;
            this.username = username;
            this.bloodtype = bloodtype;
            this.hospital_name = hospital_name;
            this.hospital_location = hospital_location;
            this.amount_of_need = amount_of_need;
        }

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getSurname() {
            return surname;
        }

        public void setSurname(String surname) {
            this.surname = surname;
        }

        public String getPhone() {
            return phone;
        }

        public void setPhone(String phone) {
            this.phone = phone;
        }

        public String getUsername() {
            return username;
        }

        public void setUsername(String username) {
            this.username = username;
        }

        public String getBloodtype() {
            return bloodtype;
        }

        public void setBloodtype(String bloodtype) {
            this.bloodtype = bloodtype;
        }

        public String getHospital_name() {
            return hospital_name;
        }

        public void setHospital_name(String hospital_name) {
            this.hospital_name = hospital_name;
        }

        public String getHospital_location() {
            return hospital_location;
        }

        public void setHospital_location(String hospital_location) {
            this.hospital_location = hospital_location;
        }

        public Long getAmount_of_need() {
            return amount_of_need;
        }

        public void setAmount_of_need(Long amount_of_need) {
            this.amount_of_need = amount_of_need;
        }
    } // end of inner class

    @RequestMapping(value = {"/denemee"}, method = RequestMethod.GET)
    public ResponseEntity<Patient> getPeriods() {
        //System.out.println("*********************************************");
        //System.out.println(userService.findById(3l).get().getBloodtype());

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Iterable<? extends GrantedAuthority> rols = auth.getAuthorities(); // Rolleri Döner

        GrantedAuthority authority = rols.iterator().next();
        String rol = authority.toString();

        Patient patient = new Patient(1235l, "merve", "akinci", "23454", "mervea", "1234567", "Gazi Uni", "Cankaya", 2l);
        if (rol.equals("admin")) {
            //List<Patient> patientList;
            return new ResponseEntity<Patient>(patient, HttpStatus.OK);
        } else
            return null;
    }

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

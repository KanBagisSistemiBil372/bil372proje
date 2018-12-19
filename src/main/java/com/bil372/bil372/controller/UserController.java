package com.bil372.bil372.controller;

import com.bil372.bil372.model.BloodBankEntity;
import com.bil372.bil372.model.UserEntity;
import com.bil372.bil372.repository.UserRepository;
import com.bil372.bil372.service.BloodBankService;
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
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @Autowired
    private BloodBankService bloodBankService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @RequestMapping(value = "/deneme")
    public String deneme() {
        return "deneme";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        //Long id, String name, String surname, String phone, String username, String password, String passwordConfirm, Long role, String bloodtype, String hospital_name, String hospital_location, Long amount_of_need
        //userRepository.save(new UserEntity(1234l,"merve","akinci","333","makin","123","123",3l,"A-","gazi","asdas",3l));
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
            return "deneme";
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
        //userValidator.validate(userForm, bindingResult);
        String password = userForm.getPassword();
        //(Long id, String name, String surname, String phone, String username, String password, Long role, String bloodtype)
        UserEntity user = new UserEntity(userForm.getId(), userForm.getName(), userForm.getSurname(), userForm.getPhone(), userForm.getUsername(), PasswordHashing.hashPassword(userForm.getPassword()), userForm.getRole(), userForm.getBlood_type());
        /*
        if (bindingResult.hasErrors()) {
            return "registration";
        }*/

        userRepository.save(user);
        //securityService.autologin(user.getUsername(), password);
        return "redirect:/login";
    }

    @RequestMapping(value = {"/getpatients"}, method = RequestMethod.GET)
    public ResponseEntity<?> getPatients() {
        List<UserEntity> patients = userService.findByRole(2l);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Iterable<? extends GrantedAuthority> rols = auth.getAuthorities(); // Rolleri Döner

        GrantedAuthority authority = rols.iterator().next();
        String rol = authority.toString();

        if (rol.equals("admin")) {
            return new ResponseEntity<List<UserEntity>>(patients, HttpStatus.OK);
        } else
            return null;
    }

    @RequestMapping(value = {"/getpatientsfordonor"}, method = RequestMethod.GET)
    public ResponseEntity<?> getPatientsForDonor() {
        List<UserEntity> patients = userService.findByRole(2l);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Iterable<? extends GrantedAuthority> rols = auth.getAuthorities(); // Rolleri Döner

        GrantedAuthority authority = rols.iterator().next();
        String rol = authority.toString();

        if (rol.equals("bagisci")) {
            return new ResponseEntity<List<UserEntity>>(patients, HttpStatus.OK);
        } else
            return null;
    }

    @RequestMapping(value = {"/getdonors"}, method = RequestMethod.GET)
    public ResponseEntity<?> getDonors() {
        List<UserEntity> donors = userService.findByRole(3l);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Iterable<? extends GrantedAuthority> rols = auth.getAuthorities(); // Rolleri Döner

        GrantedAuthority authority = rols.iterator().next();
        String rol = authority.toString();

        if (rol.equals("admin")) {
            return new ResponseEntity<List<UserEntity>>(donors, HttpStatus.OK);
        } else
            return null;
    }

    @RequestMapping(value = {"/getbloodbankentities"}, method = RequestMethod.GET)
    public ResponseEntity<?> getBloodBankEntities() {
        List<BloodBankEntity> bloodBankEntities = bloodBankService.findAll();
        for (BloodBankEntity b : bloodBankService.findAll()
        ) {
            if (b.getIsDeleted() == true)
                bloodBankEntities.remove(b);
        }
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Iterable<? extends GrantedAuthority> rols = auth.getAuthorities(); // Rolleri Döner

        GrantedAuthority authority = rols.iterator().next();
        String rol = authority.toString();

        if (rol.equals("admin")) {
            return new ResponseEntity<List<BloodBankEntity>>(bloodBankEntities, HttpStatus.OK);
        } else
            return null;
    }

    @RequestMapping(value = "/updatepatient", method = RequestMethod.POST)
    public ResponseEntity<?> sendMailsWithUserNameToPasswordReset(@RequestParam(value = "username", required = true) String username,
                                                                  @RequestParam(value = "hastane", required = true) String hastane,
                                                                  @RequestParam(value = "ilce", required = true) String ilce,
                                                                  @RequestParam(value = "miktar", required = true) String miktar) {
        String hastaneAdi="";
        String ilceAdi ="";
        String miktarAdi = "";
        switch (hastane){
            case "1":
                hastaneAdi = "Ankara Ataturk Egitim ve Arastirma Hastanesi";
                break;
            case "2":
                hastaneAdi = "Ankara Diskapi Cocuk Hastaliklari Egitim ve Arastirma Hastanesi";
                break;
            case "3":
                hastaneAdi = "Ankara Diskapi Yildirim Beyazit Egitim ve Arastirma Hastanesi";
                break;
            case "4":
                hastaneAdi = "Ankara Egitim ve Arastirma Hastanesi";
                break;
            case "5":
                hastaneAdi = "Ankara Etlik Ihtisas Hastanesi";
                break;
            case "6":
                hastaneAdi = "Ankara Fizik Tedavi ve Rehabilitasyon Egitim ve Arastirma Hastanesi";
                break;
            case "7":
                hastaneAdi = "Ankara Gazi Mustafa Kemal Devlet Hastanesi";
                break;
            case "8":
                hastaneAdi = "Ataturk Gogus Hastaliklari ve Gogus Cerrahisi Egitim ve Arastirma Hastanesi";
                break;
            case "9":
                hastaneAdi = "Ankara Meslek Hastaliklari Hastanesi";
                break;
            default:
                hastaneAdi = "Ankara Numune Egitim ve Arastirma Hastanesi";
                break;

        }
        switch (ilce){
            case "1":
                ilceAdi = "Akyurt";
                break;
            case "2":
                ilceAdi = "Altindag";
                break;
            case "3":
                ilceAdi = "Ayas";
                break;
            case "4":
                ilceAdi = "Bala";
                break;
            case "5":
                ilceAdi = "Beypazari";
                break;
            case "6":
                ilceAdi = "Camlidere";
                break;
            case "7":
                ilceAdi = "Cankaya";
                break;
            case "8":
                ilceAdi = "Cubuk";
                break;
            case "9":
                ilceAdi = "Elmadag";
                break;
            default:
                ilceAdi = "Etimesgut";
                break;

        }
        switch (miktar) {
            case "1":
                miktarAdi = "1";
                break;
            case "2":
                miktarAdi = "2";
                break;
            default:
                miktarAdi = "3";
                break;
        }


        username = username.trim();
        UserEntity user = userService.findByUsername(username);
        user.setHospital_name(hastaneAdi);
        user.setHospital_location(ilceAdi);
        user.setAmount_of_need(Long.parseLong(miktarAdi));
        userRepository.save(user);


        /*
        username = username.trim();
        UserEntity user = userService.findByUsername(username);

        Long miktarKan = Long.parseLong(miktarAdi);
        for (BloodBankEntity b: bloodBankService.findAll()
             ) {
            String a = b.getBloodType();
            String c = user.getBloodType();
            if (b.getIsDeleted()!=true && b.getBloodType().equals(user.getBloodType()) && miktarKan!=0){
                b.setIsDeleted(true);
                b.setPatient_id(user.getId());
                bloodBankService.save(b);
                miktarKan--;
            }
        }
        user.setHospital_name(hastaneAdi);
        user.setHospital_location(ilceAdi);
        user.setAmount_of_need(miktarKan);
        userRepository.save(user);
        */
        return new ResponseEntity<String>("1", HttpStatus.OK);
    }
}

package com.bil372.bil372.model;

import javax.persistence.*;

@Entity
@Table(name = "userentity")
public class UserEntity {
    private Long tc_no;
    private String name;
    private String surname;
    private String phone;
    private String e_mail;
    private String username;
    private String password;
    private String blood_type;
    private String user_type;

    @Id
    @Column(name = "tc_no", columnDefinition = "serial",  nullable=false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getTc_no() {
        return tc_no;
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

    public String getE_mail() {
        return e_mail;
    }

    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBlood_type() {
        return blood_type;
    }

    public void setBlood_type(String blood_type) {
        this.blood_type = blood_type;
    }

    public String getUser_type() {
        return user_type;
    }

    public void setUser_type(String user_type) {
        this.user_type = user_type;
    }

    public void setTc_no(Long tc_no) {
        this.tc_no = tc_no;
    }

}

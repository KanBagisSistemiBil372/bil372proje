package com.bil372.bil372.model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Set;

@Entity
@Table(name = "userentity")
public class UserEntity {
    private Long id;
    private String name;
    private String surname;
    private String phone;
    private String username;
    private String password;
    private String passwordConfirm;
    private Long role;
    private Set<RoleEntity> roles;
    private String blood_type;
    private String hospital_name;
    private String hospital_location;
    private Long amount_of_need;
    private Set<BloodBankEntity> bloodBankEntities;
    private Set<BloodDonationEntity> bloodDonationEntities;

    public UserEntity() {
    }

    public UserEntity(Long id, String name, String surname, String phone, String username, String password, Long role, String blood_type) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.role = role;
        this.blood_type = blood_type;
    }

    @Id
    @Column(name = "id", columnDefinition = "serial", nullable = false)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @NotNull
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @NotNull
    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    @NotNull
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @NotNull
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @NotNull
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    @NotNull
    public Long getRole() {
        return role;
    }

    public void setRole(Long role) {
        this.role = role;
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

    @Transient
    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    @JsonBackReference
    @ManyToMany
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    public Set<RoleEntity> getRoles() {
        return roles;
    }

    public void setRoles(Set<RoleEntity> roles) {
        this.roles = roles;
    }

    public String getBlood_type() {
        return blood_type;
    }

    public void setBlood_type(String blood_type) {
        this.blood_type = blood_type;
    }
}

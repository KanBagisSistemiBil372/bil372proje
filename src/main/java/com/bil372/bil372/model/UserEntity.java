package com.bil372.bil372.model;

import javax.persistence.*;

@Entity
@Table(name = "userentity")
public class UserEntity {
    private Long id;
    private String name;
    private String surname;
    private String phone;
    private String username;
    private String password;
    private String bloodtype;
    private String usertype;
    private PatientEntity patientId;
    private DonorEntity donorId;

    public UserEntity() {
    }

    public UserEntity(Long id, String name, String surname, String phone, String username, String password, String bloodtype, String usertype) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.bloodtype = bloodtype;
        this.usertype = usertype;
    }
    
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "userEntity")
    public PatientEntity getPatient() {
        return patientId;
    }

    public void setPatient(PatientEntity patient) {
        this.patientId = patient;
    }

    @OneToOne(cascade = CascadeType.ALL, mappedBy = "userEntity")
    public DonorEntity getDonorId() {
        return donorId;
    }

    public void setDonorId(DonorEntity donorId) {
        this.donorId = donorId;
    }

    @Id
    @Column(name = "id", columnDefinition = "serial",  nullable=false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBloodtype() {
        return bloodtype;
    }

    public void setBloodtype(String bloodtype) {
        this.bloodtype = bloodtype;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }


}

package com.bil372.bil372.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "patiententity")
public class PatientEntity implements Serializable {

    private String hospital_name;
    private String hospital_location;
    private Long amount_of_need;
    private UserEntity userEntity;
    private Set<BloodBankEntity> bloodBankEntities;
    private Set<BloodDonationEntity> bloodDonationEntities;

    @Id
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "patient_tc")
    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "patient_tc")
    public Set<BloodBankEntity> getBloodBankEntities() {
        return bloodBankEntities;
    }

    public void setBloodBankEntities(Set<BloodBankEntity> bloodBankEntities) {
        this.bloodBankEntities = bloodBankEntities;
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

    //Kan bagislama tablosunda bir patient_tc karsiliginda birden fazla kayit bulunabilir.
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "patient_tc")
    public Set<BloodDonationEntity> getBloodDonationEntities() {
        return bloodDonationEntities;
    }

    public void setBloodDonationEntities(Set<BloodDonationEntity> bloodDonationEntities) {
        this.bloodDonationEntities = bloodDonationEntities;
    }
}
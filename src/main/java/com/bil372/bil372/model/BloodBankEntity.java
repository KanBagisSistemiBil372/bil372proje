package com.bil372.bil372.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "bloodbankentity")
public class BloodBankEntity {
    private String blood_serial_no;
    private String blood_type;
    private Date date;
    private UserEntity userEntityDonor;
    private UserEntity userEntityPatient;
    private boolean isDeleted;
    private Long patient_id;


    public BloodBankEntity() {
    }

    public BloodBankEntity(String blood_serial_no, String blood_type, Date date, UserEntity userEntityDonor, UserEntity userEntityPatient, boolean isDeleted) {
        this.blood_serial_no = blood_serial_no;
        this.blood_type = blood_type;
        this.date = date;
        this.userEntityDonor = userEntityDonor;
        this.userEntityPatient = userEntityPatient;
        this.isDeleted = isDeleted;
    }

    @Id
    @Column(name = "blood_serial_no", columnDefinition = "serial", nullable=false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public String getBlood_serial_no() {
        return blood_serial_no;
    }

    @ManyToOne
    @JoinColumn(name="donor_id")
    public UserEntity getUserEntityDonor() {
        return userEntityDonor;
    }

    public void setUserEntityDonor(UserEntity userEntityDonor) {
        this.userEntityDonor = userEntityDonor;
    }

    public void setBlood_serial_no(String blood_serial_no) {
        this.blood_serial_no = blood_serial_no;
    }

    public String getBlood_type() {
        return blood_type;
    }

    public void setBlood_type(String blood_type) {
        this.blood_type = blood_type;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @NotNull
    public boolean getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Long getPatient_id() {
        return patient_id;
    }

    public void setPatient_id(Long patient_id) {
        this.patient_id = patient_id;
    }
}

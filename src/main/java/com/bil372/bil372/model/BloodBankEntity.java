package com.bil372.bil372.model;

import javax.persistence.*;
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

    @ManyToOne
    @JoinColumn(name="patient_id")
    public UserEntity getUserEntityPatient() {
        return userEntityPatient;
    }

    public void setUserEntityPatient(UserEntity userEntityPatient) {
        this.userEntityPatient = userEntityPatient;
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
}

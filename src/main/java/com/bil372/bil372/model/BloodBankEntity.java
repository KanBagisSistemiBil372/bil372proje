package com.bil372.bil372.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "bloodbankentity")
public class BloodBankEntity {
    private String blood_serial_no;
    private String donor_tc;
    private String blood_type;
    private Date date;
    private String patient_tc;

    @Id
    @Column(name = "blood_serial_no", columnDefinition = "serial", nullable=false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    public String getBlood_serial_no() {
        return blood_serial_no;
    }

    public void setBlood_serial_no(String blood_serial_no) {
        this.blood_serial_no = blood_serial_no;
    }

    public String getDonor_tc() {
        return donor_tc;
    }

    public void setDonor_tc(String donor_tc) {
        this.donor_tc = donor_tc;
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

    public String getPatient_tc() {
        return patient_tc;
    }

    public void setPatient_tc(String patient_tc) {
        this.patient_tc = patient_tc;
    }
}

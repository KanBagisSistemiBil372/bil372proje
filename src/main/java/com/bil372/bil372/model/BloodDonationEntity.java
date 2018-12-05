package com.bil372.bil372.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "blooddonationentity")
public class BloodDonationEntity {
    private int donation_id;
    private int amount;
    private Date date;
    private UserEntity userEntityDonor;
    private UserEntity userEntityPatient;

    @Id
    @Column(name = "donation_id", columnDefinition = "serial", nullable=false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    public int getDonation_id() {
        return donation_id;
    }

    public void setDonation_id(int donation_id) {
        this.donation_id = donation_id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
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

}

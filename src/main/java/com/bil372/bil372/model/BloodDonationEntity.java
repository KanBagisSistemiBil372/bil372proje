package com.bil372.bil372.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "blooddonationentity")
public class BloodDonationEntity {
    private DonationId donation_id;
    private String amount;
    private Date date;


    @EmbeddedId
    @Column(name = "donation_id", columnDefinition = "NUMBER(11) NOT NULL UNIQUE", nullable=false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    public DonationId getDonation_id() {
        return donation_id;
    }

    public void setDonation_id(DonationId donation_id) {
        this.donation_id = donation_id;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}

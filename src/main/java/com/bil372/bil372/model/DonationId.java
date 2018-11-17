package com.bil372.bil372.model;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class DonationId implements Serializable {
    private String donor_tc;
    private String patient_tc;

    public DonationId() {

    }

    public DonationId(String donor_tc, String patient_tc) {
        this.donor_tc = donor_tc;
        this.patient_tc = patient_tc;
    }

    public String getDonor_tc() {
        return donor_tc;
    }

    public void setDonor_tc(String donor_tc) {
        this.donor_tc = donor_tc;
    }

    public String getPatient_tc() {
        return patient_tc;
    }

    public void setPatient_tc(String patient_tc) {
        this.patient_tc = patient_tc;
    }

}
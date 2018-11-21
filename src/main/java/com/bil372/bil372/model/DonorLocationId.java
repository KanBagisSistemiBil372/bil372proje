package com.bil372.bil372.model;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class DonorLocationId implements Serializable {

    private Long donor_tc;
    private String location;

    public DonorLocationId() {

    }

    public DonorLocationId(Long donor_tc, String patient_tc) {
        this.donor_tc = donor_tc;
        this.location = patient_tc;
    }

    public Long getDonor_tc() {
        return donor_tc;
    }

    public void setDonor_tc(Long donor_tc) {
        this.donor_tc = donor_tc;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

}

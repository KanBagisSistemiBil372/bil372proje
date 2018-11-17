package com.bil372.bil372.model;


import javax.persistence.*;

@Entity
@Table(name = "donorlocationentity")
public class DonorLocationEntity {
    private Long donor_tc;
    private String location;

    @Id
    @Column(name = "donor_tc", columnDefinition = "serial", nullable=false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)

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

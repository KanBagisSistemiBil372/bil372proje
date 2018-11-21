package com.bil372.bil372.model;

import javax.persistence.*;

@Entity
@Table(name = "donorlocationentity")
public class DonorLocationEntity {
    private DonorLocationId donorLocationId;
    @EmbeddedId
    @Column(name = "location_id", columnDefinition = "serial", nullable=false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    public DonorLocationId getDonorLocationId() {
        return donorLocationId;
    }

    public void setDonorLocationId(DonorLocationId donorLocationId) {
        this.donorLocationId = donorLocationId;
    }

    @MapsId("donorMap")
    @JoinColumn(name="donor_tc", referencedColumnName="donor_tc")
    @ManyToOne
    public DonorEntity donorEntity;
}

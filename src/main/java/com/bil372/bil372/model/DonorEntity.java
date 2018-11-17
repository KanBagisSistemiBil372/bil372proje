package com.bil372.bil372.model;

import javax.persistence.*;

@Entity
@Table(name = "donorentity")
public class DonorEntity {

    private Long donor_tc;

    @Id
    @Column(name = "donor_tc", columnDefinition = "serial", nullable=false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getTc_no() {
        return donor_tc;
    }

    public void setTc_no(Long donor_tc) {
        this.donor_tc = donor_tc;
    }
}

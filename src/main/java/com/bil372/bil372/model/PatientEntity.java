package com.bil372.bil372.model;

import javax.persistence.*;

@Entity
@Table(name = "patiententity")
public class PatientEntity {
    private Long patient_tc;
    private String hospital_name;
    private String hospital_location;
    private Long amount_of_need;

    @Id
    @Column(name = "patient_tc", columnDefinition = "serial", nullable=false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    public Long getPatient_tc() {
        return patient_tc;
    }

    public void setPatient_tc(Long patient_tc) {
        this.patient_tc = patient_tc;
    }

    public String getHospital_name() {
        return hospital_name;
    }

    public void setHospital_name(String hospital_name) {
        this.hospital_name = hospital_name;
    }

    public String getHospital_location() {
        return hospital_location;
    }

    public void setHospital_location(String hospital_location) {
        this.hospital_location = hospital_location;
    }

    public Long getAmount_of_need() {
        return amount_of_need;
    }

    public void setAmount_of_need(Long amount_of_need) {
        this.amount_of_need = amount_of_need;
    }
}

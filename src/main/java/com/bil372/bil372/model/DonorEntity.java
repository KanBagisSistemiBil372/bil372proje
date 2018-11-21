package com.bil372.bil372.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "donorentity")
public class DonorEntity implements Serializable {

    private UserEntity userEntity;
    private Set<BloodBankEntity> bloodBankEntities;
    private Set<DonorLocationEntity> donorLocationEntities;
    private Set<BloodDonationEntity> bloodDonationEntities;

    @Id
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "donor_tc")
    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity2) {
        this.userEntity = userEntity2;
    }

    //Kan bankasinda bir donor_tc karsiliginda birden fazla kayit bulunabilir.
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "donor_tc")
    public Set<BloodBankEntity> getBloodBankEntities() {
        return bloodBankEntities;
    }

    public void setBloodBankEntities(Set<BloodBankEntity> bloodBankEntities) {
        this.bloodBankEntities = bloodBankEntities;
    }

    //Konum belirten tabloda bir donor_tc karsiliginda birden fazla kayit bulunabilir.
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "donor_tc")

    public Set<DonorLocationEntity> getDonorLocationEntities() {
        return donorLocationEntities;
    }

    public void setDonorLocationEntities(Set<DonorLocationEntity> donorLocationEntities) {
        this.donorLocationEntities = donorLocationEntities;
    }

    //Kan bagislama tablosunda bir donor_tc karsiliginda birden fazla kayit bulunabilir.
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "donor_tc")

    public Set<BloodDonationEntity> getBloodDonationEntities() {
        return bloodDonationEntities;
    }

    public void setBloodDonationEntities(Set<BloodDonationEntity> bloodDonationEntities) {
        this.bloodDonationEntities = bloodDonationEntities;
    }
}

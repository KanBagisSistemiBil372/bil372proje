package com.bil372.bil372.service;

import com.bil372.bil372.model.BloodBankEntity;

import java.util.List;

public interface BloodBankService {

    List<BloodBankEntity> findAll();

    public BloodBankEntity save(BloodBankEntity bloodBankEntity);
}

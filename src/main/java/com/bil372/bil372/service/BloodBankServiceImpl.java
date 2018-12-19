package com.bil372.bil372.service;

import com.bil372.bil372.model.BloodBankEntity;
import com.bil372.bil372.repository.BloodBankRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BloodBankServiceImpl implements BloodBankService{

    @Autowired
    private BloodBankRepository bloodBankRepository;

    @Override
    public List<BloodBankEntity> findAll() {
        List<BloodBankEntity> list = bloodBankRepository.findAll();
        return list;
    }

    @Override
    public BloodBankEntity save(BloodBankEntity bloodBankEntity) {
        bloodBankRepository.save(bloodBankEntity);
        return bloodBankEntity;
    }
}

package com.bil372.bil372.repository;

import com.bil372.bil372.model.BloodBankEntity;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BloodBankRepository extends JpaRepository<BloodBankEntity, Long> {

    BloodBankEntity save(BloodBankEntity bloodBankEntity);

    List<BloodBankEntity> findAll();

}

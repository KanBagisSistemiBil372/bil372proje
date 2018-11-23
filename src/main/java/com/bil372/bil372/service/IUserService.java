package com.bil372.bil372.service;
import com.bil372.bil372.model.UserEntity;
import java.util.List;
import java.util.Optional;

public interface IUserService {


    UserEntity findByEmail(String email);

    Optional<UserEntity> findById(Long id);

    List<UserEntity> findAll();

    public UserEntity save(UserEntity userEntity);

}
package com.bil372.bil372.service;

import com.bil372.bil372.model.RoleEntity;
import com.bil372.bil372.model.UserEntity;

import java.util.List;
import java.util.Optional;

public interface UserService {


    UserEntity findByUsername(String username);

    Optional<UserEntity> findById(Long id);

    List<UserEntity> findByRole(Long role);

    List<UserEntity> findAll();

    List<RoleEntity> findAllRoles();

    public UserEntity save(UserEntity userEntity);

}

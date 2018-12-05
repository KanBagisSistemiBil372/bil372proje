package com.bil372.bil372.repository;

import com.bil372.bil372.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity findByUsername(String username);

    Optional<UserEntity> findById(Long id);

    UserEntity save(UserEntity userEntity);

    List<UserEntity> findAll();

    List<UserEntity> findByRole(Long role);
}
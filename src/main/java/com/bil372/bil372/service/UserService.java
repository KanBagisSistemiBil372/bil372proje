package com.bil372.bil372.service;

import com.bil372.bil372.model.UserEntity;
import com.bil372.bil372.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Optional;

public class UserService implements IUserService{

    @Autowired
    private UserRepository userRepository;



    @Override
    public UserEntity findByEmail(String email) {
        return userRepository.findByUsername(email);
    }

    @Override
    public Optional<UserEntity> findById(Long id) {
        return userRepository.findById(id);
    }

    @Override
    public List<UserEntity> findAll() {
        return userRepository.findAll();
    }

    @Override
    public UserEntity save(UserEntity userEntity) {
        return userRepository.save(userEntity);
    }
}

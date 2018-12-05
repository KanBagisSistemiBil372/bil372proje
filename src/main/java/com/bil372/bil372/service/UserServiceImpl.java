package com.bil372.bil372.service;

import com.bil372.bil372.model.RoleEntity;
import com.bil372.bil372.model.UserEntity;
import com.bil372.bil372.repository.RoleRepository;
import com.bil372.bil372.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {
    /*
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
        */

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    //@Autowired
    //private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public UserEntity save(UserEntity user) {
        //user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(new HashSet<>(user.getRoles()));
        userRepository.save(user);
        return user;
    }

    @Override
    public UserEntity findByUsername(String username) {
        return userRepository.findByUsername(username);
    }


    @Override
    public List<UserEntity> findAll() {
        List<UserEntity> list = userRepository.findAll();
        return list;
    }

    @Override
    public Optional<UserEntity> findById(Long id) {
        return userRepository.findById(id);
    }

    @Override
    public List<RoleEntity> findAllRoles() {
        List<RoleEntity> list = roleRepository.findAll();
        return list;
    }

}

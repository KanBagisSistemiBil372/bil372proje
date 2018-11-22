package com.bil372.bil372.service;
import com.bil372.bil372.model.UserEntity;
import com.bil372.bil372.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashSet;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public void save(UserEntity user) {
        /*
        user.setName(user.getName());
        user.setSurname(user.getSurname());
        user.setE_mail(user.getE_mail());
        user.setName(user.getName());
        user.setName(user.getName());
        user.setName(user.getName());
        user.setPassword(user.getPassword());
        */
        userRepository.save(user);
    }
/*
    public UserEntity findByUsername(String username) {
        // We use the repository to retrieve data from the database.
        return userRepository.findByUsername(username);
    }
    */
}


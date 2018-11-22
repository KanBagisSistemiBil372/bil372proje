package com.bil372.bil372.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.bil372.bil372.model.UserEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Long> {
   // @Query("select u from UserEntity c where u.name like ?1")
    //UserEntity findByUsername(String username);
}

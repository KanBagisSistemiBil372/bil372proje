package com.bil372.bil372.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "roleentity")
public class RoleEntity {
    private Long id;
    private String name;
    private Set<UserEntity> users;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @ManyToMany(mappedBy = "roles")
    public Set<UserEntity> getUsers() {
        return users;
    }

    public void setUsers(Set<UserEntity> users) {
        this.users = users;
    }
}
package com.ashu.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ashu.flightreservation.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

}

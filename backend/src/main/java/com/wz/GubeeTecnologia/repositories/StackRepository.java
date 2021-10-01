package com.wz.GubeeTecnologia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wz.GubeeTecnologia.entities.Stack;

@Repository
public interface StackRepository extends JpaRepository<Stack, Long> {

}

package com.wz.GubeeTecnologia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wz.GubeeTecnologia.entities.TargetMarket;

@Repository
public interface TargetMarketRepository extends JpaRepository<TargetMarket, Long> {

}

package com.wz.GubeeTecnologia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wz.GubeeTecnologia.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long>{

}

package com.wz.GubeeTecnologia.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.wz.GubeeTecnologia.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long>{

	
	@Query("SELECT obj FROM Product obj JOIN FETCH obj.targetMarket obj2 JOIN FETCH obj.stacks WHERE obj IN :products")
	List<Product> findAllAdd(List<Product> products);
}

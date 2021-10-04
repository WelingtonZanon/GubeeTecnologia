package com.wz.GubeeTecnologia.repositories;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.wz.GubeeTecnologia.entities.Product;
import com.wz.GubeeTecnologia.entities.Stack;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long>{

	
	@Query("SELECT obj FROM Product obj JOIN FETCH obj.targetMarket obj2 JOIN FETCH obj.stacks WHERE obj IN :products")
	List<Product> findAllAdd(List<Product> products);

	/*h2-->
	 * @Query("SELECT DISTINCT obj FROM Product obj JOIN obj.stacks st WHERE " +
	 * "(:stack IS NULL OR :stack IN st) AND " +
	 * "(LOWER(obj.name) LIKE LOWER(CONCAT('%',:name,'%')))")
	 */
	@Query("SELECT DISTINCT obj FROM Product obj JOIN obj.stacks st WHERE " +
			 "(COALESCE(:stacks) IS NULL OR st IN :stacks) AND " +
			 "(LOWER(obj.name) LIKE LOWER(CONCAT('%',:name,'%')))")
	Page<Product> findSearch(Pageable pageable, List<Stack> stacks, String name);
}

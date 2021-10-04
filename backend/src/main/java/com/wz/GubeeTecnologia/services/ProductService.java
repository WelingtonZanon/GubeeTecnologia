package com.wz.GubeeTecnologia.services;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.wz.GubeeTecnologia.dto.ProductDTO;

public interface ProductService {

	Page<ProductDTO> findAll(Pageable pageable, Long categoryId, Long targetMarketId, String name);
	
	ProductDTO findByID(Long id);
	
	ProductDTO insert(ProductDTO dto);
	
	ProductDTO update(Long id, ProductDTO dto);
	
	void delete(Long id);	
	
}

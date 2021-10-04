package com.wz.GubeeTecnologia.services.impl;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.persistence.EntityNotFoundException;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wz.GubeeTecnologia.dto.ProductDTO;
import com.wz.GubeeTecnologia.dto.StackDTO;
import com.wz.GubeeTecnologia.dto.TargetMarketDTO;
import com.wz.GubeeTecnologia.entities.Product;
import com.wz.GubeeTecnologia.entities.Stack;
import com.wz.GubeeTecnologia.entities.TargetMarket;
import com.wz.GubeeTecnologia.repositories.ProductRepository;
import com.wz.GubeeTecnologia.repositories.StackRepository;
import com.wz.GubeeTecnologia.repositories.TargetMarketRepository;
import com.wz.GubeeTecnologia.resources.exeptions.DatabaseException;
import com.wz.GubeeTecnologia.resources.exeptions.ResourseNotFoundException;
import com.wz.GubeeTecnologia.services.ProductService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

	public final ProductRepository repository;

	private final StackRepository stackRepository;

	private final TargetMarketRepository targetMarketRepository;

	@Override
	@Transactional(readOnly = true)
	public Page<ProductDTO> findAll(Pageable pageable, Long stackId, String name) {
		List<Stack> stacks = (stackId ==0) ? null : Arrays.asList(stackRepository.getById(stackId));
		Page<Product> page = repository.findSearch(pageable, stacks, name);
		repository.findAllAdd(page.stream().collect(Collectors.toList()));
		return page.map(x -> new ProductDTO(x, x.getStacks(), x.getTargetMarket()));
	}

	@Override
	@Transactional(readOnly = true)
	public ProductDTO findByID(Long id) {
		Optional<Product> obj = repository.findById(id);
		Product entity = obj.orElseThrow(() -> new ResourseNotFoundException("Entity not found"));
		return new ProductDTO(entity, entity.getStacks(), entity.getTargetMarket());
	}

	@Override
	@Transactional
	public ProductDTO insert(ProductDTO dto) {
		Product entity = new Product();
		copyDtoToEntity(dto, entity);
		entity = repository.save(entity);
		return new ProductDTO(entity);
	}	

	@Override
	@Transactional
	public ProductDTO update(Long id, ProductDTO dto) {
		try {	
			Product entity = repository.getById(id);
			copyDtoToEntity(dto, entity);;
			entity = repository.save(entity);
			return new ProductDTO(entity);
		}catch(EntityNotFoundException e){
			throw new ResourseNotFoundException("Id not found "+ id);
		}
	}

	@Override
	@Transactional
	public void delete(Long id) {
		try {
			repository.deleteById(id);
		} catch (EmptyResultDataAccessException e) {
			throw new ResourseNotFoundException("Id not found " + id);
		} catch (DataIntegrityViolationException e) {
			throw new DatabaseException("Integrity violation");
		}
	}

	private void copyDtoToEntity(ProductDTO dto, Product entity) {
		entity.setName(dto.getName());
		entity.setDescription(dto.getDescription());
		entity.setPrice(dto.getPrice());
		entity.setImgUrl(dto.getImgUrl());
		entity.getStacks().clear();
		entity.getTargetMarket().clear();

		for (StackDTO stackDto : dto.getStacks()) {
			Stack stack = stackRepository.getById(stackDto.getId());
			entity.getStacks().add(stack);
		}

		for (TargetMarketDTO targetMarketDto : dto.getTargetMarkets()) {
			TargetMarket targetMarket = targetMarketRepository.getById(targetMarketDto.getId());
			entity.getTargetMarket().add(targetMarket);
		}
	}

}

package com.wz.GubeeTecnologia.services.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wz.GubeeTecnologia.dto.StackDTO;
import com.wz.GubeeTecnologia.entities.Stack;
import com.wz.GubeeTecnologia.repositories.StackRepository;
import com.wz.GubeeTecnologia.services.StackService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class StackServiceImpl implements StackService{

	private final StackRepository repository;
	
	@Transactional(readOnly = true)
	public List<StackDTO> findAll(){
		List<Stack> list = repository.findAll();
		return list.stream().map(x -> new StackDTO(x)).collect(Collectors.toList());
	}

}

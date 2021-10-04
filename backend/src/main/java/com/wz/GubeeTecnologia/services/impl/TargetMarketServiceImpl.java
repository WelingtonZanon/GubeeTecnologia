package com.wz.GubeeTecnologia.services.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wz.GubeeTecnologia.dto.TargetMarketDTO;
import com.wz.GubeeTecnologia.entities.TargetMarket;
import com.wz.GubeeTecnologia.repositories.TargetMarketRepository;
import com.wz.GubeeTecnologia.services.TargetMarketService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class TargetMarketServiceImpl implements TargetMarketService{

	private final TargetMarketRepository repository;
	
	@Transactional(readOnly = true)
	public List<TargetMarketDTO> findAll(){
		List<TargetMarket> list = repository.findAll();
		return list.stream().map(x -> new TargetMarketDTO(x)).collect(Collectors.toList());
	}

}

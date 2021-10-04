package com.wz.GubeeTecnologia.resources;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wz.GubeeTecnologia.dto.TargetMarketDTO;
import com.wz.GubeeTecnologia.services.TargetMarketService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/targetmarkets")
public class TargetMarketResource {
	
	private final TargetMarketService service;
	
	@GetMapping
	public ResponseEntity<List<TargetMarketDTO>> findAll(){
		List<TargetMarketDTO> list = service.findAll();
		return ResponseEntity.ok().body(list);
	}
}

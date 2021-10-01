package com.wz.GubeeTecnologia.resources;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wz.GubeeTecnologia.dto.StackDTO;
import com.wz.GubeeTecnologia.services.StackService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/stacks")
public class StackResource {
	
	private final StackService service;
	
	@GetMapping
	public ResponseEntity<List<StackDTO>> findAll(){
		List<StackDTO> list = service.findAll();
		return ResponseEntity.ok().body(list);
	}
}

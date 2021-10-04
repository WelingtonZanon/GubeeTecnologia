package com.wz.GubeeTecnologia.dto;

import java.io.Serializable;

import com.wz.GubeeTecnologia.entities.TargetMarket;

import lombok.Data;

@Data
public class TargetMarketDTO implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String name;
	
	public TargetMarketDTO(TargetMarket entity) {
		id = entity.getId();
		name = entity.getName();
	}

	
}

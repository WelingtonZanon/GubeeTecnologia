package com.wz.GubeeTecnologia.dto;

import java.io.Serializable;

import com.wz.GubeeTecnologia.entities.Stack;

import lombok.Data;

@Data
public class StackDTO implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String name;
	
	public StackDTO(Stack entity) {
		id = entity.getId();
		name = entity.getName();
	}	

}

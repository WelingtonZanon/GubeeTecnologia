package com.wz.GubeeTecnologia.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.wz.GubeeTecnologia.entities.Product;
import com.wz.GubeeTecnologia.entities.Stack;
import com.wz.GubeeTecnologia.entities.TargetMarket;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductDTO implements Serializable{
	private static final long serialVersionUID = 1L;

	private Long id;
	private String name;
	private String description;	
	private Double price;
	private String imgUrl;
	List<StackDTO> stacks = new ArrayList<>();
	List<TargetMarketDTO> targetMarkets = new ArrayList<>();
	
	public ProductDTO(Product entity) {
		id = entity.getId();
		name = entity.getName();
		description = entity.getDescription();
		price = entity.getPrice();
		imgUrl = entity.getImgUrl();
	}
	
	public ProductDTO(Product entity, Set<Stack> stacks, Set<TargetMarket> targetMarkets) {
		this(entity);
		stacks.forEach(x -> this.stacks.add(new StackDTO(x)));
		targetMarkets.forEach(x -> this.targetMarkets.add(new TargetMarketDTO(x)));
		
	}	

}

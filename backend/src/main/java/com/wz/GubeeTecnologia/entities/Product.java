package com.wz.GubeeTecnologia.entities;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "tb_product")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	
	@Column(columnDefinition = "TEXT")
	private String description;
	
	private Double price;

	@ManyToMany
	@JoinTable(name = "tb_product_stack", joinColumns = @JoinColumn(name = "product_id"), inverseJoinColumns = @JoinColumn(name = "stack_id"))
	Set<Stack> stacks = new HashSet<>();
	
	@ManyToMany
	@JoinTable(name = "tb_product_TargetMarket", joinColumns = @JoinColumn(name = "product_id"), inverseJoinColumns = @JoinColumn(name = "TargetMarket_id"))
	Set<TargetMarket> targetMarket = new HashSet<>();


}

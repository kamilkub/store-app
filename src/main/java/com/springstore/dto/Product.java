package com.springstore.dto;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Min;
import org.hibernate.validator.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Product {
    
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "code")
	@JsonIgnore
	private String code;
	
	@NotBlank(message = "Enter product name")
	@Column(name = "name")
	private String name;
	
	@Column(name = "brand")
	@NotBlank(message = "Enter brand name")
	private String brand;
	
	@Column(name = "description")
	@JsonIgnore
	@NotBlank(message = "Fill the description")
	private String description;
	

	@Min(value=1, message="Must be more than 1")
	@Column(name = "unit_price")
	private double unitPrice;
	
	@Min(value=1, message="Must be more than 1")
	@Column(name = "quantity")
	private int quantity;
	
	@Column(name = "is_active")
	@JsonIgnore
	private boolean active;
	
	
	@Column(name = "category_id")
	@JsonIgnore
	@NotBlank(message = "Set category")
	private int categoryId;
	
	@Column(name = "supplier_id")
	@JsonIgnore
	private int supplierId;
	
	@Column(name = "purchases")
	private int purchases;
	
	@Column(name = "views")
	private int views;
	
	
	public Product () {
		this.code = UUID.randomUUID().toString().substring(26).toUpperCase();
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public int getPurchases() {
		return purchases;
	}
	public void setPurchases(int purchases) {
		this.purchases = purchases;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", code=" + code + ", name=" + name + ", brand=" + brand + ", description="
				+ description + ", unitPrice=" + unitPrice + ", quantity=" + quantity + ", active=" + active
				+ ", categoryId=" + categoryId + ", supplierId=" + supplierId + ", purchases=" + purchases
				+ ", views=" + views + "]";
	}
	
	
	
	
	
}

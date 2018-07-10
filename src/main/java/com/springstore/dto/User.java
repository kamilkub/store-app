package com.springstore.dto;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {

	  
	  @Id
	  @GeneratedValue(strategy=GenerationType.IDENTITY)
	  @Column(name="id")
	  private int id;
	  
	  @NotNull(message="Required!")
	  @Size(min=1, message="Required!")
	  @Column(name="first_name")
	  private String firstName;
	  
	  @NotNull(message="Required!")
	  @Size(min=1, message="Required!")
	  @Column(name="last_name")
	  private String lastName;
	  
	  @Column(name="enabled")
	  private boolean active = true;
	  
	  @NotNull(message="Required!")
	  @Size(min=1, message="Required!")
	  @Column(name="email")
	  private String email;
	  
	  @NotNull(message="Required!")
	  @Size(min=1, message="Required!")
	  @Column(name="password")
	  private String password;
	  
	  @NotNull(message="Required!")
	  @Size(min=1, max=15, message="Required!")
	  @Column(name="contact_number")
	  private String contact_number;
	  
	  @Column(name="role")
	  private String role = "USER";
	  
	  
	  @OneToOne(mappedBy = "user", cascade = CascadeType.ALL)
	  private Cart cart;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContact_number() {
		return contact_number;
	}

	public void setContact_number(String contact_number) {
		this.contact_number = contact_number;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", active=" + active
				+ ", email=" + email + ", password=" + password + ", contact_number=" + contact_number + ", role="
				+ role + "]";
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	
	
	  
}

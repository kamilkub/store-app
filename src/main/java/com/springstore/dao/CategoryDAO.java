package com.springstore.dao;

import java.util.List;

import com.springstore.dto.Category;


public interface CategoryDAO {

	boolean addSession(Category category);

	boolean updateSession(Category category);

	boolean deleteSession(Category category);

	List<Category> categoriesList();

	Category getSession(int id);
}

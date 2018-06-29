package com.springstore.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.springstore.dao.CategoryDAO;
import com.springstore.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Category> categoriesList() {
        
		String select_categories = "FROM Category WHERE active = :active";
		
		Query que = sessionFactory.getCurrentSession().createQuery(select_categories);
		
		que.setParameter("active", true);
		
		return que.getResultList();

	}

	@Override
	public Category getSession(int id) {

		return sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));
	}

	@Override
	public boolean addSession(Category category) {
		try {

			sessionFactory.getCurrentSession().persist(category);
			return true;

		} catch (Exception e) {
			e.getMessage();
			return false;
		}

	}

	@Override
	public boolean updateSession(Category category) {
		try {

			sessionFactory.getCurrentSession().update(category);
			return true;

		} catch (Exception e) {
			e.getMessage();
			return false;
		}
	}

	@Override
	public boolean deleteSession(Category category) {
		
		category.setActive(false);
		
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;

		} catch (Exception e) {
			e.getMessage();
			return false;
		}
	}

}

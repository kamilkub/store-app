package com.springstore.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.springstore.dao.CategoryDAO;
import com.springstore.dao.ProductDAO;
import com.springstore.dto.Category;
import com.springstore.dto.Product;

public class CategoryTestJUNIT {

	private static AnnotationConfigApplicationContext context;

	private static CategoryDAO categoryDAO;

	private Category category;

	private Product product;

	private static ProductDAO productDAO;

	@BeforeClass
	public static void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.springstore");
		context.refresh();

		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		productDAO = (ProductDAO) context.getBean("productDAO");
	}
	/*
	 * @Test public void testAddCategory() {
	 * 
	 * category = new Category();
	 * 
	 * category.setName("Woman");
	 * category.setDescription("This is description for that dress");
	 * category.setImageURL("1.jpg");
	 * 
	 * 
	 * assertEquals("Success",true,categoryDAO.addSession(category));
	 * 
	 * 
	 * 
	 * }
	 * 
	 * // JUnit TEST for Reading
	 * 
	 * @Test public void getCategory() { category = categoryDAO.get(1);
	 * 
	 * assertEquals("Success","Woman",category.getName()); }
	 * 
	 * // JUnit TEST for Updating
	 * 
	 * @Test public void updateCategory() { category = categoryDAO.getSession(1);
	 * category.setName("Man");
	 * 
	 * assertEquals("Success",true,categoryDAO.updateSession(category));
	 * 
	 * // JUnit TEST for Deleting
	 * 
	 * }
	 * 
	 * @Test public void deleteCategory() { category = categoryDAO.getSession(1);
	 * assertEquals("Success",true,categoryDAO.deleteSession(category));
	 * 
	 * }
	 * 
	 * // Selecting all categories TEST
	 * 
	 * @Test public void selectCategories() {
	 * 
	 * assertEquals("Success",2,categoryDAO.categoriesList().size());
	 * 
	 * 
	 * }
	 * 
	 * @Test public void testCRUD() { category = new Category();
	 * 
	 * category.setName("Woman");
	 * category.setDescription("This is description for that dress");
	 * category.setImageURL("1.jpg");
	 * 
	 * category = new Category();
	 * 
	 * category.setName("Man");
	 * category.setDescription("This is description for that trausers");
	 * category.setImageURL("2.jpg"); }
	 */
	/*
	 * @Test public void updateCategory() { category = categoryDAO.getSession(2);
	 * category.setDescription("Description for trausers");
	 * category.setImageURL("2.jpg"); category.setName("Men");
	 * 
	 * assertEquals("Success",true,categoryDAO.updateSession(category));
	 * 
	 * // JUnit TEST for Deleting
	 * 
	 * }
	 */

	@Test
	public void addProduct() {

		product = new Product();

		product.setName("Tommy Hilfiger Men's Reversible Belt");
		product.setBrand("Tommy Hilfiger");
		product.setDescription("Best belts for mens short, trauser everything!");
		product.setUnitPrice(1200.00);
		product.setActive(true);
		product.setCategoryId(2);
		product.setSupplierId(1);
		product.setQuantity(50);

		assertEquals("Something went wrong!!", true, productDAO.addSession(product));

		// assertEquals("Something went
		// wrong!!",1,productDAO.getLatestActiveProducts(1).size());
	}

}

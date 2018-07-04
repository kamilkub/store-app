package com.springstore.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;



@Configuration
@ComponentScan(basePackages= {"com.springstore.dto"})
@EnableTransactionManagement
public class HibernateConfigClass {
   
	// variables with information to connect database
	private final static String db_url = "jdbc:h2:tcp://localhost/~/frontendspringstore";
	private final static String db_driver = "org.h2.Driver";
	private final static String db_dialect = "org.hibernate.dialect.H2Dialect";
	private final static String db_username = "sa";
	private final static String db_password = "";
	
	// DataSource provides connection information of database
	@Bean("dataSource")
	public DataSource getDatabaseInformation() {
		
		BasicDataSource data = new BasicDataSource();
		
		// Porviding data information to connect
		data.setDriverClassName(db_driver);
		data.setUrl(db_url);
		data.setUsername(db_username);
		data.setPassword(db_password);
		
		return data;
	}
	
	// SessionFactory configures application to use Hibernate and create session
	@Bean
	public SessionFactory getSession(DataSource data) {
		
		LocalSessionFactoryBuilder session = new LocalSessionFactoryBuilder(data);
		
		session.addProperties(getHibernateProperties());
		session.scanPackages("com.springstore.dto");
		
		return session.buildSessionFactory();
	}
	
	
	
	
	private Properties getHibernateProperties() {
	    
		Properties prop = new Properties();
		
		prop.put("hibernate.dialect", db_dialect);
		prop.put("hibernate.show_sql", "true");
		prop.put("hibernate.format_sql", "true");
		
		prop.put("hibernate.hbm2ddl.auto", "update");
		
		return prop;
	}

	// HibernateTransactionManager to manage hibernate transactions
	@Bean
	public HibernateTransactionManager getTransactionHibernate(SessionFactory session) {
		HibernateTransactionManager transaction = new HibernateTransactionManager(session);
		
		return transaction;
	}
	
}

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

	<li><a href="${pageContext.request.contextPath}/show/all/products">View Products</a></li>
	
	<security:authorize access="isAuthenticated()">
	<li><a href="${pageContext.request.contextPath}/cart">Your Cart</a></li>
	<li><a href="${pageContext.request.contextPath}/log-out">Logout</a></li>
	</security:authorize>
	
	<security:authorize access="hasAuthority('ADMIN')">
	<li><a href="${pageContext.request.contextPath}/management/products">Add product</a></li>
	</security:authorize>
	
			
	<security:authorize access="isAnonymous()">
		<li><a href="${pageContext.request.contextPath}/register">Sign up</a></li>
		<li><a href="${pageContext.request.contextPath}/auth">Login</a></li>
	</security:authorize>

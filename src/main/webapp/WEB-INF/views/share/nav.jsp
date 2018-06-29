<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<nav id="menu" class="pull-right">
   <ul>
	<c:forEach items="${categories}" var="category">
		<li><a href="${pageContext.request.contextPath}/show/category/${category.id}/products">${category.name}</a>
	</c:forEach>
	</ul>
</nav>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/bootstrap/css/chleb.css" />"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



</head>
<body>


	<div id="manage">


		<table>
			<tbody>
				<tr>
					<th>Name</th>
					<th>Brand</th>
					<th>Description</th>
					<th>Price</th>
					<th>Active</th>
					<th>Views</th>
					<th>Purchases</th>
				</tr>
				<c:forEach var="tempProduct" items="${products}">
				   <td>${tempProduct.name}</td>
				   <td>${tempProduct.brand}</td>
				   <td>${tempProduct.description}</td>
				   <td>${tempProduct.price}</td>
				   <td>${tempProduct.active}</td>
				   <td>${tempProduct.views}</td>
				   <td>${tempProduct.purchases}</td>
				</c:forEach>

			</tbody>
		</table>


	</div>

</body>
</html>
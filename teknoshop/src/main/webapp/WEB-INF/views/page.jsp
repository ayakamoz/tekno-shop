<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resourses/css" />
<spring:url var="js" value="/resourses/js" />
<spring:url var="images" value="/resourses/images" />


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />



<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Tekno Shop - ${title}</title>

<script>
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap-dark-theme.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">
</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<div class="content">
			<!-- Loading the home content -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Load when user click about -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Load when user click contact -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>

			<!-- Load when user click contact -->
			<c:if test="${userClickAllProducts  == true or userClickCategoryProducts  == true }">
				<%@include file="listProducts.jsp"%>
			</c:if>

		</div>

		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- Jquery -->
		<script src="${js}/jquery.js"></script>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>

		<!-- Link Self coded JavaScript -->
		<script src="${js}/myapp.js"></script>

	</div>
</body>

</html>

<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ attribute name="title" type="java.lang.String" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scopes | ${title}</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand bg-primary navbar-dark">
		<c:url var="productsUrl" value="/products"></c:url>
		<form action="${productsUrl}" class="container">
			
			<c:url var="homeUrl" value="/"></c:url>
			<a href="${homeUrl}" class="navbar-brand">
				<i class="bi-house"></i> Scope Demo
			</a>
			
			<ul class="navbar-nav">
				<c:if test="${null ne cart and cart.totalCount gt 0}">
					<li class="nav-item">
						<c:url var="cartUrl" value="/cart" />
						<a href="${cartUrl}" class="nav-link">
							<i class="bi-cart"></i> <span>${cart.totalCount}</span>
						</a>
					</li>
				</c:if>
				<li class="nav-item">
					<div class="input-group ms-3">
						<input type="text" class="form-control" value="${param.keyword}" placeholder="Search Keyword" name="keyword" />
						<button type="submit" class="input-group-text">
							<i class="bi-search"></i>
						</button>
					</div>
				</li>
			</ul>
		</form>
	</nav>
	
	<!-- Contents -->
	<main class="container mt-4">
		<jsp:doBody></jsp:doBody>
	</main>
	
</body>
</html>
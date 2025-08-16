<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<app:layout title="Products">
	
	<div class="row row-cols-3 g-3">
		<c:forEach var="item" items="${products}">
			<div class="col">
				<div class="card">
					<div class="card-header d-flex justify-content-between">
						<h5>${item.name}</h5>
						<c:url var="addToCartUrl" value="/cart/add">
							<c:param name="productId" value="${item.id}" />
							<c:param name="source" value="/index.jsp" />
						</c:url>
						<a href="${addToCartUrl}" class="icon-link">
							<i class="bi-cart-plus"></i>
						</a>
					</div>
					
					<div class="card-body d-flex justify-content-between">
						<span>${item.category}</span>
						<span class="text-secondary">
							<fmt:formatNumber value="${item.price}" /> MMK
						</span>
					</div>
				</div>			
			</div>
		</c:forEach>
	</div>
	
</app:layout>
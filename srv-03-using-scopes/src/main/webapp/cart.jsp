<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags" %>

<app:layout title="My Cart">
	
	<h3><i class="bi-cart"></i> My Cart</h3>
	
	<table class="table table-striped">
		<thead>
			<tr>
				<th>No.</th>
				<th>Product</th>
				<th class="text-end">Unit Price</th>
				<th class="text-center">Quantity</th>
				<th class="text-end">Total</th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach var="item" varStatus="sts" items="${cart.items}">
			<tr>
				<td>${sts.index + 1}</td>
				<td>${item.name}</td>
				<td class="text-end">
					<fmt:formatNumber value="${item.unitPrice}" /> MMK
				</td>
				<td class="text-center">
					<c:url var="removeItemUrl" value="/cart/remove">
						<c:param name="productId" value="${item.productId}" />
					</c:url>
					<a href="${removeItemUrl}" class="icon-link me-2">
						<i class="bi-dash-lg" ></i>
					</a>
					<fmt:formatNumber value="${item.quantity}" />
					<c:url var="addItemUrl" value="/cart/add">
						<c:param name="productId" value="${item.productId}" />
					</c:url>
					<a href="${addItemUrl}" class="icon-link ms-2">
						<i class="bi-plus-lg" ></i>
					</a>
				</td>
				<td class="text-end">
					<fmt:formatNumber value="${item.total}" /> MMK
				</td>
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<th colspan="3">Total</th>
				<th class="text-center">
					<fmt:formatNumber value="${cart.totalCount}" />
				</th>
				<th class="text-end">
					<fmt:formatNumber value="${cart.totalAmount}" /> MMK
				</th>
			</tr>
		</tfoot>
	</table>
	
	<div class="text-end">
		<c:url value="/checkout" var="checkoutUrl" />
		<a href="${checkoutUrl}" class="btn btn-primary">
			<i class="bi-check"></i> Check Out
		</a>
	</div>
</app:layout>
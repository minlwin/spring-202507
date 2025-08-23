<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags" %>

<app:layout title="Sales">

	<h3><i class="bi-list"></i> Sale History</h3>
	
	<table class="table table-striped">
		<thead>
			<tr>
				<td>Number</td>
				<td>User</td>
				<td>Email</td>
				<td>Sale At</td>
				<td class="text-center">Total Items</td>
				<td class="text-end">Total Amounts</td>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach var="item" varStatus="sts" items="${sales}">
			<tr>
				<td>${sts.index + 1}</td>
				<td>${item.user.name}</td>
				<td>${item.user.email}</td>
				<td>${item.saleAtValue}</td>
				<td class="text-center">
					<fmt:formatNumber value="${item.totalItem}" />
				</td>
				<td class="text-end">
					<fmt:formatNumber value="${item.totalAmount}" /> MMK
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</app:layout>
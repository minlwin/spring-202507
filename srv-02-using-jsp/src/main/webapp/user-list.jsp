<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using JSP</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

	<app:navbar page="user-list" />
	
	<div class="container mt-4">
		<h3>User List</h3>
		
		<form class="row">
			<div class="col-auto d-flex align-items-center gap-2">
				<label class="form-label">Keyword</label>
				<input type="text" name="keyword" value="${param.keyword}" placeholder="Search Keyword" class="form-control" />
			</div>
			
			<div class="col">
				<button type="submit" class="btn btn-primary">
					Search
				</button>
			</div>
		</form>
		
		<table class="table table-striped">
			<thead>
				<tr>
					<td>No.</td>
					<td>Name</td>
					<td>Phone</td>
					<td>Email</td>
					<td></td>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${list}" varStatus="status" var="item">
					<tr>
						<td>${status.index + 1}</td>
						<td>${item.name}</td>
						<td>${item.phone}</td>
						<td>${item.email}</td>
						<td>
							<c:url value="/user-details" var="showDetails">
								<c:param name="id" value="${item.id}"></c:param>
							</c:url>
							<a href="${showDetails}" class="btn btn-primary btn-sm">
								Show Details
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>
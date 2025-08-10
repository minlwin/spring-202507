<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>

</head>
<body>
	<app:navbar />
	
	<div class="container mt-4">
		<h3>User Details</h3>
		
		<div class="w-50">
			<div class="mb-3">
				<label class="form-label">ID</label>
				<span class="form-control">${user.id}</span>
			</div>
			<div class="mb-3">
				<label class="form-label">Name</label>
				<span class="form-control">${user.name}</span>
			</div>
			<div class="mb-3">
				<label class="form-label">Phone</label>
				<span class="form-control">${user.phone}</span>
			</div>
			<div class="mb-3">
				<label class="form-label">Email</label>
				<span class="form-control">${user.email}</span>
			</div>
		</div>
	</div>
</body>
</html>
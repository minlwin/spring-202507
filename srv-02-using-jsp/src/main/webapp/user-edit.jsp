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

	<app:navbar page="user-edit" />
	
	<div class="container mt-4">
		<h3>Edit User</h3>
		
		<form method="post" class="w-50">
			<div class="mb-3">
				<label class="form-label">Name</label>
				<input type="text" name="name" required="required" placeholder="Enter Name" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Phone</label>
				<input type="tel" name="phone" required="required" placeholder="Enter Phone Number" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Email</label>
				<input type="email" name="email" required="required" placeholder="Enter Email Address" class="form-control" />
			</div>
			
			<button type="submit" class="btn btn-primary">
				Save User
			</button>
		</form>
	</div>
	
	
</body>
</html>
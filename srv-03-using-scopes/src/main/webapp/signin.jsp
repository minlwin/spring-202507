<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags" %>

<app:layout title="Sign In">

	<h3><i class="bi-door-open"></i> Sign In</h3>
	
	<div class="row">
		<form method="post" class="col-4">
			<div class="mb-3">
				<label class="form-label">User Name</label>
				<input type="text" name="name" placeholder="Enter User Name" class="form-control" />
			</div>
			
			<div class="mb-3">
				<label class="form-label">Email</label>
				<input type="email" name="email" placeholder="Enter Email Address" class="form-control" />
			</div>
			
			<button type="submit" class="btn btn-primary">
				<i class="bi-send"></i> Sign In
 			</button>
		</form>
	</div>
    
</app:layout>    
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    

<%@ attribute name="page" type="java.lang.String" %>

<nav class="navbar navbar-expand navbar-dark bg-primary">
	<div class="container">
		<span class="navbar-brand">Using JSP</span>
		
		<ul class="navbar-nav">
			
			<c:url var="userList" value="/users"></c:url>
			<c:url var="userEdit" value="/edit-user"></c:url>
		
			<li class="nav-item"><a href="${userList}" class="nav-link ${page == 'user-list' ? 'active' : ''}">User List</a></li>
			<li class="nav-item"><a href="${userEdit}" class="nav-link ${page == 'user-edit' ? 'active' : ''}">Add New User</a></li>
		</ul>
	</div>
</nav>

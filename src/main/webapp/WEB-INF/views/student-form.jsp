<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" 
	integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" 
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" />
<title>Customer Relationship Management</title>
</head>
<body>
<nav>
	<div class="logo"><a href="/CollegeFest/students/list">Customer Relationship Management</a></div>
	<input type="checkbox" id="click">
<!-- 	<label for="click" class="menu-btn"> -->
<!-- 		<i class="fa-solid fa-bars"></i> -->
<!-- 	</label> -->
<!-- 	<ul> -->
<!-- 		<li><a href="/CustomerRelationshipManagement/customers/list"><i class="fa-solid fa-house"></i> Home</a></li> -->
<!-- 	</ul> -->
</nav>
	
<div class="container">
	<h2 class="heading">${Heading}</h2>
	
	<div class="inner-conatiner">
		<div class="form-container">	
			<form action="/CollegeFest/students/save" method="post">
				<input type="hidden" name="id" value="${Student.id}" />
				
				<div class="form-group">			
					<input type="text" name="name" id="name" class="form-field" value="${Student.name}" placeholder="Name" required="required">
					<label for="name" class="form-label">Name</label>
				</div>
			
				<div class="form-group">
					<input type="text" name="department" id="department" class="form-field" value="${Student.department}" placeholder="Department" required="required">
					<label for="department" class="form-label">Department</label>
				</div>
				
			
				<div class="form-group">
					<input type="text" name="country" id="country" class="form-field" value="${Student.country}" placeholder="Country" required="required">
					<label for="country" class="form-label">Country</label>
				</div>
				
				
				<button type="submit" class="submit-button"><i class="fa-solid fa-paper-plane"></i> Submit</button>
			</form>
		</div>
	</div>

	<div class="back-button">
		<a href="/CollegeFest/students/list"><i class="fa-solid fa-angle-left"></i> Back to Students List</a>
	</div>
</div>	

</body>
</html>
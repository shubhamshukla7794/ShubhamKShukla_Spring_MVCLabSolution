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
<title>College Fest</title>
</head>
<body>

<nav>
	<div class="logo"><a href="/CollegeFest/students/list">College Fest</a></div>
	<input type="checkbox" id="click">
	<label for="click" class="menu-btn">
		<i class="fa-solid fa-bars"></i>
	</label>
	<ul>
		<li><a href="/CollegeFest/students/showFormForAdd"><i class="fa-solid fa-user-plus"></i> Add Student</a></li>
	</ul>
</nav>

<div class="container">
	<table class="table">
		<caption class="heading">List of all Students</caption>
		<thead>
			<tr>
				<th><i class="fa-solid fa-id-badge"></i> Student Id</th>
				<th><i class="fa-solid fa-user-graduate"></i> Name</th>
				<th><i class="fa-solid fa-building-columns"></i> Department</th>
				<th><i class="fa-solid fa-earth-asia"></i> Country</th>
				<th class="align-action"><i class="fa-solid fa-bolt"></i> Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${Students}" var="tempStudent">
				<tr>
					<td data-label="Student Id"><c:out value="${tempStudent.id}" /></td>
					<td data-label="Name"><c:out value="${tempStudent.name}" /></td>
					<td data-label="Department"><c:out value="${tempStudent.department}" /></td>
					<td data-label="Country"><c:out value="${tempStudent.country}" /></td>
					<td class="align-action" data-label="Action">
						<a href="/CollegeFest/students/showFormForUpdate?studentId=${tempStudent.id}" class="edit-btn">
						<i class="fa-solid fa-user-pen"></i> Update</a> 
						<a href="/CollegeFest/students/delete?studentId=${tempStudent.id}" 
							onclick="if (!(confirm('Are you sure you want to delete this student details?'))) return false" class="delete-btn">
							<i class="fa-solid fa-user-xmark"></i> Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>
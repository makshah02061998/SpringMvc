<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">List Employees</h1>
	<button
		onclick="window.location.href = 'showFormForAdd'; return false;">Add
		Employee</button>

	<hr />

	<center>
		<table border="1">
			<tr>
				<th>FirstName</th>
				<th>MiddleName</th>
				<th>LastName</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Department</th>
				<th>Post</th>
				<th>location</th>
				<th>Mobile No</th>
				<th>Address</th>
			</tr>
			<c:forEach items="${employeesList}" var="s">
				<c:url var="updateLink" value="/employee/displayUpdateForm.html">
					<c:param name="employeeId" value="${s.id}" />
				</c:url>

				<c:url var="deleteLink" value="/employee/displayDeleteForm.html">
					<c:param name="employeeId" value="${s.id}" />
				</c:url>
				<tr>
					<td>${s.fisrtname}</td>
					<td>${s.middlename}</td>
					<td>${s.lastname}</td>
					<td>${s.email}</td>
					<td>${s.gender}</td>
					<td>${s.department}</td>
					<td>${s.post}</td>
					<td>${s.location}</td>
					<td>${s.mobileno}</td>
					<td>${s.address}</td>
					<td><a href="${updateLink}">Update</a> | <a
						href="${deleteLink}"
						onclick="if(!(confirm('Are you sure want to delete this Employee permanently?'))) return false">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>
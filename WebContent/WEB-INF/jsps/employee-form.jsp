<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student</title>
</head>
<body>
	<h1>Provide Student Information</h1>

	<hr />

	<form:form action="saveProcess.html" modelAttribute="employee">
		<table>
			<form:hidden path="id" />
			<tr>
				<td><b>First Name:</b></td>
				<td><form:input path="firstname" /></td>
			</tr>
			<tr>
				<td><b>Middle Name:</b></td>
				<td><form:input path="middlename" /></td>
			</tr>
			<tr>
				<td><b>Last Name:</b></td>
				<td><form:input path="lastname" /></td>
			</tr>
			<tr>
				<td><b>Email:</b></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><b>Gender:</b></td>
				<td><form:radiobutton path="gender" value="Male" />Male&nbsp;&nbsp;<form:radiobutton
						path="gender" value="Female" />Female</td>
			</tr>
			<tr>
				<td><b>Department:</b></td>
				<td><form:input path="department" /></td>
			</tr>
			<tr>
				<td><b>Post:</b></td>
				<td><form:input path="post" /></td>
			</tr>
			<tr>
				<td><b>Location:</b></td>
				<td><form:input path="location" /></td>
			</tr>
			<tr>
				<td><b>Location:</b></td>
				<td><form:input path="mobileno" /></td>
			</tr>
			<tr>
				<td><b>Address:</b></td>
				<td><form:textarea path="address" /></td>
			</tr>
			<tr>
				<td><b>Documents:</b></td>
				<td><input type="file" name="files" multiple="multiple"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Save" /> <input type="reset"
					value="Reset" /></td>
			</tr>
		</table>
	</form:form>

	<hr />

	<a href="list">Back to List</a>
	
</body>
</html>
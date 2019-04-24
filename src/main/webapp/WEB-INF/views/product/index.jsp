<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body>
	<h3>Home Page</h3>
	<s:form method="post" commandName="product"
		                       action="${pageContext.request.contextPath }/product/save">
		<fieldset>
			<legend>Valores Únicos</legend>
			<table>
				<tr>
					<td>Age</td>
					<td><input type="text" name="age" /></td>
				</tr>
				<tr>
					<td>Username</td>
					<td><input type="text" name="username" /></td>
				</tr>
			</table>
		</fieldset>

		<fieldset>
			<legend>Informação do Produto</legend>
			<table>
				<tr>
					<td>Id</td>
					<td><s:input path="id" /></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><s:input path="name" /></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><s:input path="price" /></td>
				</tr>
			</table>
		</fieldset>

		<input type="submit" value="Save" />

	</s:form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HomePage</title>
</head>
<body>
	<h3>Valores Únicos</h3>
	<table border="1">
		<tr>
			<td>Age</td>
			<td>${age }</td>
		</tr>
		<tr>
			<td>Username</td>
			<td>${username }</td>
		</tr>
	</table>

	<h3>Informação do produto</h3>
	<table border="1">
		<tr>
			<td>Id</td>
			<td>${product.id }</td>
		</tr>
		<tr>
			<td>Nome</td>
			<td>${product.name }</td>
		</tr>
		<tr>
			<td>Preço</td>
			<td>${product.price }</td>
		</tr>
	</table>

</body>
</html>
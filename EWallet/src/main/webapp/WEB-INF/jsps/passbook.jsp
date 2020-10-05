<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transactions</title>
</head>
<body>
	<h2>Transactions :</h2>
	<table>
		<tr>
			<th>Date</th>
			<th>Details</th>
			<th>Amount</th>
		</tr>
		<c:forEach items="${transactions}" var="transaction">
			<tr>
				<td>${transaction.transactionDate}</td>
				<td>${transaction.details}</td>
				<td>${transaction.amount}</td>
			</tr>
		</c:forEach>
	</table>
	<td><a href=homepage>Back to home page</a></td>
</body>
</html>
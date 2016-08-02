<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="addItems" class="com.bitwise.assignment2.AddItems"
		scope="session"></jsp:useBean>


<%-- 		<c:forEach var="i" items="${addItems.cartItems }"> --%>
<%-- 	       Item <c:out value="${i.getkey}" /> --%>
<%-- 	       Quantity <c:out value="${i.getvalue}" /> --%>
<!-- 			<p> -->
<%-- 		</c:forEach> --%>

<form>
		<table border="1">
			<%
				Map<String, Integer> cartItems = new HashMap<String, Integer>();
				cartItems = (Map<String, Integer>) (request.getSession(false).getAttribute("cart"));
				for (Map.Entry<String, Integer> entry : cartItems.entrySet()) {
			%>
			<tr>
				<td><input type="text" value="<%=entry.getKey()%>"
					name="<%=entry.getKey()%>"></td>
				<td><input type="text" name="quantity"
					value="<%=entry.getValue()%>"></td>

			</tr>

			<%
				}
			%>
			<tr>
				<td><a href="Homepage.jsp"></a></td>
			</tr>
		</table>

	</form>



	</form>
</body>
</html>
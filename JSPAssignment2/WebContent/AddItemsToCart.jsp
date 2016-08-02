<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="addItems" class="com.bitwise.assignment2.AddItems"
		scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="addItems" />
	<%
		
		String action = request.getParameter("action");
		if ("CONFIRM".equals(action)) {
			addItems.setSessionCart(request);
			response.sendRedirect("ViewCart.jsp");
		} else if ("ADD".equals(action)) {
			addItems.setCartItems(request, response);
			response.sendRedirect("AddItems.jsp");
		}
	%>
	<!-- The above scriplet can be replaced by jstl custom tags and i tried to do that way but due to less time, i was not abke to complete that.But 'll try to do by myself for future and will surely getback to you once done.So, sorry for that. -->


</body>
</html>
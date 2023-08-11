<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderConfirm2.jsp</title>
</head>
<body>
<jsp:useBean id = "order" class = "sample.dto.OrderDto"/> 
<jsp:setProperty property = "*" name = "order"/> 
<% 
OrderDao dao = OrderDao.getOrderDao(); 
if (dao.insert(order)==1){
%> 
<jsp:forward page = "orderResult.jsp"/> 
<%-- 문제10. <jsp:forward page="orderResult.jsp"/> 를 설명하세요.
orderConfirm2.jsp 파일에서 받은 요청 orderResult.jsp 요청을 보낸다 --%>
<%
}
%>
</body>
</html>
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
<jsp:useBean id = "order" class = "sample.dto.OrderDto" scope="request"/> 
<jsp:setProperty property = "*" name = "order"/> 
<!--  문제9 . orderConfirm.jsp를 아래와 같이 2개의 소스파일 `처리`와 `화면출력`으로
분리하였습니다. orderConfirm.jsp 와 동일하게 실행되기 위해 필요한 코드는 무엇인가요?
scope는 변수의 생존 기간과 접근 가능한 범위를 나타내고, orderConfirm.jsp에서 request는 order 객체의 범위를 현재 요청으로 제한하여,
orderConfirm2.jsp에서 처리한 정보를 orderResult.jsp에서도 접근 가능하게 하기 위함이다.
 --> 
<% 
OrderDao dao = OrderDao.getOrderDao(); 
if (dao.insert(order)==1){
%> 
<jsp:forward page = "orderResult.jsp"/> 
<%-- 문제10. <jsp:forward page="orderResult.jsp"/> 를 설명하세요.
orderConfirm2.jsp가 받은 요청을 orderResult.jsp 에게 전달해주는 동작이 forword 입니다. --%>
<%
}
%>
</body>
</html>
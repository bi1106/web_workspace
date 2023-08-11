<%@page import="java.util.List"%>
<%@page import="sample.dto.OrderDto"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Set"%>
<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderDetail.jsp</title>
</head>
<body>
<% 
String email = request.getParameter("email");
/* 문제7 . (7) 에 필요한 코드를 작성하세요.
  요청 파라미터의 값을 가져오는 메서드
 */
OrderDao dao = OrderDao.getOrderDao(); 
List<OrderDto> list = dao.selectByEmail(email);
%> 
<h3> <%= email %> 고객 주문 현황</h3> 
<hr> 
<table style =" width : 500px ;"> 
<tr> <th style =" width : 200px ;"> 상품코드</th ><th style =" width : 100px ;"> 수량</th> 
<th style =" width : 200px ;" > 주문날짜</th >
</tr> 
<% 
for (OrderDto dto  : list) { 
%><!-- 문제8 . (8) ? 에 필요한 코드를 작성하세요.
객체를 반복하면서 해당 객체의 속성을 사용하여 작업을 수행할 수 있게 향상 for문 사용 -->
<tr> <td style =" text-align : center ;" > <%= dto.getPcode() %> </td> 
<td style =" text-align : center ;" > <%= dto.getQuantity() %> </td> 
<td style =" text-align : center ;" > <%= dto.getOrderdate() %> </td> 
</tr > 
<% 
} 
%> 
</table> 
</body>
</html>
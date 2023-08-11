<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderConfirm.jsp</title>
</head>
<body>
<h3> 주문 확인</h3> 
<hr> 
<jsp:useBean id = "order" class = "sample.dto.OrderDto" scope="request"/>
<!--  문제9 . orderConfirm.jsp를 아래와 같이 2개의 소스파일 `처리`와 `화면출력`으로
분리하였습니다. orderConfirm.jsp 와 동일하게 실행되기 위해 필요한 코드는 무엇인가요?
scope는 변수의 생존 기간과 접근 가능한 범위를 나타내고, orderConfirm.jsp에서 request는 order 객체의 범위를 현재 요청으로 제한하여,
orderConfirm2.jsp에서 처리한 정보를 orderResult.jsp에서도 접근 가능하게 하기 위함이다.
 --> 
<jsp:setProperty property = "*" name="order"/> 
<ul> 
	<li> 고객 이메일 : <jsp:getProperty property = "email" name="order"/></li> 
	<li> 상품코드 : <jsp:getProperty property = "pcode" name="order"/></li > 
	<li> 주문수량 : <jsp:getProperty property = "quantity" name="order"/></li>
<!-- 문제4 . 자바빈즈의 프로퍼티를 설정하고 가져오는 실행을 위해 공통으로 들어갈
코드를 작성하세요. name="order"은 useBean 액션 태그를 통해 생성된 자바빈 객체를 참조하는 것-->
</ul> 
<hr> 
<button onclick = "location.href='orderForm.jsp'">추가 주문</button>
<!-- 문제5 . 추가 주문 버튼 클릭시 <orderForm.jsp> 로 가기 위한 ? 코드를 작성하세요. -->
<% 
OrderDao dao = OrderDao.getOrderDao(); 
if(dao.insert(order)==1){ 
%> 

<script type = "text/javascript"> 
alert('주문완료 되었습니다.') 
</script> 
<% 
} 
%>
</body>
</html>
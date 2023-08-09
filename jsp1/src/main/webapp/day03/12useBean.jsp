<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="dto" class="sample.dto.MyUser">
</jsp:useBean>
<jsp:setProperty property="uname" name="dto" param="uname"/>
<jsp:setProperty property="age" name="dto" param="age"/>
<jsp:setProperty property="address" name="dto" param="address"/>
myuser 이름 : <jsp:getProperty property="uname" name="dto"/>
          <!--  getXXXX 메소드 역할-->
나이 : <jsp:getProperty property="age" name="dto"/>          
주소 : <jsp:getProperty property="address" name="dto"/>

<ul>
	<li>${dto.uname }</li>
	<li>${dto.age }</li>
	<li>${dto.address }</li>
</ul>
<hr>
<!-- 10scopeTest.jsp 에서도 아래 2개의 자바빈을 가져오는지 확인하자 -->
<!-- 자바빈즈 2개를 scope를 다르게해서 더 만들기 -->
<jsp:useBean id="appDto" class="sample.dto.MyUser" scope="application"/>
<jsp:setProperty property="*" name="appDto"/>
<jsp:useBean id="sessionDto" class="sample.dto.MyUser" scope="session"/>
<jsp:setProperty property="*" name="sessionDto"/>
<hr>
<%
   out.print(appDto);
   out.print("<br>");
   out.print(session);
%>
<a href="10scopeTest.jsp">10scopeTest.jsp로 확인하러 가기</a>
</body>
</html> 
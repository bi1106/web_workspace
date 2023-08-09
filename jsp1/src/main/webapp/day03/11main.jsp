<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6main.jsp</title>
</head>
<body>
<jsp:include page="../day02/7top.jsp">
   <jsp:param value="kim" name="username"/>
</jsp:include>
<main>
<h3>====main====</h3>
<a href ="12useBean.jsp?uname=김땡땡&age=24">useBean</a><br>
<form action="12useBean.jsp">
   <input placeholder="이름" name="uname">
   <input placeholder="나이" name="age">
   <input placeholder="주소" name="address">
   <button>제출</button>
</form>
<hr>
<h3>scope='request' 테스트</h3>
<form action="13forward.jsp">
   <input placeholder="이름" name="uname">
   <input placeholder="나이" name="age">
   <input placeholder="주소" name="address">
   <button>제출</button>
</form>
</main>
<jsp:include page="../day02/8bottom.jsp"/>
</body>
</html>

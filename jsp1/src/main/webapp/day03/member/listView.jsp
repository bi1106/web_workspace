<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- JSTL(tomcat이 지원하는 외부라이브러리로 지원되는 태그)를 사용하기위한 import 입니다. -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listView.jsp - 화면 출력 페이지</title>
</head>
<body>
${list}
<hr>
<!-- request.getAttribute("list") 실행 + List<Member> 타입변환 + 출력 -->
<!-- 출력을 반복해서 테이블 tr 태그에 넣기 : jstl.Attribute(자바빈)은 자바for로는 못함. -->
<ul><!-- list 애프리뷰트는 컬렉션이므로 하나씩 가져와서 vo에 저장 -->
<c:forEach items="${list}" var="vo">
   <li>${vo.custno}</li> <!-- vo.getCustno() -->
   <li>${vo.custname}</li>
   <li>${vo.phone}</li>
   <li>${vo.address}</li>
   <li>${vo.city}</li>
</c:forEach>
</ul>
</body>
</html>
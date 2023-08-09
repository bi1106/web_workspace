<!DOCTYPE html>
<%@page import="sample.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>MemberList</title>
<link rel="stylesheet" href= ../../css/Layout.css></link>
<link rel="stylesheet" href= ../../css/MemberList.css></link>
</head>
<body>
<header>
      <h2>홈쇼핑 회원관리 ver1.0</h2>
   </header>
   <nav>
      <ul>
         <li><a href="./MemberRegister.jsp">회원등록</a>
         <li><a href="./MemberList.jsp">회원목록조회/수정</a>
         <li><a href="./MemberSales.jsp">회원매출조회</a>
         <li><a href="./Index.html">홈으로.</a>
      </ul>
   </nav>
   <section>
   <%-- <jsp:useBean id="list" class="sample.dto.MemberDto" scope="request"/> --%>
   <form action="MemberList.jsp" method="post">
      <h3>회원목록조회/수정</h3>
      <table>
            <tr>
               <th>회원번호</th>
               <th>회원성명</th>
               <th>전화번호</th>
               <th>주소</th>
               <th>가입일자</th>
               <th>고객등급</th>
               <th>거주지역</th>
            </tr>
          	<c:forEach items="${list}" var="dto">
            <tr>
               <td>${dto.custno}</td>
               <td>${dto.custname}</td>
               <td>${dto.phone}</td>
               <td>${dto.address}</td>
               <td>${dto.joindate}</td>
               <td>${dto.grade}</td>
               <td>${dto.city}</td>
            </tr>
          	</c:forEach>
         
      </table>
      </form>
   </section>
</body>            
   <footer>
      <h4>
         HRDKOREA Copyright&copy;2016 All rights reserved. Human Resources Development Service of Korea
      </h4>
   </footer>
</body>
</html>            
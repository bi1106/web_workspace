<%@page import="java.util.List"%>
<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Layout(외부평가)</title>
	<link rel = "stylesheet" href = "MemberList.css">
</head>
<body>
	<header>
		<h2>홈쇼핑 회원관리 ver1.0</h2>
	</header>
	<nav>
	<!-- 반응형 웹페이지를 위해 메뉴는 목록 태그를 주로 사용합니다. 반응형 페이지 스타일은 레이아웃을 flexbox 사용해야 합니다.-->
		<ul>
			<li><a href = "">회원등록</a></li>
			<li><a href = "">회원목록조회/수정</a></li>
			<li><a href = "">회원매출조회</a></li>
			<li><a href = "">홈으로.</a></li>
		</ul>
	</nav>
	<section>
		<h2>회원목록 조회/수정</h2>
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
				<%
					MemberDao dao = MemberDao.getMemberDao();
					List<MemberDto> list = dao.selectAll();
				%>
				<%
					for(MemberDto dto : list){	
				%>
					<tr>
						<td><%= dto.getCustno() %></td>
						<td><%= dto.getCustname() %></td>
						<td><%= dto.getPhone() %></td>
						<td><%= dto.getAddress() %></td>
						<td><%= dto.getJoindate() %></td>
						<td><%= dto.getGrade() %></td>
						<td><%= dto.getCity() %></td>
					</tr>
				<%
					}
				%>

		</table>
	</section>
	<footer>
		<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human Resources Development Service
			of Korea.</h4>
	</footer>
</body>
</html>
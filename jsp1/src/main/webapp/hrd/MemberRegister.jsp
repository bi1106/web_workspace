<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원 관리</title>
<link rel="stylesheet" href=MemberRegister.css></link>
<link rel="stylesheet" href=Layout.css></link>
</head>
<body>
<header>
<h2>쇼핑몰 회원 관리 ver1.0</h2></header>
<nav>
<ul>
<li><a href="MemberRegister.jsp">회원등록</a></li>
<li><a href="MemberUpdate.jsp">회원목록조회/수정</a></li>
<li><a href="memberSales.html">회원매출조회</a></li>
<li><a href="index.html">홈으로</a></li>
</ul>
</nav>
<section>
<h2>홈쇼핑 회원 등록</h2>
<form action= "RegisterSave2.jsp" method="post">
<table>
<tr>
	<td><label for="lblNum" >회원번호(자동발생)</label></td>
	<td><input size = "15" type ="text" id="lblNum" value="" name="custno"></td>
</tr>
<tr>
	<td><label for="lblName" >회원성명</label></td>
	<td><input size = "15" type ="text" id="lblName" value="" name="custname"></td>
</tr>
<tr>
	<td><label for="lblPhone" >회원전화</label></td>
	<td><input size = "30" type ="text" id="lblPhone" value="" name="phone"></td>
</tr>
<tr>
	<td><label for="lblAdd" >회원주소</label></td>
	<td><input size = "40" type ="text" id="lblAdd" value="" name="address"></td>
</tr>
<tr>
	<td><label for="lblreg" >가입일자</label></td>
	<td><input size = "15" type ="text" id="lblreg" value="" name="joindate" disabled></td>
</tr>
<tr>
	<td><label for="lblgrade" >고객등급[A:VIP,B:일반,C:직원]</label></td>
	<td><input size = "15" type ="text" id="lblgrade" value="C" name="grade"></td>
</tr>
<tr>
	<td><label for="lblccode" >도시코드</label></td>
	<td><input size = "15" type ="text" id="lblccode" value="60" name="city"></td>
</tr>
<tr>
	<td colspan="2"><button>등록</button>
	<button type="button" Location.href='MemberList.jsp'">조회</button>
	</td>
</tr>
</table>
</form>
</section>
<footer>
<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human
			Resources Development Service of Korea.</h4>
</footer>
</body>
</html>
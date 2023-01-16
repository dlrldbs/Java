﻿<%@page import="xyz.itwill.dto.UserinfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 사용자로부터 회원정보를 입력받기 위한 JSP 문서 - 관리자만 요청 가능한 페이지 --%>
<%-- => [회원등록] 태그를 클릭한 경우 회원정보 삽입페이지(user_write_action.jsp)로 이동 - 입력값 전달 --%>
<%-- => [로그인] 태그를 클릭한 경우 로그인정보 입력페이지(user_login.jsp)로 이동 --%>
<%
	UserinfoDTO loginUserinfo=(UserinfoDTO)session.getAttribute("loginUserinfo");
	//비로그인 사용자이거나 로그인 사용자가 관리자가 아닌 경우 - 비정상적인 요청
	if(loginUserinfo==null || loginUserinfo.getStatus()!=9) {
		response.sendRedirect("user_error.jsp");
		return;		
	}

	String message=(String)session.getAttribute("message");
	if(message==null) {
		message="";
	} else {
		session.removeAttribute("message");
	}
	
	UserinfoDTO userinfo=(UserinfoDTO)session.getAttribute("userinfo");
	if(userinfo==null) {
		userinfo=new UserinfoDTO();
		userinfo.setUserid("");
		userinfo.setPassword("");
		userinfo.setName("");
		userinfo.setEmail("");
		userinfo.setStatus(1);
	} else {
		session.removeAttribute("userinfo");
	}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MVC</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/user.css" type="text/css">
<script language="JavaScript">
function userCreate() {
	if ( f.userid.value == "" ) {
		alert("아이디를 입력하십시요.");
		f.userid.focus();
		return;
	} 
	if ( f.password.value == "" ) {
		alert("비밀번호를 입력하십시요.");
		f.password.focus();
		return;
	}
	if ( f.name.value == "" ) {
		alert("이름을 입력하십시요.");
		f.name.focus();
		return;
	}
	
	f.action = "user_write_action.jsp";
	f.submit();
}
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<table width=780 border=0 cellpadding=0 cellspacing=0>
	<tr>
	  <td width="20"></td>
	  <td style="color: red;"><%=message %></td>			
	</tr>

	<tr>
	  <td width="20"></td>
	  <td>
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>회원관리 - 회원등록</b></td>
		  </tr>
	  </table>  
	  <br>
	  
	  <form name="f" method="post">
	  <table border="0" cellpadding="0" cellspacing="1" width="590" bgcolor="BBBBBB">
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">아이디</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10px;">
				<input type="text" style="width:150" name="userid" value="<%=userinfo.getUserid()%>">
			</td>
		  </tr>
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">비밀번호</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10px;">
				<input type="password" style="width:150" name="password" value="<%=userinfo.getPassword()%>">
			</td>
		  </tr>
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">이름</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10px;">
				<input type="text" style="width:240" name="name" value="<%=userinfo.getName()%>">
			</td>
		  </tr>
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">이메일</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10px;">
				<input type="text" style="width:240" name="email" value="<%=userinfo.getEmail()%>">
			</td>
		  </tr>
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">회원등급</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10px;">
				<select name="status">
					<option value="1" <% if(userinfo.getStatus()==1) { %> selected <% } %>>일반회원</option>
					<option value="9" <% if(userinfo.getStatus()==9) { %> selected <% } %>>관리자</option>
				</select>
			</td>
		  </tr>		  
	  </table>
	  </form>
	  <br>
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td align=center>
				<input type="button" value="회원등록" onClick="userCreate();">
				<input type="button" value="로그인" onClick="location.href='user_login.jsp';">
			</td>
		  </tr>
	  </table>
	  </td>
	</tr>
</table>  
</body>
</html>
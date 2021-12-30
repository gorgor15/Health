<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="Project.MemberMgr" %>
<jsp:useBean id="memMgr" class="Project.MemberMgr" />

<!-- 회원가입할때 중복확인 -->
<%
   request.setCharacterEncoding("euc-kr");
   String id = request.getParameter("id");
   boolean check = memMgr.checkId(id);
%>

<html>
<head>
<title>ID중복체크</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<body bgcolor="#FFFFCC">
<br>
<center>
<b><%=id%></b>
<%
  if(check){
     out.println("는 이미 존재한는 ID입니다.<p>");
}else{    
     out.println("는 사용 가능 합니다.<p>");
}
%>
<a href="javascript:this.close();">닫기</a>
</center>
</body>
</html>
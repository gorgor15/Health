<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.util.*, Project.*"%>
<jsp:useBean id="memMgr" class="Project.MemberMgr" />

<!-- 회원관리페이지 -->
<html>
<head>
<title>회원관리</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">

	<%@ include file="Top.jsp" %> 
	
	<%Vector vResult= memMgr.getMemberList();%>

	<table width="75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">

		<table width="95%" align="center" bgcolor="#FFFF99" border="1">
		<tr bgcolor="#996600"> 
		<td align="center"><font color="#FFFFFF">회원이름</font></td>
		<td align="center"><font color="#FFFFFF">회원아이디</font></td>
		<td align="center"><font color="#FFFFFF">패스워드</font></td>
		<td align="center"><font color="#FFFFFF">전화번호</font></td> 
		<td align="center"><font color="#FFFFFF">이메일</font></td>
		<td align="center"><font color="#FFFFFF">수정</font></td>
		</tr>
		<%
		for(int i=0; i<vResult.size(); i++){
		RegisterBean regBean = (RegisterBean)vResult.get(i);
		%>
		<tr> 
		<td align="center"><%=regBean.getname()%></a></td>
		<td align="center"><%=regBean.getid()%></td>
		<td align="center"><%=regBean.getpasswd()%></td>
		<td align="center"><%=regBean.getphone()%></td>
		<td align="center"><%=regBean.getemail()%></td>
		<td align="center"><a href="javascript:Update('<%=regBean.getid()%>')">수정하기</a></td>
		</tr>
		<%}%>
		</table>
	</td>
	</tr>
	</table>


	<%@ include file="Bottom.jsp" %>

	<form name="update" method="post" action="MemberUpdate.jsp">
	<input type=hidden name="id">
	</form>

</body>
</html>

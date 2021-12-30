<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.util.*, Project.*"%>
<jsp:useBean id="MembershipMgr" class="Project.MembershipMgr" />

<!-- 회원관리페이지 -->
<html>
<head>
<title>회원관리</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">

	<%@ include file="Top.jsp" %> 
	
	<%Vector vResult= MembershipMgr.getMembershipList();%>

	<table width="75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">
		<form>
		<%RegisterBean product= MembershipMgr.getMembership(request.getParameter("id"));%>
		<table width="95%" align="center" bgcolor="#FFFF99" border="1">
		<tr bgcolor="#996600"> 
		<td align="center"><font color="#FFFFFF">회원이름</font></td>
		<td align="center"><font color="#FFFFFF">회원아이디</font></td>
		<td align="center"><font color="#FFFFFF">전화번호</font></td>
		<td align="center"><font color="#FFFFFF">회원권일수</font></td>
		<td align="center"><font color="#FFFFFF">운동복선택여부</font></td> 
		<td align="center"><font color="#FFFFFF">락커선택여부</font></td>
		<td align="center"><font color="#FFFFFF">시작과종료일</font></td>
		<td align="center"><font color="#FFFFFF">선택 트레이너</font></td>
		</tr>
		<%
		for(int i=0; i<vResult.size(); i++){
		RegisterBean regBean = (RegisterBean)vResult.get(i);
		%>
		<tr> 
		<td align="center"><%=regBean.getname()%></a></td>
		<td align="center"><%=regBean.getid()%></td>
		<td align="center"><%=regBean.getphone()%></td>
		<td align="center"><%=regBean.getMemberday()%></td>
		<td align="center"><%=regBean.getCloth()%></td>
		<td align="center"><%=regBean.getLock()%></td>
		<td align="center"><%=regBean.getDates()%></td>
		<td align="center"><%=regBean.getTrainer()%></td>
		<td align="center"><a href="javascript:productDelete('<%=regBean.getid()%>')">삭제하기</a></td>
		</tr>
		<%}%>
		</table>
	</td>
	</tr>
	</table>
</form>

	<%@ include file="Bottom.jsp" %>

	<form name="del" method="post" action="ProductProc.jsp?flag=delete">
	<input type=hidden name=no>
	</form>
</body>
</html>

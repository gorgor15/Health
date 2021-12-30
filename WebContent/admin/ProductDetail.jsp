<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, Project.*"%>
<jsp:useBean id="proMgr" class="Project.ProductMgr" />

<html>
<head>
<title>Simple Shopping Mall Admin</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<body bgcolor="#996600" topmargin="100">

	<%@ include file="Top.jsp" %>
	
	
	<form>
	<%ProductBean product= proMgr.getGangsa(request.getParameter("no"));%>
	<table width="75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">

		<table width="95%" align="center" bgcolor="#FFFF99" border="1">
		
		<tr> 
		<td width="20%">
	 <img src="<%=request.getContextPath()%>../images/<%=product.getImage()%> ">
		</td>
		<td width="30%" valign="top">

			<table border="1" width="100%" heigth="100%">
			<tr>
			<td><b>강사이름 : </b><%=product.getName()%></td>
			</tr>	
			<tr>
			<td><b>강사정보 : </b><%=product.getDetail()%></td>
			</tr>		
			<tr>
			<td><b>강사경력 : </b><%=product.getDate()%></td>
			</tr>
			<tr>
			<td><b>강사이미지 : </b><%=product.getImage()%></td>
			</tr>
			</table>
		
		</td>
		</tr>
		<tr> 
		<td colspan="3" align="center">
		<a href="javascript:productUpdate('<%=product.getNo()%>')">수정하기</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="javascript:productDelete('<%=product.getNo()%>')">삭제하기</a>
		</td>
		</tr>
		</table>

	</td>
	</tr>
	</table>
</form>
	<%@ include file="Bottom.jsp" %>

	<form name="update" method="post" action="ProductUpdate.jsp">
	<input type=hidden name=no>
	</form>
	
	<form name="del" method="post" action="ProductProc.jsp?flag=delete">
	<input type=hidden name=no>
	</form>


</body>
</html>



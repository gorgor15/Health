<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, Project.*"%>

<jsp:useBean id="proMgr" class="Project.ProductMgr" />
<!-- 강사 등록 하는곳 -->
<html>
<head>
<title>강사 등록 페이지</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
 
<body bgcolor="#996600" topmargin="100">

	<%@ include file="Top.jsp" %>


	<table width="75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">
 
		<table width="95%" align="center" bgcolor="#FFFF99" border="1">
		<tr bgcolor="#996600"> 
		<td align="center"><font color="#FFFFFF">강사이름</font></td>
		<td align="center"><font color="#FFFFFF">강사정보</font></td>
		<td align="center"><font color="#FFFFFF">경력</font></td>
		<td align="center"><font color="#FFFFFF">강사이미지</font></td>
		<td align="center">&nbsp;</font></td>
		</tr>
		<%
		Vector vResult= proMgr.getGangsaList();
		if(vResult.size() ==0){
		%>
		<tr> 
		<td align="center" colspan="5">등록된 강사가 없습니다.</td>
		</tr>
		<%}else{
			for(int i=0; i<vResult.size(); i++){
			ProductBean product = (ProductBean)vResult.get(i);
		%>
		<tr> 
		<td align="center"><%=product.getName()%></td>
		<td align="center"><%=product.getDetail()%></td>
		<td align="center"><%=product.getDate()%></td>
		<td align="center"><a href="javascript:productDetail(<%=product.getNo()%>)">강사정보확인</a></td>
		</tr>
		<%}
		}%>
		<tr>
		<td colspan="5" align="center"><a href="ProductInsert.jsp">강사등록</a></td>
		</tr>
		</table>
		
	</td>
	</tr>
	</table>

	<%@ include file="Bottom.jsp" %>
	
	<form name="detail" method="post" action="ProductDetail.jsp" >
	<input type="hidden" name="no">
	</form>

</body>
</html>
   
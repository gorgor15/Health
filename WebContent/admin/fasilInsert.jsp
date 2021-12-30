<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<title>Simple Shopping Mall Admin</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<body bgcolor="#996600" topmargin="100">

	<%@ include file="Top.jsp" %>

	<table width="75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">

		<form method="post" action="ProductProc.jsp?flag=insert" enctype="multipart/form-data">
		<table width="95%" align="center" bgcolor="#FFFF99" border="1">
		<tr bgcolor="#996600"> 
		<td colspan="2" align="center"><font color="#FFFFFF">강사 등록</font></td>
		</tr>
		<tr> 
		<td align="center">시설이름</td>
		<td align="left"><input type="text" name="name" size="20"></td>
		</tr>
		<tr> 
		<td align="center">시설정보</td>
		<td><textarea rows="10" cols="45" name="detail"></textarea></td>
		</tr>
		<tr> 
		<td align="center">시설이미지</td>
		<td><input type="file" name="image"></td>
		</tr>
		<tr> 
		<td colspan="2" align="center"> 
		<input type="submit" value="강사등록">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="다시쓰기">
		</td>
		</tr>
		</table>
		</form>
	
	</td>
	</tr>
	</table>

	<%@ include file="Bottom.jsp" %>

</body>
</html>


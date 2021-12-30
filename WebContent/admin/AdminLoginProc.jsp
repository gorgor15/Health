<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="memMgr" class="Project.MemberMgr" />

<!-- 클래스는객체가 생성될자바빈클래스 :MemberMgr이고 id는 객체이름  -->
<%
	String admin_id = request.getParameter("admin_id");
	String admin_passwd = request.getParameter("admin_passwd");
	boolean adminCheck = memMgr.adminCheck(admin_id, admin_passwd); //리턴타입이 boolean이라 true나 false반환
    if(adminCheck) {
	    session.setAttribute("adminKey", admin_id);
%>

   <script>
   location.href="Index.jsp";
   </script>

<%}else{%>

   <script>
   alert("입력한 정보가 정확하지 않습니다.");
   location.href="AdminLogin.jsp";
   </script>

<%}%>
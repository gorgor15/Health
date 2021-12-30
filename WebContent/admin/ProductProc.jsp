<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="proMgr" class="Project.ProductMgr" />
<!-- 클래스는객체가 생성될자바빈클래스 :MemberMgr이고 id는 객체이름  -->
<%
	String flag = request.getParameter("flag");
	boolean result = false;
	
	if(flag.equals("insert")){
    	result=proMgr.insertGangsa(request);
	}else if(flag.equals("update")){
    	result=proMgr.updateGangsa(request);
    }else if(flag.equals("delete")){
		result=proMgr.deleteGangsa(request.getParameter("no"));
	}else{
		response.sendRedirect("ProductMgr.jsp");
	}
	
	if(result){
%>
	  <script>
	    alert("처리하였습니다");
		location.href="ProductMgr.jsp";
	  </script>
<%	}else{%>
	  <script>
	    alert("오류가 발생하였습니다.");
		location.href="ProductMgr.jsp";
	  </script>
<%	}%>
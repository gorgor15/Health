<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String admin_id = (String)session.getAttribute("adminKey");

	if(admin_id == null) {
		response.sendRedirect("AdminLogin.jsp");
	}
%>
 <style>
 
   header #gnb_wrap{width:100%;margin:0 auto;}
#gnb_wrap .logo_wrap{width:100%;height:150px;text-align:center;margin:0 auto;border-bottom:1px solid #212121;}
#gnb_wrap .logo_wrap h1{width:100px;height:150px;margin:0 auto;line-height:150px;}
#gnb_wrap .logo_wrap h1 img{width:100px;height:100px;vertical-align: middle;}


#gnb_wrap .gnb_wrap{max-width:1080px;margin:0 auto;}
#gnb_wrap .gnb_wrap .gnb_menu{text-align:center;height:50px;}
#gnb_wrap .gnb_wrap .gnb_menu > li{float:left;position:relative;width:20%;}
#gnb_wrap .gnb_wrap .gnb_menu > li .gnb_menu_list{color:#c8b29a;display:block;font-size:14px;margin-top:14px;}
 
 </style>
<div id="gnb_wrap">
            <div class="logo_wrap">
                <h1 class="logo"><a href="../mainpage.jsp"><img src="../images/Logo.PNG"></a></h1>
            </div>
            <div class="gnb_wrap">
                <ul class="gnb_menu">
                    <li><a href="membershipMgr.jsp" class="gnb_menu_list">회원권신청현황</a>                        
                    </li>

                    <li><a href="Index.jsp" class="gnb_menu_list">관리자홈</a>                        
                    </li>
                    
                    <li><a href="AdminLogout.jsp" class="gnb_menu_list">관리자 로그아웃</a>                 
                    </li>
                          
                    <li><a href="MemberMgr.jsp" class="gnb_menu_list">회원 관리</a>                    
                    </li>
                    
                    <li><a href="ProductMgr.jsp" class="gnb_menu_list">강사관리</a>
                    </li>
 					<li><a href="OrderMgr.jsp" class="gnb_menu_list">게시판관리</a>
                    </li>
                </ul>
            </div>
    </div> 
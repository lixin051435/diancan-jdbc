<%@ page language="java" contentType="text/html; charset=gb2312" pageEncoding="gb2312"%>
<header class="top-header" id="top-header-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-9 col-sm-7">
                <div class="list-inline">
                    <a href="tel:18752223920"><i class="fa fa-phone"></i>电话：18752223920</a>
                    <a href="tel:info@themevessel.com"><i class="fa fa-envelope"></i>邮箱：18752223920@qq.com</a>
 
                </div>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-5">
                <ul class="top-social-media pull-right">
                    <li>
                        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li>
                        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li>
                        <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
                    </li>
                    <li>
                        <a href="#" class="linkedin"><i class="fa fa-linkedin"></i> </a>
                    </li>
                    <li>
                        <a href="#" class="rss"><i class="fa fa-instagram"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>

<header class="main-header fixed-header-2">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand company-logo" href="index.jsp">
                <img src="img/logos/quanshui.jpg" alt="logo">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav header-ml">
                   <li class="nav-item dropdown active">
                        <a class="nav-link " href="index.jsp" id="navbarDropdownMenuLink"  aria-haspopup="true" aria-expanded="false">
                         <font size="2px" color=#74787c><b>
                                                首页
                         </b></font>
                        </a>
                      
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="news.jsp?lb=站内新闻" id="navbarDropdownMenuLink2" aria-haspopup="true" aria-expanded="false">
                         <font size="2.5px" color=#74787c><b>
                                                站内新闻
                         </b></font>
                        </a>
                    </li>
					
                    <li class="nav-item dropdown megamenu-li">
                        <a class="nav-link" href="userreg.jsp" id="dropdown01"  aria-haspopup="true" aria-expanded="false">
						<font size="2.5px" color=#74787c><b>
                                                用户注册
                         </b></font>
						</a>          
                    </li>
					
					
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink6" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <font size="2.5px" color=#74787c><b>
                                                在线留言
                         </b></font>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li><a class="dropdown-item" href="lyblist.jsp">留言列表</a></li>
                            <li><a class="dropdown-item" href="lyb.jsp">在线留言</a></li>
                        </ul>
                    </li>
					
			  <li class="nav-item dropdown">
                        <a class="nav-link" href="prolist.jsp" id="navbarDropdownMenuLink7"  aria-haspopup="true" aria-expanded="false">
                         <font size="2.5px" color=#74787c><b>
                                                菜品列表
                         </b></font>
                        </a>
         
                    </li>
					
					
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="dx_detail.jsp?lb=系统简介" id="navbarDropdownMenuLink7"  aria-haspopup="true" aria-expanded="false">
                         <font size="2.5px" color=#74787c><b>
                                                系统简介
                         </b></font>
                        </a>
         
                    </li>
					
						          <li class="nav-item dropdown">
                        <a class="nav-link" href="admin/login.jsp" id="navbarDropdownMenuLink7"  aria-haspopup="true" aria-expanded="false">
                           <font size="2.5px" color=#74787c><b>
                                                系统后台
                         </b></font>
                        </a>
         
                    </li>
                </ul>
				
				
                <ul class="navbar-nav ml-auto">
				
				 <%
						if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
						{
					 %>
        
			   
			          <li class="nav-item ">
                        <a class="nav-link" href="userlog.jsp"> <font size="3px" color=darkred><b>登录</b> </font></a> 
                       
                    </li>
					
			          <li class="nav-item ">
                        <a class="nav-link" href="userreg.jsp"><font size="3px" color=darkblue><b><b>注册</b></font> </a> 
                       
                    </li>
				  	<%
							}
						else
							{
						%> 
				 
			          <li class="nav-item  nav-link">
       用户 ：<%=request.getSession().getAttribute("username")%>，权限:<%=request.getSession().getAttribute("cx")%>
                 
                 
                        <a href="admin/logout.jsp"><font size="3px" color=darkred><b>登出</font></b></a> |
                        <a href="admin/main.jsp"><font size="3px" color=darkblue><b>购物车</font></b></a>
                       
                    </li>
			 
			
				         <%
							}
						%>
				  
             
                </ul>
            </div>
        </nav>
    </div>
</header>

<!-- Main header end -->

<!-- Sub banner start -->
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="">
          
         
        </div>
    </div>
</div>
<!-- Sub Banner end -->
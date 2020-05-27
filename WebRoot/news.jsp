<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.Date" %>
 <%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>

<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<%
String sql="";
String lb=new String(request.getParameter("lb").getBytes("8859_1"));

if (lb==null)
{
	lb="站内新闻";
}
 %>
 

<!DOCTYPE html>
<html lang="zxx">
<head>
    <title><%=lb%></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="gb2312">

    <!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-submenu.css">

    <link rel="stylesheet" type="text/css" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/leaflet.css" type="text/css">
    <link rel="stylesheet" href="css/map.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" type="text/css" href="fonts/linearicons/style.css">
    <link rel="stylesheet" type="text/css"  href="css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css"  href="css/dropzone.css">
    <link rel="stylesheet" type="text/css"  href="css/slick.css">

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="css/skins/default.css">

    <!-- Favicon icon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" >

    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,300,700">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="css/ie10-viewport-bug-workaround.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script  src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script  src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script  src="js/html5shiv.min.js"></script>
    <script  src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="page_loader"></div>

<!-- Top header start -->
<%@ include file="qttop2.jsp"%>
<!-- Top header end -->

<!-- Main header start -->

<!-- Main header end -->

 
<!-- Sub Banner end -->

<!-- Blog body start -->
<div class="blog-body content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <div class="row">
				
				
				
                 
						  <%
					 				int curpage=1;//当前页
									int page_record=4;//每页显示的记录数
									int zgs=0;
									int zys=0;
									//用下面的方法（sql查询完成，速度快）
									String hsgnpage=request.getParameter("page");
									String fysql="select count(id) as ss from xinwentongzhi where leibie='"+lb+"'";
									ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
								  while(RS_resultfy.next())
								  {
										  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
										  if(zgs%page_record>0)
										    zys=zgs/page_record+1;
										   if(zgs%page_record==0)
										   zys=zgs/page_record;
								  }
									if (hsgnpage!=null)
									{
									curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
									}
									else
									{
									curpage=1;
									}
									if (curpage==0)
									{
										curpage=1;
									}
									if(curpage>zys)
									{
										curpage=zys;
									}
					
					
								
								if(((curpage-1)*page_record)==0 || curpage==0)
								   {
								  sql="select  * from  xinwentongzhi where leibie='"+lb+"' and 1=1 ";
								   }
								   else
								   {
								   String tempsql="select  id from  xinwentongzhi where leibie='"+lb+"'  order by id desc limit 0,"+(curpage-1)*page_record+"";
								   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
								   int tempid=0;
								   String tempidstring="";
								   while(tempRS_result.next())
								   {
										tempidstring=tempidstring+tempRS_result.getString("id")+",";
								   }
								   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
								  sql="select  * from  xinwentongzhi where leibie='"+lb+"' and id not in ("+tempidstring+")   ";
								  }

								if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}
								else{sql=sql+" and biaoti like '%"+new String(request.getParameter("biaoti").getBytes("8859_1"))+"%'";}
								 
								 
								 sql=sql+" order by id desc limit 0,"+page_record+"";

								 ResultSet RS_result=connDbBean.executeQuery(sql);
								 String id="";
								 String biaoti="";
								 String leibie="";
								 String neirong="";
								 String tianjiaren="";
								 String shouyetupian="";
								 String dianjilv="";
								 Date addtime;
								 int i=0;
					
							 while(RS_result.next())
								{
								     i=i+1;
									 id=RS_result.getString("id");
									 biaoti=RS_result.getString("biaoti");
									 leibie=RS_result.getString("leibie");
									 neirong=RS_result.getString("neirong");
									 tianjiaren=RS_result.getString("tianjiaren");
									 shouyetupian=RS_result.getString("shouyetupian");
									 dianjilv=RS_result.getString("dianjilv");
									 addtime=RS_result.getDate("addtime");
								   if(neirong.length() >=50)
										{
										neirong=neirong.substring(0,50);
										}
										 
  
								 addtime=RS_result.getDate("addtime");
								 SimpleDateFormat formatnian=new SimpleDateFormat("yyyy");
								 String s_nian=formatnian.format(addtime);						 
								 SimpleDateFormat formatyue=new SimpleDateFormat("MM");
								 String s_yue=formatyue.format(addtime);
								 SimpleDateFormat formatri=new SimpleDateFormat("dd");
								 String s_ri=formatri.format(addtime);
							%>
					
                    <div class="col-lg-6 col-md-6">
                        <div class="blog-2">
                            <div class="blog-photo">
                                <img src="<%=shouyetupian %>" width="250" height="100" alt="small-blog" >
                           
                             
                            </div>
                            <div class="detail">
                        
                                <h4>
                                 <a href="gg_detail.jsp?id=<%=id %>"><%=biaoti %></a>
                                </h4>
								
								        <div class="post-meta clearfix">
                                    <ul>
                                        <li>
                                            <strong> <%=tianjiaren %></strong>
                                        </li>
                                        <li class="float-right mr-0"> <i class="flaticon-comment"></i> <%=addtime %></li>
                                       
                                    </ul>
                                </div>
                                <p> 
							 <%=neirong %>
								</p>
                            </div>
                        </div>
                    </div>
				       <%
			  }
			   %>	
					 
					
                </div>
				
				
                <!-- Page navigation start -->
                <div class="pagination-box p-box-2 text-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                 <a href="news.jsp?page=1&lb=<%=lb%>" >首页<i class="fa fa-angle-left"></i></a></li>
                            <li class="page-item"> 
							<a href="news.jsp?page=<%= curpage-1%>&lb=<%=lb%>" ><<</a></li>	 
                         <li class="page-item"> <a href="news.jsp?page=<%= curpage+1%>&lb=<%=lb%>" >>></a></li>
						     <li class="page-item"> <a href="news.jsp?page=<%=zys %>&lb=<%=lb%>">末页</a></li>
                         
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-right">
     
					  <%@ include file="qtleft.jsp"%>
					
					
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Blog body end -->

 
<!-- Intro section end -->
  <%@ include file="qtdown.jsp"%>
 

<!-- Full Page Search -->
<div id="full-page-search">
    <button type="button" class="close">XX</button>
    <form action="index.html#">
        <input type="search" value="" placeholder="type keyword(s) here" />
        <button type="submit" class="btn btn-sm button-theme">Search</button>
    </form>
</div>

<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script  src="js/bootstrap-submenu.js"></script>
<script  src="js/rangeslider.js"></script>
<script  src="js/jquery.mb.YTPlayer.js"></script>
<script  src="js/bootstrap-select.min.js"></script>
<script  src="js/jquery.easing.1.3.js"></script>
<script  src="js/jquery.scrollUp.js"></script>
<script  src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script  src="js/leaflet.js"></script>
<script  src="js/leaflet-providers.js"></script>
<script  src="js/leaflet.markercluster.js"></script>
<script  src="js/dropzone.js"></script>
<script  src="js/slick.min.js"></script>
<script  src="js/jquery.filterizr.js"></script>
<script  src="js/jquery.magnific-popup.min.js"></script>
<script  src="js/jquery.countdown.js"></script>
<script  src="js/maps.js"></script>
<script  src="js/app.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script  src="js/ie10-viewport-bug-workaround.js"></script>
<!-- Custom javascript -->
<script  src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
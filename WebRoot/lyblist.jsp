<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>${initParam.ProjectTitle}</title>
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
	<script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
  
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
										int page_record=5;//每页显示的记录数
										int zgs=0;
										int zys=0;
										//用下面的方法（sql查询完成，速度快）
										String hsgnpage=request.getParameter("page");
										String fysql="select count(id) as ss from liuyanban ";
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
										//out.print(curpage);
										String sql;
										
						
						
						
						if(((curpage-1)*page_record)==0 || curpage==0)
						   {
						  sql="select  * from  liuyanban where   1=1 ";
						   }
						   else
						   {
						   String tempsql="select  id from  liuyanban  order by id desc limit 0,"+(curpage-1)*page_record+"";
						   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
						   int tempid=0;
						   String tempidstring="";
						   while(tempRS_result.next())
						   {
								tempidstring=tempidstring+tempRS_result.getString("id")+",";
						   }
						   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
						  sql="select  * from  liuyanban  where id not in ("+tempidstring+")   ";
						  }
										
										
										
										
						 sql=sql+" order by id desc limit 0,"+page_record+"";
										  
						
						
						  ResultSet RS_result=connDbBean.executeQuery(sql);
						  String id="";
						 String nicheng="";
						 String xingbie="";
						 String QQ="";
						 String youxiang="";
						 String dianhua="";
						 String neirong="";
						 String huifuneirong="";
						 String addtime="";
						 int i=0;
						 
						 
						 
						 
						 while(RS_result.next()){
						 i=i+1;
						 id=RS_result.getString("id");
						nicheng=RS_result.getString("cheng");
						xingbie=RS_result.getString("xingbie");
						QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");
						dianhua=RS_result.getString("dianhua");neirong=RS_result.getString("neirong");huifuneirong=RS_result.getString("huifuneirong");
						 addtime=RS_result.getString("addtime");
						 
						 
						%>
                    
                          <table width="100%" border="0" class="newsline" align="center" cellpadding="3" cellspacing="1" bordercolor="#B8D8E8" style="border-collapse:collapse">
                         
                          <tr>
                            <td width="11" rowspan="3" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                            <td width="85" rowspan="3" align="center" valign="middle">
							<img src="img/<%=xingbie%>.gif" width="80" height="80" />
							
							</td>
                            <td height="20" colspan="2" align="left" valign="middle">&nbsp; &nbsp; 留言于: <%=addtime%> &nbsp;</td>
                            <td width="12" rowspan="3" valign="top" style="width: 10px"><!--DWLayoutEmptyCell-->&nbsp;</td>
                          </tr>
                          <tr>
                            <td height="78" align="left" valign="top">&nbsp;<%=neirong%></td>
                            <td align="left" valign="top"><p>回复：</p>
                                <p><%=huifuneirong%></p></td>
                          </tr>
                          <tr>
                            <td colspan="2" align="left" valign="middle" style="height: 25px">&nbsp; &nbsp;
							昵称：<%=nicheng%>&nbsp; &nbsp;
							电话：<%=dianhua%>&nbsp;&nbsp;
							邮箱：<%=youxiang%>&nbsp;&nbsp;
							</td>
                          </tr>
  					   <%}%>
                        </table>
						 
						 
						 
						 
						 
                          <p align="center"> 
						  
						  &nbsp;&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　
						 <a href="lyblist.jsp?page=1">首页</a>
						 　<a href="lyblist.jsp?page=<%= curpage-1%>">上一页</a>　
						   <a  href="lyblist.jsp?page=<%= curpage+1%>">下一页</a>
						   　<a href="lyblist.jsp?page=<%=zys %>">尾页</a>　当前第<FONT  color=red><%=curpage %></FONT>页/共<FONT 
                        color=red><%=zys %></FONT>页</p>
                          </p>
                          <p align="center">&nbsp;</p>
						
						
			 
					 
					
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
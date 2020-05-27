<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<%@ page language="java" import="java.util.Date" %>
 <%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>

  <%
  String id=request.getParameter("id");
   %>
   
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>网上点餐系统</title>
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

<!-- Pricing tables start -->
<div class="pricing-tables content-area">
    <div class="container">
     	       <%
  String sql="select * from shangpinxinxi where id="+id;
  String bianhao="";String mingcheng="";String leibie="";String tupian="";String beizhu="";String jiage="";String issh="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  jiage=RS_result.getString("jiage"); 
  bianhao=RS_result.getString("bianhao");
  mingcheng=RS_result.getString("mingcheng");
  leibie=RS_result.getString("leibie");
  tupian=RS_result.getString("tupian");
 // kucun=RS_result.getString("kucun");
  issh  =RS_result.getString("issh");
  beizhu=RS_result.getString("beizhu");
  
  }
   %>
        <div class="main-title text-center">
            <h1> <%=mingcheng%></h1>
           
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="pricing-1">
                    <div class="title"> </div>
                    <div class="content">
                        <ul>
                              <div class="blog-photo">
                                <img src="<%=tupian %>" width="350" height="250" alt="small-blog" >
                           
                             
                            </div>
                          <table align="center" border="0" bordercolor="#a5dfc6" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="96%">
                                <tr>
                                    <td align="center" height="33" class="STYLE2">
                                       
                                      类别： <%=leibie%>         价格：<%=jiage%>元
                                      </td>
                                </tr>
                                
                                <tr>
                                    <td align="left" height="110">
                                    介绍：
                             <%=beizhu%>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                    
                                    		<font color="red">
										  <a href="gwcadd.jsp?bianhao=<%=bianhao%>&mingcheng=<%=mingcheng %>&tupian=<%=tupian %>&jiage=<%=jiage %>" onClick="javascript:return confirm('确定要在线订餐?');"> 

                               订餐</a>
									</font>
									
									
										  <a href="pinglunlist.jsp?id=<%=id%>"> 查看评论</a>
						 
                                	 
										  <a href="pinglunadd.jsp?id=<%=id%>"> 在线评论</a>
								 
                                
                                </tr>
                            </table>
                        </ul>
                    </div>
              
                </div>
            </div>
                
           
        </div>
    </div>
</div>
<!-- Pricing tables end -->

 

<!-- Footer start -->
 
   <%@ include file="qtdown.jsp"%>
<!-- Footer end -->

<!-- Full Page Search -->
<div id="full-page-search">
    <button type="button" class="close">×</button>
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
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
  connDbBean.executeUpdate("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
   %> 
   
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>详情</title>
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
  String sql="select * from xinwentongzhi where id="+id;
  String biaoti="";String leibie="";
  String neirong="";
  String tianjiaren="";
    String dianjilv="";
     Date addtime;
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  biaoti=RS_result.getString("biaoti");
  leibie=RS_result.getString("leibie");
  neirong=RS_result.getString("neirong");
  tianjiaren=RS_result.getString("tianjiaren");
  dianjilv=RS_result.getString("dianjilv");
  		 addtime=RS_result.getDate("addtime");
  		 
  		 	 addtime=RS_result.getDate("addtime");
								 SimpleDateFormat formatnian=new SimpleDateFormat("yyyy-mm-dd");
								 String s_riqi=formatnian.format(addtime);						 
 
   %>
        <div class="main-title text-center">
            <h1> <%=biaoti%></h1>(被访问<%=dianjilv%>次)
           
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="pricing-1">
                    <div class="title"> </div>
                    <div class="content">
                        <ul>
                          <table align="center" border="0" bordercolor="#a5dfc6" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="96%">
                                <tr>
                                    <td align="center" height="33" class="STYLE2">
                                       
                                      作者： <%=tianjiaren%>
									  发布日期：<%=s_riqi%>
                                      </td>
                                </tr>
                                
                                <tr>
                                    <td align="left" height="110">
                             <%=neirong%>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <input name="Submit5" onClick="javascript:history.back();" style="border-right: #000000 1px solid;border-top: #000000 1px solid; border-left: #000000 1px solid; color: #666666;border-bottom: #000000 1px solid; height: 22px" type="button" value="返回" /></td>
                                </tr>
                            </table>
                        </ul>
                    </div>
              
                </div>
            </div>
                    <%}%>
           
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
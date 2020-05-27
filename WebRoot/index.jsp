<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.Date" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
 <%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>

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
</head>
<body>
<div class="page_loader"></div>

<!-- Top header start -->
 <font face="Arial Unicode MS"><%@include file="qttop.jsp"%></font>
 
 
 


<!-- Blog section start -->
<div class="blog-section content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1><font color="#426ab3">站内新闻</h1></font>
   
        </div>
        <div class="row">
		
		
	 
			     <%
								String sql="";
								sql="select  id,biaoti,addtime,shouyetupian from xinwentongzhi where leibie='站内新闻' order by id desc limit 0,3";
						    	String id="";
 String biaoti="";
 String shouyetupian="";
 Date addtime= new Date();
 String neirong="";
 int i=0;

  ResultSet RS_result=connDbBean.executeQuery(sql);

while(RS_result.next()){						
 i=i+1;
 id=RS_result.getString("id");

biaoti=RS_result.getString("biaoti");
shouyetupian=RS_result.getString("shouyetupian");

 if(biaoti.length() >=25)
{
biaoti=biaoti.substring(0,25);
}

 if(neirong.length() >=60)
{
neirong=neirong.substring(0,60);
}
 addtime=RS_result.getDate("addtime");

							%>
					
          <div class="col-lg-4 col-md-6">
                <div class="blog-2">
                    <div class="blog-photo">
                        <img src="<%=shouyetupian %>"   height="200" width="350" alt="small-blog";>
                       
                        <div class="profile-user">
           
                        </div>
                    </div>
                    <div class="detail">
            
                        <h4>
                            <a href="gg_detail.jsp?id=<%=id%>">
                               <%=biaoti%>
                            </a>
                        </h4>
                        <p>
				    <%=neirong%>
						
						</p>
                    </div>
                </div>
            </div> 
		         


    			         <%
							}
							%>
			
			
        </div>
    </div>
</div>
<!-- Blog section end -->

<!-- advantages start -->
<div class="advantages content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title-2 text-center">
            <h1><font color="#426ab3">系统简介</font></h1>
          
        </div>
        <div class="row">
            <div class=" col-sm-12">
                <div class="advantages-box">
                    <div class="icon">
                        <i class="flaticon-pin"></i>
                    </div>
                    <div class="detail" >
    				<%
							String sqlxtgg="select * from dx where leibie='系统简介'";
							 ResultSet RS_resultxtgg=connDbBean.executeQuery(sqlxtgg);
							 while(RS_resultxtgg.next())
							 {
							 out.print(RS_resultxtgg.getString("content"));
							 }
					%>

                    </div>
                </div>
            </div>
          
		   
			
        </div>
    </div>
</div>
<!-- advantages end -->
 


 
<!-- Featured Properties start -->
<div class="featured-properties content-area-14">
    <div class="container">
     <div class="main-title">
            <h1><font color="#426ab3">推荐美食</font></h1>
   
        </div>
        <div class="row">
		
		
		  <%
					  
  				String sqltp="";
 				 sqltp="select  * from shangpinxinxi where tupian<>'' order by id desc limit 0,3";
						 
							ResultSet  RS_resulttp=connDbBean.executeQuery(sqltp);
							String t_id="";
							String  t_mingcheng="";
							 String t_tupian="";
							 String t_jiage="";
							 int t_i=0;
							 while(RS_resulttp.next()){
							 t_i=t_i+1;
							 t_id=RS_resulttp.getString("id");
							t_mingcheng=RS_resulttp.getString("mingcheng");
							t_tupian=RS_resulttp.getString("tupian");
							t_jiage=RS_resulttp.getString("jiage");
					  %>
            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <div class="property-thumbnail">
                        <a href="prodetail.jsp?id=<%=t_id%>" class="property-img">
                            <div class="tag"><%=t_mingcheng%></div>
                            <div class="price-box"><span><%=t_jiage%>元</span>  </div>
                            <img class="d-block w-100" src="<%=t_tupian%>" width="350" height="200" alt="properties">
                        </a>
                    </div>
              
                </div>
            </div>
			
			
		  <%
		  }
		   %>
				
			
		 
			  
           
			
			
        </div>
    </div>
</div>
<!-- Featured Properties end -->

 

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
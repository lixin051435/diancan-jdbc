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
    <title>用户注册</title>
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
  <script language="javascript">
	function check()
{
	if(document.form1.yonghuming.value==""){alert("请输入账号");document.form1.yonghuming.focus();return false;}
	if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}
	if(document.form1.mima.value!=document.form1.mima2.value){alert("对不起，两次密码不一致，请重试");document.form1.mima.focus();return false;}
	if(document.form1.xingming.value==""){alert("请输入姓名");document.form1.xingming.focus();return false;}
 

}
    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }	
</script>
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
				
				
				
              
                         
						 <form name="form1" method="post" action="yonghuzhuce_add_post.jsp">
                        <table width="98%" border="0" class="newsline" align="left" cellpadding="3" cellspacing="1" bordercolor="#529C33" style="border-collapse:collapse">
                          <tr>
                            <td width="100">用户名：</td>
                            <td><input name='yonghuming' type='text' id='yonghuming' value='' />
                              &nbsp;*</td>
                          </tr>
                          <tr>
                            <td  width="100">密码：</td>
                            <td><input name='mima' type='password' id='mima' value='' />
                              &nbsp;*</td>
                          </tr>
                          <tr>
                            <td  width="100">姓名：</td>
                            <td><input name='xingming' type='text' id='xingming' value='' />
                              &nbsp;*</td>
                          </tr>
                          <tr>
                            <td  width="100">性别：</td>
                            <td><select name='xingbie' id='xingbie' style=" height:19px; border:solid 1px #000000; color:#666666">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select></td>
                          </tr>
                     
                          <tr>
                            <td  width="100">电话：</td>
                            <td><input name='dianhua' type='text' id='dianhua' value='' /></td>
                          </tr>
                          <tr>
                            <td  width="100">身份证：</td>
                            <td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' /></td>
                          </tr>
						  
                          <tr>
                            <td  width="100">地址：</td>
                            <td><input name='dizhi' type='text' id='dizhi' value='' size='40' /></td>
                          </tr>
						  
                          <tr>
                            <td  width="100"> 备注：</td>
                            <td><textarea name='beizhu' cols='50' rows='5' id='beizhu'></textarea></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td><input type="submit" name="Submit5" value="提交" onClick="return check();" style=" height:24px; border:solid 1px #000000; color:#666666"/>
                                <input type="reset" name="Submit22" value="重置" style=" height:24px; border:solid 1px #000000; color:#666666" /></td>
                          </tr>
                        </table>
                      </form>
					 
					
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
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head  >
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>我的购物车</title>

<link rel="stylesheet" href="css/index.css" type="text/css" media="screen" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/tendina.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
 
</head>
<frameset rows="60,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="top.jsp" name="topFrame" scrolling="no">
  <frameset cols="180,*" name="btFrame" frameborder="NO" border="0" framespacing="0">
    <frame src="mygo.jsp" noresize name="menu" scrolling="yes">
    <frame src="sy.jsp" noresize name="main" scrolling="yes">
  </frameset>
</frameset>
<noframes>
	<body>您的浏览器不支持框架！</body>
</noframes>
</html>
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>${initParam.ProjectTitle}</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
</head>

<body style="background:#fff">

   <form name="form1" method="post" action="adminyanzheng.jsp">
 <div class="nav_top">
	<div class="nav_tcon">
    
        <div class="logoname">账号登录</div>
    </div>
</div>
<div class="logo_content">
	<div class="logo_ccon">
    	<img class="logobei" src="images/logobei.jpg" />
        <div class="logo_enter">
        	<span style="border-bottom:solid 1px #cfcfcf">登录</span>
            <span>登录名：</span>
            <input id="username" name="username" class="username" type="text" placeholder="用户名" />
            <span>登录密码：</span>
            <input id="pwd" name="pwd" class="pwd" type="password" placeholder="登录密码" />
			<span>权限：
          	<select name="cx" id="cx" style=" float:left;width:260px; margin:0 0px; height:40px; border:solid 1px #cfcfcf; text-indent:0.5em; font-size:16px;">
                <option value="超级管理员">超级管理员</option>
          
              </select></span>
            <button type="submit">登&nbsp;&nbsp;录</button>
          
          
        </div>
    </div>
</div>
    </form>
</body>
</html>

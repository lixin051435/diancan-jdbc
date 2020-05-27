<%@ page language="java"  pageEncoding="gb2312" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("gb2312"); 
response.setCharacterEncoding("gb2312"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
    

  </head>
  
  <body>
  <%
 

String yonghuming=request.getParameter("yonghuming");
String mima=request.getParameter("mima");
String xingming=request.getParameter("xingming");
String xingbie=request.getParameter("xingbie");
 
String dianhua=request.getParameter("dianhua");
String shenfenzheng=request.getParameter("shenfenzheng");
String dizhi=request.getParameter("dizhi");
String beizhu=request.getParameter("beizhu");

ResultSet RS_result=connDbBean.executeQuery("select * from  yonghuzhuce  where yonghuming='"+yonghuming+"'");

 if(RS_result.next())
{
out.print("<script>alert('该用户名已经存在,请换其他名称的用户名!');window.history.go(-1);</script>");
	}
else{

	
  	  	String sql="insert into yonghuzhuce(yonghuming,mima,xingming,xingbie,dianhua,shenfenzheng,dizhi,beizhu) values('"
		+yonghuming+"','"+mima+"','"+xingming+"','"+xingbie+"','"+dianhua+"','"+shenfenzheng+"','"+dizhi+"','"+beizhu+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('注册成功');location.href='index.jsp';</script>");
  	  
	}
RS_result.close();

 %>
  </body>
</html>


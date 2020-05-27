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
  
  String sql;
	String yonghuming=request.getParameter("yonghuming");
  String wupinzongjianshu=request.getParameter("wupinzongjianshu");
  String yingfuzonge=request.getParameter("yingfuzonge");
  String fukuanfangshi=request.getParameter("fukuanfangshi");
  String fukuanzhanghao=request.getParameter("fukuanzhanghao");
  
  String fahuodizhi=request.getParameter("fahuodizhi");
  String lianxidianhua=request.getParameter("lianxidianhua");
  String lianxiren=request.getParameter("lianxiren");
  String youbian=request.getParameter("youbian");


 sql="update yonghujiezhang set yonghuming='"+yonghuming+
"',wupinzongjianshu='"+wupinzongjianshu+
"',yingfuzonge='"+yingfuzonge+
"',fukuanfangshi='"+fukuanfangshi+
"',fukuanzhanghao='"+fukuanzhanghao+
"',fahuodizhi='"+fahuodizhi+
"',lianxidianhua='"+lianxidianhua+
"',lianxiren='"+lianxiren+
"',youbian='"+youbian+
"' where id= "+request.getParameter("id");
 //out.print(sql);
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='yonghujiezhang_list.jsp';</script>");
%>
  </body>
</html>



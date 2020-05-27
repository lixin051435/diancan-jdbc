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
  String sql,sql2;
	String yonghuming=request.getParameter("yonghuming");
  String wupinzongjianshu=request.getParameter("wupinzongjianshu");
  String yingfuzonge=request.getParameter("yingfuzonge");
  String fukuanfangshi=request.getParameter("fukuanfangshi");
  String fukuanzhanghao=request.getParameter("fukuanzhanghao");
  
  String fahuodizhi=request.getParameter("fahuodizhi");
  String lianxidianhua=request.getParameter("lianxidianhua");
  String lianxiren=request.getParameter("lianxiren");
  String youbian=request.getParameter("youbian");


  sql2 = "update gwc set fkzt='已付款' where fkzt='未付款' and username='" + request.getSession().getAttribute("username") + "'";
	connDbBean.executeUpdate(sql2);
  sql="insert into yonghujiezhang(yonghuming,wupinzongjianshu,yingfuzonge,fukuanfangshi,fukuanzhanghao,fahuodizhi,lianxidianhua,lianxiren,youbian) values('"
		  +yonghuming+"','"
		  +wupinzongjianshu+"','"
		  +yingfuzonge+"','"
		  +fukuanfangshi+"','"
		  +fukuanzhanghao+"','"
		  +fahuodizhi+"','"
		  +lianxidianhua+"','"
		  +lianxiren+"','"
		  +youbian+"') ";
  

  	connDbBean.executeUpdate(sql);
	  	out.print("<script>alert('付款成功!!');href='dd_list.jsp';</script>");
  
  
  
  

  	  


 %>
  </body>
</html>


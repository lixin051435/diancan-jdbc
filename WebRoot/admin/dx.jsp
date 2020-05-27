
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>

<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>dx</title>
 <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>
     	  <script type="text/javascript" src="admin/ckeditor/ckeditor.js"></script>
  </head>

  <body >
  <%
  String lb=new String(request.getParameter("lb").getBytes("8859_1"));
   %>
  <form name="form1" id="form1" method="post" action="admin/dx_post.jsp?lb=<%=lb %>">
  编辑<%=lb%>:
  <br><br>
  <%
  String sql="select * from dx where leibie='"+lb+"'";
  String contdent="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
contdent=RS_result.getString("content");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>内容：</td><td>
    

			      <textarea rows="20" cols="20" name="neirong"><%=contdent %></textarea>
<script type="text/javascript">CKEDITOR.replace('neirong');</script>
			<input name="lb" type="hidden" id="lb" value="<%=lb%>"></td></tr>
     
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="确定编辑" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



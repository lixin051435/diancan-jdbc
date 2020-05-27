
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
    
    <title>餐品类别</title>
     <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>
  </head>

  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="admin/shangpinleibie_updt_post.jsp?id=<%=id %>">
  修改餐品类别:
  <br><br>
  <%
  String sql="select * from shangpinleibie where id="+id;
  String leibiemingcheng="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  leibiemingcheng=RS_result.getString("leibiemingcheng");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>类别名称：</td><td><input name='leibiemingcheng' type='text' id='leibiemingcheng' value='<%= leibiemingcheng%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>




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
  <p>已有餐品别列表：</p>
  <form name="form1" id="form1" method="post" action="admin/shangpinleibie_list.jsp">
   搜索:编号:
  <input name="bianhao" type="text" id="bianhao" />
 
  <input type="submit" name="Submit" value="查找" /> <a href="admin/shangpinleibie_add.jsp">新增</a>
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td bgcolor="A4B6D7">序号</td>
    <td bgcolor='#A4B6D7'>类别名称</td>
    <td bgcolor="A4B6D7">添加时间</td>
    
    <td bgcolor="A4B6D7">操作</td>
  </tr>
  <%
  String sql="";
  sql="select * from shangpinleibie where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String leibiemingcheng="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
leibiemingcheng=RS_result.getString("leibiemingcheng");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td><%=i %></td>
    <td><%=leibiemingcheng %></td>
    <td><%=addtime %></td>
    <td><a href="admin/shangpinleibie_updt.jsp?id=<%=id%>">修改</a>  <a href="admin/del.jsp?id=<%=id %>&tablename=shangpinleibie" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
  </body>
</html>


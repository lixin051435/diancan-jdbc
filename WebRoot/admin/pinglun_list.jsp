<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String spid=request.getParameter("spid");
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
       <title></title>
       <script type="text/javascript" src="js/Calendar.js"></script>
       <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>
 </head>

<body >

<table width='100%' border='1' align='center' cellpadding='3' cellspacing='1' bordercolor='#00FFFF' style='border-collapse:collapse'>
<tr><td width='14%' bgcolor='A4B6D7'>���</td>
<td width='12%' bgcolor='#A4B6D7'>��ƷID</td>
<td width='44%' bgcolor='#A4B6D7'>��������</td>
<td width='19%' bgcolor='#A4B6D7'>�����</td>
<td width='11%' bgcolor='A4B6D7'>����</td>
</tr>
<% 
 
 String sql="select  * from  pinglun  where spid="+spid;

 ResultSet RS_result=connDbBean.executeQuery(sql); 
 String id="";
 
String neirong="";
String addby="";
int i=0;
 while(RS_result.next())
 { 
 i=i+1;
 id=RS_result.getString("id");spid=RS_result.getString("spid");
neirong=RS_result.getString("neirong");
addby=RS_result.getString("addby");
%>
  <tr> <td><%=i %></td><td><%=spid %></td><td><%=neirong %></td><td><%=addby %></td><td> 
  <a href="admin/del.jsp?id=<%=id %>&tablename=pinglun" onClick="return confirm('���Ҫɾ����')">ɾ��</a> </td> </tr>
  
  <%  }   %></table> 
  <br>�������ݹ�<%=i %>��,<a style='cursor:hand' onclick='javascript:window.print();'>��ӡ��ҳ</a>
  
</body>
</html>



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
    
    <title>��Ʒ���</title>
     <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>

  </head>

  <body >
  <p>���в�Ʒ���б�</p>
  <form name="form1" id="form1" method="post" action="admin/shangpinleibie_list.jsp">
   ����:���:
  <input name="bianhao" type="text" id="bianhao" />
 
  <input type="submit" name="Submit" value="����" /> <a href="admin/shangpinleibie_add.jsp">����</a>
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td bgcolor="A4B6D7">���</td>
    <td bgcolor='#A4B6D7'>�������</td>
    <td bgcolor="A4B6D7">���ʱ��</td>
    
    <td bgcolor="A4B6D7">����</td>
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
    <td><a href="admin/shangpinleibie_updt.jsp?id=<%=id%>">�޸�</a>  <a href="admin/del.jsp?id=<%=id %>&tablename=shangpinleibie" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
  </body>
</html>



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
    
    <title>�ҵĹ��ﳵ�嵥</title>
  <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>


  </head>

<body >
  <p>�ҵĹ��ﳵ�嵥��</p>


  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
    <tr>
      <td width="9%" bgcolor='#A4B6D7'>���</td>
      <td width="13%" bgcolor='#A4B6D7'>����</td>
      <td width="8%" bgcolor='#A4B6D7'>ͼƬ</td>
      <td width="13%" bgcolor="A4B6D7">�۸�</td>
      <td width="10%" bgcolor="A4B6D7">����ʱ��</td>
      <td width="9%" bgcolor="A4B6D7">����</td>
  
      <td width="10%" bgcolor="A4B6D7">�ܶ�</td>

      <td width="9%" bgcolor="A4B6D7">�Ƿ񸶿�</td>
      <td width="9%" bgcolor="A4B6D7">�Ƿ�����</td>
      <td width="10%" bgcolor="A4B6D7">����</td>
    </tr>
    <%
  String sql="";
  sql="select * from gwc where username='"+request.getSession().getAttribute("username")+"'";
    String id;
  sql=sql+" order by id desc";
ResultSet RS_result=connDbBean.executeQuery(sql);
id="";
 String bianhao="";
 String mingcheng="";
 String tupian="";
 String addtime="";
 String jiage="";
 String shuliang="";
 String isfk="";
 String issh="";
 int i=0;
 double ze=0;
 double ze2=0;
 int zgs=0;
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");
mingcheng=RS_result.getString("mingcheng");
tupian=RS_result.getString("tupian");
 addtime=RS_result.getString("addtime");
 jiage=RS_result.getString("jiage");
 shuliang=RS_result.getString("shuliang");
 isfk =RS_result.getString("isfk");
 issh =RS_result.getString("issh");
%>
    <tr>
      <td><%=bianhao %></td>
      <td><%=mingcheng%></td>
      <td><img src="<%=tupian %>" width="89" height="80" /></td>
      <td><%=jiage %></td>
   
      <td><%=addtime %></td>
      <td><%=shuliang %></td>
      <td><%
	  ze=0;
	  ze=Float.valueOf(shuliang).floatValue()*Float.valueOf(jiage).floatValue();
	  out.print(ze);
	  ze2=ze2+ze;
	     zgs=zgs+Integer.parseInt(shuliang);
	  %></td>
	 
	     <td> <%=isfk%> </td>
         <td><%=issh%></td>
      <td><a href="admin/del.jsp?id=<%=id %>&tablename=gwc" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
    </tr>
    <%
  }
   %>
  </table>
<br>
�������ݹ�<%=i %>��,�����ܶ�<%=ze2%>Ԫ��

<a href="admin/yonghujiezhang_add.jsp?zgs=<%=zgs%>&ze2=<%=ze2%>"> ����</a>
<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
</body>
</html>


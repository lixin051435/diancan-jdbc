
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
    
    <title>������Ϣ</title>   <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>

  </head>

<body >
  <p>���н�����Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="admin/yonghujiezhang_list.jsp">
   ����:�û���:
     <input name="yonghuming" type="text" id="yonghuming" />
 
  <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="5%" bgcolor="A4B6D7">���</td>
    <td width="8%" bgcolor='#A4B6D7'>�û���</td>
    <td width="7%" bgcolor='#A4B6D7'>��Ʒ�ܼ���</td>
    <td width="8%" bgcolor='#A4B6D7'>Ӧ���ܶ�</td>
    <td width="13%" bgcolor='#A4B6D7'>���ʽ</td>
     <td width="10%" bgcolor='#A4B6D7'>�����ʺ�</td>
    <td width="12%" bgcolor="A4B6D7">��ַ</td>
        <td width="9%" bgcolor='#A4B6D7'>��ϵ�绰</td>
     <td width="7%" bgcolor='#A4B6D7'>��ϵ��</td>
    <td width="12%" bgcolor="A4B6D7">���ʱ��</td>
    <td width="9%" bgcolor="A4B6D7">����</td>
  </tr>
  <%
  String sql="";
  sql="select * from yonghujiezhang where 1=1";
  if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null )
  {}
  else
  {
  	sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming")+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String yonghuming;
 String wupinzongjianshu;
 String yingfuzonge;
 String fukuanfangshi;
 String fukuanzhanghao;
 String fahuodizhi;
 String lianxidianhua;
 String lianxiren;
 String addtime;
 
 
 
 
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
 yonghuming=RS_result.getString("yonghuming");
 wupinzongjianshu=RS_result.getString("wupinzongjianshu");
 yingfuzonge=RS_result.getString("yingfuzonge");
 fukuanfangshi=RS_result.getString("fukuanfangshi");
 fukuanzhanghao=RS_result.getString("fukuanzhanghao");
 fahuodizhi=RS_result.getString("fahuodizhi");
 lianxidianhua=RS_result.getString("lianxidianhua");
 lianxiren=RS_result.getString("lianxiren");
 addtime=RS_result.getString("addtime");
%>
  <tr>
    <td><%=i %></td>
    <td><%=yonghuming %></td>
    <td><%=wupinzongjianshu %></td>
    <td><%=yingfuzonge %></td>
    <td><%=fukuanfangshi %></td>
     <td><%=fukuanzhanghao %></td>
    <td><%=fahuodizhi %></td>
     <td><%=lianxidianhua %></td>
      <td><%=lianxiren %></td>
      <td><%=addtime %></td>
      
    <td><a href="admin/yonghujiezhang_updt.jsp?id=<%=id%>">�޸�</a>  <a href="admin/del.jsp?id=<%=id %>&tablename=yonghujiezhang" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
</body>
</html>



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
    
    <title>结帐信息</title>   <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>

  </head>

<body >
  <p>已有结帐信息列表：</p>
  <form name="form1" id="form1" method="post" action="admin/yonghujiezhang_list.jsp">
   搜索:用户名:
     <input name="yonghuming" type="text" id="yonghuming" />
 
  <input type="submit" name="Submit" value="查找" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="5%" bgcolor="A4B6D7">序号</td>
    <td width="8%" bgcolor='#A4B6D7'>用户名</td>
    <td width="7%" bgcolor='#A4B6D7'>物品总件数</td>
    <td width="8%" bgcolor='#A4B6D7'>应付总额</td>
    <td width="13%" bgcolor='#A4B6D7'>付款方式</td>
     <td width="10%" bgcolor='#A4B6D7'>付款帐号</td>
    <td width="12%" bgcolor="A4B6D7">地址</td>
        <td width="9%" bgcolor='#A4B6D7'>联系电话</td>
     <td width="7%" bgcolor='#A4B6D7'>联系人</td>
    <td width="12%" bgcolor="A4B6D7">添加时间</td>
    <td width="9%" bgcolor="A4B6D7">操作</td>
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
      
    <td><a href="admin/yonghujiezhang_updt.jsp?id=<%=id%>">修改</a>  <a href="admin/del.jsp?id=<%=id %>&tablename=yonghujiezhang" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
</body>
</html>


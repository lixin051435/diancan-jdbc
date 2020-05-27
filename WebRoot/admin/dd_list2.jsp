
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
    
    <title>订单</title>
   <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>

  </head>

<body >
  <p>所有客户的订单列表：</p>


  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
    <tr>
      <td width="5%" bgcolor='#A4B6D7'>编号</td>
      <td width="7%" bgcolor='#A4B6D7'>购买人</td>
      <td width="11%" bgcolor='#A4B6D7'>名称</td>
      <td width="8%" bgcolor='#A4B6D7'>图片</td>
      <td width="6%" bgcolor="A4B6D7">价格</td>
      <td width="8%" bgcolor="A4B6D7">数量</td>
      <td width="9%" bgcolor="A4B6D7">总额</td>
      <td width="13%" bgcolor="A4B6D7">购买时间</td>
       <td width="11%" bgcolor="A4B6D7">是否付款</td>
       <td width="9%" bgcolor="A4B6D7">是否配送</td>
      <td width="13%" bgcolor="A4B6D7">操作</td>
    </tr>
    <%
  String sql="";
  sql="select * from gwc";
  
  sql=sql+" order by id desc";
ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bianhao="";
 String mingcheng="";
 String tupian="";
 String addtime="";
 String jiage="";
 String username="";
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
 username=RS_result.getString("username");
  isfk =RS_result.getString("isfk");
  issh =RS_result.getString("issh");
 
 jiage=RS_result.getString("jiage");shuliang=RS_result.getString("shuliang");
%>
    <tr>
      <td><%=bianhao %></td>
      <td><a href="admin/zengpin_add.jsp?yonghuming=<%=username%>"><%=username%></a></td>
      <td><%=mingcheng %></td>
      <td><img src="<%=tupian %>" width="89" height="80" /></td>
      <td><%=jiage %></td>
      <td><%=shuliang %></td>
      <td><%
	  ze=0;
	  ze=Float.valueOf(shuliang).floatValue()*Float.valueOf(jiage).floatValue();
	  out.print(ze);
	   ze2=ze2+ze;
	   
	   	    zgs=zgs+Integer.parseInt(shuliang);
	  %></td>
	  
      <td><%=addtime %></td>

       <td><a href="admin/fk.jsp?id=<%=id%>&yuan=<%=isfk%>&tablename=gwc" onClick="return confirm('确定要执行此操作？');"><%=isfk%></a></td>
       <td><a href="admin/sh.jsp?id=<%=id%>&yuan=<%=issh%>&tablename=gwc" onClick="return confirm('确定要执行此操作？');"><%=issh%></a></td>
      <td><a href="admin/del.jsp?id=<%=id %>&tablename=gwc" onClick="return confirm('真的要删除？')">删除</a></td>
    </tr>
    <%
  }
   %>
  </table>  
  <br>
以上数据共<%=i %>条,共计总额<%=ze2%>元，
 <a href="admin/yonghujiezhang_add.jsp?zgs=<%=zgs%>&ze2=<%=ze2%>"> 结帐</a>


<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
</body>
</html>


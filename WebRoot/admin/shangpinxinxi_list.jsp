
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
    
    <title>餐品信息</title>     <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>
    

  </head>

<body >
  <p>已有餐品信息列表：</p>
  <form name="form1" id="form1" method="post" action="admin/shangpinxinxi_list.jsp">
   搜索:编号:
  <input name="bianhao" type="text" id="bianhao" />
 
  <input type="submit" name="Submit" value="查找" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="5%" bgcolor="A4B6D7">序号</td>
    <td width="8%" bgcolor='#A4B6D7'>编号</td>
    <td width="15%" bgcolor='#A4B6D7'>名称</td>
    <td width="10%" bgcolor='#A4B6D7'>类别</td>
    <td width="8%" bgcolor='#A4B6D7'>图片</td>
    <td width="10%" bgcolor='#A4B6D7'>价格</td>
    <td width="18%" bgcolor="A4B6D7">添加时间</td>
    <td width="14%" bgcolor="A4B6D7">是否审核</td>
    <td width="12%" bgcolor="A4B6D7">操作</td>
  </tr>
  <%
  String sql="";
 
  
  
  
  int curpage=1;//当前页
				int page_record=6;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from shangpinxinxi";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  zys=zgs/page_record+1;
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
 
 
  
    if(((curpage-1)*page_record)==0 || curpage==0)
   {
  sql="select  * from shangpinxinxi where 1=1 ";
   }
   else
   {
   String tempsql="select  id from shangpinxinxi   order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from shangpinxinxi where id not in ("+tempidstring+")  ";
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";
  }
 sql=sql+" order by id desc  limit 0,"+page_record+"";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bianhao="";String mingcheng="";String leibie="";String tupian="";String beizhu="";
 String addtime="";String jiage="";String issh="";String kucun="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");
mingcheng=RS_result.getString("mingcheng");
leibie=RS_result.getString("leibie");
tupian=RS_result.getString("tupian");
beizhu=RS_result.getString("beizhu");
 addtime=RS_result.getString("addtime");
 jiage=RS_result.getString("jiage");
 issh= RS_result.getString("issh");

 
%>
  <tr>
    <td><%=i %></td>
    <td><%=bianhao %></td><td><%=mingcheng %></td><td><%=leibie %></td><td><img src="<%=tupian %>" width="89" height="80" /></td><td><%=jiage %></td>
    <td><%=addtime %></td>
    <td><a href="admin/sh.jsp?id=<%=id%>&yuan=<%=issh%>&tablename=shangpinxinxi" onClick="return confirm('确定要执行此操作？');"><%=issh%></a></td>
    <td>
	<a href="admin/pinglun_list.jsp?spid=<%=id%>">查看评论</a>    
	<a href="admin/shangpinxinxi_updt.jsp?id=<%=id%>">修改</a>  <a href="admin/del.jsp?id=<%=id %>&tablename=shangpinxinxi" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>

<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="admin/shangpinxinxi_list.jsp?page=1">首页</a>
　<a href="admin/shangpinxinxi_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="admin/shangpinxinxi_list.jsp?page=<%= curpage+1%>">下一页</A>　
<a href="admin/shangpinxinxi_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
</body>
</html>


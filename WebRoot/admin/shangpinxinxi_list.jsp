
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
    
    <title>��Ʒ��Ϣ</title>     <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>
    

  </head>

<body >
  <p>���в�Ʒ��Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="admin/shangpinxinxi_list.jsp">
   ����:���:
  <input name="bianhao" type="text" id="bianhao" />
 
  <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="5%" bgcolor="A4B6D7">���</td>
    <td width="8%" bgcolor='#A4B6D7'>���</td>
    <td width="15%" bgcolor='#A4B6D7'>����</td>
    <td width="10%" bgcolor='#A4B6D7'>���</td>
    <td width="8%" bgcolor='#A4B6D7'>ͼƬ</td>
    <td width="10%" bgcolor='#A4B6D7'>�۸�</td>
    <td width="18%" bgcolor="A4B6D7">���ʱ��</td>
    <td width="14%" bgcolor="A4B6D7">�Ƿ����</td>
    <td width="12%" bgcolor="A4B6D7">����</td>
  </tr>
  <%
  String sql="";
 
  
  
  
  int curpage=1;//��ǰҳ
				int page_record=6;//ÿҳ��ʾ�ļ�¼��
				int zgs=0;
				int zys=0;
				//������ķ�����sql��ѯ��ɣ��ٶȿ죩
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from shangpinxinxi";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  zys=zgs/page_record+1;
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//��ȡ���ݵ�ֵ����Ҫ��ʾ��ҳ
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
    <td><a href="admin/sh.jsp?id=<%=id%>&yuan=<%=issh%>&tablename=shangpinxinxi" onClick="return confirm('ȷ��Ҫִ�д˲�����');"><%=issh%></a></td>
    <td>
	<a href="admin/pinglun_list.jsp?spid=<%=id%>">�鿴����</a>    
	<a href="admin/shangpinxinxi_updt.jsp?id=<%=id%>">�޸�</a>  <a href="admin/del.jsp?id=<%=id %>&tablename=shangpinxinxi" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>

<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="admin/shangpinxinxi_list.jsp?page=1">��ҳ</a>
��<a href="admin/shangpinxinxi_list.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="admin/shangpinxinxi_list.jsp?page=<%= curpage+1%>">��һҳ</A>��
<a href="admin/shangpinxinxi_list.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
</body>
</html>


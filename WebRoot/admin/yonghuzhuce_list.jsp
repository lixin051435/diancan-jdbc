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
    <title>�û�ע��</title>
     <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>
  </head>
  <body >
  <p>�����û�ע���б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����: �û�����<input name="yonghuming" type="text" id="yonghuming" size="15" style='border:solid 1px #000000; color:#666666'/> 
   ������<input name="xingming" type="text" id="xingming" size="15" style='border:solid 1px #000000; color:#666666'/>
   �绰��
   <input name="dianhua" type="text" id="dianhua" size="15" style='border:solid 1px #000000; color:#666666' /> 
   ���֤��<input name="shenfenzheng" type="text" id="shenfenzheng" size="15" style='border:solid 1px #000000; color:#666666' />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="106" align="center" bgcolor="CCFFFF">���</td>
    <td width="143" bgcolor='#CCFFFF'>�û���</td>
    <td width="100" bgcolor='#CCFFFF'>����</td>
    <td width="162" bgcolor='#CCFFFF'>����</td>
    <td width="142" bgcolor='#CCFFFF'>�Ա�</td>
    <td width="146" bgcolor='#CCFFFF'>�绰</td>
    <td width="185" bgcolor='#CCFFFF'>���֤</td>
    <td width="90" align="center" bgcolor="CCFFFF">���</td>
    <td width="159" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
  String sql;
  int curpage=1;//��ǰҳ
				int page_record=10;//ÿҳ��ʾ�ļ�¼��
				int zgs=0;
				int zys=0;
				//������ķ�����sql��ѯ��ɣ��ٶȿ죩
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from yonghuzhuce";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  if((zgs % page_record)==0)
  {
  zys=zgs/page_record;
  }
  else
  {
  	zys=zgs/page_record+1;
  }
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
  sql="select  * from yonghuzhuce where 1=1 ";
   }
   else
   {
   String tempsql="select  id from yonghuzhuce order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from yonghuzhuce where id not in ("+tempidstring+")  ";
  }
  
if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+new String(request.getParameter("yonghuming").getBytes("8859_1"))+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+new String(request.getParameter("xingming").getBytes("8859_1"))+"%'";}

if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+new String(request.getParameter("dianhua").getBytes("8859_1"))+"%'";}
if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+new String(request.getParameter("shenfenzheng").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit 0,"+page_record+"";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String yonghuming="";String mima="";String xingming="";String xingbie="";String dianhua="";String shenfenzheng="";String touxiang="";String dizhi="";String beizhu="";
 String addtime="";String issh="";
 int i=0;
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
yonghuming=RS_result.getString("yonghuming");
mima=RS_result.getString("mima");
xingming=RS_result.getString("xingming");
xingbie=RS_result.getString("xingbie");
dianhua=RS_result.getString("dianhua");
shenfenzheng=RS_result.getString("shenfenzheng");
dizhi=RS_result.getString("dizhi");
beizhu=RS_result.getString("beizhu");
 addtime=RS_result.getString("addtime");
 issh=RS_result.getString("issh");
%>
  <tr>
    <td width="106" align="center"><%=i %></td>
    <td><%=yonghuming %></td>
	<td><%=mima %></td>
	<td><%=xingming %></td>
	<td><%=xingbie %></td>
	<td><%=dianhua %></td>
	<td><%=shenfenzheng %></td>
	<td width="90" align="center"><a href="admin/sh.jsp?id=<%=id%>&yuan=<%=issh%>&tablename=yonghuzhuce" onClick="return confirm('ȷ��Ҫִ�д˲�����');"><%=issh%></a></td>
    <td width="159" align="center"><a href="admin/yonghuzhuce_updt.jsp?id=<%=id%>">�޸�</a>     <a href="admin/yonghuzhuce_detail.jsp?id=<%=id%>">��ϸ</a>    <a href="admin/del.jsp?id=<%=id %>&tablename=yonghuzhuce" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="admin/yonghuzhuce_detail.jsp?id=<%=id%>" target="_blank"></a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="admin/yonghuzhuce_list.jsp?page=1">��ҳ</a>��<a href="admin/yonghuzhuce_list.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="admin/yonghuzhuce_list.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="admin/yonghuzhuce_list.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>

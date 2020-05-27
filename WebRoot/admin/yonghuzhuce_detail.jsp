
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
    
    <title>用户详细</title>
    <script language="javascript" src="js/Calendar.js"></script>
     <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>

  </head>
<script language="javascript">
function check()
{
	fewgidsoidfjdkgds
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>

  用户注册详细:
  <br><br>
  <%
  String sql="select * from yonghuzhuce where id="+id;
  String yonghuming="";
  String mima="";
  String xingming="";
  String xingbie="";
  String dianhua="";
  String shenfenzheng="";
  String dizhi="";
  String beizhu="";
  
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next())
  {
	  yonghuming=RS_result.getString("yonghuming");
	  mima=RS_result.getString("mima");
	  xingming=RS_result.getString("xingming");
	  xingbie=RS_result.getString("xingbie");

	  dianhua=RS_result.getString("dianhua");
	  shenfenzheng=RS_result.getString("shenfenzheng");

	  dizhi=RS_result.getString("dizhi");
	  beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
     
     <tr>
       <td>用户名：</td>
       <td><%=yonghuming%></td>
       <td>密码：</td>
       <td><%=mima%></td>
     </tr>
     <tr>
       <td>性别：</td>
       <td><%=xingbie%></td>
       <td>姓名：</td>
       <td><%=xingming%></td>
     </tr>
     <tr><td width='11%'>身份证：</td><td width='39%'><%=shenfenzheng%></td>
	 <td width='11%'>电话：</td><td width='39%'><%=dianhua%></td></tr>
     <tr><td width='11%'>地址：</td><td colspan="3"><%=dizhi%></td>
       </tr><tr>
         <td width='11%' height="120">备注：</td><td colspan="3"><%=beizhu%></td>       
     <tr>
      <td colspan="4" align="center"><input type="button" name="Submit" value="返回" onClick="javascript:history.back()" /></td>
    </tr>
  </table>

  </body>
</html>



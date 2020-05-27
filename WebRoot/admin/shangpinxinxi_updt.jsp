
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
    <script type="text/javascript" src="admin/js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>

  </head>

  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="admin/shangpinxinxi_updt_post.jsp?id=<%=id %>">
  修改餐品信息:
  <br><br>
  <%
  String sql="select * from shangpinxinxi where id="+id;
  String bianhao="";String mingcheng="";String leibie="";String tupian="";String beizhu="";String jiage="";String kucun="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  jiage=RS_result.getString("jiage"); 
  bianhao=RS_result.getString("bianhao");
  mingcheng=RS_result.getString("mingcheng");
  leibie=RS_result.getString("leibie");
  tupian=RS_result.getString("tupian");

  beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td width="10%">编号：</td><td width="90%"><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' /></td></tr><tr><td>名称：</td><td><input name='mingcheng' type='text' id='mingcheng' value='<%= mingcheng%>' /></td></tr><tr><td>类别：</td><td><select name="leibie" id="leibie">
       <%
       String sql2="select * from shangpinleibie order by id desc";
       ResultSet RS_result2=connDbBean.executeQuery(sql2);
        while(RS_result2.next()){
        %>
       <option value="<%= RS_result2.getString("leibiemingcheng")%>"><%= RS_result2.getString("leibiemingcheng")%></option>
       <%
        }
        %>
     </select></td></tr>
	 <script language="javascript">document.form1.leibie.value='<%=leibie%>';</script>
	 <tr><td>图片：</td><td><input name='tupian' type='text' id='tupian' value='<%=tupian%>' size="50" />
         <input name="button" type="button" onClick="up('tupian')" value="上传"/></td></tr><tr><td>备注：</td><td><textarea name="beizhu" cols="50" rows="5" id="beizhu"><%= beizhu%></textarea></td></tr>
  
         <tr>
           <td>价格：</td>
           <td><input name="jiage" type="text" id="jiage" value="<%=jiage%>">
元</td>
         </tr>
     <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



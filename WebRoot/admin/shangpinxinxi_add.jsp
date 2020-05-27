
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
    
    <title>商品信息</title>     <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>
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
  <SCRIPT language=JavaScript>
function openwin(url, width, height)
{
var Win = window.open(url,"openScript",'width=' + width + ',height=' + height + ',resizable=0,scrollbars=1,menubar=0,status=1');
}
</SCRIPT>
  <body >
  <form name="form1" id="form1" method="post" action="admin/shangpinxinxi_add_post.jsp" >
  添加菜品信息:
  <br><br>
  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td width="12%">编号：</td><td width="88%"><input name='bianhao' type='text' id='bianhao' value='' /></td></tr>
     <tr><td>名称：</td><td><input name='mingcheng' type='text' id='mingcheng' value='' /></td></tr>
     <tr><td>类别：</td>
       <td>
	   <select name="leibie" id="leibie">
       <%
       String sql="select * from shangpinleibie order by id desc";
       ResultSet RS_result=connDbBean.executeQuery(sql);
        while(RS_result.next()){
        %>
       <option value="<%= RS_result.getString("leibiemingcheng")%>"><%= RS_result.getString("leibiemingcheng")%></option>
        <%
        }
        %>
       
       </select>       </td>
     </tr>
     <tr><td>图片：</td><td><input name='tupian' type='text' id='tupian' value='' size="50" />
    <input type="button" value="上传" onClick="up('tupian')"/></td>
     </tr>
     <tr><td>备注：</td><td><textarea name="beizhu" cols="50" rows="8" id="beizhu"></textarea></td></tr>

     <tr>
       <td>价格:</td>
       <td><input name="jiage" type="text" id="jiage">
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



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
    
    <title>商品信息</title>  <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>

    <script type="text/javascript" src="js/popup.js"></script>
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
  
  <form name="form1" id="form1" method="post" action="admin/yonghujiezhang_updt_post.jsp?id=<%=id %>" >
  
  <%
  String sql="select * from yonghujiezhang where id="+id;
  String yonghuming="";
  String wupinzongjianshu="";
  String yingfuzonge="";
  String fukuanfangshi="";
  String fukuanzhanghao="";
  String fahuodizhi="";
  String lianxidianhua="";
  String lianxiren="";
  String youbian="";
  
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  yonghuming=RS_result.getString("yonghuming");
  wupinzongjianshu=RS_result.getString("wupinzongjianshu");
  yingfuzonge=RS_result.getString("yingfuzonge");
  fukuanfangshi=RS_result.getString("fukuanfangshi");
  fukuanzhanghao=RS_result.getString("fukuanzhanghao");
  fahuodizhi=RS_result.getString("fahuodizhi");
  lianxidianhua=RS_result.getString("lianxidianhua");
  lianxiren=RS_result.getString("lianxiren");
  youbian=RS_result.getString("youbian");

  }
   %>
  
  
    修改用户结帐: <br>
  <br>
  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
    <tr>
      <td>用户名：</td>
      <td><input name='yonghuming' type='text' id='yonghuming' value='<%= yonghuming%>' /></td>
    </tr>
    <tr>
      <td>物品总件数：</td>
      <td><input name='wupinzongjianshu' type='text' id='wupinzongjianshu' value='<%= wupinzongjianshu%>' /></td>
    </tr>
    <tr>
      <td>应付总额：</td>
      <td><input name="yingfuzonge" type="text" id="yingfuzonge" value='<%= yingfuzonge%>'></td>
    </tr>
    <tr>
      <td>付款方式：</td>
      <td><select name="fukuanfangshi" id="fukuanfangshi">
        <option value="支付宝">支付宝 </option>
        <option value="中国银行">中国银行 </option>
        <option value="工商银行">工商银行 </option>
        <option value="农业银行">农业银行 </option>
        <option value="建设银行">建设银行 </option>
        <option value="浦发银行">浦发银行 </option>
        <option value="广发银行">广发银行 </option>
        <option value="货到付款">货到付款 </option>
        <option value="上门送货">上门送货 </option>
      </select>
      </td>
    </tr>
    <tr>
      <td>付款帐号：</td>
      <td><input name="fukuanzhanghao" type="text" id="fukuanzhanghao" value='<%= fukuanzhanghao%>'></td>
    </tr>
    <tr>
      <td>收货地址：</td>
      <td><input name="fahuodizhi" type="text" id="fahuodizhi" value='<%= fahuodizhi%>' size="50"> </td>
    </tr>
    <tr>
      <td>联系电话：</td>
      <td><input name="lianxidianhua" type="text" id="lianxidianhua" value='<%= lianxidianhua%>'></td>
    </tr>
    <tr>
      <td>联系人：</td>
      <td><input name="lianxiren" type="text" id="lianxiren" value='<%= lianxiren%>'></td>
    </tr>
    <tr>
      <td>邮编:</td>
      <td><input name="youbian" type="text" id="youbian" value='<%= youbian%>'></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="修改" onClick="return check();" />
          <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
  </form>
  </body>
</html>




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
    
    <title>��Ʒ��Ϣ</title>    <link href="admin/css/css.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","�ļ��ϴ�");
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
  <form name="form1" id="form1" method="post" action="admin/yonghujiezhang_add_post.jsp" >
  �û�����:
  <br><br>
  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr>
     <td>�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%=request.getSession().getAttribute("username") %>' /></td></tr>
     <tr>
       <td>��Ʒ�ܼ�����</td><td><input name='wupinzongjianshu' type='text' id='wupinzongjianshu' value='<%=request.getParameter("zgs") %>' /></td></tr>
     <tr>
       <td>Ӧ���ܶ</td>
       <td><input name="yingfuzonge" type="text" id="yingfuzonge" value='<%=request.getParameter("ze2") %>'></td>
     </tr>
     <tr>
       <td>���ʽ��</td>
       <td><select name="fukuanfangshi" id="fukuanfangshi">
  
       <option value="֧����">֧���� </option>
	   <option value="�й�����">�й����� </option>
	   <option value="��������">�������� </option>
	   <option value="ũҵ����">ũҵ���� </option>
	   <option value="��������">�������� </option>
	   <option value="�ַ�����">�ַ����� </option>
	   <option value="�㷢����">�㷢���� </option>
	   <option value="��������">�������� </option>
	   <option value="�����ͻ�">�����ͻ� </option>

       </select>       </td>
     </tr>
     <tr>
       <td>�����ʺţ�</td>
       <td><input name="fukuanzhanghao" type="text" id="fukuanzhanghao"></td>
     </tr>
     <tr>
       <td>�ջ���ַ��</td>
       <td><input name="fahuodizhi" type="text" id="fahuodizhi" size="50"></td>
     </tr>
     <tr>
       <td>��ϵ�绰��</td>
       <td><input name="lianxidianhua" type="text" id="lianxidianhua"></td>
     </tr>
     <tr>
       <td>��ϵ�ˣ�</td>
       <td><input name="lianxiren" type="text" id="lianxiren"></td>
     </tr>
     <tr>
       <td>�ʱ�:</td>
       <td><input name="youbian" type="text" id="youbian"></td>
     </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


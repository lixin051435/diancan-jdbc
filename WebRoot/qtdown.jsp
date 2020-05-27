<%@ page language="java"  pageEncoding="gb2312"%>
<%@ page language="java" import="java.sql.*" %>

      
 <% java.text.SimpleDateFormat formater = new java.text.SimpleDateFormat("yyyy年MM月dd日");
    String strCurrentTime=formater.format(new java.util.Date());
 %>
 <jsp:useBean id="connDbBeanyqlj" scope="page" class="db.db"/>


<footer class="footer">
    <div class="container footer-inner">
        <div class="row">
         
	
		 
		    <div class="col-md-6 col-sm-6">
                     <div class="footer-item clearfix">
              <font color="#FFFFFF">友情链接：</font>
        
                      
 <%
       		  String sqlyqlj="";
			  sqlyqlj="select  * from youqinglianjie where 1=1";
			  sqlyqlj=sqlyqlj+" order by id desc limit 0,5";
			  ResultSet RS_resultyqlj=connDbBeanyqlj.executeQuery(sqlyqlj);
			  String wangzhanmingcheng="";
			  String wangzhi="";
			  while(RS_resultyqlj.next())
			  {
			      wangzhanmingcheng=RS_resultyqlj.getString("wangzhanmingcheng");
			      wangzhi=RS_resultyqlj.getString("wangzhi");

         %>
 	
					
			
      <a href="<%= wangzhi%>"> <%= wangzhanmingcheng%></a>  &nbsp;&nbsp;
   <%
	 	  } 
	   %>
           
					
                </div>
				
            </div>
           
            
            <div class="col-xl-12 col-lg-12">
                <p class="copy sub-footer"><%= strCurrentTime %> 版权所有：${initParam.ProjectTitle}</p>
            </div>
        </div>
    </div>
</footer>
  
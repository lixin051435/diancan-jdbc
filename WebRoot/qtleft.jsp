<%@ page language="java"  pageEncoding="gb2312"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBeanleft" scope="page" class="db.db"/>
				    <!-- Search box -->
                    <div class="widget search-box">
                        <h3 class="sidebar-title">����</h3>
                        <div class="s-border"></div>
    
						        <form action="news.jsp?lb=վ������"  class="form-inline form-search" method="post" name="formsearch" id="formsearch" >
                            <div class="form-group">
                                <label class="sr-only" for="textsearch2">����ؼ���....</label>
                                <input type="text" class="form-control" id="biaoti" name="biaoti" placeholder="����ؼ���....">
								<input type="hidden" id="lb" name="lb" value="վ������"/>
                            </div>
                            <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    
					
					
					<!-- Recent properties start -->
                    <div class="widget recent-properties">
                        <h3 class="sidebar-title">������Ϣ</h3>
                        <div class="media mb-4">
                        
                            <div class="media-body align-self-center">
                            <marquee border="0" direction="up" height="130" onMouseOut="start()" onMouseOver="stop()"  scrollamount="1" scrolldelay="50">
			 <table width="92%" height="100%"  border="0" align="center"  cellpadding="0" cellspacing="5">
					  <tbody>
						  <tr>
						 	 <td> 					  
						<%
															String sqlxtgg="select * from dx where leibie='ϵͳ����'";
															ResultSet RS_resultxtleft=connDbBeanleft.executeQuery(sqlxtgg);
															 while(RS_resultxtleft.next())
															 {
															 out.print(RS_resultxtleft.getString("content"));
															 }
													%>
					  
					  
					  </td>
					  </tr>
					  </tbody>
					  </table>
		   </marquee>
                            </div>
                        </div>
                          
                    </div>
                    
					
					  
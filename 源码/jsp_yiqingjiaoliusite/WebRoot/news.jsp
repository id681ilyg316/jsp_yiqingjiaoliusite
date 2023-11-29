<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>新冠疫情查询与管理系统</title>
<link rel="stylesheet" type="text/css" href="qtimages/css/wst.css"/>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
<script type="text/javascript" src="qtimages/jquery.js"></script>
<script type="text/javascript" src="qtimages/inc.js"></script>



</head>
 <%
  String lb=request.getParameter("lb");
  //String lb=new String(request.getParameter("lb").getBytes("8859_1"));
%>
<body>

<!--头部代码的开始-->
<%@ include file="qttop.jsp"%>
<!--头部代码的结束-->

<!--子页面banner-->
<div class="scban"></div>
<!--子页面banner-->

<!--页面导航部分的开始-->


<!--页面导航部分的结束-->

<!--主题内容的开始-->
<!--关于新冠疫情查询与管理系统的开始-->
<div class="gywst"> 
  <!--标题的开始-->
  <div class="gywst_title">
    <div class="gywstc">
      <h2><%=lb%></h2>
      <span>News</span></div>
  </div>
  <!--标题的结束--> 
  
  
  
  <!--内容的开始-->
  <div class="gywstnr">
   
<table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#FA9090" class="newsline" style="border-collapse:collapse">
                      <% 
    String url = "news.jsp?lb="+lb; 
    String sql =  "select * from xinwentongzhi where leibie='"+lb+"' ";
	if(request.getParameter("keyword")=="" ||request.getParameter("keyword")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("keyword").trim()+"%'";}

    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,20,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
                    <tr height="35">
                        <td width="29" align="center"><%=i %></td>
                        <td width="428"><a href="gg_detail.jsp?id=<%=map.get("id") %>"><%=map.get("biaoti") %></a></td>
                        <td width="74">被点击<%=map.get("dianjilv") %>次</td>
                        <td width="146" align="center"><%=map.get("addtime") %></td>
                      </tr>
                      <%} %>
                    </table>
                      <br>
 <div class="fy">${page.info } </div>
					  
    <div class="clear"></div>
  </div>
  <!--内容的结束--> 
</div>

<!--主题内容的结束-->

<!--底部的开始-->
<%@ include file="qtdown.jsp"%>
<!--底部的结束-->
</body>
</html>


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>在线留言</title>
<link rel="stylesheet" type="text/css" href="qtimages/css/wst.css"/>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
<script type="text/javascript" src="qtimages/jquery.js"></script>
<script type="text/javascript" src="qtimages/inc.js"></script>




</head>

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
      <h2>留言板</h2>
      <span>GuestBook</span></div>
  </div>
  <!--标题的结束--> 
  
  
  
  <!--内容的开始-->
  <div class="gywstnr">
<% 
    String url = "lyblist.jsp?1=1"; 
    String sql =  "select * from liuyanban  order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,4,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
                         <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#67B41A" class="tb">
                            <!--DWLayoutTable-->
                            <tr>
                              <td style="display:none" width="85" rowspan="4" align="center" valign="middle" bgcolor="#FFFFFF"><img width='70'height='70' src=img/<%=map.get("xingbie") %>.gif border=0> </td>
                              <td height="20" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; &nbsp; 留言于:<%=map.get("addtime") %> &nbsp;</td>
                            </tr>
                            <tr>
                              <td height="78" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;<%=map.get("neirong") %></td>
                            </tr>
                            <tr>
                              <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;昵称：<%=map.get("cheng") %> &nbsp; &nbsp;电话：<%=map.get("dianhua") %>&nbsp;&nbsp;邮 箱:<%=map.get("youxiang") %> &nbsp; QQ:<%=map.get("QQ") %>&nbsp; &nbsp; </td>
                            </tr>
                            <tr>
                              <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;管理员回复：<%=map.get("huifuneirong") %></td>
                            </tr>
                          </table>
                          <%} %>
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


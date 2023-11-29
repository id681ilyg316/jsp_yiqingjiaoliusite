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
      <span>Details</span></div>
  </div>
  <!--标题的结束--> 
  
  
  
  <!--内容的开始-->
  <div class="gywstnr">
   
 <%
    HashMap m = new CommDAO().getmaps("leibie",lb,"dx");
     %>
                      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
                        <tr>
                          <td height="110" align="left"><%=m.get("content") %></td>
                        </tr>
                        <tr>
                          <td height="33" align="right"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();" ></td>
                        </tr>
                      </table>
                     
					  
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


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
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>




	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
  </head>

<body class="body">

  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yimiao");
     %>
<%@ include file="qttop.jsp"%>

<div class="scban"></div>

<div class="gywst"> 
 
  <div class="gywst_title">
    <div class="gywstc">
      <h2>新冠疫苗:</h2>
      <span>Details</span></div>
  </div>
 
  <div class="gywstnr">

    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
   <tr>     <td  rowspan=6 align=center><a href=<%=m.get("tupian")%> target=_blank><img src=<%=m.get("tupian")%> width=228 height=215 border=0></a></td>
     
<td width='11%' height=44>疫苗编号：</td><td width='39%'><%=m.get("yimiaobianhao")%></td>
</tr><tr>
<td width='11%' height=44>疫苗名称：</td><td width='39%'><%=m.get("yimiaomingchen")%></td>
</tr><tr>
<td width='11%' height=44>公司名称：</td><td width='39%'><%=m.get("gongsimingchen")%></td>
</tr><tr>
<td width='11%' height=44>副作用：</td><td width='39%'><%=m.get("fuzuoyong")%></td>
</tr><tr>
<td width='11%' height=44>接种点：</td><td width='39%'><%=m.get("jiezhongdian")%></td>
</tr><tr>
<td width='11%' height=44>介绍：</td><td width='39%'><%=m.get("jieshao")%></td>
</tr><tr>
<td colspan=3 align=center><input type=button name=Submit5 value=返回 class="button2"  onClick="javascript:history.back()" /></td></tr>
    
  </table>

<div class="clear"></div>
  </div>
 
</div>


<%@ include file="qtdown.jsp"%>


  </body>
</html>



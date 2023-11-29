<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>医院详细</title>
	<LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<body class="body">

  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yiyuan");
     %>
  医院详细:
  <br><br>

   <table width="100%" class="table" >
   <tr><td width='11%' height=44>医院名称：</td><td width='39%'><%=m.get("yiyuanmingchen")%></td>
</tr><tr>
<td width='11%' height=44>地区：</td><td width='39%'><%=m.get("diqu")%></td>
</tr><tr>
<td width='11%' height=44>联系电话：</td><td width='39%'><%=m.get("lianxidianhua")%></td>
</tr><tr>
<td width='11%' height=44>地址：</td><td width='39%'><%=m.get("dizhi")%></td>
</tr><tr>
<td width='11%' height=44>接种时间：</td><td width='39%'><%=m.get("jiezhongshijian")%></td>
</tr><tr>
<td width='11%' height=44>说明：</td><td width='39%'><%=m.get("shuoming")%></td>
</tr><tr>
<td colspan=3 align=center><input type=button name=Submit5 value=返回 class="button2"  onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印  class="button3"  onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



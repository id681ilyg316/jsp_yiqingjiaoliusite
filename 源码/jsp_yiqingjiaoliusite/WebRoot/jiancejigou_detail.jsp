<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>检测机构详细</title>
	<LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<body class="body">

  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jiancejigou");
     %>
  检测机构详细:
  <br><br>

   <table width="100%" class="table" >
   <tr><td width='11%' height=44>机构名称：</td><td width='39%'><%=m.get("jigoumingchen")%></td>
</tr><tr>
<td width='11%' height=44>地区：</td><td width='39%'><%=m.get("diqu")%></td>
</tr><tr>
<td width='11%' height=44>联系方式：</td><td width='39%'><%=m.get("lianxifangshi")%></td>
</tr><tr>
<td width='11%' height=44>邮箱：</td><td width='39%'><%=m.get("youxiang")%></td>
</tr><tr>
<td width='11%' height=44>检测时间：</td><td width='39%'><%=m.get("jianceshijian")%></td>
</tr><tr>
<td width='11%' height=44>地址：</td><td width='39%'><%=m.get("dizhi")%></td>
</tr><tr>
<td width='11%' height=44>说明：</td><td width='39%'><%=m.get("shuoming")%></td>
</tr><tr>
<td colspan=3 align=center><input type=button name=Submit5 value=返回 class="button2"  onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印  class="button3"  onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



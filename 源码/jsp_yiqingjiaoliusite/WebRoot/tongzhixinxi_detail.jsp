<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>通知信息详细</title>
	<LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<body class="body">

  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"tongzhixinxi");
     %>
  通知信息详细:
  <br><br>

   <table width="100%" class="table" >
   <tr><td width='11%' height=44>标题：</td><td width='39%'><%=m.get("biaoti")%></td>
</tr><tr>
<td width='11%' height=44>地区：</td><td width='39%'><%=m.get("diqu")%></td>
</tr><tr>
<td width='11%' height=44>内容：</td><td width='39%'><%=m.get("neirong")%></td>
</tr><tr>
<td width='11%' height=44>发布人：</td><td width='39%'><%=m.get("faburen")%></td>
</tr><tr>
<td colspan=3 align=center><input type=button name=Submit5 value=返回 class="button2"  onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印  class="button3"  onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



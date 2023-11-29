<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>员工信息详细</title>
	<LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<body class="body">

  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yuangongxinxi");
     %>
  员工信息详细:
  <br><br>

   <table width="100%" class="table" >
   <tr><td width='11%' height=44>员工工号：</td><td width='39%'><%=m.get("yuangonggonghao")%></td>
</tr><tr>
<td width='11%' height=44>密码：</td><td width='39%'><%=m.get("mima")%></td>
</tr><tr>
<td width='11%' height=44>员工姓名：</td><td width='39%'><%=m.get("yuangongxingming")%></td>
</tr><tr>
<td width='11%' height=44>性别：</td><td width='39%'><%=m.get("xingbie")%></td>
</tr><tr>
<td width='11%' height=44>年龄：</td><td width='39%'><%=m.get("nianling")%></td>
</tr><tr>
<td width='11%' height=44>手机：</td><td width='39%'><%=m.get("shouji")%></td>
</tr><tr>
<td width='11%' height=44>邮箱：</td><td width='39%'><%=m.get("youxiang")%></td>
</tr><tr>
<td width='11%' height=44>简介：</td><td width='39%'><%=m.get("jianjie")%></td>
</tr><tr>
<td colspan=3 align=center><input type=button name=Submit5 value=返回 class="button2"  onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印  class="button3"  onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



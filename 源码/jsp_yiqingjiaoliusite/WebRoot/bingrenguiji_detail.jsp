<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>病人轨迹详细</title>
	<LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<body class="body">

  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"bingrenguiji");
     %>
  病人轨迹详细:
  <br><br>

   <table width="100%" class="table" >
   <tr><td width='11%' height=44>患者信息：</td><td width='39%'><%=m.get("huanzhexinxi")%></td>
</tr><tr>
<td width='11%' height=44>地区：</td><td width='39%'><%=m.get("diqu")%></td>
</tr><tr>
<td width='11%' height=44>风险：</td><td width='39%'><%=m.get("fengxian")%></td>
</tr><tr>
<td width='11%' height=44>轨迹：</td><td width='39%'><%=m.get("guiji")%></td>
</tr><tr>
<td width='11%' height=44>日期：</td><td width='39%'><%=m.get("riqi")%></td>
</tr><tr>
<td width='11%' height=44>说明：</td><td width='39%'><%=m.get("shuoming")%></td>
</tr><tr>
<td width='11%' height=44>添加人：</td><td width='39%'><%=m.get("tianjiaren")%></td>
</tr><tr>
<td colspan=3 align=center><input type=button name=Submit5 value=返回 class="button2"  onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印  class="button3"  onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



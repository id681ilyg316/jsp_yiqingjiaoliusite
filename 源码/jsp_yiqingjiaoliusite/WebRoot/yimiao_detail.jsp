<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>疫苗详细</title>
	<LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<body class="body">

  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yimiao");
     %>
  疫苗详细:
  <br><br>

   <table width="100%" class="table" >
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
<td colspan=3 align=center><input type=button name=Submit5 value=返回 class="button2"  onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印  class="button3"  onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



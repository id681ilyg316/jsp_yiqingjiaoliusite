<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>检测机构</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


<body class="body">

  <p>已有检测机构列表：</p>
  <form name="form1" id="form1" class="form" action="">
   搜索:  <input name="jigoumingchen" type="text" id="jigoumingchen" class="hdladd" size="12" placeholder="请输入要查询的机构名称"/>  地区：<%=Info.getselect("diqu","diquxinxi","diqu"," 1=1 ")%>   <input type="submit" name="Submit" value="查找" class="button" />
</form>
<table width="100%" class="table">  
 <thead class="thead"> 
 <tr>
    <th width="30" class="bt">序号</td>
    <th class="bt">机构名称</td>
    <th class="bt">地区</td>
    <th class="bt">联系方式</td>
    <th class="bt">邮箱</td>
    <th class="bt">检测时间</td>
    <th class="bt">地址</td>
    <th class="bt">说明</td>

    <th width="110" align="center" class="bt">添加时间</td>
    <th width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"jiancejigou"); 
    String url = "jiancejigou_list.jsp?1=1"; 
    String sql =  "select * from jiancejigou where 1=1";
if(request.getParameter("jigoumingchen")=="" ||request.getParameter("jigoumingchen")==null ){}else{sql=sql+" and jigoumingchen like '%"+request.getParameter("jigoumingchen")+"%'";}
if(request.getParameter("diqu")=="" ||request.getParameter("diqu")==null ){}else{sql=sql+" and diqu like '%"+request.getParameter("diqu")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>

    <td><%=map.get("jigoumingchen") %></td>

    <td><%=map.get("diqu") %></td>
    <td><%=map.get("lianxifangshi") %></td>
    <td><%=map.get("youxiang") %></td>

    <td><%=map.get("jianceshijian") %></td>

    <td><%=map.get("dizhi") %></td>

    <td><%=map.get("shuoming") %></td>

    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a href="jiancejigou_updt.jsp?id=<%=map.get("id")%>"class="A1">修改</a>  <a href="jiancejigou_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')"class="A2">删除</a>  <a href="jiancejigou_detail.jsp?id=<%=map.get("id")%>" class="A3">详细</a> </td>
  </tr>  	<%
  }
   %>
  </tbody> 
</table>
<br>
  
${page.info }


  </body>
</html>
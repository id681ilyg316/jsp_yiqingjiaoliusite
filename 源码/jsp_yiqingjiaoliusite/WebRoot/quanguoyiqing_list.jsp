<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>全国疫情</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


<body class="body">

  <p>已有全国疫情列表：</p>
  <form name="form1" id="form1" class="form" action="">
   搜索:  地区：<%=Info.getselect("diqu","diquxinxi","diqu"," 1=1 ")%>新冠患者数：<input name="xinguanhuanzheshu1" type="text" id="xinguanhuanzheshu1" class="hdladd" size="8" />-<input name="xinguanhuanzheshu2" type="text" id="xinguanhuanzheshu2" class="hdladd" size="8" />   <input type="submit" name="Submit" value="查找" class="button" />
</form>
<table width="100%" class="table">  
 <thead class="thead"> 
 <tr>
    <th width="30" class="bt">序号</td>
    <th class="bt">地区</td>
    <th class="bt">新冠患者数</td>
    <th class="bt">增长患者数</td>
    <th class="bt">治愈患者数</td>
    <th class="bt">隔离人数</td>
    <th class="bt">说明</td>

    <th width="110" align="center" class="bt">添加时间</td>
    <th width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"quanguoyiqing"); 
    String url = "quanguoyiqing_list.jsp?1=1"; 
    String sql =  "select * from quanguoyiqing where 1=1";
if(request.getParameter("diqu")=="" ||request.getParameter("diqu")==null ){}else{sql=sql+" and diqu like '%"+request.getParameter("diqu")+"%'";}
if (request.getParameter("xinguanhuanzheshu1")==""  ||request.getParameter("xinguanhuanzheshu1")==null ) {}else{sql=sql+" and xinguanhuanzheshu >= "+request.getParameter("xinguanhuanzheshu1")+"";}
if (request.getParameter("xinguanhuanzheshu2")==""  ||request.getParameter("xinguanhuanzheshu2")==null ) {}else {sql=sql+" and xinguanhuanzheshu <= "+request.getParameter("xinguanhuanzheshu2")+"";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>

    <td><%=map.get("diqu") %></td>
    <td><%=map.get("xinguanhuanzheshu") %></td>
    <td><%=map.get("zengchanghuanzheshu") %></td>
    <td><%=map.get("zhiyuhuanzheshu") %></td>
    <td><%=map.get("gelirenshu") %></td>

    <td><%=map.get("shuoming") %></td>

    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a href="quanguoyiqing_updt.jsp?id=<%=map.get("id")%>"class="A1">修改</a>  <a href="quanguoyiqing_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')"class="A2">删除</a> <!--详细页--> </td>
  </tr>  	<%
  }
   %>
  </tbody> 
</table>
<br>
  
${page.info }


  </body>
</html>
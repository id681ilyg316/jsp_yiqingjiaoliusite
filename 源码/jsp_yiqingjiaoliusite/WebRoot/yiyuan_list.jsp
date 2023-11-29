<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>医院</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


<body class="body">

  <p>已有医院列表：</p>
  <form name="form1" id="form1" class="form" action="">
   搜索:  <input name="yiyuanmingchen" type="text" id="yiyuanmingchen" class="hdladd" size="12" placeholder="请输入要查询的医院名称"/>  地区：<%=Info.getselect("diqu","diquxinxi","diqu"," 1=1 ")%>  <input name="dizhi" type="text" id="dizhi" class="hdladd" size="12" placeholder="请输入要查询的地址"/>   <input type="submit" name="Submit" value="查找" class="button" />
</form>
<table width="100%" class="table">  
 <thead class="thead"> 
 <tr>
    <th width="30" class="bt">序号</td>
    <th class="bt">医院名称</td>
    <th class="bt">地区</td>
    <th class="bt">联系电话</td>
    <th class="bt">地址</td>
    <th class="bt">接种时间</td>
    <th class="bt">说明</td>

    <th width="110" align="center" class="bt">添加时间</td>
    <th width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"yiyuan"); 
    String url = "yiyuan_list.jsp?1=1"; 
    String sql =  "select * from yiyuan where 1=1";
if(request.getParameter("yiyuanmingchen")=="" ||request.getParameter("yiyuanmingchen")==null ){}else{sql=sql+" and yiyuanmingchen like '%"+request.getParameter("yiyuanmingchen")+"%'";}
if(request.getParameter("diqu")=="" ||request.getParameter("diqu")==null ){}else{sql=sql+" and diqu like '%"+request.getParameter("diqu")+"%'";}
if(request.getParameter("dizhi")=="" ||request.getParameter("dizhi")==null ){}else{sql=sql+" and dizhi like '%"+request.getParameter("dizhi")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>

    <td><%=map.get("yiyuanmingchen") %></td>

    <td><%=map.get("diqu") %></td>
    <td><%=map.get("lianxidianhua") %></td>

    <td><%=map.get("dizhi") %></td>

    <td><%=map.get("jiezhongshijian") %></td>

    <td><%=map.get("shuoming") %></td>

    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a href="yiyuan_updt.jsp?id=<%=map.get("id")%>"class="A1">修改</a>  <a href="yiyuan_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')"class="A2">删除</a>  <a href="yiyuan_detail.jsp?id=<%=map.get("id")%>" class="A3">详细</a> </td>
  </tr>  	<%
  }
   %>
  </tbody> 
</table>
<br>
  
${page.info }


  </body>
</html>
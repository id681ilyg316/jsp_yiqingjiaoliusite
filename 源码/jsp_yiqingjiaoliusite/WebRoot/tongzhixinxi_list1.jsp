<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>通知信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


<body class="body">

  <p>已有通知信息列表：</p>
  <form name="form1" id="form1" class="form" action="">
   搜索:  <input name="biaoti" type="text" id="biaoti" class="hdladd" size="12" placeholder="请输入标题"/>  地区：<%=Info.getselect("diqu","diquxinxi","diqu"," 1=1 ")%>   <input type="submit" name="Submit" value="查找" class="button" />
</form>
<table width="100%" class="table">  
 <thead class="thead"> 
 <tr>
    <th width="30" class="bt">序号</td>
    <th class="bt">标题</td>
    <th class="bt">地区</td>
    <th class="bt">发布人</td>

    <th width="110" align="center" class="bt">添加时间</td>
    <th width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"tongzhixinxi"); 
    String url = "tongzhixinxi_list1.jsp?1=1"; 
    String sql =  "select * from tongzhixinxi where 1=1";
if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}
if(request.getParameter("diqu")=="" ||request.getParameter("diqu")==null ){}else{sql=sql+" and diqu like '%"+request.getParameter("diqu")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>

    <td><%=map.get("biaoti") %></td>

    <td><%=map.get("diqu") %></td>
    <td><%=map.get("faburen") %></td>

    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center">  <a href="tongzhixinxi_detail.jsp?id=<%=map.get("id")%>" class="A3">详细</a> </td>
  </tr>  	<%
  }
   %>
  </tbody> 
</table>
<br>
  
${page.info }


  </body>
</html>
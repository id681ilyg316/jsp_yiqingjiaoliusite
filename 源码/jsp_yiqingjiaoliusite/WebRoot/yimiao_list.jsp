<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>疫苗</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


<body class="body">

  <p>已有疫苗列表：</p>
  <form name="form1" id="form1" class="form" action="">
   搜索:  <input name="yimiaomingchen" type="text" id="yimiaomingchen" class="hdladd" size="12" placeholder="请输入要查询的疫苗名称"/>  <input name="gongsimingchen" type="text" id="gongsimingchen" class="hdladd" size="12" placeholder="请输入要查询的公司名称"/>  <input name="jiezhongdian" type="text" id="jiezhongdian" class="hdladd" size="12" placeholder="请输入要查询的接种点"/>   <input type="submit" name="Submit" value="查找" class="button" />
</form>
<table width="100%" class="table">  
 <thead class="thead"> 
 <tr>
    <th width="30" class="bt">序号</td>
    <th class="bt">疫苗编号</td>
    <th class="bt">疫苗名称</td>
    <th class="bt">公司名称</td>
    <th class="bt">副作用</td>
    <th class="bt">图片</td>
    <th class="bt">接种点</td>

    <th width="110" align="center" class="bt">添加时间</td>
    <th width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"yimiao"); 
    String url = "yimiao_list.jsp?1=1"; 
    String sql =  "select * from yimiao where 1=1";
if(request.getParameter("yimiaomingchen")=="" ||request.getParameter("yimiaomingchen")==null ){}else{sql=sql+" and yimiaomingchen like '%"+request.getParameter("yimiaomingchen")+"%'";}
if(request.getParameter("gongsimingchen")=="" ||request.getParameter("gongsimingchen")==null ){}else{sql=sql+" and gongsimingchen like '%"+request.getParameter("gongsimingchen")+"%'";}
if(request.getParameter("jiezhongdian")=="" ||request.getParameter("jiezhongdian")==null ){}else{sql=sql+" and jiezhongdian like '%"+request.getParameter("jiezhongdian")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yimiaobianhao") %></td>

    <td><%=map.get("yimiaomingchen") %></td>

    <td><%=map.get("gongsimingchen") %></td>

    <td><%=map.get("fuzuoyong") %></td>

    <td width='90' align='center'><a href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("jiezhongdian") %></td>

    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a href="yimiao_updt.jsp?id=<%=map.get("id")%>"class="A1">修改</a>  <a href="yimiao_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')"class="A2">删除</a>  <a href="yimiao_detail.jsp?id=<%=map.get("id")%>" class="A3">详细</a> </td>
  </tr>  	<%
  }
   %>
  </tbody> 
</table>
<br>
  
${page.info }


  </body>
</html>
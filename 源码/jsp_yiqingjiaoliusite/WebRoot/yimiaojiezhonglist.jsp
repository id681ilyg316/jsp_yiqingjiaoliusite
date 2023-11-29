<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>新冠疫情查询与管理系统</title>
<link rel="stylesheet" type="text/css" href="qtimages/css/wst.css"/>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
<script type="text/javascript" src="qtimages/jquery.js"></script>
<script type="text/javascript" src="qtimages/inc.js"></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>




	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
  </head>


<body class="body">

  <%@ include file="qttop.jsp"%>

<div class="scban"></div>

<div class="gywst"> 
 
  <div class="gywst_title">
    <div class="gywstc">
      <h2>疫苗接种:</h2>
      <span>Details</span></div>
  </div>
 
  <div class="gywstnr">
  
  <form name="form1" id="form1" class="form" action="">
   搜索:  <input name="guojia" type="text" id="guojia" class="hdladd" size="12" placeholder="请输入要查询的国家"/>   <input type="submit" name="Submit" value="查找" class="button" />
</form>
<table width="100%" class="table">  
 <thead class="thead"> 
 <tr>
    <th width="30" class="bt">序号</td>
    <th class="bt">国家</td>
    <th class="bt">累计接种</td>
    <th class="bt">新增接种</td>
    <th class="bt">接种率</td>
    <th class="bt">说明</td>

    
    <th style="display:none" width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"yimiaojiezhong"); 
    String url = "yimiaojiezhonglist.jsp?1=1"; 
    String sql =  "select * from yimiaojiezhong where 1=1";
if(request.getParameter("guojia")=="" ||request.getParameter("guojia")==null ){}else{sql=sql+" and guojia like '%"+request.getParameter("guojia")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("guojia") %></td>
    <td><%=map.get("leijijiezhong") %></td>
    <td><%=map.get("xinzengjiezhong") %></td>
    <td><%=map.get("jiezhonglu") %></td>

    <td><%=map.get("shuoming") %></td>

   
    <td style="display:none" width="220" align="center"><a href="yimiaojiezhong_updt.jsp?id=<%=map.get("id")%>"class="A1">修改</a>  <a href="yimiaojiezhong_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')"class="A2">删除</a> <!--详细页--> </td>
  </tr>  	<%
  }
   %>
  </tbody> 
</table>
<br>
  
${page.info }
<div class="clear"></div>
  </div>
 
</div>


<%@ include file="qtdown.jsp"%>

  </body>
</html>
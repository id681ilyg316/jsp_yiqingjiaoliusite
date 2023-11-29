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
      <h2>检测机构:</h2>
      <span>Details</span></div>
  </div>
 
  <div class="gywstnr">
  
  <form name="form1" id="form1" class="form" action="">
   搜索:  <input name="jigoumingchen" type="text" id="jigoumingchen" class="hdladd" size="12" placeholder="请输入要查询的机构名称"/>  地区：<%=Info.getselect("diqu","diquxinxi","diqu"," 1=1 ")%>   <input type="submit" name="Submit" value="查找" class="button" />
</form>
  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
   <thead class="thead"> 
 <tr>
    <th width="40" class="bt" align="center">序号</td>
    <th class="bt" align="center">机构名称</td>
    <th class="bt" align="center">地区</td>
    <th class="bt" align="center">联系方式</td>
    <th class="bt" align="center">邮箱</td>
    <th class="bt" align="center">检测时间</td>
    <th class="bt" align="center">地址</td>
    <th class="bt" align="center">说明</td>

    
    <th style="display:none" width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"jiancejigou"); 
    String url = "jiancejigoulist.jsp?1=1"; 
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

    <td align="center"><%=map.get("jigoumingchen") %></td>

    <td align="center"><%=map.get("diqu") %></td>
    <td align="center"><%=map.get("lianxifangshi") %></td>
    <td align="center"><%=map.get("youxiang") %></td>

    <td align="center"><%=map.get("jianceshijian") %></td>

    <td align="center"><%=map.get("dizhi") %></td>

    <td><%=map.get("shuoming") %></td>

  
    <td style="display:none" width="220" align="center"> <a href="jiancejigou_detail.jsp?id=<%=map.get("id")%>" class="A3">详细</a> </td>
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
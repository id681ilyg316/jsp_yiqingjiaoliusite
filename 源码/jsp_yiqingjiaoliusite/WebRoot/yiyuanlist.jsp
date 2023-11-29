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
      <h2>定点医院:</h2>
      <span>Details</span></div>
  </div>
 
  <div class="gywstnr">
  
  <form name="form1" id="form1" class="form" action="">
   搜索:  <input name="yiyuanmingchen" type="text" id="yiyuanmingchen" class="hdladd" size="12" placeholder="请输入要查询的医院名称"/>  地区：<%=Info.getselect("diqu","diquxinxi","diqu"," 1=1 ")%>  <input name="dizhi" type="text" id="dizhi" class="hdladd" size="12" placeholder="请输入要查询的地址"/>   <input type="submit" name="Submit" value="查找" class="button" />
</form>
  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
 <thead class="thead"> 
 <tr>
    <th width="30" class="bt" align="center"> 序号</td>
    <th class="bt" align="center">医院名称</td>
    <th class="bt" align="center">地区</td>
    <th class="bt" align="center">联系电话</td>
    <th class="bt" align="center">地址</td>
    <th class="bt" align="center">接种时间</td>
    <th class="bt" align="center" >说明</td>

  
    <th style="display:none" width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"yiyuan"); 
    String url = "yiyuanlist.jsp?1=1"; 
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

    <td align="center"><%=map.get("yiyuanmingchen") %></td>

    <td align="center"><%=map.get("diqu") %></td>
    <td align="center"><%=map.get("lianxidianhua") %></td>

    <td align="center"><%=map.get("dizhi") %></td>

    <td align="center"><%=map.get("jiezhongshijian") %></td>

    <td align="center"><%=map.get("shuoming") %></td>

    
    <td style="display:none" width="220" align="center">  <a href="yiyuan_detail.jsp?id=<%=map.get("id")%>" class="A3">详细</a> </td>
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
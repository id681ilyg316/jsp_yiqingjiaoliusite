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
      <h2>新冠疫苗:</h2>
      <span>Details</span></div>
  </div>
 
  <div class="gywstnr">
  
  <form name="form1" id="form1" class="form" action="">
   搜索:  <input name="yimiaomingchen" type="text" id="yimiaomingchen" class="hdladd" size="12" placeholder="请输入疫苗名称"/>  <input name="gongsimingchen" type="text" id="gongsimingchen" class="hdladd" size="12" placeholder="请输入公司名称"/>  <input name="jiezhongdian" type="text" id="jiezhongdian" class="hdladd" size="12" placeholder="请输入接种点"/>   <input type="submit" name="Submit" value="查找" class="button" />
</form>
  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse"> <thead class="thead"> 
 <tr>
    <th width="40" class="bt" align="center">序号</td>
    <th class="bt" align="center">疫苗编号</td>
    <th class="bt" align="center">疫苗名称</td>
    <th class="bt" align="center">公司名称</td>
    <th class="bt" align="center">副作用</td>
    <th class="bt" align="center">图片</td>
    <th class="bt" align="center" >接种点</td>

   
    <th style="display:none" width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"yimiao"); 
    String url = "yimiaolist.jsp?1=1"; 
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
    <td align="center"><%=map.get("yimiaobianhao") %></td>

    <td align="center"><%=map.get("yimiaomingchen") %></td>

    <td align="center"><%=map.get("gongsimingchen") %></td>

    <td align="center"><%=map.get("fuzuoyong") %></td>

    <td align="center"  width='90' align='center'><a href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>
    <td align="center" ><%=map.get("jiezhongdian") %></td>

  
    <td style="display:none" width="220" align="center">  <a href="yimiao_detail.jsp?id=<%=map.get("id")%>" class="A3">详细</a> </td>
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
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
      <h2>病人轨迹:</h2>
      <span>Details</span></div>
  </div>
 
  <div class="gywstnr">
  
  <form name="form1" id="form1" class="form" action="">
   搜索:  <input name="huanzhexinxi" type="text" id="huanzhexinxi" class="hdladd" size="12" placeholder="请输入要查询的患者信息"/>  地区：<%=Info.getselect("diqu","diquxinxi","diqu"," 1=1 ")%> 风险：<select name='fengxian' id='fengxian' class="select" ><option value="">所有</option><option value="中">中</option>
<option value="高">高</option>
</select>  日期：<input name="riqi1" type="text" id="riqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="hdladd" />-<input name="riqi2" type="text" id="riqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="hdladd"  />    <input type="submit" name="Submit" value="查找" class="button" />
</form>
  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
 <thead class="thead"> 
 <tr>
    <th width="40" class="bt" align="center">序号</td>
    <th class="bt" align="center">患者信息</td>
    <th class="bt" align="center">地区</td>
    <th class="bt" align="center">风险</td>
    <th class="bt" align="center">轨迹</td>
    <th class="bt" align="center">日期</td>
    <th class="bt" align="center" >说明</td>
   
    <th style="display:none" width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"bingrenguiji"); 
    String url = "bingrenguijilist.jsp?issh='是'"; 
    String sql =  "select * from bingrenguiji where issh='是'";
if(request.getParameter("huanzhexinxi")=="" ||request.getParameter("huanzhexinxi")==null ){}else{sql=sql+" and huanzhexinxi like '%"+request.getParameter("huanzhexinxi")+"%'";}
if(request.getParameter("diqu")=="" ||request.getParameter("diqu")==null ){}else{sql=sql+" and diqu like '%"+request.getParameter("diqu")+"%'";}
if(request.getParameter("fengxian")=="" ||request.getParameter("fengxian")==null ){}else{sql=sql+" and fengxian like '%"+request.getParameter("fengxian")+"%'";}
	if (request.getParameter("riqi1")==""  ||request.getParameter("riqi1")==null ) {}else{sql=sql+" and riqi >= '"+request.getParameter("riqi1")+"'";}
    if (request.getParameter("riqi2")==""  ||request.getParameter("riqi2")==null ) {}else {sql=sql+" and riqi <= '"+request.getParameter("riqi2")+"'";}    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>

    <td align="center"><%=map.get("huanzhexinxi") %></td>

    <td align="center"><%=map.get("diqu") %></td>

    <td align="center"><%=map.get("fengxian") %></td>

    <td align="center"><%=map.get("guiji") %></td>

    <td align="center"><%=map.get("riqi") %></td>

    <td align="center"><%=map.get("shuoming") %></td>
   

   
    <td style="display:none" width="220" align="center"> <a href="bingrenguiji_detail.jsp?id=<%=map.get("id")%>" class="A3">详细</a> </td>
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
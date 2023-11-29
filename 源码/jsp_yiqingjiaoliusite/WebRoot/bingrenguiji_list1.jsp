<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>病人轨迹</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


<body class="body">

  <p>已有病人轨迹列表：</p>
  <form name="form1" id="form1" class="form" action="">
   搜索:  <input name="huanzhexinxi" type="text" id="huanzhexinxi" class="hdladd" size="12" placeholder="请输入要查询的患者信息"/>  地区：<%=Info.getselect("diqu","diquxinxi","diqu"," 1=1 ")%> 风险：<select name='fengxian' id='fengxian' class="select" ><option value="">所有</option><option value="中">中</option>
<option value="高">高</option>
</select>  日期：<input name="riqi1" type="text" id="riqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="hdladd" />-<input name="riqi2" type="text" id="riqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="hdladd"  />    <input type="submit" name="Submit" value="查找" class="button" />
</form>
<table width="100%" class="table">  
 <thead class="thead"> 
 <tr>
    <th width="30" class="bt">序号</td>
    <th class="bt">患者信息</td>
    <th class="bt">地区</td>
    <th class="bt">风险</td>
    <th class="bt">轨迹</td>
    <th class="bt">日期</td>
    <th class="bt">说明</td>
    <th class="bt">添加人</td>
    <th class="bt" width='80' align='center'>是否审核</td>

    <th width="110" align="center" class="bt">添加时间</td>
    <th width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"bingrenguiji"); 
    String url = "bingrenguiji_list1.jsp?1=1"; 
    String sql =  "select * from bingrenguiji where diqu='"+request.getSession().getAttribute("dq")+"' ";
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

    <td><%=map.get("huanzhexinxi") %></td>

    <td><%=map.get("diqu") %></td>

    <td><%=map.get("fengxian") %></td>

    <td><%=map.get("guiji") %></td>

    <td><%=map.get("riqi") %></td>

    <td><%=map.get("shuoming") %></td>
    <td><%=map.get("tianjiaren") %></td>

    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=bingrenguiji" onClick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>

    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center">  <a href="bingrenguiji_detail.jsp?id=<%=map.get("id")%>" class="A3">详细</a> </td>
  </tr>  	<%
  }
   %>
  </tbody> 
</table>
<br>
  
${page.info }


  </body>
</html>
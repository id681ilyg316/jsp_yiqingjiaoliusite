<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>员工信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


<body class="body">

  <p>已有员工信息列表：</p>
  <form name="form1" id="form1" class="form" action="">
   搜索:  <input name="yuangonggonghao" type="text" id="yuangonggonghao" class="hdladd" size="12" placeholder="请输入要查询的员工工号"/>  <input name="yuangongxingming" type="text" id="yuangongxingming" class="hdladd" size="12" placeholder="请输入要查询的员工姓名"/> 性别：<select name='xingbie' id='xingbie' class="select" ><option value="">所有</option><option value="男">男</option>
<option value="女">女</option>
</select>   <input type="submit" name="Submit" value="查找" class="button" />
</form>
<table width="100%" class="table">  
 <thead class="thead"> 
 <tr>
    <th width="30" class="bt">序号</td>
    <th class="bt">员工工号</td>
    <th class="bt">密码</td>
    <th class="bt">员工姓名</td>
    <th class="bt">性别</td>
    <th class="bt">年龄</td>
    <th class="bt">手机</td>
    <th class="bt">邮箱</td>

    <th width="110" align="center" class="bt">添加时间</td>
    <th width="289" align="center" class="bt">操作</td>
  </tr>
  </thead>
  <tbody class="tbody">
  <% 
  	


  	 new CommDAO().delete(request,"yuangongxinxi"); 
    String url = "yuangongxinxi_list.jsp?1=1"; 
    String sql =  "select * from yuangongxinxi where 1=1";
if(request.getParameter("yuangonggonghao")=="" ||request.getParameter("yuangonggonghao")==null ){}else{sql=sql+" and yuangonggonghao like '%"+request.getParameter("yuangonggonghao")+"%'";}
if(request.getParameter("yuangongxingming")=="" ||request.getParameter("yuangongxingming")==null ){}else{sql=sql+" and yuangongxingming like '%"+request.getParameter("yuangongxingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuangonggonghao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("yuangongxingming") %></td>

    <td><%=map.get("xingbie") %></td>
    <td><%=map.get("nianling") %></td>
    <td><%=map.get("shouji") %></td>
    <td><%=map.get("youxiang") %></td>

    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a href="yuangongxinxi_updt.jsp?id=<%=map.get("id")%>"class="A1">修改</a>  <a href="yuangongxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')"class="A2">删除</a>  <a href="yuangongxinxi_detail.jsp?id=<%=map.get("id")%>" class="A3">详细</a> </td>
  </tr>  	<%
  }
   %>
  </tbody> 
</table>
<br>
  
${page.info }


  </body>
</html>
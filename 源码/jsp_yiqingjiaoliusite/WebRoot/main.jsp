<%@ page language="java"  pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<head>
<base target="main">
<link rel="stylesheet" href="images/style.css">
<link rel="stylesheet" href="images/common.css">
<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>
  <title>新冠疫情查询与管理系统</title>
</head>
<body>
    <div class="top">
      <div id="top_t">
        <div id="logo" class="fl"></div><div  class="fl" style="text-shadow:#CCCCCC 3px 0 0,#33CC33 0 1px 0,#33CC33 1px 0 0,#33CC33 0 -1px 0; font-size:28px; padding-top:4px;" >新冠疫情查询与管理系统</div>
        <div id="photo_info" class="fr">
          <div id="photo" class="fl"> <img src="images/a.png" alt="" width="20" height="20"> </div>
          <div id="base_info" class="fr"><a href="yhzhgl.jsp" target="main"><font color="#FFfff">用户管理</font></a>  <a href="logout.jsp" target="_top" onclick="return confirm('确定要退出?')"><font color="#FFfff">安全退出</font></a></div>
        </div>
      </div>
      <div id="side_here">
        <div id="side_here_l" class="fl"></div>
        <div id="here_area" class="fl">欢迎:<font color="#FF0000">【<%=request.getSession().getAttribute("username")%>(<%=request.getSession().getAttribute("cx")%>)】使用『新冠疫情查询与管理系统』</font>如有问题请联系→QQ:<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=429489354&amp;menu=yes" target="_blank">xxxxxx</a>&nbsp;&nbsp; 
        </div>
      </div>
    </div>
    <div class="side">
        <div class="sideMenu" style="position:absolute; height:100%; overflow:auto ">
		<%
		if (request.getSession().getAttribute("cx").equals("超级管理员") || request.getSession().getAttribute("cx").equals("普通管理员") ){ %> <%@ include file="left.jsp" %> <%}
		
		if (request.getSession().getAttribute("cx").equals("注册用户")){ %> <%@ include file="left2.jsp" %> <%}
		
		if (request.getSession().getAttribute("cx").equals("员工")){ %> <%@ include file="left3.jsp" %> <%}
		%>
       </div>
    </div>
<div class="main">
       <iframe name="main" id="main" src="sy.jsp" frameborder="no" scrolling="auto" width="100%" height="700" allowtransparency="true"></iframe>
    </div>
    <div class="bottom">
      <div id="bottom_bg">版权:新冠疫情查询与管理系统 开发日期:wegwgwe</div>
    </div>
    
</body>

</html>
   
 

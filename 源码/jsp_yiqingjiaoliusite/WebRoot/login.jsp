<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
<head>
<title>新冠疫情查询与管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-repeat: repeat-x;
	background-color: #31B2EC;
}
.STYLE6 {color: #FFFFFF}
.STYLE5 {color: #CCFFCC;
	font-size: 26pt;
}
.STYLE9 {color: #000000; font-size:12px}
-->
</style>
</head>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;

function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.pagerandom.value=="")
	{
		alert('请输入完整');
		return false;
	}
}

           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 

           
           </script>  
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1280" height="733" border="0" align="center" cellpadding="0" cellspacing="0" background="images/login.jpg" id="__01">
  <tr>
    <td height="299" colspan="3"><div style="text-shadow:#CCCCCC 3px 0 0,#33CC33 0 1px 0,#33CC33 1px 0 0,#33CC33 0 -1px 0; font-size:38px;" align="center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新冠疫情查询与管理系统
    </div></td>
  </tr>
  <tr>
    <td width="529" rowspan="2">&nbsp;</td>
    <td width="267" height="152">
	
	<form action="yiqingjiaoliusite?ac=adminlogin&a=a" name="form1" style="display: inline"><table width="205" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="44" height="30"><span class="STYLE9">用户:</span></td>
            <td height="30" colspan="2"><input name="username" type="text" id="username" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
          </tr>
          <tr>
            <td height="30"><span class="STYLE9">密码:</span></td>
            <td height="30" colspan="2"><input name="pwd" type="password" id="pwd" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
          </tr>
          <tr>
            <td height="30"><span class="STYLE9">权限:</span></td>
            <td height="30" colspan="2"><select name="cx" id="cx">
                <option value="管理员">管理员</option>
				 <!-- <option value="员工">员工</option>-->
		<!--quxanxiaxndexnglxu-->
              </select>
            </td>
          </tr>
          <tr >
            <td height="30"><span class="STYLE9">验证码:</span></td>
            <td width="59" height="30"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" />
            <td width="102"><a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"> </a></td>
          </tr>
          <tr>
            <td height="30" colspan="3"><input type="submit" name="Submit" value="登陆" onClick="return check();" >
                <input type="reset" name="Submit2" value="重置"  ></td>
          </tr>
        </table> </form>
		
		</td>
    <td width="484" rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>







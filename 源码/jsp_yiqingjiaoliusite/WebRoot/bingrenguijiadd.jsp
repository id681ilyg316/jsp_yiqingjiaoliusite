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

<%
String id="";
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}

%>


<script language="javascript">

function gow()
{
 document.location.href="bingrenguijiadd.jsp?id=<%=id%>";
}
function xlselect(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){


ext.put("issh","否");

}
new CommDAO().insert(request,response,"bingrenguiji",ext,true,false,"index.jsp"); 
%>
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
  
<form  action="bingrenguijiadd.jsp?f=f&id=<%=id%>"  name="form1" class="form" onSubmit="return checkform();">
 
   <table width="100%" class="table" >
		<tr><td  width="200">患者信息：</td><td><input name='huanzhexinxi' type='text' id='huanzhexinxi' value='' onblur='' size='50' class="hdladd" />&nbsp;*<label id='clabelhuanzhexinxi' /></td></tr>

		<tr><td>地区：</td><td class="select"><%=Info.getselect("diqu","diquxinxi","diqu")%>&nbsp;*<label id='clabeldiqu' /></td></tr>

		<tr><td>风险：</td><td><select name='fengxian' class="select"  id='fengxian'><option value="中">中</option>
<option value="高">高</option>
</select></td></tr>

		<tr><td  width="200">轨迹：</td><td><input name='guiji' type='text' id='guiji' value='' onblur='' size='50' class="hdladd" /></td></tr>

		<tr><td width="200">日期：</td><td><input name='riqi' type='text' id='riqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="hdladd" /></td></tr>

		<tr><td  width="200">说明：</td><td><input name='shuoming' type='text' id='shuoming' value='' onblur='' size='50' class="hdladd" /></td></tr>

		<tr><td  width="200">添加人：</td><td><input name='tianjiaren' type='text' id='tianjiaren' value='<%=request.getSession().getAttribute("username")%>'readonly="readonly" onblur='checkform()' class="hdladd" /></td></tr>

<tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  class="button2" />
      <input type="reset" name="Submit2" value="重置" class="button3"  /></td>
    </tr>
  </table>
</form>


<div class="clear"></div>
  </div>
 
</div>


<%@ include file="qtdown.jsp"%>

  </body>
</html>


<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	


var huanzhexinxiobj = document.getElementById("huanzhexinxi"); if(huanzhexinxiobj.value==""){document.getElementById("clabelhuanzhexinxi").innerHTML="&nbsp;&nbsp;<font color=red>请输入患者信息</font>";return false;}else{document.getElementById("clabelhuanzhexinxi").innerHTML="  "; } var diquobj = document.getElementById("diqu"); if(diquobj.value==""){document.getElementById("clabeldiqu").innerHTML="&nbsp;&nbsp;<font color=red>请输入地区</font>";return false;}else{document.getElementById("clabeldiqu").innerHTML="  "; } return true;   
}   
popheight=450;
</script>  
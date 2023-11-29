<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>

    <title>检测机构</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>

  </head>
<%
String id="";


%>


<script language="javascript">

function gow()
{
 document.location.href="jiancejigou_add.jsp?id=<%=id%>";
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


}
new CommDAO().insert(request,response,"jiancejigou",ext,true,false,""); 
%>
<body class="body">
<form  action="jiancejigou_add.jsp?f=f&id=<%=id%>"  name="form1" class="form" onsubmit="return checkform();">
  添加检测机构:
  <br><br>
   <table width="100%" class="table" >
		<tr><td  width="200">机构名称：</td><td><input name='jigoumingchen' type='text' id='jigoumingchen' value='' onblur='' size='50' class="hdladd" />&nbsp;*<label id='clabeljigoumingchen' /></td></tr>

		<tr><td>地区：</td><td class="select"><%=Info.getselect("diqu","diquxinxi","diqu")%></td></tr>

		<tr><td  width="200">联系方式：</td><td><input name='lianxifangshi' type='text' id='lianxifangshi' value='' onblur='checkform()' class="hdladd" /></td></tr>

		<tr><td  width="200">邮箱：</td><td><input name='youxiang' type='text' id='youxiang' value='' onblur='checkform()' class="hdladd" /></td></tr>

		<tr><td  width="200">检测时间：</td><td><input name='jianceshijian' type='text' id='jianceshijian' value='' onblur='' size='50' class="hdladd" /></td></tr>

		<tr><td  width="200">地址：</td><td><input name='dizhi' type='text' id='dizhi' value='' onblur='' size='50' class="hdladd" /></td></tr>

		<tr><td  width="200">说明：</td><td><input name='shuoming' type='text' id='shuoming' value='' onblur='' size='50' class="hdladd" /></td></tr>

<tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  class="button2" />
      <input type="reset" name="Submit2" value="重置" class="button3"  /></td>
    </tr>
  </table>
</form>

  </body>
</html>


<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	


var jigoumingchenobj = document.getElementById("jigoumingchen"); if(jigoumingchenobj.value==""){document.getElementById("clabeljigoumingchen").innerHTML="&nbsp;&nbsp;<font color=red>请输入机构名称</font>";return false;}else{document.getElementById("clabeljigoumingchen").innerHTML="  "; }     var youxiangobj = document.getElementById("youxiang"); if(youxiangobj.value!=""){ if(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(youxiangobj.value)){document.getElementById("clabelyouxiang").innerHTML=""; }else{document.getElementById("clabelyouxiang").innerHTML="&nbsp;&nbsp;<font color=red>必需邮箱格式</font>"; return false;}}
return true;   
}   
popheight=450;
</script>  
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>

    <title>医院</title>
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
 document.location.href="yiyuan_add.jsp?id=<%=id%>";
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
new CommDAO().insert(request,response,"yiyuan",ext,true,false,""); 
%>
<body class="body">
<form  action="yiyuan_add.jsp?f=f&id=<%=id%>"  name="form1" class="form" onsubmit="return checkform();">
  添加医院:
  <br><br>
   <table width="100%" class="table" >
		<tr><td  width="200">医院名称：</td><td><input name='yiyuanmingchen' type='text' id='yiyuanmingchen' value='' onblur='' size='50' class="hdladd" />&nbsp;*<label id='clabelyiyuanmingchen' /></td></tr>

		<tr><td>地区：</td><td class="select"><%=Info.getselect("diqu","diquxinxi","diqu")%></td></tr>

		<tr><td  width="200">联系电话：</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='' onblur='checkform()' class="hdladd" /></td></tr>

		<tr><td  width="200">地址：</td><td><input name='dizhi' type='text' id='dizhi' value='' onblur='' size='50' class="hdladd" /></td></tr>

		<tr><td  width="200">接种时间：</td><td><input name='jiezhongshijian' type='text' id='jiezhongshijian' value='' onblur='' size='50' class="hdladd" /></td></tr>

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
 
	


var yiyuanmingchenobj = document.getElementById("yiyuanmingchen"); if(yiyuanmingchenobj.value==""){document.getElementById("clabelyiyuanmingchen").innerHTML="&nbsp;&nbsp;<font color=red>请输入医院名称</font>";return false;}else{document.getElementById("clabelyiyuanmingchen").innerHTML="  "; } return true;   
}   
popheight=450;
</script>  
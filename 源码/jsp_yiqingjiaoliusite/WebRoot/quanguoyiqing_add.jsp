<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>

    <title>全国疫情</title>
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
 document.location.href="quanguoyiqing_add.jsp?id=<%=id%>";
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
new CommDAO().insert(request,response,"quanguoyiqing",ext,true,false,""); 
%>
<body class="body">
<form  action="quanguoyiqing_add.jsp?f=f&id=<%=id%>"  name="form1" class="form" onsubmit="return checkform();">
  添加全国疫情:
  <br><br>
   <table width="100%" class="table" >
		<tr><td>地区：</td><td class="select"><%=Info.getselect("diqu","diquxinxi","diqu")%>&nbsp;*<label id='clabeldiqu' /></td></tr>

		<tr><td  width="200">新冠患者数：</td><td><input name='xinguanhuanzheshu' type='text' id='xinguanhuanzheshu' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabelxinguanhuanzheshu' /></td></tr>

		<tr><td  width="200">增长患者数：</td><td><input name='zengchanghuanzheshu' type='text' id='zengchanghuanzheshu' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabelzengchanghuanzheshu' /></td></tr>

		<tr><td  width="200">治愈患者数：</td><td><input name='zhiyuhuanzheshu' type='text' id='zhiyuhuanzheshu' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabelzhiyuhuanzheshu' /></td></tr>

		<tr><td  width="200">隔离人数：</td><td><input name='gelirenshu' type='text' id='gelirenshu' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabelgelirenshu' /></td></tr>

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
 
	


var diquobj = document.getElementById("diqu"); if(diquobj.value==""){document.getElementById("clabeldiqu").innerHTML="&nbsp;&nbsp;<font color=red>请输入地区</font>";return false;}else{document.getElementById("clabeldiqu").innerHTML="  "; } var xinguanhuanzheshuobj = document.getElementById("xinguanhuanzheshu"); if(xinguanhuanzheshuobj.value==""){document.getElementById("clabelxinguanhuanzheshu").innerHTML="&nbsp;&nbsp;<font color=red>请输入新冠患者数</font>";return false;}else{document.getElementById("clabelxinguanhuanzheshu").innerHTML="  "; } 	var xinguanhuanzheshuobj = document.getElementById("xinguanhuanzheshu"); if(xinguanhuanzheshuobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(xinguanhuanzheshuobj.value)){document.getElementById("clabelxinguanhuanzheshu").innerHTML=""; }else{document.getElementById("clabelxinguanhuanzheshu").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
var zengchanghuanzheshuobj = document.getElementById("zengchanghuanzheshu"); if(zengchanghuanzheshuobj.value==""){document.getElementById("clabelzengchanghuanzheshu").innerHTML="&nbsp;&nbsp;<font color=red>请输入增长患者数</font>";return false;}else{document.getElementById("clabelzengchanghuanzheshu").innerHTML="  "; } 	var zengchanghuanzheshuobj = document.getElementById("zengchanghuanzheshu"); if(zengchanghuanzheshuobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(zengchanghuanzheshuobj.value)){document.getElementById("clabelzengchanghuanzheshu").innerHTML=""; }else{document.getElementById("clabelzengchanghuanzheshu").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
var zhiyuhuanzheshuobj = document.getElementById("zhiyuhuanzheshu"); if(zhiyuhuanzheshuobj.value==""){document.getElementById("clabelzhiyuhuanzheshu").innerHTML="&nbsp;&nbsp;<font color=red>请输入治愈患者数</font>";return false;}else{document.getElementById("clabelzhiyuhuanzheshu").innerHTML="  "; } 	var zhiyuhuanzheshuobj = document.getElementById("zhiyuhuanzheshu"); if(zhiyuhuanzheshuobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(zhiyuhuanzheshuobj.value)){document.getElementById("clabelzhiyuhuanzheshu").innerHTML=""; }else{document.getElementById("clabelzhiyuhuanzheshu").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
var gelirenshuobj = document.getElementById("gelirenshu"); if(gelirenshuobj.value==""){document.getElementById("clabelgelirenshu").innerHTML="&nbsp;&nbsp;<font color=red>请输入隔离人数</font>";return false;}else{document.getElementById("clabelgelirenshu").innerHTML="  "; } 	var gelirenshuobj = document.getElementById("gelirenshu"); if(gelirenshuobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(gelirenshuobj.value)){document.getElementById("clabelgelirenshu").innerHTML=""; }else{document.getElementById("clabelgelirenshu").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  

    if(parseInt(document.form1.xinguanhuanzheshu.value)<parseInt(document.form1.zhiyuhuanzheshu.value)){alert("对不起，新冠患者数必需大于治愈患者数");return false;}

return true;   
}   
popheight=450;
</script>  
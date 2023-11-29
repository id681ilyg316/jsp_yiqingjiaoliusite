<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>

    <title>疫苗接种</title>
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
 document.location.href="yimiaojiezhong_add.jsp?id=<%=id%>";
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
new CommDAO().insert(request,response,"yimiaojiezhong",ext,true,false,""); 
%>
<body class="body">
<form  action="yimiaojiezhong_add.jsp?f=f&id=<%=id%>"  name="form1" class="form" onsubmit="return checkform();">
  添加疫苗接种:
  <br><br>
   <table width="100%" class="table" >
		<tr><td  width="200">国家：</td><td><input name='guojia' type='text' id='guojia' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabelguojia' /></td></tr>

		<tr><td  width="200">累计接种：</td><td><input name='leijijiezhong' type='text' id='leijijiezhong' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabelleijijiezhong' /></td></tr>

		<tr><td  width="200">新增接种：</td><td><input name='xinzengjiezhong' type='text' id='xinzengjiezhong' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabelxinzengjiezhong' /></td></tr>

		<tr><td  width="200">接种率：</td><td><input name='jiezhonglu' type='text' id='jiezhonglu' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabeljiezhonglu' /></td></tr>

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
 
	


    var guojiaobj = document.getElementById("guojia"); if(guojiaobj.value==""){document.getElementById("clabelguojia").innerHTML="&nbsp;&nbsp;<font color=red>请输入国家</font>";return false;}else{document.getElementById("clabelguojia").innerHTML="  "; } 
	var guojiaobj = document.getElementById("guojia");  
if(guojiaobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yimiaojiezhong&col=guojia&value="+guojiaobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelguojia").innerHTML="&nbsp;&nbsp;<font color=red>国家已存在</font>";  
return false;
}else{document.getElementById("clabelguojia").innerHTML="  ";  
}  
} 

var leijijiezhongobj = document.getElementById("leijijiezhong"); if(leijijiezhongobj.value==""){document.getElementById("clabelleijijiezhong").innerHTML="&nbsp;&nbsp;<font color=red>请输入累计接种</font>";return false;}else{document.getElementById("clabelleijijiezhong").innerHTML="  "; } 	var leijijiezhongobj = document.getElementById("leijijiezhong"); if(leijijiezhongobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(leijijiezhongobj.value)){document.getElementById("clabelleijijiezhong").innerHTML=""; }else{document.getElementById("clabelleijijiezhong").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
var xinzengjiezhongobj = document.getElementById("xinzengjiezhong"); if(xinzengjiezhongobj.value==""){document.getElementById("clabelxinzengjiezhong").innerHTML="&nbsp;&nbsp;<font color=red>请输入新增接种</font>";return false;}else{document.getElementById("clabelxinzengjiezhong").innerHTML="  "; } 	var xinzengjiezhongobj = document.getElementById("xinzengjiezhong"); if(xinzengjiezhongobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(xinzengjiezhongobj.value)){document.getElementById("clabelxinzengjiezhong").innerHTML=""; }else{document.getElementById("clabelxinzengjiezhong").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
var jiezhongluobj = document.getElementById("jiezhonglu"); if(jiezhongluobj.value==""){document.getElementById("clabeljiezhonglu").innerHTML="&nbsp;&nbsp;<font color=red>请输入接种率</font>";return false;}else{document.getElementById("clabeljiezhonglu").innerHTML="  "; } return true;   
}   
popheight=450;
</script>  
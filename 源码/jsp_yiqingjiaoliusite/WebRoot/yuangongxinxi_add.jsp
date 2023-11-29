<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>

    <title>员工信息</title>
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
 document.location.href="yuangongxinxi_add.jsp?id=<%=id%>";
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
new CommDAO().insert(request,response,"yuangongxinxi",ext,true,false,""); 
%>
<body class="body">
<form  action="yuangongxinxi_add.jsp?f=f&id=<%=id%>"  name="form1" class="form" onsubmit="return checkform();">
  添加员工信息:
  <br><br>
   <table width="100%" class="table" >
		<tr><td  width="200">员工工号：</td><td><input name='yuangonggonghao' type='text' id='yuangonggonghao' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabelyuangonggonghao' /></td></tr>

		<tr><td  width="200">密码：</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabelmima' /></td></tr>

		<tr><td  width="200">员工姓名：</td><td><input name='yuangongxingming' type='text' id='yuangongxingming' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabelyuangongxingming' /></td></tr>

		<tr><td>性别：</td><td><select name='xingbie' class="select"  id='xingbie'><option value="男">男</option>
<option value="女">女</option>
</select></td></tr>

		<tr><td  width="200">年龄：</td><td><input name='nianling' type='text' id='nianling' value='' onblur='checkform()' class="hdladd" /></td></tr>

		<tr><td  width="200">手机：</td><td><input name='shouji' type='text' id='shouji' value='' onblur='checkform()' class="hdladd" /></td></tr>

		<tr><td  width="200">邮箱：</td><td><input name='youxiang' type='text' id='youxiang' value='' onblur='checkform()' class="hdladd" /></td></tr>

		<tr><td  width="200">简介：</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie' onblur='' class="hdladd" ></textarea></td></tr>

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
 
	


    var yuangonggonghaoobj = document.getElementById("yuangonggonghao"); if(yuangonggonghaoobj.value==""){document.getElementById("clabelyuangonggonghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入员工工号</font>";return false;}else{document.getElementById("clabelyuangonggonghao").innerHTML="  "; } 
	var yuangonggonghaoobj = document.getElementById("yuangonggonghao");  
if(yuangonggonghaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yuangongxinxi&col=yuangonggonghao&value="+yuangonggonghaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyuangonggonghao").innerHTML="&nbsp;&nbsp;<font color=red>员工工号已存在</font>";  
return false;
}else{document.getElementById("clabelyuangonggonghao").innerHTML="  ";  
}  
} 

var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; }     var yuangongxingmingobj = document.getElementById("yuangongxingming"); if(yuangongxingmingobj.value==""){document.getElementById("clabelyuangongxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入员工姓名</font>";return false;}else{document.getElementById("clabelyuangongxingming").innerHTML="  "; } 
	var yuangongxingmingobj = document.getElementById("yuangongxingming");  
if(yuangongxingmingobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yuangongxinxi&col=yuangongxingming&value="+yuangongxingmingobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyuangongxingming").innerHTML="&nbsp;&nbsp;<font color=red>员工姓名已存在</font>";  
return false;
}else{document.getElementById("clabelyuangongxingming").innerHTML="  ";  
}  
} 

	var nianlingobj = document.getElementById("nianling"); if(nianlingobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(nianlingobj.value)){document.getElementById("clabelnianling").innerHTML=""; }else{document.getElementById("clabelnianling").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var shoujiobj = document.getElementById("shouji"); if(shoujiobj.value!=""){ if(/^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(shoujiobj.value)){document.getElementById("clabelshouji").innerHTML=""; }else{document.getElementById("clabelshouji").innerHTML="&nbsp;&nbsp;<font color=red>必需手机格式</font>"; return false;}} 
    var youxiangobj = document.getElementById("youxiang"); if(youxiangobj.value!=""){ if(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(youxiangobj.value)){document.getElementById("clabelyouxiang").innerHTML=""; }else{document.getElementById("clabelyouxiang").innerHTML="&nbsp;&nbsp;<font color=red>必需邮箱格式</font>"; return false;}}
return true;   
}   
popheight=450;
</script>  
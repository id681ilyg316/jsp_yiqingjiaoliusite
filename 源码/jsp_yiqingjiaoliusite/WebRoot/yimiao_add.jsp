<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>

    <title>疫苗</title>
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
 document.location.href="yimiao_add.jsp?id=<%=id%>";
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
new CommDAO().insert(request,response,"yimiao",ext,true,false,""); 
%>
<body class="body">
<form  action="yimiao_add.jsp?f=f&id=<%=id%>"  name="form1" class="form" onsubmit="return checkform();">
  添加疫苗:
  <br><br>
   <table width="100%" class="table" >
		<tr><td  width="200">疫苗编号：</td><td><input name='yimiaobianhao' type='text' id='yimiaobianhao' value='<%=Info.getID()%>' readonly="readonly" onblur='checkform()' class="hdladd" /></td></tr>

		<tr><td  width="200">疫苗名称：</td><td><input name='yimiaomingchen' type='text' id='yimiaomingchen' value='' onblur='' size='50' class="hdladd" />&nbsp;*<label id='clabelyimiaomingchen' /></td></tr>

		<tr><td  width="200">公司名称：</td><td><input name='gongsimingchen' type='text' id='gongsimingchen' value='' onblur='' size='50' class="hdladd" /></td></tr>

		<tr><td  width="200">副作用：</td><td><input name='fuzuoyong' type='text' id='fuzuoyong' value='' onblur='' size='50' class="hdladd" /></td></tr>

		<tr><td  width="200">图片：</td><td><input name='tupian' type='text' id='tupian' size='50' value='' onblur='' class="hdladd" />&nbsp;<input type='button' value='上传' onClick="up('tupian')" class="button4" /></td></tr>

		<tr><td  width="200">接种点：</td><td><input name='jiezhongdian' type='text' id='jiezhongdian' value='' onblur='' size='50' class="hdladd" />&nbsp;*<label id='clabeljiezhongdian' /></td></tr>

		<tr><td  width="200">介绍：</td><td><textarea name='jieshao' cols='50' rows='5' id='jieshao' onblur='' class="hdladd" ></textarea></td></tr>

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
 
	


var yimiaomingchenobj = document.getElementById("yimiaomingchen"); if(yimiaomingchenobj.value==""){document.getElementById("clabelyimiaomingchen").innerHTML="&nbsp;&nbsp;<font color=red>请输入疫苗名称</font>";return false;}else{document.getElementById("clabelyimiaomingchen").innerHTML="  "; }     var jiezhongdianobj = document.getElementById("jiezhongdian"); if(jiezhongdianobj.value==""){document.getElementById("clabeljiezhongdian").innerHTML="&nbsp;&nbsp;<font color=red>请输入接种点</font>";return false;}else{document.getElementById("clabeljiezhongdian").innerHTML="  "; } 
	var jiezhongdianobj = document.getElementById("jiezhongdian");  
if(jiezhongdianobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yimiao&col=jiezhongdian&value="+jiezhongdianobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabeljiezhongdian").innerHTML="&nbsp;&nbsp;<font color=red>接种点已存在</font>";  
return false;
}else{document.getElementById("clabeljiezhongdian").innerHTML="  ";  
}  
} 

return true;   
}   
popheight=450;
</script>  
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>

    <title>全球疫情</title>
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
 document.location.href="quanqiuyiqing_add.jsp?id=<%=id%>";
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
new CommDAO().insert(request,response,"quanqiuyiqing",ext,true,false,""); 
%>
<body class="body">
<form  action="quanqiuyiqing_add.jsp?f=f&id=<%=id%>"  name="form1" class="form" onsubmit="return checkform();">
  添加全球疫情:
  <br><br>
   <table width="100%" class="table" >
		<tr><td  width="200">国家：</td><td><input name='guojia' type='text' id='guojia' value='' onblur='' size='50' class="hdladd" />&nbsp;*<label id='clabelguojia' /></td></tr>

		<tr><td  width="200">新冠患者数：</td><td><input name='xinguanhuanzheshu' type='text' id='xinguanhuanzheshu' value='' onblur='checkform()' class="hdladd" /></td></tr>

		<tr><td  width="200">新增长患者数：</td><td><input name='xinzengchanghuanzheshu' type='text' id='xinzengchanghuanzheshu' value='' onblur='checkform()' class="hdladd" /></td></tr>

		<tr><td  width="200">治愈患者数：</td><td><input name='zhiyuhuanzheshu' type='text' id='zhiyuhuanzheshu' value='' onblur='checkform()' class="hdladd" /></td></tr>

		<tr><td  width="200">隔离人数：</td><td><input name='gelirenshu' type='text' id='gelirenshu' value='' onblur='checkform()' class="hdladd" /></td></tr>

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
ajax.post("factory/checkno.jsp?table=quanqiuyiqing&col=guojia&value="+guojiaobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelguojia").innerHTML="&nbsp;&nbsp;<font color=red>国家已存在</font>";  
return false;
}else{document.getElementById("clabelguojia").innerHTML="  ";  
}  
} 

return true;   
}   
popheight=450;
</script>  
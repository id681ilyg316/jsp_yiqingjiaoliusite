<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>

    <title>地区信息</title>
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
 document.location.href="diquxinxi_add.jsp?id=<%=id%>";
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
new CommDAO().insert(request,response,"diquxinxi",ext,true,false,""); 
%>
<body class="body">
<form  action="diquxinxi_add.jsp?f=f&id=<%=id%>"  name="form1" class="form" onsubmit="return checkform();">
  添加地区信息:
  <br><br>
   <table width="100%" class="table" >
		<tr><td  width="200">地区：</td><td><input name='diqu' type='text' id='diqu' value='' onblur='checkform()' class="hdladd" />&nbsp;*<label id='clabeldiqu' /></td></tr>

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
 
	


    var diquobj = document.getElementById("diqu"); if(diquobj.value==""){document.getElementById("clabeldiqu").innerHTML="&nbsp;&nbsp;<font color=red>请输入地区</font>";return false;}else{document.getElementById("clabeldiqu").innerHTML="  "; } 
	var diquobj = document.getElementById("diqu");  
if(diquobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=diquxinxi&col=diqu&value="+diquobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabeldiqu").innerHTML="&nbsp;&nbsp;<font color=red>地区已存在</font>";  
return false;
}else{document.getElementById("clabeldiqu").innerHTML="  ";  
}  
} 

return true;   
}   
popheight=450;
</script>  
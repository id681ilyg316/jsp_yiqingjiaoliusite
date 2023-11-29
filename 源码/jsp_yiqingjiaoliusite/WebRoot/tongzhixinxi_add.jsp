<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>

    <title>通知信息</title>
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
 document.location.href="tongzhixinxi_add.jsp?id=<%=id%>";
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
new CommDAO().insert(request,response,"tongzhixinxi",ext,true,false,""); 
%>
<body class="body">
<form  action="tongzhixinxi_add.jsp?f=f&id=<%=id%>"  name="form1" class="form" onsubmit="return checkform();">
  添加通知信息:
  <br><br>
   <table width="100%" class="table" >
		<tr><td  width="200">标题：</td><td><input name='biaoti' type='text' id='biaoti' value='' onblur='' size='50' class="hdladd" />&nbsp;*<label id='clabelbiaoti' /></td></tr>

		<tr><td>地区：</td><td class="select"><%=Info.getselect("diqu","diquxinxi","diqu")%></td></tr>

		<tr><td  width="200">内容：</td><td><textarea name='neirong' cols='50' rows='5' id='neirong' onblur='' class="hdladd" ></textarea></td></tr>

		<tr><td  width="200">发布人：</td><td><input name='faburen' type='text' id='faburen' value='<%=request.getSession().getAttribute("username")%>'readonly="readonly" onblur='checkform()' class="hdladd" /></td></tr>

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
 
	


var biaotiobj = document.getElementById("biaoti"); if(biaotiobj.value==""){document.getElementById("clabelbiaoti").innerHTML="&nbsp;&nbsp;<font color=red>请输入标题</font>";return false;}else{document.getElementById("clabelbiaoti").innerHTML="  "; } return true;   
}   
popheight=450;
</script>  
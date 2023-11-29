<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>通知信息</title>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<LINK href="css.css" type=text/css rel=stylesheet>
  </head>

<script language="javascript">

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
<body class="body">

   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"tongzhixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"tongzhixinxi"); 

%>
  <form  action="tongzhixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1" class="form"  onsubmit="return checkform();">
  修改通知信息:
  <br><br>

   <table width="100%" class="table" >

		<tr><td  width="200">标题：</td><td><input name='biaoti' type='text' id='biaoti' value='<%= mmm.get("biaoti")%>' onblur='' size='50' class="hdladd" />
		<tr><td>地区：</td><td class="select"><%=Info.getselect("diqu","diquxinxi","diqu")%></td></tr><script language="javascript">document.form1.diqu.value='<%=mmm.get("diqu")%>';</script>
<tr><td>内容：</td><td><textarea name='neirong' cols='50' rows='5' id='neirong' class="hdladd" ><%=mmm.get("neirong")%></textarea></td></tr>
     <tr><td>发布人：</td><td><input name='faburen' type='text' id='faburen' value='<%= mmm.get("faburen")%>' class="hdladd" /></td></tr>
<tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();"  class="button2" />
      <input type="reset" name="Submit2" value="重置" class="button3" /></td>
    </tr>
  </table>
</form>

  </body>
</html>
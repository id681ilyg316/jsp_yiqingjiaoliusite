<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>疫苗接种</title>
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

new CommDAO().update(request,response,"yimiaojiezhong",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yimiaojiezhong"); 

%>
  <form  action="yimiaojiezhong_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1" class="form"  onsubmit="return checkform();">
  修改疫苗接种:
  <br><br>

   <table width="100%" class="table" >

     <tr><td>国家：</td><td><input name='guojia' type='text' id='guojia' value='<%= mmm.get("guojia")%>' class="hdladd" /></td></tr>
     <tr><td>累计接种：</td><td><input name='leijijiezhong' type='text' id='leijijiezhong' value='<%= mmm.get("leijijiezhong")%>' class="hdladd" /></td></tr>
     <tr><td>新增接种：</td><td><input name='xinzengjiezhong' type='text' id='xinzengjiezhong' value='<%= mmm.get("xinzengjiezhong")%>' class="hdladd" /></td></tr>
     <tr><td>接种率：</td><td><input name='jiezhonglu' type='text' id='jiezhonglu' value='<%= mmm.get("jiezhonglu")%>' class="hdladd" /></td></tr>
		<tr><td  width="200">说明：</td><td><input name='shuoming' type='text' id='shuoming' value='<%= mmm.get("shuoming")%>' onblur='' size='50' class="hdladd" />
<tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();"  class="button2" />
      <input type="reset" name="Submit2" value="重置" class="button3" /></td>
    </tr>
  </table>
</form>

  </body>
</html>
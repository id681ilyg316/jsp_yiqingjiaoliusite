<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>员工信息</title>
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
new CommDAO().update(request,response,"yuangongxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmaps("yuangonggonghao",(String)request.getSession().getAttribute("username"),"yuangongxinxi"); 
%>
  <form  action="yuangongxinxi_updt2.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1" class="form"  onsubmit="return checkform();">
  修改员工信息:
  <br><br>

   <table width="100%" class="table" >

     <tr><td>员工工号：</td><td><input name='yuangonggonghao' type='text' id='yuangonggonghao' value='<%= mmm.get("yuangonggonghao")%>' class="hdladd" readonly="readonly" />*此项不得修改
</td></tr>
     <tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' class="hdladd" /></td></tr>
     <tr><td>员工姓名：</td><td><input name='yuangongxingming' type='text' id='yuangongxingming' value='<%= mmm.get("yuangongxingming")%>' class="hdladd" /></td></tr>
		<tr><td>性别：</td><td><select name='xingbie' class="select"  id='xingbie'><option value="男">男</option>
<option value="女">女</option>
</select></td></tr><script language="javascript">document.form1.xingbie.value='<%=mmm.get("xingbie")%>';</script>
     <tr><td>年龄：</td><td><input name='nianling' type='text' id='nianling' value='<%= mmm.get("nianling")%>' class="hdladd" /></td></tr>
     <tr><td>手机：</td><td><input name='shouji' type='text' id='shouji' value='<%= mmm.get("shouji")%>' class="hdladd" /></td></tr>
     <tr><td>邮箱：</td><td><input name='youxiang' type='text' id='youxiang' value='<%= mmm.get("youxiang")%>' class="hdladd" /></td></tr>
<tr><td>简介：</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie' class="hdladd" ><%=mmm.get("jianjie")%></textarea></td></tr>
<tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();"  class="button2" />
      <input type="reset" name="Submit2" value="重置" class="button3" /></td>
    </tr>
  </table>
</form>

  </body>
</html>
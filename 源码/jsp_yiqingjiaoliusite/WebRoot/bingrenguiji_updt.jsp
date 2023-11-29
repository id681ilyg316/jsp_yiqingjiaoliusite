<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>病人轨迹</title>
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

new CommDAO().update(request,response,"bingrenguiji",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"bingrenguiji"); 

%>
  <form  action="bingrenguiji_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1" class="form"  onsubmit="return checkform();">
  修改病人轨迹:
  <br><br>

   <table width="100%" class="table" >

		<tr><td  width="200">患者信息：</td><td><input name='huanzhexinxi' type='text' id='huanzhexinxi' value='<%= mmm.get("huanzhexinxi")%>' onblur='' size='50' class="hdladd" />
		<tr><td>地区：</td><td class="select"><%=Info.getselect("diqu","diquxinxi","diqu")%></td></tr><script language="javascript">document.form1.diqu.value='<%=mmm.get("diqu")%>';</script>
		<tr><td>风险：</td><td><select name='fengxian' class="select"  id='fengxian'><option value="中">中</option>
<option value="高">高</option>
</select></td></tr><script language="javascript">document.form1.fengxian.value='<%=mmm.get("fengxian")%>';</script>
		<tr><td  width="200">轨迹：</td><td><input name='guiji' type='text' id='guiji' value='<%= mmm.get("guiji")%>' onblur='' size='50' class="hdladd" />
     <tr><td>日期：</td><td><input name='riqi' type='text' id='riqi' value='<%= mmm.get("riqi")%>' class="hdladd" /></td></tr>
		<tr><td  width="200">说明：</td><td><input name='shuoming' type='text' id='shuoming' value='<%= mmm.get("shuoming")%>' onblur='' size='50' class="hdladd" />
     <tr><td>添加人：</td><td><input name='tianjiaren' type='text' id='tianjiaren' value='<%= mmm.get("tianjiaren")%>' class="hdladd" /></td></tr>
<tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();"  class="button2" />
      <input type="reset" name="Submit2" value="重置" class="button3" /></td>
    </tr>
  </table>
</form>

  </body>
</html>
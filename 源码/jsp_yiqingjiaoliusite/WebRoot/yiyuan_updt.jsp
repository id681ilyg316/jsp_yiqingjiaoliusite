<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>医院</title>
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

new CommDAO().update(request,response,"yiyuan",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yiyuan"); 

%>
  <form  action="yiyuan_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1" class="form"  onsubmit="return checkform();">
  修改医院:
  <br><br>

   <table width="100%" class="table" >

		<tr><td  width="200">医院名称：</td><td><input name='yiyuanmingchen' type='text' id='yiyuanmingchen' value='<%= mmm.get("yiyuanmingchen")%>' onblur='' size='50' class="hdladd" />
		<tr><td>地区：</td><td class="select"><%=Info.getselect("diqu","diquxinxi","diqu")%></td></tr><script language="javascript">document.form1.diqu.value='<%=mmm.get("diqu")%>';</script>
     <tr><td>联系电话：</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='<%= mmm.get("lianxidianhua")%>' class="hdladd" /></td></tr>
		<tr><td  width="200">地址：</td><td><input name='dizhi' type='text' id='dizhi' value='<%= mmm.get("dizhi")%>' onblur='' size='50' class="hdladd" />
		<tr><td  width="200">接种时间：</td><td><input name='jiezhongshijian' type='text' id='jiezhongshijian' value='<%= mmm.get("jiezhongshijian")%>' onblur='' size='50' class="hdladd" />
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
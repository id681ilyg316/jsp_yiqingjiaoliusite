<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>全球疫情</title>
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

new CommDAO().update(request,response,"quanqiuyiqing",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"quanqiuyiqing"); 

%>
  <form  action="quanqiuyiqing_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1" class="form"  onsubmit="return checkform();">
  修改全球疫情:
  <br><br>

   <table width="100%" class="table" >

		<tr><td  width="200">国家：</td><td><input name='guojia' type='text' id='guojia' value='<%= mmm.get("guojia")%>' onblur='' size='50' class="hdladd" />
     <tr><td>新冠患者数：</td><td><input name='xinguanhuanzheshu' type='text' id='xinguanhuanzheshu' value='<%= mmm.get("xinguanhuanzheshu")%>' class="hdladd" /></td></tr>
     <tr><td>新增长患者数：</td><td><input name='xinzengchanghuanzheshu' type='text' id='xinzengchanghuanzheshu' value='<%= mmm.get("xinzengchanghuanzheshu")%>' class="hdladd" /></td></tr>
     <tr><td>治愈患者数：</td><td><input name='zhiyuhuanzheshu' type='text' id='zhiyuhuanzheshu' value='<%= mmm.get("zhiyuhuanzheshu")%>' class="hdladd" /></td></tr>
     <tr><td>隔离人数：</td><td><input name='gelirenshu' type='text' id='gelirenshu' value='<%= mmm.get("gelirenshu")%>' class="hdladd" /></td></tr>
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
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>疫苗</title>
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

new CommDAO().update(request,response,"yimiao",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yimiao"); 

%>
  <form  action="yimiao_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1" class="form"  onsubmit="return checkform();">
  修改疫苗:
  <br><br>

   <table width="100%" class="table" >

     <tr><td>疫苗编号：</td><td><input name='yimiaobianhao' type='text' id='yimiaobianhao' value='<%= mmm.get("yimiaobianhao")%>' class="hdladd" /></td></tr>
		<tr><td  width="200">疫苗名称：</td><td><input name='yimiaomingchen' type='text' id='yimiaomingchen' value='<%= mmm.get("yimiaomingchen")%>' onblur='' size='50' class="hdladd" />
		<tr><td  width="200">公司名称：</td><td><input name='gongsimingchen' type='text' id='gongsimingchen' value='<%= mmm.get("gongsimingchen")%>' onblur='' size='50' class="hdladd" />
		<tr><td  width="200">副作用：</td><td><input name='fuzuoyong' type='text' id='fuzuoyong' value='<%= mmm.get("fuzuoyong")%>' onblur='' size='50' class="hdladd" />
     <tr><td >图片：</td><td><input name='tupian' type='text' id='tupian' size='50' value='<%= mmm.get("tupian")%>' class="hdladd" />&nbsp;<input type='button' value='上传' onClick="up('tupian')" class="button2" /></td></tr>
		<tr><td  width="200">接种点：</td><td><input name='jiezhongdian' type='text' id='jiezhongdian' value='<%= mmm.get("jiezhongdian")%>' onblur='' size='50' class="hdladd" />
<tr><td>介绍：</td><td><textarea name='jieshao' cols='50' rows='5' id='jieshao' class="hdladd" ><%=mmm.get("jieshao")%></textarea></td></tr>
<tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();"  class="button2" />
      <input type="reset" name="Submit2" value="重置" class="button3" /></td>
    </tr>
  </table>
</form>

  </body>
</html>
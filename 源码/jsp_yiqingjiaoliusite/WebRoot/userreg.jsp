<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="qtimages/css/wst.css"/>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
<script type="text/javascript" src="qtimages/jquery.js"></script>
<script type="text/javascript" src="qtimages/inc.js"></script>




</head>
 <% 
HashMap ext = new HashMap(); 
ext.put("issh","否"); 
new CommDAO().insert(request,response,"yonghuzhuce",ext,true,false,"index.jsp"); 
%>
<body>

<!--头部代码的开始-->
<%@ include file="qttop.jsp"%>
<!--头部代码的结束-->

<!--子页面banner-->
<div class="scban"></div>
<!--子页面banner-->

<!--页面导航部分的开始-->


<!--页面导航部分的结束-->

<!--主题内容的开始-->
<!--关于南通头马俱乐部管理系统的开始-->
<div class="gywst"> 
  <!--标题的开始-->
  <div class="gywst_title">
    <div class="gywstc">
      <h2>用户注册</h2>
      <span>UserReg</span></div>
  </div>
  <!--标题的结束--> 
  
  
  
  <!--内容的开始-->
  <div class="gywstnr">
   
	<form  action="userreg.jsp?f=f"  name="f1"  onsubmit="return checkform();">
						 <table width="100%" height=550  align="center" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF" class="newsline" >
                        
                            <tr>
                              <td width="15%">用户名：</td>
                              <td colspan="2"><input name='yonghuming' type='text' id='yonghuming' value='' onblur='checkform()'  /><label id='clabelyonghuming' />
                                &nbsp;*</td>
                            </tr>
                            <tr>
                              <td>密码：</td>
                              <td width="27%"><input name='mima' type='password' id='mima' value='' onblur='checkform()'  /><label id='clabelmima' />
                                &nbsp;* 
                               </td>
                              <td width="58%">确认密码：
                                <input name='mima2' type='password' id='mima2' value='' onblur='checkform()'>  <label id='clabelmima2' /> </td>
                            </tr>
                            <tr>
                              <td>姓名：</td>
                              <td colspan="2"><input name='xingming' type='text' id='xingming' value='' onblur='checkform()'  /><label id='clabelxingming' />
                                &nbsp;*</td>
                            </tr>
                            <tr>
                              <td>性别：</td>
                              <td colspan="2"><select name='xingbie' id='xingbie' style=" height:19px; border:solid 1px #000000; color:#666666">
                                  <option value="男">男</option>
                                  <option value="女">女</option>
                              </select></td>
                            </tr>
							<tr><td>地区：</td>
							
							<td colspan="2" class="select"><%=Info.getselect("diqu","diquxinxi","diqu")%>&nbsp;*<label id='clabeldiqu' /></td></tr>
                            <tr>
                              <td>出生年月：</td>
                              <td colspan="2"><input name='chushengnianyue' type='text' id='chushengnianyue' value='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" /></td>
                            </tr>
                           
                            <tr>
                              <td>电话：</td>
                              <td colspan="2"><input name='dianhua' type='text' id='dianhua' value='' onblur='checkform()'  /> <label id='clabeldianhua' /></td>
                            </tr>
                            <tr>
                              <td>身份证：</td>
                              <td colspan="2"><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()'  /> <label id='clabelshenfenzheng' /> </td>
                            </tr>
                           
                           
                            <tr>
                              <td>&nbsp;</td>
                              <td colspan="2"><input type="submit" name="Submit5" value="提交" onClick="return check();"/>
                                  <input type="reset" name="Submit22" value="重置" /></td>
                            </tr>
                        </table>
						 </form>
                     
					  
    <div class="clear"></div>
  </div>
  <!--内容的结束--> 
</div>

<!--主题内容的结束-->

<!--底部的开始-->
<%@ include file="qtdown.jsp"%>
<!--底部的结束-->
</body>
</html>



<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script type="text/javascript" src="js/popup.js"></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
var yonghumingobj = document.getElementById("yonghuming");  
if(yonghumingobj.value==""){  
document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";  
return false;  
}else{
document.getElementById("clabelyonghuming").innerHTML="  ";  
}  
  
var yonghumingobj = document.getElementById("yonghuming");  
if(yonghumingobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yonghuzhuce&col=yonghuming&value="+yonghumingobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false;
}else{document.getElementById("clabelyonghuming").innerHTML="  ";  
}  
}  
var mimaobj = document.getElementById("mima");  
if(mimaobj.value==""){  
document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";  
return false;  
}else{
document.getElementById("clabelmima").innerHTML="  ";  
}  

var mima2obj = document.getElementById("mima2");  
if(mima2obj.value==""){  
document.getElementById("clabelmima2").innerHTML="&nbsp;&nbsp;<font color=red>请再次输入密码</font>";  
return false;  
}else{
document.getElementById("clabelmima2").innerHTML="  ";  
}

if(mima2obj.value!=mimaobj.value){  
document.getElementById("clabelmima2").innerHTML="&nbsp;&nbsp;<font color=red>两次密码输入不一致</font>";  
return false;  
}else{
document.getElementById("clabelmima2").innerHTML="  ";  
}
 
  
var xingmingobj = document.getElementById("xingming");  
if(xingmingobj.value==""){  
document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";  
return false;  
}else{
document.getElementById("clabelxingming").innerHTML="  ";  
}  


//var QQobj = document.getElementById("QQ");  
//if(QQobj.value!=""){  
//if(QQobj.value.length>12||isNaN(QQobj.value)){ 
//document.getElementById("clabelQQ").innerHTML="&nbsp;&nbsp;<font color=red>联系QQ必须为12位以内数字</font>";  
//return false;
//}else{  
//document.getElementById("clabelQQ").innerHTML="";  
//}  
//}  

//var youxiangobj = document.getElementById("youxiang");  
//if(youxiangobj.value!=""){  
//if(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(youxiangobj.value))
//{ 
//document.getElementById("clabelyouxiang").innerHTML="";  
//}else{  
//document.getElementById("clabelyouxiang").innerHTML="&nbsp;&nbsp;<font color=red>必需邮箱格式</font>";  
//return false;
//}  
//}  
  
var dianhuaobj = document.getElementById("dianhua");  
if(dianhuaobj.value!=""){  
if(/^1[3|4|5|8][0-9]\d{4,8}$/.test(dianhuaobj.value))
{ 
document.getElementById("clabeldianhua").innerHTML="";  
}else{  
document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>必需手机格式</font>";  
return false;
}  
}  

var shenfenzhengobj = document.getElementById("shenfenzheng");  
if(shenfenzhengobj.value!=""){  
if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value))
{ 
document.getElementById("clabelshenfenzheng").innerHTML="";  
}else{  
document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>必需身份证格式</font>";  
return false;
}  
}  



return true;   
}   
popheight=450;
</script>  



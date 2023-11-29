<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;
 </script>
<div class="wtop">
  <div class="wtopc">
    <div class="wtopl"><span>欢迎来到新冠疫情查询与管理系统官网！</span></div>
    <div class="wtopr fr">
	
  <script type="text/javascript">
          
           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("请输入完整");
		return false;
	}
}
           
                            </script>

	 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
                  <table width="583" height="30" border="0" cellpadding="0" cellspacing="0">
                  <form action="yiqingjiaoliusite?ac=login&amp;a=a" name="f11" id="f11" style="display: inline">
                      <tr>
                        <td width="60"  height="30" align="left" >用户名                          </td>
                        <td width="64" align="left" ><input name="username" type="text" id="username"  style=" width:60px; height:19px; border:solid 1px #000000; color:#666666" /></td>
                        <td width="44" align="left" style=" padding-left:3px; padding-right:3px;">密码</td>
                        <td width="72" align="left" style=" padding-left:3px; padding-right:3px;"><input name="pwd1" type="password" id="pwd1"  style="width:60px; height:19px; border:solid 1px #000000; color:#666666" /></td>
                        <td width="50" align="left">
                        权限</td>
                        <td width="105" align="left"><select name="cx" id="cx" style="width:100px; height:20px; border:solid 1px #000000; color:#666666" >
                          <option value="注册用户">注册用户</option>
						  
						  <!--quxanxiaxndexnglxu-->
                        </select></td>
                        <td  width="59" align="left">验证码</td>
                        <td  width="55" align="left"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" /></td>
                        <td  width="34" align="left"><a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /> </a></td>
                        <td width="83" align="center"><input type="submit" name="Submit32" value="登陆"  onclick="return checklog();" /></td>
						  
                      </tr>
                    </form>
      </table>
                  <%}else{ %>
				  
				   <table width="545" height="30" border="0" cellpadding="0" cellspacing="0">
                
                      <tr>
                        <td width="226"  height="30" align="right" >用户名                          </td>
                        <td width="10" align="right" >&nbsp;</td>
                        <td width="53" align="left" ><%=request.getSession().getAttribute("username")%></td>
                        <td width="37" align="left">
                        权限</td>
                        <td width="78" align="left"> <%=request.getSession().getAttribute("cx")%></td>
                        <td width="68" align="left"><input type="button" name="Submit2" value="个人后台" onclick="location.href='main.jsp';"   /></td>
                        <td width="75" align="center"> <input type="button" name="Submit2" value="退出" onclick="location.href='logout.jsp';"   /></td>
                      </tr>
                   
      </table>
	  
                 
                 <%} %>
	</div>
  </div>
</div>

<div id="hsgbanner">
		<div  class="navgrp">
		
			<ul class="nav" id="nav">
				
			  <li class="cur" ><a href="index.jsp">网站首页</a></li>
			  <li ><a href="dx_detail.jsp?lb=疫情辟谣">疫情辟谣</a> </li>
			  <li><a href="userreg.jsp">用户注册</a></li>
		
			  <li><a style="cursor:pointer">疫情相关</a>
				<div id="navChild"> <a href="news.jsp?lb=疫情资讯">疫情资讯</a> <a href="news.jsp?lb=疫情政策">疫情政策</a> <a href="news.jsp?lb=疫情进展">疫情进展</a>  
				 <a href="news.jsp?lb=病毒资料">病毒资料</a>  </div>
			  </li>
			    <li><a style="cursor:pointer">疫情情况</a>
				<div id="navChild"> <a href="quanqiuyiqinglist.jsp">全球疫情</a>   <a href="quanguoyiqinglist.jsp">全国疫情</a></div>
			  </li>
			  
			 <li><a href="yimiaolist.jsp">疫苗展示</a> </li>
			  <li><a href="yiyuanlist.jsp">定点医院</a> </li>
			  <li><a href="jiancejigoulist.jsp">检测机构</a> </li>
			   <li><a href="bingrenguijilist.jsp">病患轨迹</a> </li>
			
			  <!-- <li><a style="cursor:pointer">房源</a>
				<div id="navChild"> <a href="fangyuanlisttp.jsp">房源展示</a>  </div>
			  </li>-->
			 
			  <li><a style="cursor:pointer">在线留言</a>
				<div id="navChild"> <a href="lyb.jsp">我要留言</a> <a href="lyblist.jsp">查看留言</a> </div>
			  </li>
			

			   <li><a href="login.jsp">后台管理</a> </li>
			</ul>
        </div>
 </div>






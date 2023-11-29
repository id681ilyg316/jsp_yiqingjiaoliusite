<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<table width="187">
<tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(1)" style="cursor:pointer"><font color=#000000><strong>・系统用户管理・</strong></font></td>
  </tr>
  
  <tr style="display:none"  id='submenu1'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
  <tr>
    <td width="100%" height=28 align="center"><a href="yhzhgl.jsp" target="main">普通管理员账号</a></td>
  </tr>
  <tr>
    <td align="center" height=28><a href="yonghuzhuce_list.jsp" target="main">注册用户管理</a></td>
  </tr>
  
 
  <tr>
    <td height=28 align="center"><a href="mod.jsp" target="main">修改密码</a></td>
  </tr>
  </table></td></tr> 

  <tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(2)" style="cursor:pointer"><font color=#000000><strong>・疫情相关管理・</strong></font></td>
  </tr>
  
  <tr style="display:none"  id='submenu2'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
 <!-- <tr>
    <td  height=28 align="center"><a href="xinwentongzhi_add.jsp?lb=疫情资讯" target="main">疫情资讯添加</a></td>
  </tr>-->
  <tr>
    <td align="center" height=28><a href="xinwentongzhi_list.jsp?lb=疫情资讯" target="main">疫情资讯管理</a></td>
  </tr>
 <!-- <tr>
    <td  height=28 align="center"><a href="xinwentongzhi_add.jsp?lb=疫情政策" target="main">疫情政策添加</a></td>
  </tr>-->
  <tr>
    <td align="center" height=28><a href="xinwentongzhi_list.jsp?lb=疫情政策" target="main">疫情政策管理</a></td>
  </tr>
 <!-- <tr>
    <td  height=28 align="center"><a href="xinwentongzhi_add.jsp?lb=疫情进展" target="main">疫情进展添加</a></td>
  </tr>-->
  <tr>
    <td align="center" height=28><a href="xinwentongzhi_list.jsp?lb=疫情进展" target="main">疫情进展管理</a></td>
  </tr>


  <!--<tr>
    <td  height=28 align="center"><a href="xinwentongzhi_add.jsp?lb=病毒资料" target="main">病毒资料添加</a></td>
  </tr>-->
  <tr>
    <td align="center" height=28><a href="xinwentongzhi_list.jsp?lb=病毒资料" target="main">病毒资料管理</a></td>
  </tr>
  
  
 <tr>
    <td  height=28 align="center"><a href="xinwentongzhi_add.jsp?lb=变幻图" target="main">变幻图添加</a></td>
  </tr>
  <tr>
    <td align="center" height=28><a href="xinwentongzhi_list.jsp?lb=变幻图" target="main">变幻图管理</a></td>
  </tr>
  
  </table></td></tr> 
  
   <tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(3)" style="cursor:pointer"><font color=#000000><strong>・地区信息管理・</strong></font></td>
  </tr>
  
  <tr style="display:none"  id='submenu3'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
    <tr>
    <td  height=28 align="center"><a href="diquxinxi_add.jsp" target="main">地区信息添加</a></td>
  </tr>
  <tr>
    <td align="center" height=28><a href="diquxinxi_list.jsp" target="main">地区信息管理</a></td>
  </tr>
 
</table></td></tr>

<!-- <tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(6)" style="cursor:pointer"><font color=#000000><strong>・员工信息管理・</strong></font></td>
  </tr>
  
  <tr style="display:none"  id='submenu6'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
    <tr>
    <td  height=28 align="center"><a href="yuangongxinxi_add.jsp" target="main">员工信息添加</a></td>
  </tr>
  <tr>
    <td align="center" height=28><a href="yuangongxinxi_list.jsp" target="main">员工信息管理</a></td>
  </tr>
 
</table></td></tr>-->


   <tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(4)" style="cursor:pointer"><font color=#000000><strong>・疫情数据管理・</strong></font></td>
  </tr>
  
  <tr style="display:none"  id='submenu4'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
    <tr>
    <td  height=28 align="center"><a href="quanqiuyiqing_add.jsp" target="main">全球疫情添加</a></td>
  </tr>
  <tr>
    <td align="center" height=28><a href="quanqiuyiqing_list.jsp" target="main">全球疫情管理</a></td>
  </tr>
    <tr>
    <td align="center" height=28><a href="quanguoyiqing_add.jsp" target="main">全国疫情添加</a></td>
  </tr>
   <tr>
    <td align="center" height=28><a href="quanguoyiqing_list.jsp" target="main">全国疫情管理</a></td>
  </tr>
</table></td></tr>





<tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(11)" style="cursor:pointer"><font color=#000000><strong>・疫苗信息管理・</strong></font></td>
</tr>
  <tr style="display:none"  id='submenu11'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
  
   <tr>
    <td align="center" height=28><a href="yimiao_add.jsp" target="main">疫苗信息添加</a></td>
  </tr>
  
  <tr>
    <td align="center" height=28><a href="yimiao_list.jsp" target="main">疫苗信息管理</a></td>
  </tr>
  
   <tr>
    <td align="center" height=28><a href="yimiaojiezhong_add.jsp" target="main">疫苗接种添加</a></td>
  </tr>
  
  <tr>
    <td align="center" height=28><a href="yimiaojiezhong_list.jsp" target="main">疫苗接种管理</a></td>
  </tr>
  
</table></td></tr>


<tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(12)" style="cursor:pointer"><font color=#000000><strong>・定点医院管理・</strong></font></td>
</tr>
  <tr style="display:none"  id='submenu12'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
  
   <tr>
    <td align="center" height=28><a href="yiyuan_add.jsp" target="main">定点医院添加</a></td>
  </tr>
  
  <tr>
    <td align="center" height=28><a href="yiyuan_list.jsp" target="main">定点医院管理</a></td>
  </tr>
</table></td></tr>


<tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(9)" style="cursor:pointer"><font color=#000000><strong>・检测机构管理・</strong></font></td>
</tr>
  <tr style="display:none"  id='submenu9'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
  
   <tr>
    <td align="center" height=28><a href="jiancejigou_add.jsp" target="main">检测机构添加</a></td>
  </tr>
  
  <tr>
    <td align="center" height=28><a href="jiancejigou_list.jsp" target="main">检测机构管理</a></td>
  </tr>
</table></td></tr>

<tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(10)" style="cursor:pointer"><font color=#000000><strong>・实时通知管理・</strong></font></td>
</tr>
  <tr style="display:none"  id='submenu10'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
  
   <tr>
    <td align="center" height=28><a href="tongzhixinxi_add.jsp" target="main">实时通知添加</a></td>
  </tr>
  
  <tr>
    <td align="center" height=28><a href="tongzhixinxi_list.jsp" target="main">实时通知管理</a></td>
  </tr>
</table></td></tr>


<tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(7)" style="cursor:pointer"><font color=#000000><strong>・病人轨迹管理・</strong></font></td>
</tr>
  <tr style="display:none"  id='submenu7'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
  
   <tr>
    <td align="center" height=28><a href="bingrenguiji_add.jsp" target="main">病人轨迹添加</a></td>
  </tr>
  
  <tr>
    <td align="center" height=28><a href="bingrenguiji_list.jsp" target="main">病人轨迹管理</a></td>
  </tr>
</table></td></tr>


<tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(8)" style="cursor:pointer"><font color=#000000><strong>・系统管理・</strong></font></td>
</tr>
  <tr style="display:none"  id='submenu8'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
   
    <tr> 
    	<td width="100%" align="center" height=28><a href="youqinglianjie_add.jsp" target="main">友情连接添加</a></td>
    </tr>
	<tr> 
		<td width="100%" align="center" height=28><a href="youqinglianjie_list.jsp" target="main">友情连接查询</a></td>
    </tr>
	<tr> 
		<td width="100%" align="center" height=28><a href="liuyanban_list.jsp" target="main">留言管理</a></td>
    </tr> 
	<!--<tr> 
		<td width="100%" align="center" height=28><a href="dx.jsp?lb=系统简介" target="main">系统简介</a></td>
    </tr> -->
	<tr> 
		<td width="100%" align="center" height=28><a href="dx.jsp?lb=疫情辟谣" target="main">疫情辟谣</a></td>
    </tr> 
</table></td></tr>
</table>











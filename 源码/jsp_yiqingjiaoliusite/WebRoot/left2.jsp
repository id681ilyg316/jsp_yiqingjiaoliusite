<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<table width="187">
<tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(1)" style="cursor:pointer"><font color=#000000><strong>・个人资料管理・</strong></font></td>
  </tr>
  
  <tr style="display:none"  id='submenu1'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
  <tr>
    <td width="100%" height=28 align="center"><a href="yonghuzhuce_updt2.jsp" target="main">个人资料管理</a></td>
  </tr>

  </table></td></tr> 

  <tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(2)" style="cursor:pointer"><font color=#000000><strong>・实时通知管理・</strong></font></td>
  </tr>
  
  <tr style="display:none"  id='submenu2'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
  
 
 
  <tr>
    <td  height=28 align="center"><a href="tongzhixinxi_list1.jsp" target="main">实时通知管理</a></td>
  </tr>
  
   
  </table></td></tr> 
   <tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(3)" style="cursor:pointer"><font color=#000000><strong>・病患轨迹管理・</strong></font></td>
  </tr>
  
  <tr style="display:none"  id='submenu3'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
   
  <tr>
    <td align="center" height=28><a href="bingrenguiji_add.jsp" target="main">病患轨迹添加</a></td>
  </tr>
  
   <tr>
    <td align="center" height=28><a href="bingrenguiji_list2.jsp" target="main">病患轨迹管理</a></td>
  </tr>
  
    <tr>
    <td align="center" height=28><a href="bingrenguiji_list1.jsp" target="main">本区病患管理</a></td>
  </tr>
  
</table></td></tr>


   <!--<tr> 
    <td width="100%" height=38 align="center" background="images/side_h3_on.gif" onClick="showsubmenu(4)" style="cursor:pointer"><font color=#000000><strong>・收藏记录管理・</strong></font></td>
  </tr>
  
  <tr style="display:none"  id='submenu4'><td align=center width="100%"><table width="100%" cellspacing="1" cellpadding="1" align="center">
    <tr>
  
  
 
  <tr>
    <td align="center" height=28><a href="shoucangjilu_list2.jsp" target="main">收藏记录管理</a></td>
  </tr>
  
  
</table></td></tr>-->






</table>


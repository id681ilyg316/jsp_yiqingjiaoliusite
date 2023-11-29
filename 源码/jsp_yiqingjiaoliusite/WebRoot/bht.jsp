<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<link rel="stylesheet" type="text/css" href="qtimages/css/wst.css"/>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
<script type="text/javascript" src="qtimages/jquery.js"></script>
<script type="text/javascript" src="qtimages/inc.js"></script>
</head>
<!--合作伙伴左右滚动js-->
<script type="text/javascript" src="js/ScrollPicLeft.js"></script>
<!--招商案例切换的js-->
<script type="text/javascript">
function g(o){
return document.getElementById('ll'+o);}
function f(i){
return document.getElementById('Set'+i);}
 function set(x){ 
 for(i=1;i<=3;i++)
 {
  g(i).className="select1";
  f(i).style.display="none";
 }
 g(x).className="select2";
 f(x).style.display="block";
 }
</script>
<div class="wban">
  <div class="gg" id="gg">
    <div class="ggLoading">
      <div class="ggLoading2"><em>精彩活动载入中</em></div>
    </div>
    <div class="ggs">
      <div class="ggBox" id="ggBox">
	  
	    <%
				int bhti=0;		
				int xxbbt=0;				
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='变幻图'  order by id desc ")){
	bhti++;
	xxbbt++;
     %>
	 

	   <a href="gg_detail.jsp?id=<%=map.get("id")%>" <%
	   if(bhti==1)
	   {
	   %>
	   style="z-index:3;opacity:4;"
	   <%
	   }
	   %>><img src="<%=map.get("shouyetupian")%>" alt="" /></a> 
	  <%
	  }
	  %>
	  
	   
	   
	   </div>
    </div>
    <div class="ggb">
      <div class="ggBtns" id="ggBtns"> 
	  <%
	  for(bhti=0;bhti<xxbbt;bhti++)
	  {
	  	%>
		<a href='javascript:void(0)' <%
		if(bhti==0)
		{
		%>
		class="current"
		<%
		}
		%>></a> 
		<%
	  }
	  %>
	  
	 
	  
	   </div>
    </div>
  </div>
</div>

<!--图片切换的js-->
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function () {
			
    var $con = $('#gg'), $box = $con.find('#ggBox'), $btns = $con.find('#ggBtns'), i = 0, autoChange = function () {
        i += 1;
        if (i === 5) { i = 0; }
        $btns.find('a:eq(' + i + ')').addClass('current').siblings().removeClass('current');
        var curr = $box.find('a:eq(' + i + ')'), prev = curr.siblings();
        prev.css('z-index', 2);
        curr.css('z-index', 3).animate({
            'opacity': 1
        }, 150, function () {
            prev.css({
                'z-index': 1, 'opacity': 0.1
            });
        });
    }, loop = setInterval(autoChange, 5000);
	
    $con.hover(function () {
        clearInterval(loop);
    }, function () {
        loop = setInterval(autoChange, 5000);
    });
	
    $btns.find('a').click(function () {
        i = $(this).index() - 1;
        autoChange();
    });
	
});
</script>

<script language="javascript" type="text/javascript">
    new ScrollPicleft('keh_con', 'khLeft', 'khRight', 920, 368, 10, 10, true, 5);
    </script> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" href="css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="css/personal.css" rel="stylesheet" >
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<style>
.push_write_say{
	display:none;
	}
.base{
	position:absolute;
	width:1920px;
	height:2000px;
	background:#ccc;
	opacity:0.7;
	top:0px;
	left:0px;
	z-index:1000;
	}
.write_say{
	width:600px;
	height:200px;
	position:absolute;
	z-index:1001;
	background:#FFF;
	left:700px;
	top:350px;
	border-top:2px solid #ecc30a;
	}
.write_say #btn_2{
	position:absolute;
	top:5px;
	right:5px;
	}
.write_say p{
	border-bottom:2px solid #eee;
	padding-top:10px;
	padding-bottom:10px;
	padding-left:20px;
	}
.write_say .list{
	margin-top:15px;
	}
.write_say a span{
	padding-left:10px;
	margin-top:15px;
	}
.write_say .list button{
	position:absolute;
	width:50px;
	height:27px;
	background:#F90;
	left:530px;
	}
</style>
</head>
<body>
<div class="header">
	<div class="container">
		<div class="pet_icon">
			<img src="img/logo1.png" />
		</div>
		<div class="header-sub">
		 <ul>
			 <li><a href="index.jsp">首页</a></li>
			 <li><a href="${pageContext.request.contextPath }/userAction_findAllPetTalk">pet说</a></li>
			 <li><a href="public-welfare.jsp">公益</a></li>
			 <li><a href="shop.jsp">宠物商城</a></li>
			 <li><a href="#">宠物资讯</a></li>
		 </ul>
			 <c:if test="${uRegister == null }">
			 <a href="login.jsp">
				<span class="glyphicon glyphicon-user"> 登录</span>
			 </a>
           </c:if>
		 	<c:if test="${uRegister != null }">
			 <a href="personal.jsp">
				<span class="glyphicon glyphicon-user"> 欢迎你：${uRegister.username }</span>
			 </a>
           </c:if>
             <!--写说说-->
            <div class="write">
             <a><span class="glyphicon glyphicon-edit write_icon"></span></a>
             </div>
	     </div>
     </div>
   </div>
  
             <!--弹出发表框-->
             <div class="push_write_say">
              <div class="base"></div>
              <div class="write_say">
			    <span id="btn_2" class="glyphicon glyphicon-remove"></span>
                <div><p>有什么新鲜事想告诉大家?</p></div>
                <div><input type="text" style="width:572px; height:80px;margin-left:12px;margin-top:10px"/></div>
                <div class="list">
                <a><span><img src="img/personal/5.jpg"/></span></a>
                <a><span><img src="img/personal/6.jpg"/></span></a>
                <a><span><img src="img/personal/8.jpg"/></span></a>
                <a><span><img src="img/personal/9.jpg"/></span></a>
               <button class="sumbit">发表</button>
               </div>
            </div>
           </div>
		</div>
<a href="personal.jsp"><span class="personal_center" style="position:absolute; top:16px;left:1600px;color:#ecc30a;">退出</span></a> 
<div class="top">
<div class="head"><img src="img/pet-talk/head.jpg"/></div>
<div class="user-name"><span>${uRegister.username }</span></div>
<div class="signature"><span>个性签名</span></div>
</div>
<!--标签部分-->
<div class="tab">
<ul>
<li class="active"><a>我的主页</a></li>
<li><a>我的相册</a></li>
<li><a>管理中心</a></li>
</ul>
</div>
<!--内容部分-->
<div class="content">
  <div class="content-left">
    <div class="pcd_counter">
     <ul>
       <li>关注<span>16</span></li>
       <li>粉丝<span>16</span></li>
       <li>说说<span>16</span></li>
     </ul>
     </div>
    <div class="pcd_counter_two">
     <div class="pcd_counter_two_top">
     <a>申请认证</a>
     </div>
     <div class="pcd_counter_two_middle">
     <div id="span"><span>个人资料完成度</span></div>
      <div class="progress">
      <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;background:#ecc30a">
    60%
      </div>
      </div>
     </div>
     <div class="pcd_counter_two_bottom">
     <a href="#">编辑个人资料>></a>
     </div> 
    </div> 
  
  <div class="pcd_counter_three">
  <div class="photo"><span>相册</span></div>
  <div class="img_show">
  <img src="img/pet-talk/4.jpg" class="img_one"/>
  <img src="img/adopt/adopt11.jpg"class="img_two"/>
  <img src="img/adopt/adopt09.jpg"class="img_three"/>
  <img src="img/adopt/adopt08.jpg"class="img_four"/>
  <img src="img/adopt/adopt08.jpg"class="img_five"/>
  <img src="img/adopt/adopt08.jpg"class="img_six"/>
  </div>
  <div class="more">
  <span>加载更多</span>
  </div>
  </div>
  </div>
  <div class="content_right">
   <div class="content_right_top">
    <ul>
     <li><a href="#">全部</a></li>
     <li><a href="#">热门</a></li>
     <li><a href="#">更多<span class="glyphicon glyphicon-menu-down"></span></a></li>
    </ul>
    <div class="content_right_top_search">
   <input type="text" value="搜索我的说说" style="width:200px;"/>
   <span class="glyphicon glyphicon-search one"></span>
   <a><span class="glyphicon glyphicon-triangle-bottom two"></span></a>
   </div>
   <!--这是第一个说说-->
   <div class="content_right_content">
    <div class="content_right_content_top">
      <div><a><img src="img/pet-talk/head.jpg" height="60" style="border-radius:50px; margin-left:20px;margin-top:10px;"></a></div>
      <span><a>宠萌日常秀</a></span>
      <span class="time">4月13号</span>
      <a><span class="glyphicon glyphicon-menu-down" style="position:absolute;left:672px;top:34px;color:#000"></span></a>
    </div>
    <div class="content_right_content_middle">
      <p>高颜值，甜美笑容，呆萌属性，萨摩耶奏是汪星人中的傻白甜</p>
      <div>
      <div class="content_img_show">
       <img src="img/personal/1.png" />
       <img src="img/personal/2.jpg" />
       <img src="img/personal/4.jpg" />
       </div>
      </div>
     </div>
    <div class="content_right_content_footer">
     <div class="footer_one"><a><span>阅读</span><span>74</span>&nbsp;&nbsp;<span>推广</span></a></div>
     <div class="footer_two"><a><span><img src="img/personal/icon.jpg"/>转发</span></a></div>
     <div class="footer_three"><a><span><img src="img/personal/icon2.jpg"/>评论</span></a></div>
     <div class="footer_four"><a><span><img src="img/personal/icon3.jpg"/>赞</span></a></div>
    </div>
   </div>
   <!--第二个说说-->
   <div class="second_say">
   <div class="content_right_content">
    <div class="content_right_content_top">
      <div><a><img src="img/pet-talk/head.jpg" height="60" style="border-radius:50px; margin-left:20px;margin-top:10px;"></a></div>
      <span><a>宠萌日常秀</a></span>
      <span class="time">4月13号</span>
      <a><span class="glyphicon glyphicon-menu-down" style="position:absolute;left:672px;top:34px;color:#000"></span></a>
    </div>
    <div class="content_right_content_middle">
      <p>高颜值，甜美笑容，呆萌属性，萨摩耶奏是汪星人中的傻白甜</p>
      <div>
      <div class="content_img_show">
       <img src="img/personal/1.png" />
       <img src="img/personal/2.jpg" />
       <img src="img/personal/4.jpg" />
       </div>
      </div>
     </div>
    <div class="content_right_content_footer">
     <div class="footer_one"><a><span>阅读</span><span>74</span>&nbsp;&nbsp;<span>推广</span></a></div>
     <div class="footer_two"><a><span><img src="img/personal/icon.jpg"/>转发</span></a></div>
     <div class="footer_three"><a><span><img src="img/personal/icon2.jpg"/>评论</span></a></div>
     <div class="footer_four"><a><span><img src="img/personal/icon3.jpg"/>赞</span></a></div>
    </div>
   </div>
   </div>
  </div>
 </div>
 </div>
 <div class="footer"></div>
</body>
<script>
$(function(){
	$(".write_icon").click(function(){
		$(".push_write_say").show();
	})
	$("#btn_2").click(function(){
		$(".push_write_say").hide();
	})
})</script>
</html>
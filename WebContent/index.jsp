﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" href="css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="css/index.css" rel="stylesheet">
<link rel="stylesheet" href="css/congwuwang.css">
<link rel="stylesheet" href="css/recommend.css">
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.4.2.min.js"></script>
<script src="js/recommend.js"></script>
<style>
.write {
	position: absolute;
	top: 18px;
	left: 1180px;
}

.write a {
	color: #ecc30a;
}

.write a span {
	display: block;
	width: 20px;
	height: 20px;
}

.push_write_say {
	display: none;
}

.base {
	position: absolute;
	width: 1920px;
	height: 2000px;
	background: #ccc;
	opacity: 0.7;
	top: 0px;
	left: 0px;
	z-index: 1000;
}

.write_say {
	width: 600px;
	height: 200px;
	position: absolute;
	z-index: 1001;
	background: #FFF;
	left: 700px;
	top: 350px;
	border-top: 2px solid #ecc30a;
}

.write_say #btn_2 {
	position: absolute;
	top: 5px;
	right: 5px;
}

.write_say p {
	border-bottom: 2px solid #eee;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 20px;
}

.write_say .list {
	margin-top: 15px;
}

.write_say a span {
	padding-left: 10px;
	margin-top: 15px;
}

.write_say .list button {
	position: absolute;
	width: 50px;
	height: 27px;
	background: #F90;
	left: 530px;
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
					<li class="active"><a href="index.jsp">首页</a></li>
					<li><a
						href="${pageContext.request.contextPath }/userAction_findAllPetTalk">pet说</a></li>
					<li><a href="public-welfare.jsp">公益</a></li>
					<li><a href="shop.jsp">宠物商城</a></li>
					<li><a href="#">宠物资讯</a></li>
				</ul>
				<c:if test="${uRegister == null }">
					<a href="login.jsp"> <span class="glyphicon glyphicon-user">
							登录</span>
					</a>
					<!-- <a href="register.jsp"> <span class="glyphicon glyphicon-user">
							注册</span>
					</a> -->
					
				</c:if>
				<c:if test="${uRegister != null }">
					<a href="personal.jsp"> <span class="glyphicon glyphicon-user">
							欢迎你：${uRegister.username }</span>
					</a>
				</c:if>
				<!--写说说-->
				<div class="write">
					<a><span class="glyphicon glyphicon-edit write_icon"></span></a>
				</div>
				
			</div>
		</div>
	</div>
	</div>

	<!--弹出发表框-->
	<div class="push_write_say">
		<div class="base"></div>
		<form
			action="${pageContext.request.contextPath }/userAction_sendPetTalk"
			method="post" enctype="multipart/form-data">
			<div class="write_say">
				<span id="btn_2" class="glyphicon glyphicon-remove"></span>
				<div>
					<p>有什么新鲜事想告诉大家?</p>
				</div>
				<div>
					<input type="text" name="content" id="content"
						style="width: 572px; height: 80px; margin-left: 12px; margin-top: 10px" />
				</div>
				<div class="list">
					<a><span><img src="img/personal/5.jpg" /></span></a> <a><span><img
							src="img/personal/6.jpg" /><input type="file" name="upload"
							multiple="multiple"></span></a> <a><span><img
							src="img/personal/8.jpg" /></span></a> <a><span><img
							src="img/personal/9.jpg" /></span></a> <input type="submit" value="发表">
				</div>
		</form>
	</div>
	</div>
	<a href="${pageContext.request.contextPath }/register_exit"><span class="personal_center"
		style="position: absolute; top: 16px; left: 1600px; color: #ecc30a;">退出</span></a>
	<div class="pet_bigimg">
   </div>
	
	<!--宠物秀-->
	<div class="pets">
		<h1>宠物展</h1>
		<div class="pets-show">
			<ul class="img-show">
				<li class="style animation"><a href=""> <img
						src="img/tp01.jpg" alt="">
						<div>
							<h3>Pets</h3>
							<p>这是一只可爱的狗</p>
						</div>
				</a></li>
				<li class="style animation"><a href=""><img
						src="img/tp02.jpg" alt=""></a>
					<div>
						<h3>Pets</h3>
						<p>这是一只可爱的狗</p>
					</div></li>
				<li class="style clear"><a href=""><img src="img/tp03.jpg"
						alt=""> </a>
					<div>
						<h3>Pets</h3>
						<p>这是一只可爱的狗</p>
					</div></li>
				<li class="style animation"><a href=""><img
						src="img/tp04.jpg" alt=""></a>
					<div>
						<h3>Pets</h3>
						<p>这是一只可爱的狗</p>
					</div></li>
				<li class="style animation"><a href=""><img
						src="img/tp05.jpg" alt=""></a>
					<div>
						<h3>Pets</h3>
						<p>这是一只可爱的狗</p>
					</div></li>
				<li class="style clear"><a href=""><img src="img/tp06.jpg"
						alt=""></a>
					<div>
						<h3>Pets</h3>
						<p>这是一只可爱的狗</p>
					</div></li>
				<li class="style animation"><a href=""><img
						src="img/tp07.jpg" alt=""></a>
					<div>
						<h3>Pets</h3>
						<p>这是一只可爱的狗</p>
					</div></li>
				<li class="style animation"><a href=""><img
						src="img/tp08.jpg" alt=""></a>
					<div>
						<h3>Pets</h3>
						<p>这是一只可爱的狗</p>
					</div></li>
				<li class="clear style"><a href=""><img src="img/tp09.jpg"
						alt=""></a>
					<div>
						<h3>Pets</h3>
						<p>这是一只可爱的狗</p>
					</div></li>
			</ul>
		</div>
	</div>
	<div class="newst-top">
		<img src="img/0005.jpg" />
	</div>
	<div class="newst">
		<h1>最新动态</h1>
		<div id="notice" class="notice">

			<div id="notice-tit" class="notice-tit">
				<ul>
					<li class="select"><a href="#">宠物热点</a></li>
					<li><a href="#">搞笑宠物</a></li>
					<li><a href="#">宠物游戏</a></li>

					<li><a href="#">宠物托运</a></li>
				</ul>
			</div>
			<div id="notice-con" class="notice-con">
				<div class="mod" style="display: block">

					<div class="decoration">
						<img src="img/u=2122059587,3483155628&fm=23&gp=0.jpg" width="350"
							style="float: left;" />
						<p>
							如今，很多人家里都养了宠物，走到哪都想和宠物形影不离。最近，网上一则消息说成都有的商场可以带宠物入内了，爱狗人士喜不自胜，可有的市民却有了担忧。到底成都市内的商场是不是真的让宠物进入？大家又如何看待这一问题呢？我们的记者进行了走访调查。</p>
					</div>
					<ul type="square">
						<li><a href="#">山寨协会操纵宠物美容价格 黄石相关部门将深入主人固执的把藏獒的毛铲光了</a><span>2017-4-1</span></li>
						<li><a href="#">山寨协会操纵宠物美容价格 黄石相关部门将深入主人固执的把藏獒的毛铲光了</a><span>2017-4-1</span></li>
						<li><a href="#">山寨协会操纵宠物美容价格 黄石相关部门将深入主人固执的把藏獒的毛铲光了</a><span>2017-4-1</span></li>
						<li><a href="#">山寨协会操纵宠物美容价格 黄石相关部门将深入主人固执的把藏獒的毛铲光了</a><span>2017-4-1</span></li>
						<li><a href="#">山寨协会操纵宠物美容价格 黄石相关部门将深入主人固执的把藏獒的毛铲光了</a><span>2017-4-1</span></li>
						<li><a href="#">山寨协会操纵宠物美容价格 黄石相关部门将深入主人固执的把藏獒的毛铲光了</a><span>2017-4-1</span></li>
						<li><a href="#">山寨协会操纵宠物美容价格 黄石相关部门将深入主人固执的把藏獒的毛铲光了</a><span>2017-4-1</span></li>
						<li><a href="#">山寨协会操纵宠物美容价格 黄石相关部门将深入主人固执的把藏獒的毛铲光了</a><span>2017-4-1</span></li>
					</ul>
				</div>
				<div class="mod" style="display: none"></div>
				<div class="mod" style="display: none"></div>
				<div class="mod" style="display: none"></div>


			</div>
		</div>
		<div id="star-pet"></div>
	</div>
	<div class="food-background">
		<img src="img/0000.jpg" />
	</div>
	<div class="container-sum">
		<div class="container">
			<h1>特别推荐</h1>
			<div class="recommend">
				<!--上面-->
				<ul class="recommend-img">
					<li><a href=""><img src="img/post/post01.jpg" width="350"
							height="245" alt="" /></a></li>
					<li><a href=""><img src="img/post/post02.jpg" width="350"
							height="245" alt="" /></a></li>
					<li><a href=""><img src="img/post/post03.jpg" width="350"
							height="245" alt="" /></a></li>
					<li><a href=""><img src="img/post/post04.jpg" width="350"
							height="245" alt="" /></a></li>
				</ul>
				<!--下面-->
				<ul class="num">
				</ul>
			</div>

			<div class="book">
				<ul class="book-img">
					<li><a href=""><img src="img/book/book01.jpeg" alt=""></a>
						<div class="shows">
							<a>
								<p>这本书很好看很感人</p> <a class="look">查看详情</a> <a>
						</div>
						<p class="author">【作者】尤金·奥尼尔(美)</p>
						<p class="time">【出版时间】2009年</p></li>
					<li><a href=""><img src="img/book/book02.jpeg" alt=""></a>
						<div class="shows">
							<a>
								<p>这本书很好看很感人</p> <a class="look">查看详情</a> <a>
						</div>
						<p class="author">【作者】雅比凯尔·汤玛斯(美)</p>
						<p class="time">【出版时间】2006年</p></li>
					<li><a href=""><img src="img/book/book03.jpeg" alt=""></a>
						<div class="shows">
							<a>
								<p>这本书很好看很感人</p> <a class="look">查看详情</a> <a>
						</div>
						<p class="author">【作者】加思·斯坦(美)</p>
						<p class="time">【出版时间】2008年</p></li>
					<li><a href=""><img src="img/book/book04.jpeg" alt=""></a>
						<div class="shows">
							<a>
								<p>这本书很好看很感人</p> <a class="look">查看详情</a> <a>
						</div>
						<p class="author">【作者】玛格丽特·桑德斯(加)</p>
						<p class="time">【出版时间】1893年</p></li>
					<li><a href=""><img src="img/book/book05.jpeg" alt=""></a>
						<div class="shows">
							<a>
								<p>这本书很好看很感人</p> <a class="look">查看详情</a> <a>
						</div>
						<p class="author">【作者】石黑谦吾(日)</p>
						<p class="time">【出版时间】2001年</p></li>


					<li><a href=""><img src="img/book/book01.jpeg" alt=""></a>
						<div class="shows">
							<a>
								<p>这本书很好看很感人</p> <a class="look">查看详情</a> <a>
						</div>
						<p class="author">【作者】尤金·奥尼尔(美)</p>
						<p class="time">【出版时间】2009年</p></li>
					<li><a href=""><img src="img/book/book02.jpeg" alt=""></a>
						<div class="shows">
							<a>
								<p>这本书很好看很感人</p> <a class="look">查看详情</a> <a>
						</div>
						<p class="author">【作者】雅比凯尔·汤玛斯(美)</p>
						<p class="time">【出版时间】2006年</p></li>
					<li><a href=""><img src="img/book/book03.jpeg" alt=""></a>
						<div class="shows">
							<a>
								<p>这本书很好看很感人</p> <a class="look">查看详情</a> <a>
						</div>
						<p class="author">【作者】加思·斯坦(美)</p>
						<p class="time">【出版时间】2008年</p></li>
					<li><a href=""><img src="img/book/book04.jpeg" alt=""></a>
						<div class="shows">
							<a>
								<p>这本书很好看很感人</p> <a class="look">查看详情</a> <a>
						</div>
						<p class="author">【作者】玛格丽特·桑德斯(加)</p>
						<p class="time">【出版时间】1893年</p></li>
					<li><a href=""><img src="img/book/book05.jpeg" alt=""></a>
						<div class="shows">
							<a>
								<p>这本书很好看很感人</p> <a class="look">查看详情</a> <a>
						</div>
						<p class="author">【作者】石黑谦吾(日)</p>
						<p class="time">【出版时间】2001年</p></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="footer"></div>
</body>
<script>
	$(function() {
		$(".write_icon").click(function() {
			$(".push_write_say").show();
		})
		$("#btn_2").click(function() {
			$(".push_write_say").hide();
		})
	})
</script>
<script>
	$('.shows').hide();
	$('.book-img li').mouseenter(function() {
		$(this).find('.shows').slideDown();
	});
	$('.book-img li').mouseleave(function() {
		$(this).find('.shows').slideUp();
	});
</script>

</html>

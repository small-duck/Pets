<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="picPath" value="http://www.localhost:8081/upload/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" href="css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="css/pet-talk.css" rel="stylesheet">
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/ajax_show.js"></script>
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
					<li><a href="index.jsp">首页</a></li>
					<li class="active"><a href="pet-talk.jsp">pet说</a></li>
					<li><a href="public-welfare.jsp">公益</a></li>
					<li><a href="shop.jsp">宠物商城</a></li>
					<li><a href="#">宠物资讯</a></li>
				</ul>
				<c:if test="${uRegister == null }">
					<a href="login.jsp"> <span class="glyphicon glyphicon-user">
							登录</span>
					</a>
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
					<input
						style="width: 572px; height: 80px; margin-left: 12px; margin-top: 10px;" />
					<div class="imgdiv"
						style="width: 75px; height: 75px; margin-left: 12px; margin-top: 10px; position: absolute; top: 55px; left: 494px;"></div>
				</div>
				<div class="list" style="margin-left: 10px;">
					<label for="up_img" title="点击'+'上传图片"><span><img
							src="img/personal/6.jpg" /></label> <a><span><img
							src="img/personal/5.jpg" /></span></a> <a><span><img
							src="img/personal/8.jpg" /></span></a> <a><span><img
							src="img/personal/9.jpg" /></span></a>
					<button class="sumbit">发表</button>
					<input type="file" style="display: none;" id="up_img" name="upfile" />
				</div>
			</div>
		</form>
	</div>

	<div class="top">
		<img src="img/pet-talk/12.jpg" />
	</div>

	<!--专栏-->
	<div class="middle">
		<div class="icon">
			<img src="img/pet-talk/triangle.png" />
		</div>
		<div class="icon-content">
			<span>专栏</span>
		</div>
		<div class="img-show">
			<ul>
				<li><img src="img/pet-talk/4.jpg" /></li>
				<li><img
					src="img/pet-talk/u=3918362583,541858217&fm=23&gp=0.jpg" /></li>
				<li><img
					src="img/pet-talk/u=3262333099,2640887624&fm=23&gp=0.jpg" /></li>
			</ul>
		</div>
	</div>
	<!--内容部分-->
	<s:iterator value="list">
		<div class="content_right">
			<div class="content_right_content">
				<div class="content_right_content_top">
					<div>
						<a><img src="img/pet-talk/head.jpg" height="70"
							style="border-radius: 70px; margin-left: 20px; margin-top: 10px;"></a>
					</div>
					<span><a>宠萌日常秀</a></span> <span class="time">4月13号</span> <a><span><img
							src="img/personal/12.jpg"
							style="position: absolute; left: 870px; top: 15px; color: #333" /></span></a>
					<a><span class="glyphicon glyphicon-remove"
						style="position: absolute; left: 962px; top: 20px; color: #333"></span></a>
				</div>
				<div class="content_right_content_middle">
					<p>高颜值，甜美笑容，呆萌属性，萨摩耶奏是汪星人中的傻白甜</p>
					<div>
						<div class="content_img_show">
							<img src="img/personal/1.png" /> <img src="img/personal/2.jpg" />
							<img src="img/personal/3.jpg" /> <img src="img/personal/4.jpg" />
						</div>
					</div>
				</div>
				<div class="content_right_content_footer">
					<div class="footer_one">
						<a><span><img src="img/personal/10.jpg" />收藏</span></a>
					</div>
					<div class="footer_two">
						<a><span><img src="img/personal/icon.jpg" />转发</span></a>
					</div>
					<div class="footer_three">
						<a><span><img src="img/personal/icon2.jpg" />评论</span></a>
					</div>
					<div class="footer_four">
						<a><span><img src="img/personal/icon3.jpg" />赞</span></a>
					</div>
				</div>

				<!--评论板块-->
				<div class="comment" style="display: none">
					<div class="publish_comment">
						<div class="publish_commment_top">
							<a><img src="img/pet-talk/head.jpg" /></a> <input type="text"
								style="height: 45px; width: 643px;" />
						</div>
						<div class="publish_foot">
							<input type="file"
								style="outline: none; margin-left: 50px; margin-top: 20px;" /> <input
								type="button" value="提交"
								style="background: #ecc30a; width: 60px; height: 30px; margin-top: -26px; margin-left: 632px; margin-bottom: 20px; color: #fff" />
						</div>
					</div>
					<div class="comment_list">
						<div class="comment_list_top position:relative;">
							<ul>
								<li style="font-weight: bold;">全部</li>
								<li>热门</li>
								<li>关注的人</li>
							</ul>
							<span class="intotal"
								style="position: absolute; right: 25px; top: 16px;">共1条</span>
						</div>
						<!--发表过的评论-->
						<div class="comment_list_content"
							style="position: relative; border-bottom: 1px solid #ccc;">
							<a><img src="img/pet-talk/head.jpg" style="width: 45px" /></a> <span
								class="user"
								style="position: absolute; left: 60px; color: #ecc30a">宠物日常秀:</span>
							<p style="position: absolute; top: 0px; left: 140px">狗狗真可爱</p>

							<span class="time"
								style="color: #808080; position: absolute; top: 25px; left: 60px;">10分钟前</span>
							<ul>
								<li>回复</li>
								<li><span><img src="img/personal/icon3.jpg" />7</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</s:iterator>



	<s:url id="url_pre" value="userAction_findAll.action">
		<c:if test="${ requestScope.pageNow>1 }">
			<s:param name="pageNow" value="pageNow-1"></s:param>
			<!-- 设置传递参数:pageNow减一 -->
		</c:if>
	</s:url>

	<s:url id="url_next" value="userAction_findAll.action">
		<c:if test="${ requestScope.pageNow<requestScope.totalPage }">
			<s:param name="pageNow" value="pageNow+1"></s:param>
		</c:if>
	</s:url>
	<%-- <c:if test="${requestScope.pageNow>1 }">
		<s:a href="%{url_pre}">
                                                               上一页
                </s:a>
	</c:if>
	<c:if test="${requestScope.pageNow<requestScope.totalPage }">
		<s:a href="%{url_next}">
                                                               下一页
                 </s:a>
	</c:if>
	[当前第${requestScope.pageNow}页/总共${requestScope.totalPage}页]
	<div id="morePetTalk"></div>
	<div class="load_more">
		<hr />
		<a><span>加载更多</span></a>
		<hr />
	</div> --%>

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
<script type="text/javascript">
	$(function() {
		$("#up_img")
				.change(
						function(e) {
							var fr = new FileReader();
							fr
									.readAsDataURL(document
											.getElementById("up_img").files[0]);
							fr.onload = function(e) {
								$(".imgdiv").css("background-image",
										"url(" + e.target.result + ")").css(
										"background-repeat", "no-repeat").css(
										"background-size", "100px 100px");
								/* $(".imgdiv").html(""); */
							};
						});

	});
</script>


</html>

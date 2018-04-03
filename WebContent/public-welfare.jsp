﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" href="css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="css/public-welfare.css" rel="stylesheet">
<link rel="stylesheet" href="css/finding.css">
<link rel="stylesheet" href="iconfonts/iconfont.css">
<%--<script src="jquery-1.4.2.min.js"></script>--%>
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
<body id="body">
	<div class="search-pet" id="show">
		<a><p>
				寻</br>宠</br>启</br>示</br>
			</p></a>
	</div>
	<div class="header">
		<div class="container">
			<div class="pet_icon">
				<img src="img/logo1.png" />
			</div>
			<div class="header-sub">
				<ul>
					<li><a href="index.jsp">首页</a></li>
					<li><a href="${pageContext.request.contextPath }/userAction_findAllPetTalk">pet说</a></li>
					<li class="active"><a href="public-welfare.jsp">公益</a></li>
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
		<div class="write_say">
			<span id="btn_2" class="glyphicon glyphicon-remove"></span>
			<div>
				<p>有什么新鲜事想告诉大家?</p>
			</div>
			<div>
				<input type="text"
					style="width: 572px; height: 80px; margin-left: 12px; margin-top: 10px" />
			</div>
			<div class="list">
				<a><span><img src="img/personal/5.jpg" /></span></a> <a><span><img
						src="img/personal/6.jpg" /></span></a> <a><span><img
						src="img/personal/8.jpg" /></span></a> <a><span><img
						src="img/personal/9.jpg" /></span></a>
				<button class="sumbit">发表</button>
			</div>
		</div>
	</div>
	</div>
	<a href="${pageContext.request.contextPath }/register_exit"><span class="personal_center"
		style="position: absolute; top: 16px; left: 1600px; color: #ecc30a;">退出</span></a>
	<div class="pet_bigimg"></div>
<form action="${pageContext.request.contextPath }/lfpet_saveLfPet.action"
		method="post" enctype="multipart/form-data">
		<div class="seek" id="seek">
			<h1>寻宠启示</h1>
			<a href="" class="iconfont">&#xe703;</a>
			<div class="seek-con">
				<p class="normal">
					<span>宠物品种：</span> <input type="text" name="lookforSort"
						placeholder="泰迪">
				</p>
				<p class="special">
					<span>宠物类别：</span> <select name="lookforBreed" id="">
						<option value="">请选择</option>
						<option value="狗狗">狗狗</option>
						<option value="猫猫">猫猫</option>
						<option value="小猪">小猪</option>
					</select>
				</p>
				<p class="special" id="city">
					<span>丢失地址：</span>
					<select name="lookforAddr" class="prov"></select>
					<select name="lookforAddr" class="city" disabled="disabled"></select>
					<select name="lookforAddr" class="dist" disabled="disabled"></select>
				<%--<select name="lookforAddr" id="">--%>
						<%--<option value="安徽省">安徽省</option>--%>
						<%--<option value="浙江省">浙江省</option>--%>
						<%--<option value="广东省">广东省</option>--%>
					<%--</select> --%>
					<%--<select name="lookforAddr" id="" class="small">--%>
						<%--<option value="合肥市">合肥市</option>--%>
						<%--<option value="阜阳市">阜阳市</option>--%>
						<%--<option value="芜湖市">芜湖市</option>--%>
					<%--</select>--%>
					<%--<select name="lookforAddr" id="" class="small">--%>
						<%--<option value="肥东区">肥东区</option>--%>
						<%--<option value="肥西区">肥西区</option>--%>
						<%--<option value="巢湖">巢湖</option>--%>
					<%--</select>--%>

				</p>
				<p class="special">
					<span>宠物图片：</span> <input type="file" name="upload"style="position: absolute;top: 189px; left: 100px;">
				</p>
				<p class="special">
					<span>联系人：</span> <input type="text" name="petPerson"
						placeholder="李先生">
				</p>
				<p class="special">
					<span>联系方式：</span> <input type="text" name="petPersonLink"
						placeholder="电话：">
				</p>
				<div class="finished">
					<button type="submit" class="bt">提交</button>
					<button type="reset" class="bt ds">重置</button>
				</div>
			</div>
		</div>
	</form>
	<!--公益部分的主要内容-->
	<div class="container">
		<div id="pet_map">
			<button id="pet_map_btn_1" class="btn btn-default" onclick="mapShow()">萌宠地图</button>
		      <!--弹出地图-->
		    <!-- <div class="pet_map" id="pet_map">
			<span id="pet_map_btn_2" class="glyphicon glyphicon-remove"></span>
		    </div> -->
		<div id="map_pet"></div>
		</div>
		<div id="pet_pub">
			<div class="pet_left">
				<a
					href="${pageContext.request.contextPath }/rypet_findPetAllAdopt.action">
					<button class="btn btn-default">领养中心</button>
				</a>
			</div>
			<div class="pet_right">
				<div class="pet_content">
					<h3>领养中心</h3>
					<p>在这个主题公益活动中，你可以去领养你喜欢的动物，这里有丰富的种类供你选择，对于您这样的爱心人士，肯定有属于的小动物在等着你！</p>
					<p>我们没有华丽的语言，华丽的网页，但我们有一颗呵护宠物的心！希望我们能为了它们有一个家，献出那一份爱心！</p>
				</div>
			</div>
		</div>
		<div id="pet_pub">
			<div class="pet_left">
				<div class="pet_content">
					<h3>宠物认领</h3>
					<p>在这个主题公益活动中，你可以去领养你喜欢的动物，这里有丰富的种类供你选择，对于您这样的爱心人士，肯定有属于的小动物在等着你！</p>
					<p>我们没有华丽的语言，华丽的网页，但我们有一颗呵护宠物的心！希望我们能为了它们有一个家，献出那一份爱心！</p>
				</div>
			</div>
			<div class="pet_right">
				<a href="${pageContext.request.contextPath }/rypet_findPetAll.action"><button class="btn btn-default">宠物认领</button></a>
			</div>
		</div>
		<div id="pet_pub">
			<div class="pet_left">
				<a href="publish-pet-claim.jsp"><button class="btn btn-default">发布认领</button></a>
			</div>
			<div class="pet_right">
				<div class="pet_content">
					<h3>领养中心</h3>
					<p>在这个主题公益活动中，你可以去领养你喜欢的动物，这里有丰富的种类供你选择，对于您这样的爱心人士，肯定有属于的小动物在等着你！</p>
					<p>我们没有华丽的语言，华丽的网页，但我们有一颗呵护宠物的心！希望我们能为了它们有一个家，献出那一份爱心！</p>
				</div>
			</div>
		</div>
		<div id="pet_pub">
			<div class="pet_left">
				<div class="pet_content">
					<h3>发布领养</h3>
					<p>在这个主题公益活动中，你可以去领养你喜欢的动物，这里有丰富的种类供你选择，对于您这样的爱心人士，肯定有属于的小动物在等着你！</p>
					<p>我们没有华丽的语言，华丽的网页，但我们有一颗呵护宠物的心！希望我们能为了它们有一个家，献出那一份爱心！</p>
				</div>
			</div>
			<div class="pet_right">
				<a href="publish-adopt.jsp"><button class="btn btn-default">发布领养</button></a>
			</div>
		</div>
	</div>
	
	<div class="footer"></div>
	<script src="js/jquery-3.1.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-1.4.2.min.js"></script>
	<script src="js/pet_public.js"></script>
	<script type="text/javascript" src="http://www.ijquery.cn/js/jquery.js"></script>
	<script type="text/javascript" src="http://www.ijquery.cn/js/cityselect/city.min.js"></script>
	<script type="text/javascript" src="http://www.ijquery.cn/js/cityselect/jquery.cityselect.js"></script>
	<script>
		$('#seek').hide();
		$('#show').click(function() {
			$('#seek').show();
			$('#body').css("background", "#a8abaf");
		});
	</script>
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
	<script type="text/javascript">
        $(document).ready(function() {
            $("#city").citySelect({
                prov: "安徽",
                city: "巢湖",
                dist: "居巢区",
                nodata: "none"
            })
        })
	</script>
	<script type="text/javascript">
    function mapShow(){
	    window.open("map.jsp"); 
    }
</script>
	

</body>
</html>

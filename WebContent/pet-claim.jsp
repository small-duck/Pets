<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="picPath" value="http://www.120.76.127.83:8080/upload/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/pet-claim.css" rel="stylesheet">
<title>无标题文档</title>
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="search-pet">
		<a><p>
				寻</br>宠</br>启</br>示</br>
			</p></a>
	</div>
	<!--导航-->
	<div class="header">
		<ul>
			<li><a href="public-welfare.jsp">公益&nbsp;&nbsp;</a><span
				style="color: #FFF">&gt;</span></li>
			<li><a
				href="${pageContext.request.contextPath }/rypet_findPetAllAdopt.action">领养中心</a></li>
			<li class="active"><a
				href="${pageContext.request.contextPath }/rypet_findPetAll.action">宠物认领</a></li>
			<li><a href="publish-adopt.jsp">发布领养</a></li>
			<li><a href="publish-pet-claim.jsp">发布认领</a></li>
		</ul>
	</div>
	<!--当前位置-->

	<div class="mark">
		<a href="#">
			<h3>帮助流浪动物快速回家</h3>
			<p>
				如果您捡到或丢失一只宠物，请用手机<span>（扫一扫）</span>微信二维码 打开，查看您附近的寻宠信息与招领启事。
			</p>
			<div class="Two-microcode">
				<img src="img/r.png" />
			</div>
		</a>
	</div>

	<div class="img-show">
		<ul>
			<c:forEach items="${list }" var="rypet">
				<li><a
					href="${pageContext.request.contextPath }/rypet_findPetById.action?rypet_id=${rypet.rypet_id}"><img
						src="${picPath }${rypet.petFindImage }" height="244px"
						width="230px" /></a>


					<div class="content">
						<p>${rypet.petTitle }</p>
						<p>性别：${rypet.petSex }</p>
						<p>品种：${rypet.petSort }</p>
						<p>地址：${rypet.petFindAddr }</p>
						<P>联系方式:${rypet.petLinkNum }</P>
					</div></li>
			</c:forEach>

			
	</div>

</body>
</html>

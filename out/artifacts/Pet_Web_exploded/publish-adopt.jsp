<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<link rel="stylesheet" href="css/publish-adopt.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script>
	function showFileName() {
		console.log(" FileList Demo:");
		var file;
		//取得FileList取得的file集合 
		for (var i = 0; i < document.getElementById("multifile").files.length; i++) {
			//file对象为用户选择的某一个文件 
			file = document.getElementById("multifile").files[i]; //此时取出这个文件进行处理，这里只是显示文件名 
			console.log(file.name);
		}
	}
</script>
<script type="text/javascript">

	function checkForm() {
		var petSort = $("#petSort").val();
		var petBreed = $("#petBreed").val();
		var petSex = $("#petSex").val();
		var petLink = $("#petLink").val();
		var petLinkNum = $("#petLinkNum").val();
		var petLinkWchat = $("#petLinkWchat").val();
		var petLInkqq = $("#petLInkqq").val();
		var petTitle = $("#petTitle").val();
		var size = document.getElementById("multifile").files.length;
		if (petSort == "" || petBreed == "" || petLink == "" || petTitle == ""
				|| petSex == "") {
			return false;
		} else if ( size==3 && petLinkNum != "" || petLinkWchat != "" || petLInkqq != "") {
			return true;
		}else {
			return false;
		}

	}
</script>
</head>
<body>
	<form
		action="${pageContext.request.contextPath }/rypet_adoptPet.action"
		method="post" enctype="multipart/form-data" onsubmit="return checkForm()">
		<div class="search-pet">
			<a><p>
					寻</br>宠</br>启</br>示</br>
				</p></a>
		</div>
		<div class="header">
			<ul>
				<li><a href="public-welfare.jsp">公益&nbsp;&nbsp;</a><span
					style="color: #FFF">&gt;</span></li>
				<li><a href="${pageContext.request.contextPath }/rypet_findPetAllAdopt.action">领养中心</a></li>
				<li><a
					href="${pageContext.request.contextPath }/rypet_findPetAll.action">宠物认领</a></li>
				<li class="active"><a href="publish-adopt.jsp">发布领养</a></li>
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

		<div class="collected">
			<div class="collected-left">
				<h2>宠物信息</h2>

				<div class="collected-con">
					<p class="ff">
						<span>宠物名称：</span> <input type="text" name="petName"
							placeholder="例如：小花">
					</p>
					<p class="ff">
						<span>宠物类别：</span> <select name="petBreed" id="petBreed">
							<option value="">请选择</option>
							<option value="狗狗">狗狗</option>
							<option value="猫猫">猫猫</option>
						</select>*
					</p>
					<p class="ff">
						<span>宠物品种：</span> <input type="text" name="petSort" id="petSort"
							placeholder="例如：泰迪">*
					</p>
					<p class="ff">
						<span>宠物性别：</span> <select name="petSex" id="petSex">
							<option value="">请选择</option>
							<option value="公">公</option>
							<option value="母">母</option>
							<option value="不祥">不祥</option>
						</select>*
					</p>
					<p class="ff">
						<span>宠物年龄：</span> <input type="text" name="petAge"
							placeholder="例如：12个月">
					</p>
					<p class="ff">
						<span>领养方式：</span> <select name="petWay" id="petWay">
							<option value="">请选择</option>
							<option value="免费">免费</option>
							<option value="有偿">有偿</option>
						</select>*
					</p>
				</div>

			</div>

			<div class="collected-right">
				<h2>个人信息</h2>
				<div class="collected-right-con">
					<p class="rr">
						<span>联系人：</span> <input type="text" name="petLink" id="petLink"
							placeholder="李先生">*
					</p>
					<p class="rr special">
						<span>联系方式：</span> <input type="text" name="petLinkNum" id="petLinkNum"
							placeholder="电话："> <input name="petLInkqq" type="text" id="petLInkqq"
							placeholder="QQ："> <input type="text" name="petLinkWchat" id="petLinkWchat"
							placeholder="微信：">*
					</p>
					<p class="rr">
						<span>缩略图片：</span> <input type="file" id="multifile" name="upload" multiple >*请上传三张
					</p>
					

					<p class="rr">
						<span>领养地址：</span> <select name="petFindAddr" id="">
							<option value="安徽省">安徽省</option>
							<option value="浙江省">浙江省</option>
							<option value="广东省">广东省</option>
						</select> <select name="petFindAddr" id="" class="small">
							<option value="合肥市">合肥市</option>
							<option value="阜阳市">阜阳市</option>
							<option value="芜湖市">芜湖市</option>
						</select> <select name="petFindAddr" id="" class="small">
							<option value="肥东区">肥东区</option>
							<option value="肥西区">肥西区</option>
							<option value=""></option>
						</select> <input type="text" name="petFindAddr" placeholder="此处填写具体地址">
					</p>

					<p class="rr">
						<span>标题：</span> <input type="text" name="petTitle" id="petTitle"
							placeholder="例如：真爱泰迪犬的人请进">*
					</p>
				</div>
			</div>


			<div class="last">
				<h2>详情介绍</h2>
				<div class="content">
					<p>在这里介绍一下你的宝贝宠物吧，也可以把你对领养人的要求写下来</p>
					<textarea name="petIntroduce" id="" cols="30" rows="10"></textarea>
				</div>
			</div>

			<div class="finished">
				<button type="submit" class="bt">提交</button>
				<button type="reset" class="bt ds">重置</button>
			</div>
		</div>
	</form>
</body>
</html>

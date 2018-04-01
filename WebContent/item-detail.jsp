<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/item-details.css" type="text/css" rel="stylesheet">
<link type="text/css" href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<!--顶部-->
<div class="head_t">
<div class="inner_clearfix">
  <ul class="tools f1">
  <li><a class="ao" href="#">萌宠之家首页</a></li>
  </ul>
  <ul class="user fr">  
    <ul class="login fr">
     <li><a><span>登录</span></a></li>
     <li><a><span>注册</span></a></li>
     <li><a><span>消息(0)</span></a></li>
     <li><a><span>我的订单</span></a></li>
     <li><a><span>我的购物车(0)</span></a></li>
     <li id="my-account"><a>我的账户 <span class="glyphicon glyphicon-triangle-bottom"></span></a></li>
      <ul style="display:none">
        <li>我的优惠券</li>
        <li>账户余额</li>
        <li>我的收藏</li>
      </ul>
     <li id="mobile-shop"><a><span class="glyphicon glyphicon-phone"></span>手机购物</a></li>
    </ul>
  </ul>
</div>
</div>
<!--导航部分-->
<div class="head_background">
<div class="head-nav">
<!--logo部分-->
 <div class="head_m clearfix">
 <img src="img/logo1.png"/>
 </div>
 <div class="nav">
  <ul>
   <li><a href="shop.jsp">商城首页</a></li>
   <li><a>团购</a></li>
   <li><a>全球购</a></li>
   <li><a>品牌街</a></li>
  </ul>
 </div>
 <div class="search">
 <input type="text" style="width:250px;height:30px"/>
 <a><input type="sumbit"style="width:50px;height:30px;margin-left:-5px;"/><span class="glyphicon glyphicon-search"></span></a> 
 </div>
</div>
</div>
<div class="main">
<!--小标签-->
  <div class="tab">
   <span><a href="shop.jsp">商城首页&gt</a></span>
   <span>汪星人&gt</span>
   <span><a href="dog-food.jsp">狗粮专区&gt</a></span>
   <span class="goods_name">汉优新品低敏去泪痕专用成犬粮2.5kg</span>
  </div>
  <div class="box">
  <!--大图-->
    <div class="img_show">
    <div class="big_img">
    <a><img src="img/shop/nav/A1.jpg"/></a>
    </div>
    <!--缩略图-->
    <div class="small_img">
    <ul>
    <li><a><img src="img/shop/nav/A1.jpg"/></a></li>
    <li><a><img src="img/shop/nav/A1.jpg"/></a></li>
    <li><a><img src="img/shop/nav/A1.jpg"/></a></li>
    </ul>
    <a href="###" class="next"></a>
    <a href="###" class="prev"></a>
    </div>
    </div>
    <div class="detail_box">
     <h3>汉优新品低敏去泪痕专用成犬粮2.5kg</h3>
     <p style="font-size:14px;">专业去泪痕狗粮</p>
     <hr style="border:1px dashed #eee"/>
     <p>市场价：<span style="text-decoration: line-through;">￥299.00</span></p>
     <p>狗民价：<span style="font-size:20px;color: #ff3366;font-family: "Microsoft Yahei";">￥119.00</span></p>
     <p>
     配送至:
     <select name="" id=""style="color:#333;">
     <option value="">请选择：</option>
     <option value="">安徽</option>
     <option value="">河南</option>
     <option value="">浙江</option>
      </select>
     </p>
     <hr style="border:1px dashed #eee"/>
     <P>服务：<span>由某某负责发货，并提供售后服务</span><span><a><i></i>联系客服</a></span></P>
     <p>选规格：</p>
     <p>
       我要买：
     <input type="button" value="+" style=" margin-right: -6px;width: 20px;"/>
     <input type="text" value="1" style="width: 50px;text-align: center;"/>
     <input type="button" value="-" style="margin-left: -6px; width: 20px;"/>
     </p>
     <p>
      <a class="now">立即购买</a>
      <a class="join">加入购物车</a>
     </p>
    </div>
  </div>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<title>无标题文档</title>
<link href="css/shopping-car.css" type="text/css" rel="stylesheet">
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
<!--nav-->
<div class="order_wrap">
    <div class="order_main">
      <div class="order_tep step1 clearfix">
        <h3>我的购物车</h3>
        <div class="ico"></div>
      </div>
      <!--购物清单-->
      <div class="o_box">
         <div class="cart_tt clearfix">
         <span class="goods">商品</span>
         <span class="price">单价（元）</span>
         <span class="qty">数量</span>
         <span class="sum_price">金额（元）</span>
         <span class="edit">操作</span>
         </div>
         <div class="cart_list" id="1">
          <div class="cart_tbody">
           <ul>
            <li>
             <div>
               <div class="channel"><input type="checkbox" class="slected" /></div>
               <div class="goods">
                  <a class="pic"><img src="img/shop/nav/A1.jpg"/></a>
                  <div class="name">
                  <p><a>【需填写身份证号清关】渴望orijen五谷六种鱼25磅</a></p>
                  <div class="property">
                   <span>规格：美版渴望六种鱼13KG</span>
                  </div>
                  </div>
          
               </div>
               <span class="price">
               ￥
               <i>130.00</i>
               </span>
               <div class="qty">
                <div class="widget">
                 <span class="increase"></span>
                 <input class="amount_input" value="1" type="text" />
                 <span class="decrease"></span>
                </div>
               </div>
               <span class="sum_price">
                  ￥
                  <i>119</i>
               </span>
               <span class="edit">
                <a class="delete">删除</a>
               </span>
             </div>
            </li>
           </ul>
          </div>
         </div>
          <div class="cart_list">
          <div class="cart_tbody">
           <ul>
            <li>
             <div>
               <div class="channel"><input type="checkbox" class="slected" /></div>
               <div class="goods">
                  <a class="pic"><img src="img/shop/d8.jpg"/></a>
                  <div class="name">
                  <p><a>【需填写身份证号清关】渴望orijen五谷六种鱼25磅</a></p>
                  <div class="property">
                   <span>规格：美版渴望六种鱼13KG</span>
                  </div>
                  </div>
          
               </div>
               <span class="price">
               ￥
               <i>125.00</i>
               </span>
               <div class="qty">
                <div class="widget">
                 <span class="increase"></span>
                 <input class="amount_input" value="1" type="text" />
                 <span class="decrease"></span>
                </div>
               </div>
               <span class="sum_price">
                  ￥
                  <i>124</i>
               </span>
               <span class="edit">
                <a>删除</a>
               </span>
             </div>
            </li>
           </ul>
          </div>
         </div>
         <div class="cart_sumbit clearfix">
           <div class="continue_shopping">
            <a class="going">继续购物</a>
           </div>
           <span class="total_merchandise">共<i>2</i>件商品</span>
           <div class="total_message" >
           <span class="all_total">总计（不含运费）：</span>
           <span class="all_price">￥243.00</span>
           </div>
           <a class="btn_buy" >去结算</a>
         </div>
      </div>
    </div>
</div>
</body>
<script>
$(function(){
	$(".delete").click(function(){
		$("#1").hide();
	})
})

</script>
</html>

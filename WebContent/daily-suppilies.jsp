<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/dog-food.css" type="text/css" rel="stylesheet">
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
<!--container全部内容展示部分-->
<div class="container">
    <div class="dog_food_area">
     <div class="area_first">
        <ul>
        <li><a href="shop.jsp">商城首页  <span>&gt</span></a></li>
        <li>汪星人  <span>&gt</span></li>
        <li><a>日常用品</a></li>
        </ul>
      </div>
     <div class="area_second">
       <ul>
         <li class="clearfix">
          <span class="dt">分类:</span>
          <div class="dd clearfix">
            <a>户外用品</a>
            <a>牵引胸背</a>
            <a>食盆水具</a>
            <a>宠物窝垫</a>
            <a>智能设备</a>
          </div>
         </li>
          <li class="clearfix">
          <span class="dt">价格:</span>
          <div class="dd clearfix">
            <a class="cur">全部</a>
            <a>￥0-50</a>
            <a>￥51-100</a>
            <a>￥101—200</a>
            <a>￥201-500</a>
            <a>￥501-1000</a>
            <a>￥1000以上</a>
          </div>
         </li>
       </ul>
     </div>
       <div class="list_mt">
         <div class="sort">
           <span class="dt">排序：</span>
           <div class="dd">
           <a>默认</a>
           <a>价格</a>
           <a>销量</a>
           <a>好评数</a>
           <a>上架时间</a>
           </div>
         </div>
         </div>
    </div>
    <!--图片展示部分-->
    <div class="img_show">
    <!--第一行-->
      <ul class="list_box clearfix">
       <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E8.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
        <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E7.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
        <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E6.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
        <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E5.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
       <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E3.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
      </ul>
      <!--第二行-->
       <ul class="list_box clearfix">
       <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E2.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
        <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E1.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
        <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E8.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
        <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E7.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
       <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E6.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
      </ul>
       <!--第三行-->
       <ul class="list_box clearfix">
       <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E5.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
        <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E4.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
        <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E3.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
        <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E2.jpg"/>
            </a>
           </div>
           <div class="name">
           <a>樊米派 创意陶瓷汪星人零食储存罐超大号 3640ml 大块头系列</a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
       <li>
         <div class="in">
           <div class="pic" style="height:200px;width:200px;">
            <a>
            <img src="img/shop/nav/E1.jpg"/>
            </a>
           </div>
           <div class="name">
           <a></a>
           </div>
           <div class="num clearfix">
           <span class="f1 price">
            <em>￥78.00</em>
            <del>￥79.00</del>
           </span>
           <span class="fr count">已售6</span>
           </div>
         </div>
       </li>
      </ul>
    </div>
    
    
</div>
</body>
</html>

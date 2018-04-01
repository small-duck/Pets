<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http:\\java.sun.com\jsp\jstl/core" prefix="c" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/shop.css" type="text/css" rel="stylesheet">
<link type="text/css" href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<!--顶部-->
	<div class="head_t">
		<div class="inner_clearfix">
			<ul class="tools f1">
				<li><a class="ao" href="index.jsp">萌宠之家首页</a></li>
			</ul>
			<ul class="user fr">
				<ul class="login fr">
					<c:if test="${uRegister == null }">
					<a href="login.jsp"> <span class="glyphicon glyphicon-user">
							登录</span>
					</a>
					
				</c:if>
				
					<li><a><span>消息(0)</span></a></li>
					<li><a><span>我的订单</span></a></li>
					<li><a><span>我的购物车(0)</span></a></li>
					<li id="my-account"><a>我的账户 <span
							class="glyphicon glyphicon-triangle-bottom"></span></a></li>
					<ul style="display: none">
						<li>我的优惠券</li>
						<li>账户余额</li>
						<li>我的收藏</li>
					</ul>
					<li id="mobile-shop"><a><span
							class="glyphicon glyphicon-phone"></span>手机购物</a></li>
				</ul>
			</ul>
		</div>
	</div>
	<!--导航部分-->
	<div class="head_background">
		<div class="head-nav">
			<!--logo部分-->
			<div class="head_m clearfix">
				<img src="img/logo1.png" />
			</div>
			<div class="nav">
				<ul>
					<li class="active"><a>商城首页</a></li>
					<li><a>团购</a></li>
					<li><a>全球购</a></li>
					<li><a>品牌街</a></li>
				</ul>
			</div>
			<div class="search">
				<input type="text" style="width: 250px; height: 30px" /> <a><input
					type="sumbit" style="width: 50px; height: 30px; margin-left: -5px;" /><span
					class="glyphicon glyphicon-search"></span></a>
			</div>
		</div>
	</div>
	<!--内容部分-->
	<div class="containers">
		<div class="containers_left">
			<ul>
				<li><i style="background-position: 64px 452px"></i> <a
					href="dog-food.jsp">狗粮专区 </a></li>
				<li><i style="background-position: 64px 402px"></i> <a
					href="canned-snack.jsp">零食罐头</a></li>
				<li><i style="background-position: 64px 352px"></i> <a
					href="medical.jsp">医疗驱虫</a></li>
				<li><i style="background-position: 64px 302px"></i> <a
					href="health-care.jsp">营养保健</a></li>
				<li><i style="background-position: 64px 252px"></i> <a
					href="daily-suppilies.jsp">日常用品</a></li>
				<li><i style="background-position: 64px 202px"></i> <a
					href="wash-clean.jsp">洗护清洁</a></li>
				<li><i style="background-position: 64px 152px"></i> <a
					href="pet-toys.jsp">宠物玩具</a></li>
				<li><i style="background-position: 64px 102px"></i> <a
					href="clothing.jsp">服装配饰</a></li>
				<li><i style="background-position: 64px 52px"></i> <a
					href="cat.jsp">猫咪专区</a></li>
			</ul>
		</div>
		<div class="containers_right">
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="img/shop/20170327_f92c5cc.png" alt="...">
						<div class="carousel-caption">...</div>
					</div>
					<div class="item">
						<img src="img/shop/shop4.jpg" alt="...">
						<div class="carousel-caption">...</div>
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<!--全部内容展示部分-->
	<div class="all_message">
		<div class="special_offer">
			<ul class="title">
				<li class="hover" id="li1" onclick="show(this)">每日特价竞选 <span></span>
				</li>
				<li class="link" id="li2" onclick="show(this)">满100减20 <span></span>
				</li>
			</ul>
			<div class="special_offer_css">
				<div class="special_offer_img_show" id="div1"
					style="display: block;">
					<ul>
						<li>
							<div class="pic">
								<a><img alt="" src="img/shop/1.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
						<li>
							<div class="pic">
								<a><img src="img/shop/2.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
						<li>
							<div class="pic">
								<a><img src="img/shop/3.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
					</ul>
					<ul>
						<li>
							<div class="pic">
								<a><img src="img/shop/4.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
						<li>
							<div class="pic">
								<a><img src="img/shop/5.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
						<li>
							<div class="pic">
								<a><img src="img/shop/6.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
					</ul>
				</div>
				<div class="special_offer_img_show" id="div2" style="display: none;">
					<ul>
						<li>
							<div class="pic">
								<a><img src="img/shop/b1.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
						<li>
							<div class="pic">
								<a><img src="img/shop/b2.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
						<li>
							<div class="pic">
								<a><img src="img/shop/b4.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
					</ul>
					<ul>
						<li>
							<div class="pic">
								<a><img src="img/shop/b5.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
						<li>
							<div class="pic">
								<a><img src="img/shop/b7.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
						<li>
							<div class="pic">
								<a><img src="img/shop/c1.jpg"></a>
							</div>
							<div class="desc">
								<p class="desc_top">TOP</p>
								<p class="desc_name">
									<a>【满500返100（玩具券）】海洋之星抗敏犬粮</a>
								</p>
								<p class="desc_lowest_price">￥130.00</p>
								<p class="desc_market_price">￥260</p>
							</div>
						</li>
					</ul>
				</div>
			</div>

			<!--全球购-->
			<div class="global_purchase">
				<div class="global_purchase_top">
					<p>全球购</p>
				</div>
				<div class="global_purchase_img_show">
					<div class="purchase_show_left">
						<a><img src="img/shop/6.png" /></a>
					</div>
					<div class="purchase_show_right">
						<ul>
							<li>
								<div class="purchase_pic">
									<a><img src="img/shop/a1.jpg" /></a>
								</div>
								<div class="purchase_desc">
									<p class="purchase_desc_title">
										<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
									</p>
									<p class="purchase_desc_price">
										<span class="normal_price">￥670.00</span> <span
											class="low_price">￥880</span>
									</p>
								</div>
							</li>
							<li>
								<div class="purchase_pic">
									<a><img src="img/shop/a2.jpg" /></a>
								</div>
								<div class="purchase_desc">
									<p class="purchase_desc_title">
										<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
									</p>
									<p class="purchase_desc_price">
										<span class="normal_price">￥670.00</span> <span
											class="low_price">￥880</span>
									</p>
								</div>
							</li>
							<li>
								<div class="purchase_pic">
									<a><img src="img/shop/a3.jpg" /></a>
								</div>
								<div class="purchase_desc">
									<p class="purchase_desc_title">
										<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
									</p>
									<p class="purchase_desc_price">
										<span class="normal_price">￥670.00</span> <span
											class="low_price">￥880</span>
									</p>
								</div>
							</li>
							<li>
								<div class="purchase_pic">
									<a><img src="img/shop/a4.jpg" /></a>
								</div>
								<div class="purchase_desc">
									<p class="purchase_desc_title">
										<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
									</p>
									<p class="purchase_desc_price">
										<span class="normal_price">￥670.00</span> <span
											class="low_price">￥880</span>
									</p>
								</div>
							</li>
						</ul>
						<ul>
							<li>
								<div class="purchase_pic">
									<a><img src="img/shop/a5.jpg" /></a>
								</div>
								<div class="purchase_desc">
									<p class="purchase_desc_title">
										<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
									</p>
									<p class="purchase_desc_price">
										<span class="normal_price">￥670.00</span> <span
											class="low_price">￥880</span>
									</p>
								</div>
							</li>
							<li>
								<div class="purchase_pic">
									<a><img src="img/shop/a6.jpg" /></a>
								</div>
								<div class="purchase_desc">
									<p class="purchase_desc_title">
										<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
									</p>
									<p class="purchase_desc_price">
										<span class="normal_price">￥670.00</span> <span
											class="low_price">￥880</span>
									</p>
								</div>
							</li>
							<li>
								<div class="purchase_pic">
									<a><img src="img/shop/a7.jpg" /></a>
								</div>
								<div class="purchase_desc">
									<p class="purchase_desc_title">
										<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
									</p>
									<p class="purchase_desc_price">
										<span class="normal_price">￥670.00</span> <span
											class="low_price">￥880</span>
									</p>
								</div>
							</li>
							<li>
								<div class="purchase_pic">
									<a><img src="img/shop/a8.jpg" /></a>
								</div>
								<div class="purchase_desc">
									<p class="purchase_desc_title">
										<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
									</p>
									<p class="purchase_desc_price">
										<span class="normal_price">￥670.00</span> <span
											class="low_price">￥880</span>
									</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!--各楼层-->
				<div id="1" class="floor">
					<div class="global_purchase_top">
						<p>1F 萌宠主粮</p>
					</div>
					<div class="tabs">
						<!--三级分类-->
						<ul>
							<li class="tab-selectd"><a>进口狗粮</a></li>
							<li><a>国产精品</a></li>
							<li><a>BOTH</a></li>
							<li><a>比瑞吉:北欧天然粮</a></li>
						</ul>
					</div>
					<div class="global_purchase_img_show">
						<div class="purchase_show_left">
							<a><img src="img/shop/1F.jpg" /></a>
						</div>
						<div class="purchase_show_right">
							<ul>
								<li>
									<div class="purchase_pic">
										<a><img src="img/shop/b1.jpg" /></a>
									</div>
									<div class="purchase_desc">
										<p class="purchase_desc_title">
											<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
										</p>
										<p class="purchase_desc_price">
											<span class="normal_price">￥670.00</span> <span
												class="low_price">￥880</span>
										</p>
									</div>
								</li>
								<li>
									<div class="purchase_pic">
										<a><img src="img/shop/b2.jpg" /></a>
									</div>
									<div class="purchase_desc">
										<p class="purchase_desc_title">
											<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
										</p>
										<p class="purchase_desc_price">
											<span class="normal_price">￥670.00</span> <span
												class="low_price">￥880</span>
										</p>
									</div>
								</li>
								<li>
									<div class="purchase_pic">
										<a><img src="img/shop/b3.jpg" /></a>
									</div>
									<div class="purchase_desc">
										<p class="purchase_desc_title">
											<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
										</p>
										<p class="purchase_desc_price">
											<span class="normal_price">￥670.00</span> <span
												class="low_price">￥880</span>
										</p>
									</div>
								</li>
								<li>
									<div class="purchase_pic">
										<a><img src="img/shop/b4.jpg" /></a>
									</div>
									<div class="purchase_desc">
										<p class="purchase_desc_title">
											<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
										</p>
										<p class="purchase_desc_price">
											<span class="normal_price">￥670.00</span> <span
												class="low_price">￥880</span>
										</p>
									</div>
								</li>
							</ul>
							<ul>
								<li>
									<div class="purchase_pic">
										<a><img src="img/shop/b5.jpg" /></a>
									</div>
									<div class="purchase_desc">
										<p class="purchase_desc_title">
											<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
										</p>
										<p class="purchase_desc_price">
											<span class="normal_price">￥670.00</span> <span
												class="low_price">￥880</span>
										</p>
									</div>
								</li>
								<li>
									<div class="purchase_pic">
										<a><img src="img/shop/a6.jpg" /></a>
									</div>
									<div class="purchase_desc">
										<p class="purchase_desc_title">
											<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
										</p>
										<p class="purchase_desc_price">
											<span class="normal_price">￥670.00</span> <span
												class="low_price">￥880</span>
										</p>
									</div>
								</li>
								<li>
									<div class="purchase_pic">
										<a><img src="img/shop/b7.jpg" /></a>
									</div>
									<div class="purchase_desc">
										<p class="purchase_desc_title">
											<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
										</p>
										<p class="purchase_desc_price">
											<span class="normal_price">￥670.00</span> <span
												class="low_price">￥880</span>
										</p>
									</div>
								</li>
								<li>
									<div class="purchase_pic">
										<a><img src="img/shop/b8.jpg" /></a>
									</div>
									<div class="purchase_desc">
										<p class="purchase_desc_title">
											<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
										</p>
										<p class="purchase_desc_price">
											<span class="normal_price">￥670.00</span> <span
												class="low_price">￥880</span>
										</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!--第二层-->
					<div id="2" class="floor">
						<div class="global_purchase_top">
							<p>2F 美味零食</p>
						</div>
						<div class="tabs">
							<!--三级分类-->
							<ul>
								<li class="tab-selectd"><a>销量榜单</a></li>
								<li><a>肉质零食</a></li>
								<li><a>磨牙洁齿</a></li>
								<li><a>食量罐头</a></li>
							</ul>
						</div>
						<div class="global_purchase_img_show">
							<div class="purchase_show_left">
								<a><img src="img/shop/2f.jpg"/></a>
							</div>
							<div class="purchase_show_right">
								<ul>
									<li>
										<div class="purchase_pic">
											<a><img src="img/shop/c1.jpg" /></a>
										</div>
										<div class="purchase_desc">
											<p class="purchase_desc_title">
												<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
											</p>
											<p class="purchase_desc_price">
												<span class="normal_price">￥670.00</span> <span
													class="low_price">￥880</span>
											</p>
										</div>
									</li>
									<li>
										<div class="purchase_pic">
											<a><img src="img/shop/c2.jpg" /></a>
										</div>
										<div class="purchase_desc">
											<p class="purchase_desc_title">
												<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
											</p>
											<p class="purchase_desc_price">
												<span class="normal_price">￥670.00</span> <span
													class="low_price">￥880</span>
											</p>
										</div>
									</li>
									<li>
										<div class="purchase_pic">
											<a><img src="img/shop/c3.jpg" /></a>
										</div>
										<div class="purchase_desc">
											<p class="purchase_desc_title">
												<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
											</p>
											<p class="purchase_desc_price">
												<span class="normal_price">￥670.00</span> <span
													class="low_price">￥880</span>
											</p>
										</div>
									</li>
									<li>
										<div class="purchase_pic">
											<a><img src="img/shop/c4.jpg" /></a>
										</div>
										<div class="purchase_desc">
											<p class="purchase_desc_title">
												<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
											</p>
											<p class="purchase_desc_price">
												<span class="normal_price">￥670.00</span> <span
													class="low_price">￥880</span>
											</p>
										</div>
									</li>
								</ul>
								<ul>
									<li>
										<div class="purchase_pic">
											<a><img src="img/shop/c5.jpg" /></a>
										</div>
										<div class="purchase_desc">
											<p class="purchase_desc_title">
												<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
											</p>
											<p class="purchase_desc_price">
												<span class="normal_price">￥670.00</span> <span
													class="low_price">￥880</span>
											</p>
										</div>
									</li>
									<li>
										<div class="purchase_pic">
											<a><img src="img/shop/c6.png" /></a>
										</div>
										<div class="purchase_desc">
											<p class="purchase_desc_title">
												<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
											</p>
											<p class="purchase_desc_price">
												<span class="normal_price">￥670.00</span> <span
													class="low_price">￥880</span>
											</p>
										</div>
									</li>
									<li>
										<div class="purchase_pic">
											<a><img src="img/shop/c7.jpg" /></a>
										</div>
										<div class="purchase_desc">
											<p class="purchase_desc_title">
												<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
											</p>
											<p class="purchase_desc_price">
												<span class="normal_price">￥670.00</span> <span
													class="low_price">￥880</span>
											</p>
										</div>
									</li>
									<li>
										<div class="purchase_pic">
											<a><img src="img/shop/c8.jpg" /></a>
										</div>
										<div class="purchase_desc">
											<p class="purchase_desc_title">
												<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
											</p>
											<p class="purchase_desc_price">
												<span class="normal_price">￥670.00</span> <span
													class="low_price">￥880</span>
											</p>
										</div>
									</li>
								</ul>
							</div>
						</div>


						<!--第三层-->
						<div id="3" class="floor">
							<div class="global_purchase_top">
								<p>3F 驱虫医疗</p>
							</div>
							<div class="tabs">
								<!--三级分类-->
								<ul>
									<li class="tab-selectd"><a>宝宝必备</a></li>
									<li><a>体内外驱虫</a></li>
									<li><a>眼睛耳朵</a></li>
									<li><a>皮肤口腔</a></li>
								</ul>
							</div>
							<div class="global_purchase_img_show">
								<div class="purchase_show_left">
									<a><img src="img/shop/3f.jpg"/></a>
								</div>
								<div class="purchase_show_right">
									<ul>
										<li>
											<div class="purchase_pic">
												<a><img src="img/shop/d1.jpg" /></a>
											</div>
											<div class="purchase_desc">
												<p class="purchase_desc_title">
													<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
												</p>
												<p class="purchase_desc_price">
													<span class="normal_price">￥670.00</span> <span
														class="low_price">￥880</span>
												</p>
											</div>
										</li>
										<li>
											<div class="purchase_pic">
												<a><img src="img/shop/d2.jpg" /></a>
											</div>
											<div class="purchase_desc">
												<p class="purchase_desc_title">
													<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
												</p>
												<p class="purchase_desc_price">
													<span class="normal_price">￥670.00</span> <span
														class="low_price">￥880</span>
												</p>
											</div>
										</li>
										<li>
											<div class="purchase_pic">
												<a><img src="img/shop/d3.jpg" /></a>
											</div>
											<div class="purchase_desc">
												<p class="purchase_desc_title">
													<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
												</p>
												<p class="purchase_desc_price">
													<span class="normal_price">￥670.00</span> <span
														class="low_price">￥880</span>
												</p>
											</div>
										</li>
										<li>
											<div class="purchase_pic">
												<a><img src="img/shop/d4.jpg" /></a>
											</div>
											<div class="purchase_desc">
												<p class="purchase_desc_title">
													<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
												</p>
												<p class="purchase_desc_price">
													<span class="normal_price">￥670.00</span> <span
														class="low_price">￥880</span>
												</p>
											</div>
										</li>
									</ul>
									<ul>
										<li>
											<div class="purchase_pic">
												<a><img src="img/shop/d5.jpg" /></a>
											</div>
											<div class="purchase_desc">
												<p class="purchase_desc_title">
													<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
												</p>
												<p class="purchase_desc_price">
													<span class="normal_price">￥670.00</span> <span
														class="low_price">￥880</span>
												</p>
											</div>
										</li>
										<li>
											<div class="purchase_pic">
												<a><img src="img/shop/d6.jpg" /></a>
											</div>
											<div class="purchase_desc">
												<p class="purchase_desc_title">
													<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
												</p>
												<p class="purchase_desc_price">
													<span class="normal_price">￥670.00</span> <span
														class="low_price">￥880</span>
												</p>
											</div>
										</li>
										<li>
											<div class="purchase_pic">
												<a><img src="img/shop/d7.jpg" /></a>
											</div>
											<div class="purchase_desc">
												<p class="purchase_desc_title">
													<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
												</p>
												<p class="purchase_desc_price">
													<span class="normal_price">￥670.00</span> <span
														class="low_price">￥880</span>
												</p>
											</div>
										</li>
										<li>
											<div class="purchase_pic">
												<a><img src="img/shop/d8.jpg" /></a>
											</div>
											<div class="purchase_desc">
												<p class="purchase_desc_title">
													<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
												</p>
												<p class="purchase_desc_price">
													<span class="normal_price">￥670.00</span> <span
														class="low_price">￥880</span>
												</p>
											</div>
										</li>
									</ul>
								</div>
							</div>

							<!--第四层-->
							<div id="4" class="floor">
								<div class="global_purchase_top">
									<p>4F 营养保健</p>
								</div>
								<div class="tabs">
									<!--三级分类-->
									<ul>
										<li class="tab-selectd"><a>最受欢迎</a></li>
										<li><a>营养助长</a></li>
										<li><a>调理肠胃</a></li>
										<li><a>滋养美毛</a></li>
									</ul>
								</div>
								<div class="global_purchase_img_show">
									<div class="purchase_show_left">
										<a><img src="img/shop/4f.jpg"/></a>
									</div>
									<div class="purchase_show_right">
										<ul>
											<li>
												<div class="purchase_pic">
													<a><img src="img/shop/e1.jpg" /></a>
												</div>
												<div class="purchase_desc">
													<p class="purchase_desc_title">
														<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
													</p>
													<p class="purchase_desc_price">
														<span class="normal_price">￥670.00</span> <span
															class="low_price">￥880</span>
													</p>
												</div>
											</li>
											<li>
												<div class="purchase_pic">
													<a><img src="img/shop/e2.jpg" /></a>
												</div>
												<div class="purchase_desc">
													<p class="purchase_desc_title">
														<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
													</p>
													<p class="purchase_desc_price">
														<span class="normal_price">￥670.00</span> <span
															class="low_price">￥880</span>
													</p>
												</div>
											</li>
											<li>
												<div class="purchase_pic">
													<a><img src="img/shop/e3.jpg" /></a>
												</div>
												<div class="purchase_desc">
													<p class="purchase_desc_title">
														<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
													</p>
													<p class="purchase_desc_price">
														<span class="normal_price">￥670.00</span> <span
															class="low_price">￥880</span>
													</p>
												</div>
											</li>
											<li>
												<div class="purchase_pic">
													<a><img src="img/shop/e4.jpg" /></a>
												</div>
												<div class="purchase_desc">
													<p class="purchase_desc_title">
														<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
													</p>
													<p class="purchase_desc_price">
														<span class="normal_price">￥670.00</span> <span
															class="low_price">￥880</span>
													</p>
												</div>
											</li>
										</ul>
										<ul>
											<li>
												<div class="purchase_pic">
													<a><img src="img/shop/e5.jpg" /></a>
												</div>
												<div class="purchase_desc">
													<p class="purchase_desc_title">
														<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
													</p>
													<p class="purchase_desc_price">
														<span class="normal_price">￥670.00</span> <span
															class="low_price">￥880</span>
													</p>
												</div>
											</li>
											<li>
												<div class="purchase_pic">
													<a><img src="img/shop/e6.jpg" /></a>
												</div>
												<div class="purchase_desc">
													<p class="purchase_desc_title">
														<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
													</p>
													<p class="purchase_desc_price">
														<span class="normal_price">￥670.00</span> <span
															class="low_price">￥880</span>
													</p>
												</div>
											</li>
											<li>
												<div class="purchase_pic">
													<a><img src="img/shop/e7.jpg" /></a>
												</div>
												<div class="purchase_desc">
													<p class="purchase_desc_title">
														<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
													</p>
													<p class="purchase_desc_price">
														<span class="normal_price">￥670.00</span> <span
															class="low_price">￥880</span>
													</p>
												</div>
											</li>
											<li>
												<div class="purchase_pic">
													<a><img src="img/shop/e8.jpg" /></a>
												</div>
												<div class="purchase_desc">
													<p class="purchase_desc_title">
														<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
													</p>
													<p class="purchase_desc_price">
														<span class="normal_price">￥670.00</span> <span
															class="low_price">￥880</span>
													</p>
												</div>
											</li>
										</ul>
									</div>
								</div>

								<!--第五层-->
								<div id="5" class="floor">
									<div class="global_purchase_top">
										<p>5F 清洁香波</p>
									</div>
									<div class="tabs">
										<!--三级分类-->
										<ul>
											<li class="tab-selectd"><a>畅销爆款</a></li>
											<li><a>消毒清洁</a></li>
											<li><a>香波</a></li>
											<li><a>尿垫</a></li>
										</ul>
									</div>
									<div class="global_purchase_img_show">
										<div class="purchase_show_left">
											<a><img src="img/shop/5f.jpg"/></a>
										</div>
										<div class="purchase_show_right">
											<ul>
												<li>
													<div class="purchase_pic">
														<a><img src="img/shop/f1.jpg" /></a>
													</div>
													<div class="purchase_desc">
														<p class="purchase_desc_title">
															<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
														</p>
														<p class="purchase_desc_price">
															<span class="normal_price">￥670.00</span> <span
																class="low_price">￥880</span>
														</p>
													</div>
												</li>
												<li>
													<div class="purchase_pic">
														<a><img src="img/shop/f2.jpg" /></a>
													</div>
													<div class="purchase_desc">
														<p class="purchase_desc_title">
															<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
														</p>
														<p class="purchase_desc_price">
															<span class="normal_price">￥670.00</span> <span
																class="low_price">￥880</span>
														</p>
													</div>
												</li>
												<li>
													<div class="purchase_pic">
														<a><img src="img/shop/f3.jpg" /></a>
													</div>
													<div class="purchase_desc">
														<p class="purchase_desc_title">
															<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
														</p>
														<p class="purchase_desc_price">
															<span class="normal_price">￥670.00</span> <span
																class="low_price">￥880</span>
														</p>
													</div>
												</li>
												<li>
													<div class="purchase_pic">
														<a><img src="img/shop/f4.jpg" /></a>
													</div>
													<div class="purchase_desc">
														<p class="purchase_desc_title">
															<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
														</p>
														<p class="purchase_desc_price">
															<span class="normal_price">￥670.00</span> <span
																class="low_price">￥880</span>
														</p>
													</div>
												</li>
											</ul>
											<ul>
												<li>
													<div class="purchase_pic">
														<a><img src="img/shop/f5.jpg" /></a>
													</div>
													<div class="purchase_desc">
														<p class="purchase_desc_title">
															<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
														</p>
														<p class="purchase_desc_price">
															<span class="normal_price">￥670.00</span> <span
																class="low_price">￥880</span>
														</p>
													</div>
												</li>
												<li>
													<div class="purchase_pic">
														<a><img src="img/shop/f6.jpg" /></a>
													</div>
													<div class="purchase_desc">
														<p class="purchase_desc_title">
															<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
														</p>
														<p class="purchase_desc_price">
															<span class="normal_price">￥670.00</span> <span
																class="low_price">￥880</span>
														</p>
													</div>
												</li>
												<li>
													<div class="purchase_pic">
														<a><img src="img/shop/f7.jpg" /></a>
													</div>
													<div class="purchase_desc">
														<p class="purchase_desc_title">
															<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
														</p>
														<p class="purchase_desc_price">
															<span class="normal_price">￥670.00</span> <span
																class="low_price">￥880</span>
														</p>
													</div>
												</li>
												<li>
													<div class="purchase_pic">
														<a><img src="img/shop/f8.jpg" /></a>
													</div>
													<div class="purchase_desc">
														<p class="purchase_desc_title">
															<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
														</p>
														<p class="purchase_desc_price">
															<span class="normal_price">￥670.00</span> <span
																class="low_price">￥880</span>
														</p>
													</div>
												</li>
											</ul>
										</div>
									</div>


									<!--第六层-->
									<div id="6" class="floor">
										<div class="global_purchase_top">
											<p>6F 生活用品</p>
										</div>
										<div class="tabs">
											<!--三级分类-->
											<ul>
												<li class="tab-selectd"><a>榜单</a></li>
												<li><a>牵引</a></li>
												<li><a>玩具</a></li>
												<li><a>窝垫穿戴</a></li>
											</ul>
										</div>
										<div class="global_purchase_img_show">
											<div class="purchase_show_left">
												<a><img src="img/shop/6f.jpg"/></a>
											</div>
											<div class="purchase_show_right">
												<ul>
													<li>
														<div class="purchase_pic">
															<a><img src="img/shop/g1.jpg" /></a>
														</div>
														<div class="purchase_desc">
															<p class="purchase_desc_title">
																<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
															</p>
															<p class="purchase_desc_price">
																<span class="normal_price">￥670.00</span> <span
																	class="low_price">￥880</span>
															</p>
														</div>
													</li>
													<li>
														<div class="purchase_pic">
															<a><img src="img/shop/g2.jpg" /></a>
														</div>
														<div class="purchase_desc">
															<p class="purchase_desc_title">
																<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
															</p>
															<p class="purchase_desc_price">
																<span class="normal_price">￥670.00</span> <span
																	class="low_price">￥880</span>
															</p>
														</div>
													</li>
													<li>
														<div class="purchase_pic">
															<a><img src="img/shop/g3.jpg" /></a>
														</div>
														<div class="purchase_desc">
															<p class="purchase_desc_title">
																<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
															</p>
															<p class="purchase_desc_price">
																<span class="normal_price">￥670.00</span> <span
																	class="low_price">￥880</span>
															</p>
														</div>
													</li>
													<li>
														<div class="purchase_pic">
															<a><img src="img/shop/g4.jpg" /></a>
														</div>
														<div class="purchase_desc">
															<p class="purchase_desc_title">
																<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
															</p>
															<p class="purchase_desc_price">
																<span class="normal_price">￥670.00</span> <span
																	class="low_price">￥880</span>
															</p>
														</div>
													</li>
												</ul>
												<ul>
													<li>
														<div class="purchase_pic">
															<a><img src="img/shop/g5.jpg" /></a>
														</div>
														<div class="purchase_desc">
															<p class="purchase_desc_title">
																<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
															</p>
															<p class="purchase_desc_price">
																<span class="normal_price">￥670.00</span> <span
																	class="low_price">￥880</span>
															</p>
														</div>
													</li>
													<li>
														<div class="purchase_pic">
															<a><img src="img/shop/g6.jpg" /></a>
														</div>
														<div class="purchase_desc">
															<p class="purchase_desc_title">
																<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
															</p>
															<p class="purchase_desc_price">
																<span class="normal_price">￥670.00</span> <span
																	class="low_price">￥880</span>
															</p>
														</div>
													</li>
													<li>
														<div class="purchase_pic">
															<a><img src="img/shop/g7.jpg" /></a>
														</div>
														<div class="purchase_desc">
															<p class="purchase_desc_title">
																<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
															</p>
															<p class="purchase_desc_price">
																<span class="normal_price">￥670.00</span> <span
																	class="low_price">￥880</span>
															</p>
														</div>
													</li>
													<li>
														<div class="purchase_pic">
															<a><img src="img/shop/g8.jpg" /></a>
														</div>
														<div class="purchase_desc">
															<p class="purchase_desc_title">
																<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
															</p>
															<p class="purchase_desc_price">
																<span class="normal_price">￥670.00</span> <span
																	class="low_price">￥880</span>

															</p>
														</div>
													</li>
												</ul>
											</div>
										</div>

										<!--第七层-->
										<div id="6" class="floor">
											<div class="global_purchase_top">
												<p>7F 猫猫专区</p>
											</div>
											<div class="tabs">
												<!--三级分类-->
												<ul>
													<li class="tab-selectd"><a>养猫必备</a></li>
													<li><a>猫粮</a></li>
													<li><a>零食罐头</a></li>
													<li><a>驱虫保健</a></li>
												</ul>
											</div>
											<div class="global_purchase_img_show">
												<div class="purchase_show_left">
													<a><img src="img/shop/7f.jpg"/></a>
												</div>
												<div class="purchase_show_right">
													<ul>
														<li>
															<div class="purchase_pic">
																<a><img src="img/shop/h1.jpg" /></a>
															</div>
															<div class="purchase_desc">
																<p class="purchase_desc_title">
																	<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
																</p>
																<p class="purchase_desc_price">
																	<span class="normal_price">￥670.00</span> <span
																		class="low_price">￥880</span>
																</p>
															</div>
														</li>
														<li>
															<div class="purchase_pic">
																<a><img src="img/shop/h2.jpg" /></a>
															</div>
															<div class="purchase_desc">
																<p class="purchase_desc_title">
																	<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
																</p>
																<p class="purchase_desc_price">
																	<span class="normal_price">￥670.00</span> <span
																		class="low_price">￥880</span>
																</p>
															</div>
														</li>
														<li>
															<div class="purchase_pic">
																<a><img src="img/shop/h3.jpg" /></a>
															</div>
															<div class="purchase_desc">
																<p class="purchase_desc_title">
																	<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
																</p>
																<p class="purchase_desc_price">
																	<span class="normal_price">￥670.00</span> <span
																		class="low_price">￥880</span>
																</p>
															</div>
														</li>
														<li>
															<div class="purchase_pic">
																<a><img src="img/shop/h4.jpg" /></a>
															</div>
															<div class="purchase_desc">
																<p class="purchase_desc_title">
																	<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
																</p>
																<p class="purchase_desc_price">
																	<span class="normal_price">￥670.00</span> <span
																		class="low_price">￥880</span>
																</p>
															</div>
														</li>
													</ul>
													<ul>
														<li>
															<div class="purchase_pic">
																<a><img src="img/shop/h5.jpg" /></a>
															</div>
															<div class="purchase_desc">
																<p class="purchase_desc_title">
																	<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
																</p>
																<p class="purchase_desc_price">
																	<span class="normal_price">￥670.00</span> <span
																		class="low_price">￥880</span>
																</p>
															</div>
														</li>
														<li>
															<div class="purchase_pic">
																<a><img src="img/shop/h6.jpg" /></a>
															</div>
															<div class="purchase_desc">
																<p class="purchase_desc_title">
																	<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
																</p>
																<p class="purchase_desc_price">
																	<span class="normal_price">￥670.00</span> <span
																		class="low_price">￥880</span>
																</p>
															</div>
														</li>
														<li>
															<div class="purchase_pic">
																<a><img src="img/shop/h7.jpg" /></a>
															</div>
															<div class="purchase_desc">
																<p class="purchase_desc_title">
																	<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
																</p>
																<p class="purchase_desc_price">
																	<span class="normal_price">￥670.00</span> <span
																		class="low_price">￥880</span>
																</p>
															</div>
														</li>
														<li>
															<div class="purchase_pic">
																<a><img src="img/shop/h8.jpg" /></a>
															</div>
															<div class="purchase_desc">
																<p class="purchase_desc_title">
																	<a>【保税仓直发】荒野盛宴田园山珍烤野鸭烟熏火鸡配方30磅【请务必在备注中填写身份证】</a>
																</p>
																<p class="purchase_desc_price">
																	<span class="normal_price">￥670.00</span> <span
																		class="low_price">￥880</span>


																</p>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<!--购物车-->
									<div class="mall_cart"
										style="position: fixed; right: 0; top: 50%; z-index: 1000; margin-top: -63px; width: 40px; height: 125px; background-color: #ecc30a; text-align: center;">
										<a href="shopping-car.jsp" style="color: #FFF"> <i></i> 购
											<br /> 物 <br /> 车 <br /> <span class="cart_item-num">2</span>
										</a>
									</div>
									<!--联系客服-->
									<div class="mall_contact"
										style="position: fixed; right: 0; top: 50%; z-index: 1000; margin-top: 80px; background: url(img/shop/icons003.png) no-repeat; background-position: -2px -164px; width: 40px; height: 40px; background-color: #ecc30a; text-align: center;">
										<a></a>
									</div>
</body>
<script language='javascript'>
<!--
function show( o )
    {
      //debugger;
    
    for(i=1;i<=2;i++)
    {
     document.getElementById("li"+i).className='Link'
     document.getElementById("div"+i).style.display='none';

    }
    o.className='hover'
    document.getElementById("div" + o.id.substring(2)).style.display ="block";

　
     // document.getElementByIdx_x("li1").className='Link'
     // document.getElementByIdx_x("li2").className='Link'
      //document.getElementByIdx_x("li3").className='Link'
      //注明：给id=li1、li2、li3赋值默认class样式为Link
    //o.className='hover'
     // 注明：变量“o”的class样式变为hover,因为以下onClick="show(this)"设置的是this，相当于点击此处执行这条语句。
    
    //document.getElementByIdx_x("div1").style.display='none';
    //document.getElementByIdx_x("div2").style.display='none';
    //document.getElementByIdx_x("div3").style.display='none';
    // 注明：给div1、div2、div3初始显示为none;       
    //if(o.id == "li1")
     //document.getElementByIdx_x("div1").style.display ="block";
    //if(o.id == "li2")
    // document.getElementByIdx_x("div2").style.display ="block";
    //if(o.id == "li3")
    // document.getElementByIdx_x("div3").style.display ="block";

    //注明：如果id=li1，相当于点击li1时，div1为block状态；点击li2时，div2为block状态；点击li3时，div3为block状态； 


   }
-->

</script>
</html>

<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use app\assets\ltAppAsset;

use yii\data\Pagination;
use app\models\Category;
use app\models\Product;
use app\controllers\CategoryController;

AppAsset::register($this);
ltAppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>

    <?php
//        $this->registerJsFile('js/html5shiv.js', ['position' => \yii\web\View::POS_HEAD, 'condition' => 'lte IE9']);
//        $this->registerJsFile('js/respond.min.js', ['position' => \yii\web\View::POS_HEAD, 'condition' => 'lte IE9']);
    ?>

    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
<?php $this->beginBody() ?>
<header class="header-area">
			<!-- HEADER-TOP START -->
			<div class="header-top hidden-xs">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="top-menu">
								<!-- Start Language -->
								<ul class="language">
									<li><a href="#">Русский<i class="fa fa-caret-down left-5"></i></a>
										<ul>
											<li><a href="#">Русский</a></li>
											<li><a href="#">Английский</a></li>
											<li><a href="#">Французский</a></li>
										</ul>
									</li>
								</ul>
								<!-- End Language -->
								<!-- Start Currency -->
								<ul class="currency">
									<li><a href="#"><strong>$</strong> РУБ<i class="fa fa-caret-down left-5"></i></a>
										<ul>
											<li><a href="#">$ РУБ</a></li>
											<li><a href="#">$ GBP</a></li>
											<li><a href="#">$ USD</a></li>
										</ul>
									</li>
								</ul>
								<!-- End Currency -->
								<p class="welcome-msg">По умолчанию Добро пожаловать !</p>
							</div>
							<!-- Start Top-Link -->
							<div class="top-link">
								<ul class="link">

<?php if(!Yii::$app->user->isGuest): ?>

									  <li><a href="<?= \yii\helpers\Url::to(['/site/logout'])?>"><i class="fa fa-share"> </i><?= Yii::$app->user->identity['username']?> (Выход с админки)</a></li>
<?php endif;?>

									
									


   <li><a href="#" onclick="return getCart()"><i class="fa fa-shopping-cart"></i> Корзина</a></li>
 <li><a href="<?= \yii\helpers\Url::to(['/admin'])?>"><i class="fa fa-lock"></i> Логин</a></li>

								</ul>
							</div>
							<!-- End Top-Link -->
						</div>
					</div>
				</div>
			</div>
			<!-- HEADER-TOP END -->
			<!-- HEADER-MIDDLE START -->
			<div class="header-middle">
				<div class="container">
					<!-- Start Support-Client -->
					<div class="support-client hidden-xs">
						<div class="row">
							<!-- Start Single-Support -->
							<div class="col-md-3 hidden-sm">
								<div class="single-support">
									<div class="support-content">
										<i class="fa fa-clock-o"></i>
										<div class="support-text">
											<h1 class="zero gfont-1">Расписание</h1>
											<p>Понедельник- Пятница: 8.00 - 18.00</p>
										</div>
									</div>
								</div>
							</div>
							<!-- End Single-Support -->
							<!-- Start Single-Support -->
							<div class="col-md-3 col-sm-4">
								<div class="single-support">
									<i class="fa fa-truck"></i>
									<div class="support-text">
										<h1 class="zero gfont-1">Заказ транспорта</h1>
										<p>На заказ более 200р</p>
									</div>
								</div>
							</div>
							<!-- End Single-Support -->
							<!-- Start Single-Support -->
							<div class="col-md-3 col-sm-4">
								<div class="single-support">
									<i class="fa fa-money"></i>
									<div class="support-text">
										<h1 class="zero gfont-1">возврат денег 100%</h1>
										<p>В течение 30 дней после поставки Телефон: 0123456789</p>
									</div>
								</div>
							</div>
							<!-- End Single-Support -->
							<!-- Start Single-Support -->
							<div class="col-md-3 col-sm-4">
								<div class="single-support">
									<i class="fa fa-phone-square"></i>
									<div class="support-text">
										<h1 class="zero gfont-1">Телефон: 0123456789</h1>
										<p>Заказать Онлайн Сейчас!</p>
									</div>
								</div>
							</div>
							<!-- End Single-Support -->
						</div>
					</div>
					<!-- End Support-Client -->
					<!-- Start logo & Search Box -->
					<div class="row">
						<div class="col-md-3 col-sm-12">
							<div class="logo">
                                                               <a href="<?= \yii\helpers\Url::home()?>"><?= Html::img('@web/img/logo.png', ['alt' => 'Malias'])?></a>

								
							</div>
						</div>
						<div class="col-md-9 col-sm-12">
		                    <div class="quick-access">

               	<div class="search-by-category">
		                    		<div class="search-container">
<body>
			                    		<select  onchange="window.location.href=this.options[this.selectedIndex].value">
			                    			<option class="all-cate">Все категории</option>
<?= \app\components\MenuWidget::widget(['tpl' => 'menu2'])?>
											
			                    		</select>
 </body>
		                    		</div>
		                    		 <div class="search_box pull-right">
                        <form method="get" action="<?= \yii\helpers\Url::to(['category/search'])?>">
                            <input type="text" placeholder="Search" name="q">
                        </form>
                    </div>
		                    			
		                    		</div>
		                    	</div>
		                    	<div class="top-cart">
		                    		<ul>
		                    			<li>
			                    			<a onclick="return getCart()" href="#">
			                    				<span class="cart-icon"><i class="fa fa-shopping-cart"></i></span>
			                    				<span class="cart-total">
			                    					<span class="cart-title">Корзина</span>
				                    				
			                    			</a>
											
		                    			</li>
		                    		</ul>
		                    	</div>
		                    </div>
		                </div>
					</div>
					<!-- End logo & Search Box -->
				</div> 
			</div>
			<!-- HEADER-MIDDLE END -->
			<!-- START MAINMENU-AREA -->
			<div class="mainmenu-area">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="mainmenu hidden-sm hidden-xs">
								<nav>
  
 <?php
   
?>

    



									<ul>
				<li><a href="<?= \yii\helpers\Url::home()?>">Главная</a>
										</li>
										<li><a href="<?= \yii\helpers\Url::to(['/site/say'])?>">О нас</a></li>
 
<li><a href="<?= \yii\helpers\Url::to(['/site/luht'])?>">Лучшие товары</a></li>
										
									
<li><a href="<?= \yii\helpers\Url::to(['/site/newt'])?>">Новые товары</a></li>
										
										<li><a href="#">Страницы</a>
											<ul>
												
												
												
											<li><a href="<?= \yii\helpers\Url::to(['/site/admag'])?>">Просмотр Списка Магазинов</a></li>
												<li><a href="<?= \yii\helpers\Url::to(['/site/prpozel'])?>">Список пожеланий</a></li>
                                                                                                <a href="<?= \yii\helpers\Url::to(['/post/index'])?>">Добавить коментарий</a></li>
                                                                                              <li><a href="<?= \yii\helpers\Url::to(['/site/koment'])?>">Просмотр коментариев</a></li>
											</ul>
										</li>
										<li><a href="<?= \yii\helpers\Url::to(['/site/contact'])?>">Контакты</a></li>
						</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN-MENU-AREA -->
			<!-- Start Mobile-menu -->
			<div class="mobile-menu-area hidden-md hidden-lg">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<nav id="mobile-menu">
								<ul>
									<ul>
										<li><a href="<?= \yii\helpers\Url::home()?>">Главная</a>
										</li>
										<li><a href="<?= \yii\helpers\Url::to(['/site/say'])?>">О нас</a></li>
 

									<li><a href="<?= \yii\helpers\Url::to(['/site/luht'])?>">Лучшие товары</a></li>
									<li><a href="<?= \yii\helpers\Url::to(['/site/newt'])?>">Новые товары</a></li>
										
										<li><a href="#">Страницы</a>
											<ul>
												
										
												<li><a href="<?= \yii\helpers\Url::to(['/site/admag'])?>">Просмотр Списка Магазинов</a></li>
												<li><a href="<?= \yii\helpers\Url::to(['/post/test'])?>">Список пожеланий</a></li>
				<li><a href="<?= \yii\helpers\Url::to(['/site/koment'])?>">Коментарии</a></li>
 
											</ul>
										</li>
										<li><a href="<?= \yii\helpers\Url::to(['/site/contact'])?>">Контакты</a></li>
									</li>
									
								
							</nav>
						</div>
					</div>
				</div>
			</div>
			<!-- End Mobile-menu -->
		</header>
		<!-- HEADER AREA END -->
<div class="blok"  >

<?= $content ?>
</div>
<div class="footer-area">
			<!-- Footer Start -->
			<div class="footer">
				<div class="container">
					<div class="row">
						
						<div class="col-xs-12 col-sm-4 col-md-3">
							<div class="footer-title">
								<h5>служба заказчика</h5>
							</div>
							<nav>
								<ul class="footer-content">
										<li><a href="<?= \yii\helpers\Url::to(['/site/contact'])?>">Контакты</a></li>
										<li><a href="<?= \yii\helpers\Url::to(['/site/say'])?>">О нас</a></li>
									<li><a href="<?=\yii\helpers\Url::to(['/site/dostaw'])?>">Информация о доставках</a></li>
									<li><a href="<?= \yii\helpers\Url::to(['/site/konf'])?>">Конфиденциальность</a></li>
									<li><a href="<?= \yii\helpers\Url::to(['/site/sogl'])?>">Условия</a></li>
								</ul>
							</nav>
						</div>
						<div class="col-xs-12 hidden-sm col-md-3">
							<div class="footer-title">
								<h5>Оплата И Доставка</h5>
							</div>
							<nav>
								<ul class="footer-content">
									<li><a href="<?= \yii\helpers\Url::to(['/site/brend'])?>">мировые бренды</a></li>
									<li><a href="<?= \yii\helpers\Url::to(['/site/sert'])?>">подарочный сертификат</a></li>
									<li><a href="<?= \yii\helpers\Url::to(['/site/rodorg'])?>">родственные организации</a></li>
									<li><a href="<?= \yii\helpers\Url::to(['/site/spezw'])?>">Спецвыпуски</a></li>
									<li><a href="<?= \yii\helpers\Url::to(['/site/poisk'])?>">условие поиска</a></li>
								</ul>
							</nav>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-3">
							<div class="footer-title">
								<h5>Контактные данные</h5>
							</div>
							<nav>
								<ul class="footer-content box-information">
									<li>
										<i class="fa fa-home"></i><span>Минкс,Макаёнко 9</span>
									</li>
									<li>
										<i class="fa fa-envelope-o"></i><p><a href="contact.html">admin@bootexperts.com</a></p>
									</li>
									<li>
										<i class="fa fa-phone"></i>
										<span>01234-56789</span> <br> <span> 01234-56789</span>
									</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>				
			</div>
			<!-- Footer End -->
			<!-- Copyright-area Start -->
			<div class="copyright-area">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="copyright">
								<p>Авторское право &copy; Взято с <a href="http://bayguzin.ru" target="_blank"> bayguzin.ru</a>  Все права защищены.</p>
								<div class="payment">
									<a href="#"><img src="img/payment.png" alt="Payment"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Copyright-area End -->
		</footer>
		<!-- FOOTER-AREA END -->	
		<!-- QUICKVIEW PRODUCT -->
		<div id="quickview-wrapper">
		   <!-- Modal -->
		   <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
			    <div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<div class="modal-body">
							<div class="modal-product">
								<div class="product-images">
									<div class="main-image images">
										<img alt="#" src="img/product/quickview-photo.jpg"/>
									</div>
								</div><!-- .product-images -->

								<div class="product-info">
									<h1>Aenean eu tristique</h1>
									<div class="price-box-3">
										<hr />
										<div class="s-price-box">
											<span class="new-price">$160.00</span>
											<span class="old-price">$190.00</span>
										</div>
										<hr />
									</div>
									<a href="shop.html" class="see-all">See all features</a>
									<div class="quick-add-to-cart">
										<form method="post" class="cart">
											<div class="numbers-row">
												<input type="number" id="french-hens" value="3">
											</div>
											<button class="single_add_to_cart_button" type="submit">Add to cart</button>
										</form>
									</div>
									<div class="quick-desc">
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero.
									</div>
									<div class="social-sharing">
										<div class="widget widget_socialsharing_widget">
											<h3 class="widget-title-modal">Share this product</h3>
											<ul class="social-icons">
												<li><a target="_blank" title="Facebook" href="#" class="facebook social-icon"><i class="fa fa-facebook"></i></a></li>
												<li><a target="_blank" title="Twitter" href="#" class="twitter social-icon"><i class="fa fa-twitter"></i></a></li>
												<li><a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="fa fa-pinterest"></i></a></li>
												<li><a target="_blank" title="Google +" href="#" class="gplus social-icon"><i class="fa fa-google-plus"></i></a></li>
												<li><a target="_blank" title="LinkedIn" href="#" class="linkedin social-icon"><i class="fa fa-linkedin"></i></a></li>
											</ul>
										</div>
									</div>
								</div><!-- .product-info -->
							</div><!-- .modal-product -->
						</div><!-- .modal-body -->
					</div><!-- .modal-content -->
			    </div><!-- .modal-dialog -->
		   </div>
		   <!-- END Modal -->
		</div>
		<!-- END QUICKVIEW PRODUCT -->
<?php
\yii\bootstrap\Modal::begin([
    'header' => '<h2>Корзина</h2>',
    'id' => 'cart',
    'size' => 'modal-lg',
    'footer' => '<button type="button" class="btn btn-default" data-dismiss="modal">Продолжить покупки</button>
        <a href="' . \yii\helpers\Url::to(['cart/view']) . '" class="btn btn-success">Оформить заказ</a>
        <button type="button" class="btn btn-danger" onclick="clearCart()">Очистить корзину</button>'
]);

\yii\bootstrap\Modal::end();
?>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
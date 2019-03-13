<?php

/* @var $this yii\web\View */

use yii\data\Pagination;
use app\models\Category;
use app\models\Product;
use yii\widgets\ActiveForm;
use app\models\Logo;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use app\assets\ltAppAsset;
use app\controllers\CategoryController;
use mihaildev\ckeditor\CKEditor;








$this->title = 'My Yii Application';

use yii\helpers\Html;

?>


			
		<!-- START PAGE-CONTENT -->
		<section class="page-content">
			<div class="container">
	            <div class="row">
	            	<div class="col-md-3 col-sm-3">


	                    <!-- START HOT-DEALS-AREA -->
	            		<div class="hot-deals-area carosel-circle">
	            			<div class="row">
								<div class="col-md-12">
									<div class="area-title">
<ul class="catalog category-products"><?= \app\components\MenuWidget::widget(['tpl' => 'menu'])?>
</ul>          



										<h3 class="title-group border-red gfont-1">ГОРЯЧИЕ ПРЕДЛОЖЕНИЯ</h3>
									</div>
								</div>
							</div>
	                    	<div class="row">
		                    	<div class="active-hot-deals">
		                    		<!-- Start Single-hot-deals -->
		                    		
		                    	</div>
	                    	</div>
	                    </div>
	                    <!-- END HOT-DEALS-AREA -->
						<!-- START SMALL-PRODUCT-AREA -->
						<div class="small-product-area carosel-navigation">

							<div class="row">
								<div class="col-md-12">
									<div class="area-title">
										<h3 class="title-group gfont-1">Лучшие</h3>
									</div>
								</div>
							</div>
							

						</div>
						<!-- END SMALL-PRODUCT-AREA -->                    
	                    <!-- START SIDEBAR-BANNER -->
	                    <div class="sidebar-banner">
	                    	<div class="active-sidebar-banner">
	                    		<div class="single-sidebar-banner">
	                    			<a href="#"><img src="img/banner/1.jpg" alt="Product Banner"></a>
	                    		</div>
	                    		<div class="single-sidebar-banner">
	                    			<a href="#"><img src="img/banner/2.jpg" alt="Product Banner"></a>
	                    		</div>
	                    	</div>
	                    </div>
	                    <!-- END SIDEBAR-BANNER -->
	                    <!-- START RECENT-POSTS -->
	                    <div class="shop-blog-area sidebar">
	                    	<div class="row">
	                    		<div class="col-md-12">
	                    			<h3 class="title-group border-red gfont-1">НЕДАВНИЕ ПОСТЫ </h3>
	                    		</div>
	                    	</div>
	                    	<div class="row">
		                    	<div class="active-recent-posts carosel-circle">
		                    		<!-- Start Single-Recent-Posts -->
		                    		<div class="col-xs-12">
			                    		<div class="single-recent-posts">
			                    			<div class="recent-posts-photo">
			                    				<img src="img/posts/1.jpg" alt="Recent Posts">
			                    			</div>
			                    			<div class="recent-posts-text">
			                    				<h5><a href="#" class="recent-posts-title">Ноутбуки</a></h5>
			                    				<span class="recent-posts-date">23/12/2015 | Экспернтая тема</span>
			                    				<p class="posts-short-brif"> Apple уменьшила габариты MacBook Air и оснастила экраном Rеtina

Apple давно не обновляла MacBook Air и наконец сегодня в Нью-Йорке представила 13,3-дюймовую модель с экраном Retina. В результате разрешение возросло в 4 раза по сравнению с предшественником (2560 × 1600 против 1440 × 900): новый экран характеризуется 4 миллионами точек и на 48 % возросшим цветовым охватом.

Ноутбук стал на 10 % тоньше, а его объём сократился на внушительные 17 %. Масса его составляет 1,25 кг, что на 113 грамм меньше, чем у предыдущего поколения. Несмотря на сильно сузившиеся рамки вокруг дисплея, в верхней части по-прежнему находится камера FaceTime HD. Apple особо отмечает, что корпус на 100 % изготовлен из переработанного алюминиевого сплава.</p>
			                    				<a href="#" class="posts-read-more">Читать дальше...</a>
			                    			</div>
			                    		</div>
		                    		</div>
		                    		<!-- End Single-Recent-Posts -->
		                    		<!-- Start Single-Recent-Posts -->
		                    		<div class="col-xs-12">
			                    		<div class="single-recent-posts">
			                    			<div class="recent-posts-photo">
			                    				<img src="img/posts/2.jpg" alt="Recent Posts">
			                    			</div>
			                    			<div class="recent-posts-text">
			                    				<h5><a href="#" class="recent-posts-title">Планщеты</a></h5>
			                    				<span class="recent-posts-date">23/12/2015 | Экспернтая тема</span>
			                    				<p class="posts-short-brif"> В Нью-Йорке состоялась презентация, на которой компания Apple показала новые планшеты iPad Pro и пару других интересных новинок</p>
			                    			</div>
			                    		</div>
		                    		</div>
		                    		<!-- End Single-Recent-Posts -->
		                    		<!-- Start Single-Recent-Posts -->
		                    		<div class="col-xs-12">
			                    		<div class="single-recent-posts">
			                    			<div class="recent-posts-photo">
			                    				<img src="img/posts/3.jpg" alt="Recent Posts">
			                    			</div>
			                    			<div class="recent-posts-text">
			                    				<h5><a href="#" class="recent-posts-title">Фотоаппараты</a></h5>
			                    				<span class="recent-posts-date">23/12/2015 | Экспернтая тема</span>
			                    				<p class="posts-short-brif"> Вместе с анонсом нового MacBook Air с дисплеем Retina, Apple показала и обновленный Mac Mini. Это первое обновление самого компактного компьютера компании за шесть лет.

Новая модель внешне практически не отличается от предшественника, но в пять раз его мощнее. Она получила новые процессоры (четырех- и шестиядерные, в зависимости от модели), объем оперативки до 64 Гб и до 2 Тб свободного пространства на твердотельном накопителе. Плюс чип Т2 для шифрования и обработки данных, который установлен на большинстве последних компьютеров Mac, включая и новый MacBook Air.

Новый Mac Mini от Apple

Что касается разъемов, то Mac Mini получил четыре порта Thunderbolt 3, два порта USB-A, HDMI, Ethernet-разъем (со скоростью до 10 Гбит/с) и разъем для наушников.

Новый Mac Mini от Apple

Как и обновленный MacBook Air, Mac Mini уже доступен в предзаказе, а непосредственно в продажу поступит 7 ноября. Базовая модель (8 Гб оперативки, 128 Гб на SSD, 4-ядерный процессор Intel с частотой 3,6 ГГц) будет стоить 799 долларов</p>
			                    				<a href="#" class="posts-read-more">Читать дальше...</a>
			                    			</div>
			                    		</div>
		                    		</div>
		                    		<!-- End Single-Recent-Posts -->
		                    		<!-- Start Single-Recent-Posts -->
		                    		<div class="col-xs-12">
			                    		<div class="single-recent-posts">
			                    			<div class="recent-posts-photo">
			                    				<img src="img/posts/4.jpg" alt="Recent Posts">
			                    			</div>
			                    			<div class="recent-posts-text">
			                    				
			                    				<h5><a href="#" class="recent-posts-title">Наушники</a></h5>
			                    				<span class="recent-posts-date">23/12/2015 | Экспернтая тема</span>
			                    				<p class="posts-short-brif">  Свобода движений: Беспроводные наушники Pioneer SE-MJ553BT 	На рынке хватает наушников, призванных обеспечить меломанам свободу движений с помощью беспроводных Bluetooth технологий. Но далеко не все из них способны гарантировать еще и комфорт при использовании, а главное - качественное звучание. Тем не менее, к новым Bluetooth моделям SE-MJ553BT сразу же проникаешься невольным доверием. Ведь у компании, ответственной за их появление, не только громкое имя, но и солидный опыт, накопленный в разработке самых разных наушников - и проводных, и беспроводных.</p>
			                    				<a href="#" class="posts-read-more">Читать дальше...</a>
			                    			</div>
			                    		</div>
		                    		</div>
		                    		<!-- End Single-Recent-Posts -->
		                    		<!-- Start Single-Recent-Posts -->
		                    		<div class="col-xs-12">
			                    		<div class="single-recent-posts">
			                    			<div class="recent-posts-photo">
			                    				<img src="img/posts/1.jpg" alt="Recent Posts">
			                    			</div>
			                    			<div class="recent-posts-text">
			                    				<h5><a href="#" class="recent-posts-title">Нетбуки</a></h5>
			                    				<span class="recent-posts-date">23/12/2015 | Экспернтая тема</span>
			                    				<p class="posts-short-brif"> 

Компания Asustek Computer недавно объявила о том, что производство линейки некогда популярных продуктов Eee PC будет закончено в конце 2012 года.

Другой известный бренд, Acer, также не планирует больше выпускать собственные нетбуки. Таким образом, после отказа от производства двумя крупнейшими брендами, рынок нетбуков будет официально мёртв после исчерпания складских запасов.

ASUS Eee PC

Столкнувшись с конкуренцией со стороны планшетных ПК, натиск последних выдерживали лишь Asustek и Acer, которые продавали нетбуки в основном на развивающихся рынках Южной Азии и Южной Африки.

Тем не менее, Intel продолжит выпуск своих процессоров Atom, которые найдут применение в экономичных серверах, некоторых моделях планшетов и на рынке встраиваемых систем.
</p>
			                    				<a href="#" class="posts-read-more">Читать дальше...</a>
			                    			</div>
			                    		</div>
		                    		</div>
		                    		<!-- End Single-Recent-Posts -->
		                    	</div>
	                    	</div>
	                    </div>
	                    <!-- END RECENT-POSTS -->
	                </div>
					<div class="col-md-9 col-sm-9">
						<!-- START PRODUCT-BANNER -->
						<div class="product-banner home1-banner">
							<div class="row">
								<div class="col-md-7 banner-box1">
									<div class="single-product-banner">
										<a href="#"><img src="img/banner/3.jpg" alt="Product Banner"></a>
										<div class="banner-text banner-1">
											<h2>head phone 2015</h2>
										</div>
									</div>
								</div>
								<div class="col-md-5 banner-box2">
									<div class="single-product-banner">
										<a href="#"><img src="img/banner/4.jpg" alt="Product Banner"></a>
										<div class="banner-text banner-2">
											<h2>Deals <span>50%</span></h2>
											<p>lumina n85</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END PRODUCT-BANNER -->
						<!-- START PRODUCT-AREA (1) -->
						<div class="product-area">


<?php if( !empty($hits) ): ?>
<div class="features_items"><!--features_items-->
    <h2 class="title text-center">Хиты продаж</h2>
    <?php foreach($hits as $hit): ?>
    <?php $mainImg = $hit->getImage();?>
    <div class="col-sm-4">
        <div class="product-image-wrapper">
            <div class="single-products">
                <div class="productinfo text-center">
                    <?= Html::img($mainImg->getUrl('268x249'), ['alt' => $hit->name])?>
                    <h2>$<?= $hit->price?></h2>
                    <p><a href="<?= \yii\helpers\Url::to(['product/view', 'id' => $hit->id]) ?>"><?= $hit->name?></a></p>
                    <a href="<?= \yii\helpers\Url::to(['cart/add', 'id' => $hit->id])?>" data-id="<?= $hit->id?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Корзина</a>
                </div>
                <?php if($hit->new): ?>
                    <?= Html::img("@web/images/home/new.png", ['alt' => 'РќРѕРІРёРЅРєР°', 'class' => 'new'])?>
                <?php endif?>
                <?php if($hit->sale): ?>
                    <?= Html::img("@web/images/home/sale.png", ['alt' => 'Р Р°СЃРїСЂРѕРґР°Р¶Р°', 'class' => 'new'])?>
                <?php endif?>
            </div>
            <div class="choose">
                <ul class="nav nav-pills nav-justified">
                   <li><a href="<?= \yii\helpers\Url::to(['product/dob', 'name2' => $name2])?>" "><i class="fa fa-plus-square"></i>Добавить в список пожеланий</a></li>

                </ul>
            </div>
        </div>
    </div>
    <?php endforeach;?>
</div><!--features_items-->
<?php endif; ?>









							<!-- Start Product -->
							
														
						
						
							<!-- End Product -->
						</div>
						<!-- END SMALL-PRODUCT-AREA (1) -->
					</div>
				</div>
			</div>
			<!-- START BRAND-LOGO-AREA -->
			
			<div class="brand-logo-area carosel-navigation">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="area-title">
								<h3 class="title-group border-red gfont-1">Бренд лого</h3>
							
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="active-brand-logo">
						<?php if( !empty($logs) ): ?>

   
<?php foreach($logs as $log): ?>
<?php $mainImg = $log->getImage();?>
							<div class="col-md-2">
								<div class="single-brand-logo">
									
                                                          <a href="<?= \yii\helpers\Url::to(['logo/view', 'id' => $log->id]) ?>"> <?= Html::img($mainImg->getUrl('600x500'), ['alt' => $log->name])?> </a>
								

</div>
							</div>
		 <?php endforeach;?>					

<?php endif; ?>	


						</div>
					
					</div>
				</div>
			</div>

			<!-- END BRAND-LOGO-AREA -->
			<!-- START SUBSCRIBE-AREA -->
			<div class="subscribe-area">
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-sm-7 col-xs-12">
							<label class="hidden-sm hidden-xs">ПОДПИШИТЕСЬ НА НАШУ РАССЫЛКУ:</label>


							<div class="subscribe">
								 <form method="get" action="<?= \yii\helpers\Url::to(['category/index'])?>">
									<input type="text" name ="email" placeholder="введите свой емаил">

									<button type="submit">Подписывайся</button>

								</form>
							</div>
						</div>
						<div class="col-md-4 col-sm-5 col-xs-12">
							<div class="social-media">
								<a href="#"><i class="fa fa-facebook fb"></i></a>
								<a href="#"><i class="fa fa-google-plus gp"></i></a>
								<a href="#"><i class="fa fa-twitter tt"></i></a>
								<a href="#"><i class="fa fa-youtube yt"></i></a>
								<a href="#"><i class="fa fa-linkedin li"></i></a>
								<a href="#"><i class="fa fa-rss rs"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>	
			<!-- END SUBSCRIBE-AREA -->
		</section>
		<!-- END HOME-PAGE-CONTENT -->
		<?php

?>
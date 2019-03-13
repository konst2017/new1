﻿<?php

/* @var $this yii\web\View */



use yii\helpers\Html;

$this->title = 'My Yii Application';
?>	
		<!-- START PAGE-CONTENT -->
		<section class="page-content">
			<div class="container">
	            <div class="row">
					<div class="col-md-12">
						<ul class="page-menu">
							
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<!-- CATEGORY-MENU-LIST START -->
	                    <div class="left-category-menu hidden-sm hidden-xs">
	                        <div class="left-product-cat">
	                            <div class="category-heading">
	                                <h2>Категорий</h2>
	                            </div>
	                            <div class="category-menu-list">
<ul class="catalog category-products"><?= \app\components\MenuWidget::widget(['tpl' => 'menu'])?>
</ul>   
	                              
	                            </div>
	                        </div>
	                    </div>
						<!-- END CATEGORY-MENU-LIST -->
						
					</div>
					<div class="col-md-9 col-xs-12">
						<!-- START PRODUCT-BANNER -->
						<div class="product-banner">
							<div class="row">
								<div class="col-xs-12">
									<div class="banner">
										<a href="#"><img src="/newmag2/web/img/banner/12.jpg" alt="Product Banner"></a>
									</div>
								</div>
							</div>
						</div>
						<!-- END PRODUCT-BANNER -->
						<!-- START PRODUCT-AREA -->
						<div class="product-area">
							<div class="row">
								<div class="col-xs-12">
									<!-- Start Product-Menu -->
									<div class="product-menu">
										<div class="product-title">
										
										</div>
									</div>
									<div class="product-filter">
										<ul role="tablist">
											<li role="presentation" class="list">
												<a href="#display-1-1" role="tab" data-toggle="tab"></a>
											</li>
											<li role="presentation"  class="grid active">
												<a href="#display-1-2" role="tab" data-toggle="tab"></a>
											</li>
										</ul>
										<div class="sort">
											<label>Sort By:</label>
											<select>
												<option value="#">Default</option>
												<option value="#">Name (A - Z)</option>
												<option value="#">Name (Z - A)</option>
												<option value="#">Price (Low > High)</option>
												<option value="#">Rating (Highest)</option>
												<option value="#">Rating (Lowest)</option>
												<option value="#">Name (A - Z)</option>
												<option value="#">Model (Z - A))</option>
												<option value="#">Model (A - Z)</option>
											</select>
										</div>
										<div class="limit">
											<label>Show:</label>
											<select>
												<option value="#">8</option>
												<option value="#">16)</option>
												<option value="#">24</option>
												<option value="#">40</option>
												<option value="#">80</option>
												<option value="#">100</option>
											</select>
										</div>
									</div>
									
									<!-- End Product-Menu -->
									<div class="clear"></div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-md-12">

<div class="col-sm-9 padding-right">
<div class="features_items"><!--features_items-->
<div class="col-sm-9 padding-right">
<?php if( !empty($hits) ): ?>
<div class="features_items"><!--features_items-->
    <h2 class="title text-center">Новые товары</h2>
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
                    <?= Html::img("@web/web/images/home/new.png", ['alt' => 'РќРѕРІРёРЅРєР°', 'class' => 'new'])?>
                <?php endif?>
                <?php if($hit->sale): ?>
                    <?= Html::img("@web/web/images/home/sale.png", ['alt' => 'Р Р°СЃРїСЂРѕРґР°Р¶Р°', 'class' => 'new'])?>
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
</div>
</div>
</div>
</section>

		
									
														
														
													
						
			
		
		

	
 

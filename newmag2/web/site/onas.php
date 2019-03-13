<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'onas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-onas">
    <h1><?= Html::encode($this->title) ?></h1>
 <?php if (Yii::$app->session->hasFlash('onasFormSubmitted')): ?>

    <p>
        This is the About page. You may modify the following file to customize its content:
    </p>

    <code><?= __FILE__ ?></code>
</div>

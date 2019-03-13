<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\raspis */

$this->title = 'Create Raspis';
$this->params['breadcrumbs'][] = ['label' => 'Raspis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="raspis-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

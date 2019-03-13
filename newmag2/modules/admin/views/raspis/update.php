<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\raspis */

$this->title = 'Update Raspis: ' . $model->email;
$this->params['breadcrumbs'][] = ['label' => 'Raspis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->email, 'url' => ['view', 'id' => $model->email]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="raspis-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

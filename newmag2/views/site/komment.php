<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Blog';
$this->params['breadcrumbs'][] = $this->title;

print_r ($arrayInView);

?>

    <h1><?= Html::encode($this->title) ?></h1>

<table border="1" align="center">
  
  <tr>
  <th><p align="center"> ФИО </p></th>
  <th><p align="center"> Комментарий </p></th>
  
  </tr>
 


    <?php foreach ($varInView as $item): ?>
<tr>
<td>

<?php echo $item->comment_author ?> </td>
<td>

<?php echo $item->comment_text ?>

</td>
</tr>
    <?php endforeach ?>


 
  </table>



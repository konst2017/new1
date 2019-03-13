<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Просмотр пожеланий';
$this->params['breadcrumbs'][] = $this->title;

print_r ($arrayInView);

?>

    <h1><?= Html::encode($this->title) ?></h1>

<table border="1" align="center">
  
  <tr>
  <th><p align="center"> Наименовние </p></th>
 <th><p align="center"> Количество </p></th> 
  
  </tr>
 


    <?php foreach ($varInView as $item): ?>
<tr>
<td>

<?php echo $item->naim ?> </td>


<td>

<?php echo $item-> pow ?> </td>


</tr>
    <?php endforeach ?>


 
  </table>



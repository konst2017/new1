<?php
$p="cate-item-head";
 $id=$category['parent_id'];
if  ($id ==0)

{
$p="cate-item-head";
?>
<li>
<a href="<?= \yii\helpers\Url::to(['category/view', 'id' => $category['id']]) ?>">
<optgroup  class="<?=$p?>" label='<?= $category['name']?>'>

</a>
</li> 
<?php
}
else
{
$p="c-item";
?>
<li>
<a href="<?= \yii\helpers\Url::to(['category/view', 'id' => $category['id']]) ?>"> 
<option  VALUE="<?= \yii\helpers\Url::to(['category/view', 'id' => $category['id']]) ?>"  class="c-item"><?= $category['name']?>





</option>

</a>
</li>
<?php
}

?>

 



<?php if( isset($category['childs']) ): ?>
  
   
            <?= $this->getMenuHtml($category['childs'])?>

        
      </optgroup>      
       
    <?php endif;?>


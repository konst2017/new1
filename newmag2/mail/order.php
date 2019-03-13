<?php
use yii\helpers\Html;


?>
 <h1> Данные товара </h1>
<div class="table-responsive">
    <table style="width: 100%; border: 1px solid #ddd; border-collapse: collapse;">
        <thead>
        <tr style="background: #f9f9f9;">
            <th style="padding: 8px; border: 1px solid #ddd;">Наименование</th>
            <th style="padding: 8px; border: 1px solid #ddd;">Кол-во</th>
            <th style="padding: 8px; border: 1px solid #ddd;">Цена</th>
            <th style="padding: 8px; border: 1px solid #ddd;">Сумма</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach($session['cart'] as $id => $item):?>
            <tr>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= $item['name']?></td>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= $item['qty']?></td>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= $item['price']?></td>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= $item['qty'] * $item['price']?></td>
               
            </tr>
        <?php endforeach?>
        <tr>
            <td colspan="3" style="padding: 8px; border: 1px solid #ddd;">Итого: </td>
            <td style="padding: 8px; border: 1px solid #ddd;"><?= $session['cart.qty']?></td>
        </tr>
        <tr>
            <td colspan="3" style="padding: 8px; border: 1px solid #ddd;">На сумму: </td>
            <td style="padding: 8px; border: 1px solid #ddd;"><?= $session['cart.sum']?></td>
        </tr>
        </tbody>
		
		 <thead>
       
            
      
        </thead>
        <tbody>
     
		<?php 
		
		
	


        //}


		
		
		?>
		 <h1>Данные заказчика</h1>
	  <?php $i = 1; foreach($name as $name): ?>
            <tr>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= "Имя" ?></td>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= $name ?></td>
            </tr>
		<?php $i++; endforeach; ?>	
	  <?php $i = 1; foreach($email as $email): ?>	
			  <tr>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= "Емаил" ?></td>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= $email ?></td>
            </tr>
		<?php $i++; endforeach; ?>		
		  <?php $i = 1; foreach($phone as $phone): ?>	
			  <tr>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= "Телефон" ?></td>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= $phone ?></td>
            </tr>
			<?php $i++; endforeach; ?>	
		  <?php $i = 1; foreach($address as $address): ?>	  <tr>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= "Адрес" ?></td>
                <td style="padding: 8px; border: 1px solid #ddd;"><?= $address ?></td>
            </tr>
        <?php $i++; endforeach; ?>
		
		  </tbody>
		
		
	
		
		
		
    </table>
</div>
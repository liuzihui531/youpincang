<div class="main">
    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'id-form',
    ));
    ?>
    <ul>
          
        <?php foreach($data as $k=>$v): ?>
        <li>
            <label class="checkbox-inline">
            <input type="checkbox" id="<?php echo $k ?>" name="memkey" value="<?php echo $k ?>" /><?php echo $v ?>
          </label>
        </li>
        <?php endforeach; ?>
        <div style="clear: both"></div>
    </ul>
    <div class="_submit"><input type="submit" value="清除" class="btn btn-primary" /></div>
    <?php $this->endWidget(); ?>
</div>
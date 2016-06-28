<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'id-form',
    'action' => $this->createUrl('save'),
        ));
?>
<table class='table'>
    <?php foreach ($setting as $k => $v): ?>
        <?php $info = Setting::model()->keyValue($k);
        if (!$info)
            continue;
        ?>
        <tr>
            <td style="text-align: right;width:100px;"><?php echo $info['value'] ?></td>
            <td>
                <?php if (isset($info) && $info['type'] == 'text'): ?>
                    <input name="setting[<?php echo $k ?>]" id="<?php echo $k ?>" class="form-control" type="text"  value="<?php echo $v ?>" />
                <?php elseif (isset($info) && $info['type'] == 'textarea'): ?>
                    <textarea rows="8" cols="80" name="setting[<?php echo $k ?>]" id="<?php echo $k ?>"><?php echo $v ?></textarea>
        <?php elseif (isset($info) && $info['type'] == 'image'): ?>
                    <div class="form-group">
                        <div class="col-sm-9">
                            <div id="uploader-demo">
                                <!--用来存放item-->
                                <div id="fileList" class="uploader-list"></div>
                                <div id="filePicker" data-name="image" data-file-num="100">选择图片</div>
                            </div>
                            <div class="upload-wrap">
        <?php if ($v): ?>
                                    <div id="WU_FILE2_0" class="file-item thumbnail upload-state-done"><div class="upload-img-wrap">
                                            <input type="hidden" name="image[]" class="input-image" value="<?php echo $v; ?>">
                                            <img src="<?php echo Utils::getImageUrl($v, true); ?>">
                                            <span class="upload-delete">×</span></div>
                                    </div>
        <?php endif; ?>
                            </div>
                        </div>
                    </div>
        <?php endif; ?>
            </td>
        </tr>
<?php endforeach; ?>

    <tr>
        <td colspan='2' style="text-align: center">
            <input type='hidden' name='ID' value="{$system.ID}" />
            <input type='submit' value='设置' class='btn btn-primary' />
            <a href="<?php echo $this->createUrl('clear_cache') ?>" class='btn btn-primary'>清除缓存</a>
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>
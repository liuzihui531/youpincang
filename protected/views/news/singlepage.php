<!-- content and aside -->
<div id="container" tag="5">	

    <div id="linemap">
        <span><a href="<?php echo $this->createAbsoluteUrl('/') ?>"><img src="/static/images/img_home.gif" alt="Home"></a></span>
        <span class="lineActive">
            <span class="prevMenu"><a href="<?php echo $position['top']['url'] ?>"><?php echo $position['top']['name'] ?></a></span>
            <span class="prevMenu nowMenu"><a href="<?php echo $position['self']['url'] ?>"><?php echo $position['self']['name'] ?></a></span></span>
    </div>

    <!-- content -->
    <div id="content3"  >
        <div style="line-height: 250%; text-indent: 21pt; background-color:#FFF">
            <?php echo Utils::deSlashes($model->content) ?>
        </div>    
    </div>
    <!-- //content -->
</div>








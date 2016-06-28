
<!-- content and aside -->
<div id="container" tag="3">	
    <div id="linemap">
        <span><a href="<?php echo $this->createAbsoluteUrl('/') ?>"><img src="/static/images/img_home.gif" alt="Home"></a></span>
        <span class="lineActive">
            <span class="prevMenu nowMenu"><a href="#">新闻</a></span></span>
    </div>
    <!-- content -->
    <div id="content3">
        <p class="article_title"><?php echo $model->title ?></p>
        <p class="article_addtime"><span>Read:<?php echo $model->view_count ?></span><span>Date：<?php echo date('Y-m-d',$model->create_time) ?></span></p>
        <div class="article_content"><?php echo Utils::deSlashes($model->content) ?></div>
    <!-- //content -->
</div>

<!-- content and aside -->
<div id="container" tag="1">
    <div id="linemap">
        <span><a href="<?php echo $this->createAbsoluteUrl('/') ?>"><img src="/static/images/img_home.gif" alt="Home"></a></span>
        <span class="lineActive">
            <span class="prevMenu"><a href="<?php echo $position['top']['url'] ?>"><?php echo $position['top']['name'] ?></a></span>
            <span class="prevMenu nowMenu"><a href="<?php echo $position['self']['url'] ?>"><?php echo $position['self']['name'] ?></a></span></span>
    </div>
    <!-- content -->
    <div id="content">
        <div class="section notice_recruit">
            <!-- content area -->
            <div class="roundTop"></div>
            <div class="cont roundArea">
                <?php echo Utils::deSlashes($model->content) ?>
            </div>
            <!-- x 320-->
            <div class="roundBottom"></div>
            <!-- //content area -->
        </div>
    </div>
    <!-- //content -->
    <!-- global aside -->
    <div id="aside">
        <div class="rightGnb">
            <span class="topImg off"></span>
            <ul class="rnbNavigation">
                <li class="rnbDepth1 on last"><a href="<?php echo $position['top']['url'] ?>"><?php echo $position['top']['name'] ?></a></li>
                <?php if ($sub_list): ?>
                    <?php foreach ($sub_list as $k => $v): ?>
                <li class="rnbDepth1 <?php if($v->id == Yii::app()->request->getParam('id')): ?>select<?php endif; ?>">
                            <a href="<?php echo $this->createUrl('view',array('id'=>$v->id)) ?>"><?php echo $v->title ?>
                            </a>
                        </li>
                    <?php endforeach;?>
                <?php endif; ?>
            </ul>
            <span class="bottomImg off"></span>
        </div>
    </div>
    <!-- //global aside -->
</div>
<!-- //content and aside -->

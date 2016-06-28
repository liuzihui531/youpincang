<style>
    .pagination li{float:left;padding:3px 8px;border:1px solid #ccc;margin-right: 10px}
    .pagination li.active{background:#dc1e5e;color:white;border:1px solid #dc1e5e;}
    .pagination li.active a{color:white}
</style>
<!-- content and aside -->
<div id="container" tag="3">	
    <div id="linemap">
        <span><a href="<?php echo $this->createAbsoluteUrl('/') ?>"><img src="/static/images/img_home.gif" alt="Home"></a></span>
        <span class="lineActive">
        <!-- <span class="prevMenu"><a href="getinfo.php?top=2">新闻</a></span> // 注释掉父目录的“新闻”文字 -->
            <span class="prevMenu nowMenu"><a href="#">新闻</a></span></span>
    </div>
    <!-- content -->
    <div id="content3" >
        <!--news start-->
        <?php if ($img): ?>
            <img src="<?php echo $img; ?>" width="980" height="434"  alt="" style="text-align:center" />
        <?php endif; ?>
        <div class="news" style="margin-bottom:30px;">
            <?php if ($model): ?>
                <?php foreach ($model as $k => $v): ?>
                    <?php
                    $image = $v->image ? explode(",", $v->image) : array();
                    $image = $image ? $image[0] : "";
                    $desc = $v->summary;
                    if (!$desc) {
                        $desc = strip_tags(Utils::deSlashes($v->content));
                    }
                    ?>
                    <div class="news_class_nor">
                        <div class="nor_box clearfix">
                            <div class="nor_img fl"><a href="<?php echo $this->createUrl('view', array('id' => $v->id)) ?>"  target="_blank"><img src="<?php echo $image ?>" width="127" height="93" /></a></div>
                            <div class="nor_con fr"><a href="<?php echo $this->createUrl('view', array('id' => $v->id)) ?>"  target="_blank"><span class="nor_tit firstlink"> <?php echo $v->title ?></span></a><br />
                                <a href="<?php echo $this->createUrl('view', array('id' => $v->id)) ?>"  target="_blank">
                                    <?php echo Utils::cutString($desc, 100) ?>
                                </a><span id="span_more"><a href="<?php echo $this->createUrl('view', array('id' => $v->id)) ?>"  target="_blank">MORE <img src="/static/images/news_icon01.png" width="9" height="9" /></a></span></div>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php endif; ?>
            <div class="page">
                    <?php
                    $this->widget('CLinkPager', array(
                        //'header' => '共' . $pager->getItemCount() . '条记录',
                        'header' => '',
                        'firstPageLabel' => '首页',
                        'lastPageLabel' => '末页',
                        'prevPageLabel' => '上一页',
                        'nextPageLabel' => '下一页',
                        'pages' => $pager,
                        'maxButtonCount' => 5,
                        'cssFile' => '',
                        'internalPageCssClass' => '',
                        'selectedPageCssClass' => 'active',
                        'htmlOptions' => array(
                            'class' => 'pagination clearfix',
                        ),
                            )
                    );
                    ?>
            </div>
        </div>
        <!--news end-->
    </div>
</div>
<!-- //content and aside -->
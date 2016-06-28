<!DOCTYPE html>
<html ><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>名创优品 日本  </title>
        <meta name="keywords" content="名创优品" />
        <meta name="description" content="MINISO名創優品是日本快时尚设计师品牌，总部位于日本东京，由日本青年设计师三宅顺也创办并兼任首席设计师，是全球“时尚休闲生活优品消费”领域的开创者。" />
        <link href="/static/images/reset.css" rel="stylesheet" type="text/css">
        <link href="/static/images/common.css" rel="stylesheet" type="text/css">
        <link href="/static/images/select.css" rel="stylesheet" type="text/css">
        <link href="/static/images/style.css" rel="stylesheet" type="text/css">
        <link href="/static/images/jquery.ui.theme.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="/static/images/jquery-1.5.1.min.js"></script>
        <script type="text/javascript" src="/static/images/jquery.ui.core.js"></script>
        <script type="text/javascript" src="/static/images/function.js"></script>
        <script type="text/javascript" src="/static/images/file.style.js"></script>
        <script type="text/javascript" src="/static/images/iePngFix.js"></script>
        <script type="text/javascript" src="/static/images/ui.js"></script>
        <script type="text/javascript" src="/static/images/jquery.func.js"></script>
        <script src="/static/images/mainvisual.js"></script>
    </head>
    <body>
        <?php
        $criteria = new CDbCriteria();
        $criteria->limit = 10;
        $criteria->compare('pid', $this->news_id);
        $news_list = NewsCategory::model()->findAll($criteria);
        $news_model = News::model();
        ?>
        <div id="header" class="gnbNavi" >
            <div id="gnb" style="width:1200px">
                <h1 style="position:absolute;z-index:4;top:16px;"><a href="<?php echo $this->createAbsoluteUrl('/') ?>"><img src="/static/images/logo.png" alt="MiniSo"></a></h1>
                <div id="navigation" style="padding-left:427px;width:773px">
                    <ul class="depth1Ul">
                        <li class="depth1">
                            <a href="<?php echo $this->createAbsoluteUrl('/') ?>" class="menu1"><img src="/static/images/gnb_1_off.gif" alt="Home"/></a>
                        </li>
                        <?php $index = 2; ?>
                        <?php foreach ($this->top_nav as $k => $v): ?>
                            <li class="depth1">
                                <a href="<?php echo $this->createUrl('/news/index',array('id'=>$k)) ?>" class="menu1"><img src="/static/images/gnb_<?php echo $index; ?>_off.gif" alt="Brand" /></a>
                                <ul class="depth2Ul depth2Menu2" style="left:0; text-indent:">
                                    <?php if ($k == $this->news_id): ?>
                                        <?php foreach ($news_list as $kk => $vv): ?>
                                            <li><a href="<?php echo $this->createUrl('news/index',array('id'=>$vv->id)) ?>" class=""><?php echo $vv->name ?></a></li>
                                        <?php endforeach; ?>
                                    <?php else: ?>
                                        <?php
                                        $criteria = new CDbCriteria();
                                        $criteria->compare('cate_id', $k);
                                        $criteria->limit = 10;
                                        $criteria->order = 'id desc';
                                        $news_list2 = $news_model->findAll($criteria);
                                        ?>
                                        <?php foreach ($news_list2 as $kk => $vv): ?>
                                            <li><a href="<?php echo $this->createUrl('news/view',array('id'=>$vv->id)) ?>" class=""><?php echo $vv->title ?></a></li>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                </ul>
                            </li>
                            <?php $index++; ?>
                        <?php endforeach; ?>
                    </ul>
                    <a href="#" class="closeDepth2"><img src="/static/images/btn_close.gif" alt="Close"/></a>
                </div>
            </div>
            <div class="depth2background" style="display: none;"><span class="depth2visual ir" style="width:950px;margin-left:-458px">
                    Love Life ,Love MiniSo</span></div>
        </div>
        <!-- content -->
        <?php echo $content; ?>
        <!-- //content -->
        <!-- footer -->
        <div id="footer" class="footerArea">
            <div class="inner" style="width:1200px;">
                <div class="footer_right" style="top:5px;"><img src="<?php echo Setting::model()->getSetting('wechat') ?>" alt="MINISO" ></div>		
                <div class="clfix">
                    <p style="margin-top:10px">版权所有：<?php echo Setting::model()->getSetting('banquan') ?> </p>
                    <p style="margin-top:10px">地址：<?php echo Setting::model()->getSetting('address') ?> </p>
                    <p style="margin-top:10px">联系热线：<?php echo Setting::model()->getSetting('phone') ?> </p>
                    <p style="margin-top:10px"><a target="_blank" href="http://www.miibeian.gov.cn/"><?php echo Setting::model()->getSetting('beian') ?> </a> </p>
                </div>
            </div>
        </div>
        <!-- //footer -->
        <script type="text/javascript">
            <!--
            $(document).ready(function () {
                showDepth2Fn();
                changeDepth2Img();
                $('.closeDepth2').click(function () {
                    resetDepth2();
                    $('.goMallBtn').focus();
                    return false;
                });
                $('#gnb h1 a,.goMallBtn').focus(function () {
                    resetDepth2();
                });
            });
            function showDepth2Fn() {
                $('.depth1>a').bind('focus mouseover', function () {
                    $('.depth2Ul a').each(function () {
                        $(this).removeClass('on');
                    });
                    $(this).next().find('li').eq(0).find('a').addClass('on');
                    $('#header').css('background', 'url(/static/images/bg_header_on.gif) 0 0 repeat-x');
                    $('.depth1 .menu1 img').each(function () {
                        var menu1Onsrc = $(this).attr('src');
                        $(this).attr('src', menu1Onsrc.replace('_on.gif', '_off.gif'));
                    });
                    var offSrc = $(this).find('img').attr('src');
                    $(this).find('img').attr('src', offSrc.replace('_off.gif', '_on.gif'));
                    showDepth2All();
                });
            }
            function showDepth2All() {
                $('.depth2background,.depth2Ul,.closeDepth2').show();
            }
            function changeDepth2Img() {
                $('.depth2Ul a').bind('focus mouseover', function () {
                    var depth2Index = $(this).parentsUntil('.depth1').parent().index();
                    $('.depth1 .menu1 img').each(function () {
                        var menu1Onsrc = $(this).attr('src');
                        $(this).attr('src', menu1Onsrc.replace('_on.gif', '_off.gif'));
                    });
                    $('.depth1').eq(depth2Index).find('.menu1 img').attr('src', $('.depth1').eq(depth2Index).find('.menu1 img').attr('src').replace('_off.gif', '_on.gif'));
                    $('.depth2Ul a').each(function () {
                        $(this).removeClass('on');
                    });
                    $(this).addClass('on');
                });
            }
            function resetDepth2() {
                $('.depth1 .menu1 img').each(function () {
                    var menu1Onsrc = $(this).attr('src');
                    $(this).attr('src', menu1Onsrc.replace('_on.gif', '_off.gif'));
                });
                $('.depth2background,.depth2Ul,.closeDepth2').hide();

                $('#header').css('background', 'url() 0 0 repeat-x');
            }

            $(document).bind('mouseover', function (e) {
                var $clicked = $(e.target);
                if (!$clicked.parents().hasClass("gnbNavi")) {
                    resetDepth2();
                }
            });
-->
        </script>
    </body></html>
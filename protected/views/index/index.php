<div id="mainContent">
    <div id="mainVisualWrap">
        <?php if ($big): ?>
            <UL class="mainVisualControll">
                <?php foreach ($big as $k => $v): ?>
                    <?php $is_on = $k == 0 ? "on" : "off"; ?>
                    <li><a href="#"><img alt="MINISO BANNER1"   src="/static/images/btn_control_<?php echo $is_on ?>.png"></a></li>
                <?php endforeach; ?>
                <LI class=intervalBtn><A href="#"><IMG alt="pause"   src="/static/images/btn_controll_pause.gif"></A></LI></UL>
            </UL>
            <ul class="mainVisualUl">
                <?php foreach ($big as $k => $v): ?>
                    <li>
                        <img src="<?php echo $v->image ?>" class="absImg" style="left:0px;top:0px" width="1200" height="593"/>
                    </li>  
                <?php endforeach; ?>        
            </ul>

        <?php endif; ?>
        <SPAN class=imgLogo style="display:none"><img alt="Love Life, Love Miniso" src="/static/images/img_logo.png"></SPAN> 
    </div>
    <SCRIPT type=text/javascript>
        <!--
                    $(document).ready(function () {
            changeControllBtn();
        });
        function changeControllBtn() {
            $('.mainVisualControll a').bind('mouseover focus', function () {
                if ($(this).parent().hasClass('intervalBtn')) {
                    return false;
                }
                $('.mainVisualControll a img').each(function () {
                    var onSrc = $(this).attr('src');
                    $(this).attr('src', onSrc.replace('_on.png', '.png'));
                });
                var offSrc = $(this).find('img').attr('src');
                $(this).find('img').attr('src', offSrc.replace('.png', '_on.png'));
            });
            $('.mainVisualControll a').bind('mouseout blur', function () {
                /*if ($(this).parent().hasClass('intervalBtn')) {
                 return false;
                 }
                 $('.mainVisualControll a img').each(function () {
                 var onSrc = $(this).attr('src');
                 $(this).attr('src', onSrc.replace('_on.png', '.png'));
                 });*/
            });
        }
        //-->
    </SCRIPT>
    <!-- mainVisualWra end -->
    <!--mainVisualWrap start -->
    <div class="toggleBannerWrap">
        <?php if ($small): ?>
            <ul class="bannerUl clfix">
                <?php foreach ($small as $k => $v): ?>
                    <li>
                        <a href="<?php echo $v->url ?>"> <img src="<?php echo $v->image ?>" alt="Life department"></a>
                    </li>
                <?php endforeach; ?>
            <?php endif; ?>
        </ul>
    </div>
</div>
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
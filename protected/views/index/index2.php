<div id="mainContent">
    <div id="mainVisualWrap">
        <UL class="mainVisualControll">
            <li><a href="#"><img alt="MINISO BANNER1"   src="/static/images/btn_control_on.png"></a></li>
            <li><a href="#"><img alt="MINISO BANNER2"   src="/static/images/btn_control.png"></a></li>
            <li><a href="#"><img alt="MINISO BANNER3"   src="/static/images/btn_control.png"></a></li>
            <li><a href="#"><img alt="MINISO BANNER4"   src="/static/images/btn_control.png"></a></li>
            <li><a href="#"><img alt="MINISO BANNER5"   src="/static/images/btn_control.png"></a></li>
            <li><a href="#"><img alt="MINISO BANNER6"   src="/static/images/btn_control.png"></a></li>
            <li><a href="#"><img alt="MINISO BANNER7"   src="/static/images/btn_control.png"></a></li>
            <li><a href="#"><img alt="MINISO BANNER8"   src="/static/images/btn_control.png"></a></li>
            <LI class=intervalBtn><a href="#"><img alt="pause"   src="/static/images/btn_controll_pause.gif"></a></li></UL>
        <ul class="mainVisualUl">
            <li>
                <img src="/static/images/paged1/1.jpg" class="absImg" style="left:0px;top:0px" width="1200" height="593"/>
                <img src="/static/images/paged1/2.png" class="absImg" style="left:764px;top:225px" width="336" height="86"/>
                <img src="/static/images/paged1/3.png" class="absImg" style="left:587px;top:109px" width="18" height="74"/>
                <img src="/static/images/paged1/4.png" class="absImg" style="left:21px;top:21px" width="16" height="519"/>   
            </li>  
            <li>
                <img src="/static/images/pagec4/1.jpg" class="absImg" style="left:0px;top:0px" width="1200" height="593"/>
                <img src="/static/images/pagec4/2.png" class="absImg" style="left:47px;top:257px" width="375" height="57"/>
                <img src="/static/images/pagec4/3.png" class="absImg" style="left:1161px;top:26px" width="15" height="462"/>
                <img src="/static/images/pagec4/4.png" class="absImg" style="left:47px;top:330px" width="276" height="19"/>    
            </li>
            <li>     
                <img src="/static/images/paged2/1.jpg" class="absImg" style="left:0px;top:0px" width="1200" height="593"/>
                <img src="/static/images/paged2/2.png" class="absImg" style="left:49px;top:38px" width="61" height="76"/>
                <img src="/static/images/paged2/3.png" class="absImg" style="left:229px;top:159px" width="255" height="281"/>
                <img src="/static/images/paged2/4.png" class="absImg" style="left:1016px;top:58px" width="15" height="61"/>
                <img src="/static/images/paged2/5.png" class="absImg" style="left:648px;top:455px" width="15" height="61"/>
                <img src="/static/images/paged2/6.png"  class="absImg" style="left:46px;top:521px" width="170" height="47"/>            
            </li>                     
            <li>
                <img src="/static/images/pagec1/1.jpg" class="absImg" style="left:0px;top:0px" width="1200" height="593"/>
                <img src="/static/images/pagec1/2.png" class="absImg" style="left:751px;top:40px" width="426" height="505"/>
            </li>
            <li>     
                <img src="/static/images/paged3/1.jpg" class="absImg" style="left:0px;top:0px" width="1200" height="593"/>
                <img src="/static/images/paged3/2.png"  class="absImg" style="left:25px;top:501px" width="298" height="74"/>
                <img src="/static/images/paged3/3.png"  class="absImg" style="left:1044px;top:46px" width="116" height="219"/>
                <img src="/static/images/paged3/4.png"  class="absImg" style="left:1030px;top:552px" width="131" height="18"/>
            </li>  
            <li>
                <img src="/static/images/pagec2/1.png" class="absImg" style="left:448px;top:0px" width="720" height="593"/>
                <img src="/static/images/pagec2/2.png" class="absImg" style="left:21px;top:56px" width="176" height="160"/>
                <img src="/static/images/pagec2/3.png" class="absImg" style="left:17px;top:319px" width="197" height="216"/>
                <img src="/static/images/pagec2/4.png" class="absImg" style="left:37px;top:541px" width="621" height="20"/>
            </li>    
            <li>           
                <img src="/static/images/pagec5/1.png" class="absImg" style="left:0px;top:0px" width="865" height="593"/>
                <img src="/static/images/pagec5/2.png" class="absImg" style="left:20px;top:22px" width="15" height="465"/>
                <img src="/static/images/pagec5/3.png" class="absImg" style="left:849px;top:374px" width="335" height="22"/>
                <img src="/static/images/pagec5/4.png" class="absImg" style="left:957px;top:190px" width="119" height="147"/>
            </li>            
            <li>
                <h3 class="ir">MINISO BANNER3</h3>
                <img src="/static/images/page7/1.png" class="absImg" style="left:657px;top:17px" width="544" height="576"/>
                <img src="/static/images/page7/2.png" class="absImg" style="left:132px;top:151px" width="295" height="184"/>
                <img src="/static/images/page7/3.png" class="absImg" style="left:130px;top:369px" width="306" height="121"/>
            </li>            
        </ul>
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
        <ul class="bannerUl clfix">
            <li>
                <a href="getinfo.php?cid=191&top=4"> <img src="/static/images/products01.jpg" alt="Life department"></a>
            </li>
            <li>
                <a href="getinfo.php?cid=192&top=4"><img src="/static/images/products02.jpg" alt=">Creative homefurnishing" class="banner_img"></a>
            </li>
            <li>
                <a href="getinfo.php?cid=205&top=4"><img src="/static/images/products03.jpg" alt="Health and beauty" class="banner_img"></a>
            </li>
            <li >
                <a href="getinfo.php?cid=206&top=4"> <img src="/static/images/products04.jpg" alt="Jewelry series" class="banner_img"></a>
            </li>
            <li>
                <a href="getinfo.php?cid=207&top=4"><img src="/static/images/products05.jpg" alt="Stylistic gifts"></a>
            </li>
            <li>
                <a href="getinfo.php?cid=208&top=4"> <img src="/static/images/products06.jpg" alt="Seasonal products"></a>
            </li>
            <li>
                <a href="getinfo.php?cid=209&top=4"><img src="/static/images/products07.jpg" alt="Boutique package decoration"> </a>
            </li>
            <li style="z-index:1">
                <a href="getinfo.php?cid=210&top=4"><img src="/static/images/products08.jpg" alt="Digital accessories"></a>
            </li>
            <li style="z-index:1">
                <a href="getinfo.php?cid=234&top=4"><img src="/static/images/products09.jpg" alt="foods"></a>
            </li>            

            <li style="z-index:1">
                <a href="getinfo.php?cid=235&top=4"><img src="/static/images/products10.jpg" alt="foods"></a>
            </li>
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
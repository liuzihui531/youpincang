<style>
    .img-list img{width:133px;height:200px}
</style>
<!-- content and aside -->
<div id="container" tag="2">
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
                <div class="tj" style=" margin-top:5px;">
                    <?php echo Utils::deSlashes($model->content); ?>
                    <div style="clear:both"></div>
                    <?php if($image): ?>
                    <ul class="zsa mt20 clearfix img-list" >
                        <?php foreach ($image as $k=>$v): ?>
                        <li <?php if(($k+1)%3==0): ?>class="liright"<?php endif; ?>>
                            <dl>
                                <dd >
                                    <div style="border-top:dotted #999 1px; border-left:dotted #999 1px;border-right:dotted #999 1px;border-bottom:dotted #999 1px;width:220px; height:220px; ">
                                        <table width="220" border="0" cellspacing="0" height="220"  bgcolor="#FFFFFF">
                                            <tr>
                                                <td valign="middle" align="center">
                                                    <a target="_blank" href="<?php echo $v ?>">
                                                        <img src="<?php echo $v ?>" alt=""   /></a>

                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </dd>
                            </dl>
                           <!-- <div><span class="zhs"></span><span class="yj"></span></div>-->
                        </li>
                        <?php endforeach; ?>
                    </ul>
                    <?php endif; ?>
                    <div class="right mb30 pr10"></div>
                </div>        
            </div>
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
                        <li class="rnbDepth1 <?php if ($v->id == Yii::app()->request->getParam('id')): ?>select<?php endif; ?>">
                            <a href="<?php echo $this->createUrl('view', array('id' => $v->id)) ?>"><?php echo $v->title ?>
                            </a>
                        </li>
                    <?php endforeach; ?>
                <?php endif; ?>
            </ul>
            <span class="bottomImg off"></span>
        </div>
    </div>
    <!-- //global aside -->
</div>
<!-- //content and aside -->

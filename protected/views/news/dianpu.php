<script src="/static/images/jquery.flexslider-min.js"></script>
<link rel="stylesheet" href="/static/images/flexslider.css" type="text/css" media="screen" />
<script type="text/javascript">
    $(document).ready(function () {
        $('.flexslider').flexslider();
    });
</script>
<!-- content and aside -->
<div id="container" tag="4">	
    <div id="linemap">
        <span><a href="<?php echo $this->createAbsoluteUrl('/') ?>"><img src="/static/images/img_home.gif" alt="Home"></a></span>
        <span class="lineActive">
            <span class="prevMenu"><a href="<?php echo $position['top']['url'] ?>"><?php echo $position['top']['name'] ?></a></span>
            <span class="prevMenu nowMenu"><a href="<?php echo $position['self']['url'] ?>"><?php echo $position['self']['name'] ?></a></span></span>
    </div>
    <!-- content -->
    <div id="content">
        <!-- content area -->
        <div  style="width:960px; height:608px; margin: 0 auto; text-align:center; "> 
            <div class="flexslider">
                <?php if($image): ?>
                <ul class="slides">
                    <?php foreach ($image as $k=>$v): ?>
                    <li><img src="<?php echo $v; ?>"  width="960" height="600"/></li>
                    <?php endforeach; ?>
                </ul>
                <?php endif;?>
            </div>
        </div>
        <!-- //content -->
    </div>
</div>
<!-- //content and aside -->

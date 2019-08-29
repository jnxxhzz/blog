<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="uk-width-medium-1-1">
    <div class="position">
        <span>当前位置 : <?php echo anchor('Home/index','首页'); ?> -> <?php echo anchor('Home/about','关于我'); ?></span>
    </div>
    <div class="uk-panel uk-panel-box">
        <div id="about" class="uk-text-center">
            <span>个人简介</span>
            <hr>
            <img src="<?php echo base_url(UPLOAD_PATH.$about['author_img']); ?>" style="width:150px;" class="uk-margin-top uk-margin-bottom">
            <p><?php echo $about['web_author']; ?></p>
            <div class="uk-margin-large-bottom" style="width:60%; margin:0 auto; text-align:left; text-indent:2em">
                <?php echo strip_tags($about['author_intr'],'<p><br><b><strong>'); ?>
            </div>
            <hr>
                <span>与我联系</span>
            <hr>
            <div id="contact">
                <a ><img src="<?php echo base_url(IMG_PATH.'icon/qq.png'); ?>" data-uk-tooltip title="<?php echo $about['qq']; ?>"></a>  
                <a href="http://blog.csdn.net/jnxxhzz"><img src="<?php echo base_url(IMG_PATH.'icon/more.png'); ?>" data-uk-tooltip title="<?php echo $about['csdn']; ?>"></a>  
                <a ><img src="<?php echo base_url(IMG_PATH.'icon/email.png'); ?>" data-uk-tooltip title="<?php echo $about['email']; ?>"></a>
            </div>
        </div>
    </div>
</div>
<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="uk-width-medium-1-1">
    <div class="position">
        <span>当前位置 : <?php echo anchor('Home/index','首页'); ?> -> <?php echo anchor('Home/tag','标签'); ?></span>
    </div>
    <div class="uk-panel uk-panel-box">
        <h3 class="uk-panel-title uk-text-bold uk-text-primary">标签云</h3>
            <div id="divtag_cloud" style = "position:relative; width:360px; height:350px;margin:-20 auto;left:-20px;">
            <?php foreach($tags as $tag): ?>
                <?php echo anchor('Article/article_list/tag/'.$tag, $tag) ?>
            <?php endforeach; ?>
            </div>
    </div>
</div>
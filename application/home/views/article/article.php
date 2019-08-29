<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="uk-width-medium-2-3">
    <div class="position">
        <span>当前位置 : <?php echo anchor('Home/index','首页'); ?> -> <?php echo anchor('Article/article_list','文章'); ?> -> <?php echo anchor('Article/article_list/category/'.$article['category_id'],$article['category_name']); ?>  -> <?php echo anchor('Article/article/'.$article['article_id'],$article['article_name']); ?></span>
    </div>
    <div class="uk-panel uk-panel-box">
        <article class="uk-article">
            <h1 class="uk-article-title">
                <?php echo anchor('Article/article/'.$article['article_id'],$article['article_name']);  ?>
            </h1>
            <p class="uk-article-meta">
                <i class="uk-icon uk-icon-user"></i>
                <span class="uk-margin-right"> <?php echo $article['article_author']; ?></span>  
                <span>分类: <?php echo anchor('Article/article_list/category/'.$article['category_id'], $article['category_name'],array('class'=>'uk-margin-right')); ?></span>
                <i class="uk-icon uk-icon-clock-o"></i>
                <span class="uk-margin-right"> <?php echo date("Y-m-d H:i:s",$article['publish_time']); ?></span>
            </p>
            <p class="uk-article-meta">
                <i class="uk-icon uk-icon-tags"></i><span class="uk-margin-right"> 所属标签</span>
                <?php foreach ($tags as $tag): ?>
                    <?php echo anchor("Article/article_list/tag/".urlencode(urlencode($tag)), $tag.' '); ?>
                <?php endforeach; ?>                       
            </p>          
            <hr>
            <!-- 文章内容 -->
            <div id="article_view" style="padding: 0px;background-color: #fafafa;">
               <textarea style="display:none;"><?php echo $article['article_content']; ?></textarea>               
            </div>
            <hr><br><br>
            <!-- 点赞 -->
            <div id="add_like" class="uk-align-center">
                <span class="like">
                    <i class="uk-icon uk-icon-heart-o"></i>
                </span>
                点赞(<span class="like-count"><?php echo $article['article_like']; ?></span>)
            </div>
            <br><br>    
            
            <hr>
            <!-- 转载声明等 <?php echo $article['article_name']; ?>-->
            <div style="color:#16A085;"><span style="color:#c0392b;">转载请注明 : </span>[转自jnxxhzz] 原文地址 : <?php echo current_url(); ?></div>
            <hr>
            <!-- 上一篇、下一篇 -->
            <?php if(!empty($article_before)): ?>
                <div>
                    <?php echo anchor('Article/article/'.$article_before['article_id'], '上一篇 : '.$article_before['article_name']); ?>
                </div>
            <?php endif; ?>
            <?php if(!empty($article_after)): ?>
                <div>
                    <?php echo anchor('Article/article/'.$article_after['article_id'], '下一篇 : '.$article_after['article_name']); ?>
                </div>
            <?php endif; ?><!-- 上一篇、下一篇 end -->
        </article>
    </div>
    <div class="uk-panel uk-panel-box">
        <h4 class="uk-text-primary uk-text-bold">说点什么</h4>
        <!-- 评论区 -->
        <div id="comment">
            <div id="on_load" style="text-align:center;font-size:24px;opacity:0.8;">
            <i class="uk-icon-spin uk-icon-spinner"></i><span> 加载中...</span>
            </div>
        </div><!-- 评论区 end -->
    </div>
</div>

<script type="text/javascript">
    // 解析markdown
    head.ready(function(){
        article_view = editormd.markdownToHTML("article_view", {
            emoji           : true,
            taskList        : true,
            tex             : true,  
            flowChart       : true,  
            sequenceDiagram : true,  
        });
    });  
</script>
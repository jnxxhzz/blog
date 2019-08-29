<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<!--[if IE 9 ]>
    <div style="width:100%;text-align:center; margin:0 auto; padding:20px;background-color:#444; color:#fff; position:absolute; z-index:99999;">
        您的浏览器版本较低，页面样式可能会出现显示不正常、加载慢的情况，建议升级到最新浏览器 
        <a target="_blank" href="http://www.browsehappy.com">立即升级</a>&nbsp;&nbsp;&nbsp;&nbsp;    
        <a href='#' onclick="this.parentNode.style.display = 'none'; return false;">关闭提示</a>
    </div>
<![endif]-->
<!--[if lt IE 9]>
    <script type="text/javascript"> window.location.href = "<?php echo PUBLIC_PATH.'error/low_version.html'; ?>";</script>
<![endif]-->
<html lang="en-gb" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.7">
    <title><?php echo $web_title; ?></title>
    <!-- SEO 关键字 <title>jnxxhzz</title>-->
    <meta name="Keywords" content="<?php echo $web_info['seo_keywords']; ?>" >
    <meta name="Description" content="<?php echo $web_info['seo_description']; ?>" >
    <meta name="author" content="<?php echo $web_info['web_author']; ?>">
    
    <link href="<?php echo base_url(IMG_PATH.'favicon.ico'); ?>" rel="icon" type="image/x-icon">
    
    <!-- 适合阻塞加载的样式，使用非阻塞会将没样式的html渲染 -->
    <link rel="stylesheet" type="text/css" href="<?php echo COMMON_PATH.'uikit/css/uikit.almost-flat.min.css'; ?>" >     
    <!-- 为了友好的界面显示，马上用到的样式需要阻塞加载 -->
    <link rel="stylesheet" type="text/css" href="<?php echo COMMON_PATH.'uikit/css/components/search.almost-flat.min.css'; ?>">
    <script src="<?php echo COMMON_PATH.'jquery.min.js'; ?>"></script>
    <script src="<?php echo COMMON_PATH.'uikit/js/uikit.min.js'; ?>"></script>
    <link rel="stylesheet" type="text/css" href="<?php echo HOME_CSS_PATH.'jnxxhzz.min.css'; ?>" >
    
    <!-- 幻灯片组件，为了友好显示为阻塞加载 -->
    <link rel="stylesheet" type="text/css" href="<?php echo COMMON_PATH.'uikit/css/components/slideshow.almost-flat.min.css'; ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo COMMON_PATH.'uikit/css/components/slidenav.almost-flat.min.css'; ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo COMMON_PATH.'uikit/css/components/dotnav.almost-flat.min.css'; ?>">
    <script src="<?php echo COMMON_PATH.'uikit/js/components/slideshow.min.js'; ?>"></script>

    <!-- 非阻塞并发加载js模块 -->
    <script src="<?php echo COMMON_PATH.'headJS/head.load.min.js'; ?>" data-headjs-load="<?php echo HOME_JS_PATH.'init.js'; ?>"></script>

    <!-- 标签js -->
    <script  src="<?php echo COMMON_PATH.'jquery-1.7.2.min.js'; ?>"></script>
    <script  src="<?php echo COMMON_PATH.'jquery.windstagball.js'; ?>"></script>
    <style type="text/css">
    #divtag_cloud a {position:absolute; top:0px; left:0px; font-family: Microsoft YaHei; color:#000; font-weight:bold; text-decoration:none; padding: 3px 6px; }
    #divtag_cloud a:hover {border: 1px solid #eee; background: #FFF; }
    #divtag_cloud .blue {color:blue;}
    #divtag_cloud .red {color:red;}
    #divtag_cloud .green {color:green;}

    #divtag_cloud p { font: 16px Microsoft YaHei; text-align: center; color: #ba0c0c; }
    #divtag_cloud p a { font-size: 20px; color: #ba0c0c; }
    #divtag_cloud p a:hover { color: red; }
    </style>
    
</head>

<body>
    <div id="particles_2-js" style="position: fixed;top: 0;left: 0;right: 0;bottom: 0;z-index:-9999;" ></div>
    <!-- brand图片 <img id="brand_img" src="<?php echo base_url(IMG_PATH.''); ?>">-->
    <div id="brand" class="uk-hidden-small">
        <div id="particles-js">
            
            <span id="brand_tip"><span id="brand_name"><?php echo $web_info['web_author']; ?> </span>的个人博客</span>
        </div>
    </div><!-- brand图片 end -->

    <!-- 导航条 -->
    <nav class="uk-navbar" data-uk-sticky>      
        <div class="uk-container uk-container-center">
            <a class="uk-navbar-brand uk-hidden-small" href="<?php echo base_url('Home/index').'.html'; ?>">
                <img src="<?php echo base_url(IMG_PATH.'logo.png'); ?>" width="150">
            </a>
            <ul class="uk-navbar-nav uk-hidden-small">
            <?php $act_arr = array('index','message','about'); ?>
                <li <?php if(isset($act) && $act == 'index'){echo 'class="uk-active"';} ?> >
                    <?php echo anchor('Home/index','首页') ?>
                </li>
                <li class="dropdown <?php if(!isset($act) || !in_array($act, $act_arr)){echo 'uk-active';} ?>">
                    <?php echo anchor('Article/article_list','文章') ?>
                    <ul>
                        <?php foreach($categories as $category): ?>
                            <li>
                                <?php echo anchor('Article/article_list/category/'.$category['category_id'],$category['category_name']) ?>
                            </li> 
                        <?php endforeach; ?>                  
                    </ul>
                </li>
                <li <?php if(isset($act) && $act == 'message'){echo 'class="uk-active"';} ?> >
                    <?php echo anchor('Home/message','留言') ?>
                </li>
                <li <?php if(isset($act) && $act == 'about'){echo 'class="uk-active"';} ?> >
                    <?php echo anchor('Home/about','关于我') ?>
                </li>
            </ul>
            <!-- 小分辨率导航条 -->
            <a href="#offcanvas" class="uk-navbar-toggle uk-visible-small" data-uk-offcanvas></a>
            <div class="uk-navbar-brand uk-navbar-center uk-visible-small">
                <img src="<?php echo base_url(IMG_PATH.'logo.png'); ?>" width="130">
            </div><!-- 小分辨率导航条 end -->
            <!-- 搜索 < 搜索 end -->
            <div class="uk-navbar-flip uk-hidden-small">
                <div class="uk-navbar-content">
                    <form id="article_search" class="uk-search" data-uk-search>
                        <input class="uk-search-field search" type="search" placeholder="search..." maxlength="30" name="search">
                    </form>
                </div>     
            </div>
        </div>
    </nav><!-- 导航条 end -->
    
    <!-- 抽屉 -->
    <div id="offcanvas" class="uk-offcanvas">
        <div class="uk-offcanvas-bar">
            <ul class="uk-nav uk-nav-offcanvas uk-nav-parent-icon" data-uk-nav>
                <li>
                    <form id="article_search_canvas" class="uk-search" data-uk-search>
                        <input class="uk-search-field search" type="search" placeholder="search..." maxlength="30" name="search">
                    </form>
                </li>
                <li>
                    <?php echo anchor('Home/index','首页') ?>
                </li>
                <li class="uk-parent">
                    <a href="#"><i class="uk-icon uk-icon-book"></i> 文章</a>
                    <ul class="uk-nav-sub">
                        <?php foreach($categories as $category): ?>
                            <li class="uk-margin-left">
                                <?php echo anchor('Article/article_list/category/'.$category['category_id'],$category['category_name']) ?>
                            </li> 
                        <?php endforeach; ?> 
                    </ul>                      
                </li>
                <li>
                    <?php echo anchor('Home/message','留言') ?>
                </li>
                <li>
                    <?php echo anchor('Home/about','关于我') ?>
                </li>
            </ul>
        </div>
    </div><!-- 抽屉 end -->


    <!-- 页面内容 -->
    <section>
        <!-- 页面容器 -->
        <div class="uk-container uk-container-center">
            <!-- 布局 -->
            <div class="uk-grid" data-uk-grid-margin>


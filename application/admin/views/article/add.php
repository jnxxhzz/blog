<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>       
<div class="uk-panel uk-panel-box">  
    <div class="uk-panel uk-panel-header">   
        <h3 class="uk-panel-title uk-text-primary uk-text-bold">
            <span>添加文章</span>
            <div class="uk-align-right">
                <?php echo anchor('Article/index/','<i class="uk-icon uk-icon-reply"></i> 返回列表',array('class'=>'uk-button uk-text-primary uk-text-bold','id'=>'back_list')); ?>
            </div>
        </h3>          
        <form id="article_form" class="uk-form" enctype="multipart/form-data">
            <div class="uk-grid">
                <div class="uk-width-medium-1-2"> 
                    <div class="uk-width-medium-1-1 uk-margin-bottom">     
                        <h4><label class="uk-form-label uk-text-bold uk-text-success" for="form_article_title">标题</label></h4>
                        <input id="form_article_title" class="uk-form-large uk-form-width-large" type="text" name="article_name" required="required" placeholder="请输入标题..." maxlength="30">
                    </div>
                    <div class="uk-width-medium-1-1 uk-margin-bottom">
                        <h4><label class="uk-form-label uk-text-bold uk-text-success" for="form_article_caregory">分类</label></h4>
                        <select name="category_id" id="form_article_caregory" class="uk-form-large uk-form-width-medium" required="required">
                            <option value="0">选择分类...</option>
                            <?php foreach($categories as $category): ?>
                                <option value="<?php echo $category['category_id']; ?>"><?php echo $category['category_name']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="uk-width-medium-1-1 uk-margin-bottom">
                        <h4><label class="uk-form-label uk-text-bold uk-text-success" for="form_article_keyword">关键字</label></h4>          
                        <input id="form_article_keyword" class="uk-form-large uk-form-width-large" type="text" name="article_keyword" required="required" placeholder="请输入关键字，空格或,(半角)隔开" maxlength="30">
                    </div>
                    <div class="uk-width-medium-1-2 uk-margin-bottom">
                        <h4>
                            <label class="uk-form-label uk-text-bold uk-text-success" for="form_article_top">是否置顶</label>
                            <input id="form_article_top" class="uk-margin-left" type="checkbox" name="is_top" value="1">
                        </h4>                  
                    </div>
                    <div class="uk-width-medium-1-2 uk-margin-bottom">
                        <div class="uk-form-file">
                            <button class="uk-button">上传文章预览图片<br>(小于512kb, 1024x768)</button>
                            <input id="form_article_file" class="uk-form-large uk-form-width-large" type="file" accept="image/jpg,image/jpeg,image/gif,image/png,image/bmp,image/webp" required="required" name="article_img">
                            <span id="file_state"></span>
                        </div>
                    </div>
                </div>

                <div class="uk-width-medium-1-2"> 
                    <div class="uk-width-medium-1-1 uk-margin-bottom">
                        <h4><label class="uk-form-label uk-text-bold uk-text-success" for="form_article_brief">简述</label></h4>  
                        <textarea id="form_article_brief" class="uk-form-large" cols="60" rows="14" placeholder="请输入简述" required="required" maxlength="400" name="article_desc"></textarea>
                    </div>
                </div>
            </div>
            <h4 class="uk-text-bold uk-text-success">内容</h4>
            <div id="editormd">
                <textarea id="article_content" style="display:none;" name="article_content"></textarea>
            </div>
            <!-- token令牌 -->
            <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />
            <button id="article_submit" class="uk-button uk-button-success uk-button-large uk-width-1-1 uk-margin-large-top" type="submit">提交</button>
        </form>
    </div>
</div>

<script type="text/javascript">
    /* 文件名称读取 */
    if(typeof($._data($("input[type='file']")[0], "events")) == "undefined"){
        $("input[type='file']").change(function() {
            $("#file_state").html($(this).val());
        });
    }
</script>

<?php if(isset($script)){echo $script;} ?>


<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>            
<div class="uk-panel uk-panel-box">                 
    <div class="uk-panel uk-panel-header">
        <h3 class="uk-panel-title">
            <span class="position"> 当前位置: <?php echo anchor('Manage/dash','首页'); ?> -> <a>留言内容</a> </span>
            <div class="uk-align-right">
                <?php echo anchor('Message/index/','<i class="uk-icon uk-icon-reply"></i> 返回列表',array('class'=>'uk-button uk-text-primary uk-text-bold','id'=>'back_list')); ?>
            </div>
        </h3> 
    </div>
    <form id="message_form" class="uk-form uk-form-horizontal">     
        <div class="uk-form-row">
            <label class="uk-form-label uk-text-bold uk-text-primary">留言用户</label>
            <div class="uk-form-controls">
            <label class="uk-form-label uk-text-bold"><?php echo $message['username']; ?></label>    
            </div>
        </div>      
        <div class="uk-form-row">
            <label class="uk-form-label uk-text-bold uk-text-primary">回复对象</label>
            <div class="uk-form-controls">
            <label class="uk-form-label uk-text-bold"><?php echo empty($message['reply']) ? '顶级回复' : $message['reply']; ?></label>    
            </div>
        </div>
        <div class="uk-form-row">
            <label class="uk-form-label uk-text-bold uk-text-primary">留言时间</label>
            <div class="uk-form-controls">
            <label class="uk-form-label uk-text-bold"><?php echo date("Y-m-d H:i:s",$message['timestamp']); ?></label>    
            </div>
        </div>
        <div class="uk-form-row">
            <label class="uk-form-label uk-text-bold uk-text-primary">留言内容</label>
            <div class="uk-form-controls">
            <label class="uk-form-label uk-text-bold"><?php echo $message['content']; ?></label>    
            </div>
        </div> 
        <div class="uk-form-row">
            <textarea id="message_content" class="uk-width-1-1" rows="3" placeholder="请输入留言" required="required" maxlength="400" name="message_content"></textarea>
        </div>
        <!-- token令牌 -->
        <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />
        <hr>
        <div class="uk-form-row">
            <button id="message_submit" class="uk-button uk-button-success">回复</button>
        </div>
    </form>
</div>


<?php if(isset($script)){echo $script;}?>
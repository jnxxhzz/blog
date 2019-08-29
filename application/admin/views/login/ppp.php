<?php
 /**
     * create_code 
     *
     * 生成验证码
     *
     * @see     Captcha::$_CI
     * @see     Captcha::$_config
     * @see     Captcha::$_img
     * @uses    Captcha::_encrypt_code()
     * @uses    Captcha::_create_line()
     * @uses    Captcha::_create_dot()
     * @access  public 
     * @return  void
     */

$pwd = "7ed827b1db6a9b6597593e4e3671558af2393241d7d247f36fb47cfb5195b049";
$hash = password_hash($pwd, PASSWORD_DEFAULT);
echo $hash;

?>
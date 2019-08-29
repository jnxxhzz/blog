<?php 


defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Administrator_model Class
 *
 * 管理员操作模型
 *
 * @package     Qinblog
 * @subpackage  Model
 * @category    Model
 * @author      MrQin
 * @link        http://www.qinblog.net
 */
class Administrator_model extends CI_Model {

    /**
     * Class constructor
     * 
     * @access  public 
     * @return  void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * get_info 
     *
     * 获取信息
     *
     * @param  string  $username
     * @access public 
     * @return  void
     */
    public function get_info($username) {
        $this->db->where('username', $username);
        $query = $this->db->get('manager');

        return $query->row_array();
    }

    /**
     * update_info 
     *
     * 更新信息
     *
     * @param  int    $id
     * @param  array  $data
     * @access public 
     * @return  void
     */
    public function update_info($id, $data) {
        $this->db->where('id', $id);
        return $this->db->update('manager', $data);
    }

}

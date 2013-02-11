<?php


require_once('include/ytree/Tree.php');
require_once('include/ytree/Node.php');



class TeamSetModule extends SugarBean{
    /*
    * char(36) GUID
    */
    var $id;

    var $team_set_id;
    var $module_table_name;

    var $table_name = "team_sets_modules";
    var $object_name = "TeamSetModule";
    var $module_dir = 'Teams';
    var $disable_custom_fields = true;

    /**
    * Default constructor
    *
    */
    public function __construct(){
        parent::SugarBean();
        $this->disable_row_level_security =true;
    }

    public function save(){
        $sql = "SELECT id FROM $this->table_name WHERE team_set_id = '$this->team_set_id' AND module_table_name = '$this->module_table_name'";
        $result = $this->db->query($sql);
        $row = $this->db->fetchByAssoc($result);
        if (!$row){
            parent::save();
        }
    }
}
?>

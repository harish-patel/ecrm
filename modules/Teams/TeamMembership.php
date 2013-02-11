<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');





class TeamMembership extends SugarBean {
    // Stored fields
    var $id;
    var $team_id;
    var $user_id;
    var $explicit_assign;
    var $implicit_assign;
    var $deleted;
    var $date_modified;

    var $table_name = "team_memberships";
    var $object_name = "TeamMembership";
    var $module_dir = 'Teams';
    var $disable_custom_fields = true;

    var $encodeFields = Array("name", "description");



    // todo sort by username.

    var $new_schema = true;

    function TeamMembership() {
        parent::SugarBean();
        $this->disable_row_level_security =true;
    }

    function get_list_view_data() {
        $team_fields = $this->get_list_view_array();
        return $team_fields;
    }

    function list_view_parse_additional_sections(&$list_form, $xTemplateSection) {
        return $list_form;
    }

    function delete()
    {
        $query = "UPDATE $this->table_name set deleted = 1 where id='$this->id'";
        $result = $this->db->query($query, TRUE, "Error deleting team membership ($this->id): ");
    }

    /** This method retrieves the membership for a given user_id and team_id.
    * @returns true if found, false if not found.
    * The membership taht this is called on is destroyed if a membership is found matching user_id and team_id
    */
    function retrieve_by_user_and_team($user_id, $team_id)
    {
        // determine whether the user is already on the team
        $query = "SELECT id FROM team_memberships WHERE user_id='$user_id' AND team_id='$team_id' AND deleted = 0";
        $result = $this->db->query($query, TRUE, "Error finding team memberships: ");

        $row = $this->db->fetchByAssoc($result);

        if ($row!= null) {
            $this->retrieve($row['id']);

            return true;
        }

        return false;
    }
}

?>

<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

class ReportsController extends SugarController
{
    /**
     * @see SugarController::loadBean()
     */
    public function loadBean()
    {
        if (!empty($_REQUEST['record']) && $_REQUEST['action'] == 'ReportsWizard')
        {
            $_REQUEST['id'] = $this->record;
            $_REQUEST['page'] = 'report';
            $this->view_object_map['action'] = 'ReportsWizard';
        }
        else if (empty($this->record) && !empty($_REQUEST['id']))
        {
            $this->record = $_REQUEST['id'];
            $GLOBALS['action'] = 'detailview';
            $this->view_object_map['action'] = 'ReportCriteriaResults';
        }
        elseif (!empty($this->record))
        {
            if ($_REQUEST['action'] == 'DetailView')
            {
                $_REQUEST['id'] = $this->record;
                unset($_REQUEST['record']);
            }
            $_REQUEST['page'] = 'report';
            $this->view_object_map['action'] = 'ReportCriteriaResults';
        }

        parent::loadBean();
    }

    public function action_buildreportmoduletree()
    {
        $this->view = 'buildreportmoduletree';
    }

    public function action_add_schedule()
    {
        $this->view = 'schedule';
    }

    public function action_detailview()
    {
        $this->view = 'classic';
    }

    public function action_get_teamset_field()
    {
        require_once('include/SugarFields/Fields/Teamset/ReportsSugarFieldTeamsetCollection.php');
        $view = new ReportsSugarFieldTeamsetCollection(true);
        $view->setup();
        $view->process();
        $view->init_tpl();
        echo $view->display();
    }

    public function action_get_quicksearch_defaults()
    {
        global $global_json;
        $global_json = getJSONobj();
        require_once('include/QuickSearchDefaults.php');
        $qsd = new QuickSearchDefaults();
        if (!empty($_REQUEST['parent_form']))
            $qsd->form_name = $_REQUEST['parent_form'];
        $quicksearch_js = '';
        if (isset($_REQUEST['parent_module']) && isset($_REQUEST['parent_field']))
        {
            $sqs_objects = array($_REQUEST['parent_field'] => $qsd->getQSParent($_REQUEST['parent_module']));
            foreach ($sqs_objects as $sqsfield => $sqsfieldArray)
            {
                $quicksearch_js .= "sqs_objects['$sqsfield']={$global_json->encode($sqsfieldArray)};";
            }
        }
        echo $quicksearch_js;
    }

}

<?php

/* * *******************************************************************************
 * The contents of this file are subject to the SugarCRM Master Subscription
 * Agreement ("License") which can be viewed at
 * http://www.sugarcrm.com/crm/en/msa/master_subscription_agreement_11_April_2011.pdf
 * By installing or using this file, You have unconditionally agreed to the
 * terms and conditions of the License, and You may not use this file except in
 * compliance with the License.  Under the terms of the license, You shall not,
 * among other things: 1) sublicense, resell, rent, lease, redistribute, assign
 * or otherwise transfer Your rights to the Software, and 2) use the Software
 * for timesharing or service bureau purposes such as hosting the Software for
 * commercial gain and/or for the benefit of a third party.  Use of the Software
 * may be subject to applicable fees and any use of the Software without first
 * paying applicable fees is strictly prohibited.  You do not have the right to
 * remove SugarCRM copyrights from the source code or user interface.
 *
 * All copies of the Covered Code must include on each user interface screen:
 *  (i) the "Powered by SugarCRM" logo and
 *  (ii) the SugarCRM copyright notice
 * in the same form as they appear in the distribution.  See full license for
 * requirements.
 *
 * Your Warranty, Limitations of liability and Indemnity are expressly stated
 * in the License.  Please refer to the License for the specific language
 * governing these rights and limitations under the License.  Portions created
 * by SugarCRM are Copyright (C) 2004-2011 SugarCRM, Inc.; All Rights Reserved.
 * ****************************************************************************** */

require_once("include/Expressions/Actions/AbstractAction.php");

class SetRequiredAction extends AbstractAction
{

    protected $expression = "";

    function SetRequiredAction($params)
    {
        $this->targetField = $params['target'];
        $this->targetLabel = $params['label'];
        $this->expression = str_replace("\n", "", $params['value']);
    }

    /**
     * Returns the javascript class equavalent to this php class
     *
     * @return string javascript.
     */
    static function getJavascriptClass()
    {
        return "
SUGAR.forms.SetRequiredAction = function(variable, expr, label) {
    this.variable = variable;
    this.expr = expr;
    this.label    = label;
    this._el_lbl  = document.getElementById(this.label);
}

/**
 * Triggers this dependency to be re-evaluated again.
 */
SUGAR.util.extend(SUGAR.forms.SetRequiredAction, SUGAR.forms.AbstractAction, {

    /**
     * Triggers the required dependencies.
     */
    exec: function(context)
    {
        if (typeof(context) == 'undefined')
		    context = this.context;
        var el = SUGAR.forms.AssignmentHandler.getElement(this.variable);
        this.required = this.evalExpression(this.expr, context);

        if ( typeof(SUGAR.forms.FormValidator) != 'undefined' )
            SUGAR.forms.FormValidator.setRequired(el.form.name, el.name, this.required);


        if (this._el_lbl != null) {
            var p = this._el_lbl;
            var els = YAHOO.util.Dom.getElementsBy( function(e) { return e.className == 'req'; }, \"span\", p)
            var reqSpan = false;
            if ( els != null && els[0] != null)
                reqSpan = els[0];

            if ( (this.required == true  || this.required == 'true')) {
                if (!reqSpan) {
                    var node = document.createElement(\"span\");
                    node.innerHTML = \"<font color='red'>*</font>\";
                    node.className = \"req\";
                    this._el_lbl.appendChild(node);
                    addToValidate('EditView', this.variable, 'text', true, this.variable);
                }
            } else {
                if ( p != null  && reqSpan != false) {
                    p.removeChild(reqSpan);
                }
                removeFromValidate('EditView', this.variable);
            }
        }
    } 
});";
    }

    /**
     * Returns the javascript code to generate this actions equivalent. 
     *
     * @return string javascript.
     */
    function getJavascriptFire()
    {
        return "new SUGAR.forms.SetRequiredAction('{$this->targetField}','{$this->expression}', '{$this->targetLabel}')";
    }

    /**
     * Applies the Action to the target.
     *
     * @param SugarBeam $target
     */
    function fire(&$target)
    {
        //This is a no-op under PHP
    }

    static function getActionName()
    {
        return "SetRequired";
    }

}
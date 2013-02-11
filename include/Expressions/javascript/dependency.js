/*********************************************************************************
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
 ********************************************************************************/
if(typeof(SUGAR.forms)=='undefined')SUGAR.forms={};if(typeof(SUGAR.forms.animation)=='undefined')SUGAR.forms.animation={};SUGAR.forms.AssignmentHandler=function(){}
SUGAR.forms.AssignmentHandler.ANIMATE=true;SUGAR.forms.AssignmentHandler.VARIABLE_MAP={};SUGAR.forms.AssignmentHandler.LOCKS={};SUGAR.forms.AssignmentHandler.register=function(variable,view){var AH=SUGAR.forms.AssignmentHandler;if(!view)view=AH.lastView;if(typeof(AH.VARIABLE_MAP[view])=="undefined")
AH.VARIABLE_MAP[view]={};if(variable instanceof Array){for(var i=0;i<variable.length;i++){AH.VARIABLE_MAP[view][variable[i]]=document.getElementById(variable[i]);}}else{AH.VARIABLE_MAP[view][variable]=document.getElementById(variable);}}
SUGAR.forms.AssignmentHandler.registerFields=function(flds){var AH=SUGAR.forms.AssignmentHandler;if(typeof(flds)!='object')return;var form=document.forms[flds.form];var names=flds.fields;if(typeof(AH.VARIABLE_MAP[flds.form])=="undefined")
AH.VARIABLE_MAP[flds.form]={};if(typeof(form)=='undefined')return;for(var i=0;i<names.length;i++){var el=form[names[i]];if(el!=null)AH.VARIABLE_MAP[flds.form][el.id]=el;}}
SUGAR.forms.AssignmentHandler.registerForm=function(f){var AH=SUGAR.forms.AssignmentHandler;var form=document.forms[f];if(typeof(AH.VARIABLE_MAP[f])=="undefined")
AH.VARIABLE_MAP[f]={};if(typeof(form)=='undefined')return;for(var i=0;i<form.length;i++){var el=form[i];if(el!=null&&el.value!=null&&el.id!=null&&el.id!="")
AH.VARIABLE_MAP[f][el.id]=el;else if(el!=null&&el.value&&el.type=="hidden")
AH.VARIABLE_MAP[f][el.name]=el;}}
SUGAR.forms.AssignmentHandler.registerView=function(view,startEl){var Dom=YAHOO.util.Dom;var AH=SUGAR.forms.AssignmentHandler;AH.lastView=view;if(typeof(AH.VARIABLE_MAP[view])=="undefined")
AH.VARIABLE_MAP[view]={};if(Dom.get(view)!=null&&Dom.get(view).tagName=="FORM"){return AH.registerForm(view);}
var nodes=YAHOO.util.Selector.query("span.sugar_field",startEl);for(var i in nodes){if(nodes[i].id!="")
AH.VARIABLE_MAP[view][nodes[i].id]=nodes[i];}}
SUGAR.forms.AssignmentHandler.registerField=function(formname,field){SUGAR.forms.AssignmentHandler.registerFields({form:formname,fields:new Array(field)});}
SUGAR.forms.AssignmentHandler.getValue=function(variable,view){if(!view)view=SUGAR.forms.AssignmentHandler.lastView;var field=SUGAR.forms.AssignmentHandler.getElement(variable,view);if(field==null||field.tagName==null)return null;if(field.children.length==1&&field.children[0].tagName.toLowerCase()=="input")
field=field.children[0];if(field.tagName.toLowerCase()=="select"){if(field.selectedIndex==-1){return null;}else{return field.options[field.selectedIndex].value;}}
if(field.tagName.toLowerCase()=="input"&&field.type.toLowerCase()=="checkbox"){return field.checked?SUGAR.expressions.Expression.TRUE:SUGAR.expressions.Expression.FALSE;}
if(field.className&&(field.className=="DateTimeCombo"||field.className=="Date")){return SUGAR.util.DateUtils.parse(field.value,"user");}
if(field.tagName.toLowerCase()=="span")
{return document.all?trim(field.innerText):trim(field.textContent);}
if(field.value!==null&&typeof(field.value)!="undefined")
{var asNum=SUGAR.expressions.unFormatNumber(field.value);if((/^(\-)?[0-9]+(\.[0-9]+)?$/).exec(asNum)!=null){return asNum;}
return field.value;}
return YAHOO.lang.trim(field.innerText);}
SUGAR.forms.AssignmentHandler.getElement=function(variable,view){if(!view)view=SUGAR.forms.AssignmentHandler.lastView;var field=SUGAR.forms.AssignmentHandler.VARIABLE_MAP[view][variable];if(field==null)
field=YAHOO.util.Dom.get(variable);return field;}
SUGAR.forms.AssignmentHandler.assign=function(variable,value,flash)
{var AH=SUGAR.forms.AssignmentHandler,Dom=YAHOO.util.Dom;if(typeof flash=="undefined")
flash=true;var field=AH.getElement(variable);if(field==null)
return null;if(AH.LOCKS[variable]!=null){throw("Circular Reference Detected");}
if(Dom.hasClass(field,"imageUploader"))
{var img=Dom.get("img_"+field.id);img.src=value;img.style.visibility="";}
else if(field.type=="checkbox"){field.checked=value==SUGAR.expressions.Expression.TRUE;}
else if(value instanceof Date)
{if(Dom.hasClass(field,"date_input"))
field.value=SUGAR.util.DateUtils.formatDate(value);else{if(Dom.hasClass(field,"DateTimeCombo"))
AH.setDateTimeField(field,value);field.value=SUGAR.util.DateUtils.formatDate(value,true);}}
else{field.value=value;}
if(AH.ANIMATE&&flash)
SUGAR.forms.FlashField(field);AH.LOCKS[variable]=true;SUGAR.util.callOnChangeListers(field);AH.LOCKS[variable]=null;}
SUGAR.forms.AssignmentHandler.setDateTimeField=function(field,value)
{var Dom=YAHOO.util.Dom,SDU=SUGAR.util.DateUtils,AH=SUGAR.forms.AssignmentHandler,id=field.id,date=Dom.get(id+"_date"),hours=Dom.get(id+"_hours"),min=Dom.get(id+"_minutes"),mer=Dom.get(id+"_meridiem");value=SDU.roundTime(value);date.value=SDU.formatDate(value);if(mer){var h=SDU.formatDate(value,true,"h");var m=SDU.formatDate(value,true,"i");var a=SUGAR.expressions.userPrefs.timef.indexOf("A")!=-1?SDU.formatDate(value,true,"A"):SDU.formatDate(value,true,"a");AH.setSelectedOption(hours,h);AH.setSelectedOption(min,m);AH.setSelectedOption(mer,a);}else{var h=SDU.formatDate(value,true,"H");var m=SDU.formatDate(value,true,"i");AH.setSelectedOption(hours,h);AH.setSelectedOption(min,m);}}
SUGAR.forms.AssignmentHandler.setSelectedOption=function(field,value)
{for(var i=0;i<field.options.length;i++)
{if(field.options[i].value==value)
{field.options[i].selected=true;break;}}
return;}
SUGAR.forms.AssignmentHandler.showError=function(variable,error)
{var field=SUGAR.forms.AssignmentHandler.getElement(variable);if(field==null)
return null;add_error_style(field.form.name,field,error,false);}
SUGAR.forms.AssignmentHandler.clearError=function(variable)
{var field=SUGAR.forms.AssignmentHandler.getElement(variable);if(field==null)
return;for(var i in inputsWithErrors)
{if(inputsWithErrors[i]==field)
{if(field.parentNode.className.indexOf('x-form-field-wrap')!=-1)
{field.parentNode.parentNode.removeChild(field.parentNode.parentNode.lastChild);}
else
{field.parentNode.removeChild(field.parentNode.lastChild);}
delete inputsWithErrors[i];return;}}}
SUGAR.forms.AssignmentHandler.setStyle=function(variable,styles)
{var field=SUGAR.forms.AssignmentHandler.getElement(variable);if(field==null)return null;for(var property in styles){YAHOO.util.Dom.setStyle(field,property+"",styles[property]);}}
SUGAR.forms.FormExpressionContext=function(formName)
{var AH=SUGAR.forms.AssignmentHandler;this.formName=formName;if(typeof(AH.VARIABLE_MAP[formName])=="undefined")
AH.registerView(formName);}
SUGAR.util.extend(SUGAR.forms.FormExpressionContext,SUGAR.expressions.ExpressionContext,{getValue:function(varname)
{var SE=SUGAR.expressions,toConst=SE.ExpressionParser.prototype.toConstant;var value="";value=SUGAR.forms.AssignmentHandler.getValue(varname,this.formName);if(typeof(value)=="string")
{value=value.replace(/\n/g,"");if((/^(\s*)$/).exec(value)!=null||value==="")
{return toConst('""')}
else if(SE.isNumeric(value)){return toConst(value);}
else{return toConst('"'+value+'"');}}else if(typeof(value)=="object"&&value.getTime){var d=new SUGAR.DateExpression("");d.evaluate=function(){return this.value};d.value=value;return d;}
return toConst('""');},setValue:function(varname,value)
{SUGAR.forms.AssignmentHandler.assign(varname,value,true);}});SUGAR.forms.DefaultExpressionParser=new SUGAR.expressions.ExpressionParser();SUGAR.forms.evalVariableExpression=function(expression,varmap,view)
{return SUGAR.forms.DefaultExpressionParser.evaluate(expression,new SUGAR.forms.FormExpressionContext(view));if(!view)view=SUGAR.forms.AssignmentHandler.lastView;var SE=SUGAR.expressions;expression=SUGAR.forms._performRangeReplace(expression);var handler=SUGAR.forms.AssignmentHandler;if(typeof(varmap)=='undefined')
{varmap=new Array();for(v in handler.VARIABLE_MAP[view]){if(v!=""){varmap[varmap.length]=v;}}}
if(expression==SE.Expression.TRUE||expression==SE.Expression.FALSE)
var vars=SUGAR.forms.getFieldsFromExpression(expression);for(var i in vars)
{var v=vars[i];var value=handler.getValue(v);if(value==null){continue;}
var regex=new RegExp("\\$"+v,"g");if(typeof(value)=="string")
{value=value.replace(/\n/g,"");if((/^(\s*)$/).exec(value)!=null||value==="")
{expression=expression.replace(regex,'""');}
else if(SE.isNumeric(value)){expression=expression.replace(regex,SE.unFormatNumber(value));}
else{expression=expression.replace(regex,'"'+value+'"');}}else if(typeof(value)=="object"&&value.getTime){value="date("+value.getTime()+")";expression=expression.replace(regex,value);}}
return SUGAR.forms.DefaultExpressionParser.evaluate(expression);}
SUGAR.forms._performRangeReplace=function(expression)
{this.generateRange=function(prefix,start,end){var str="";var i=parseInt(start);if(typeof(end)=='undefined')
while(SUGAR.forms.AssignmentHandler.getElement(prefix+''+i)!=null)
str+='$'+prefix+''+(i++)+',';else
for(;i<=end;i++){var t=prefix+''+i;if(SUGAR.forms.AssignmentHandler.getElement(t)!=null)
str+='$'+t+',';}
return str.substring(0,str.length-1);}
this.valueReplace=function(val){if(!(/^\$.*$/).test(val))return val;return SUGAR.forms.AssignmentHandler.getValue(val.substring(1));}
var isInQuotes=false;var prev;var inRange;for(var i=0;;i++){if(i==expression.length)break;var ch=expression.charAt(i);if(ch=='"'&&prev!='\\')isInQuotes=!isInQuotes;if(!isInQuotes&&ch=='%'){inRange=true;var loc_start=expression.indexOf('[',i+1);var loc_comma=expression.indexOf(',',loc_start);var loc_end=expression.indexOf(']',loc_start);if(loc_start<0||loc_end<0)throw("Invalid range syntax");var prefix=expression.substring(i+1,loc_start);var start,end;if(loc_comma>-1&&loc_comma<loc_end){start=expression.substring(loc_start+1,loc_comma);end=expression.substring(loc_comma+1,loc_end);}else{start=expression.substring(loc_start+1,loc_end);}
if(loc_comma>-1&&loc_comma<loc_end)end=expression.substring(loc_comma+1,loc_end);var result=this.generateRange(prefix,this.valueReplace(start),this.valueReplace(end));if(typeof(end)=='undefined')
expression=expression.replace('%'+prefix+'['+start+']',result);else
expression=expression.replace('%'+prefix+'['+start+','+end+']',result);i=i+result.length-1;}
prev=ch;}
return expression;}
SUGAR.forms.getFieldsFromExpression=function(expression)
{var re=/[^$]*?\$(\w+)[^$]*?/g,matches=[],result;while(result=re.exec(expression))
{matches.push(result[result.length-1]);}
return matches;}
SUGAR.forms.Dependency=function(trigger,actions,falseActions,testOnLoad,form)
{var AH=SUGAR.forms.AssignmentHandler;if(typeof(form)!="string")
if(AH.lastView)
form=AH.lastView;else
form="EditView";this.actions=actions;this.falseActions=falseActions;this.context=new SUGAR.forms.FormExpressionContext(form);trigger.setDependency(this);trigger.setContext(this.context);this.trigger=trigger;if(testOnLoad){try{YAHOO.util.Event.onDOMReady(SUGAR.forms.Trigger.fire,trigger,true);}catch(e){}}}
SUGAR.forms.Dependency.prototype.fire=function(undo)
{try{var actions=this.actions;if(undo&&this.falseActions!=null)
actions=this.falseActions;if(actions instanceof SUGAR.forms.AbstractAction){actions.setContext(this.context);actions.exec();}else{for(var i in actions){var action=actions[i];if(typeof action.exec=="function"){action.setContext(this.context);action.exec();}}}}catch(e){if(!SUGAR.isIE&&console&&console.log){console.log('ERROR: '+e);}
return;}};SUGAR.forms.AbstractAction=function(target){this.target=target;};SUGAR.forms.AbstractAction.prototype.exec=function()
{}
SUGAR.forms.AbstractAction.prototype.setContext=function(context)
{this.context=context;}
SUGAR.forms.AbstractAction.prototype.evalExpression=function(exp,context)
{return SUGAR.forms.DefaultExpressionParser.evaluate(exp,context).evaluate();}
SUGAR.forms.Trigger=function(variables,condition){this.variables=variables;this.condition=condition;this.dependency={};this._attachListeners();}
SUGAR.forms.Trigger.prototype._attachListeners=function(){var handler=SUGAR.forms.AssignmentHandler;if(!(this.variables instanceof Array)){this.variables=[this.variables];}
for(var i=0;i<this.variables.length;i++){var el=handler.getElement(this.variables[i]);if(!el)continue;if(el.type&&el.type.toUpperCase()=="CHECKBOX")
{YAHOO.util.Event.addListener(el,"click",SUGAR.forms.Trigger.fire,this,true);}else{YAHOO.util.Event.addListener(el,"change",SUGAR.forms.Trigger.fire,this,true);}}}
SUGAR.forms.Trigger.prototype.setDependency=function(dep){this.dependency=dep;}
SUGAR.forms.Trigger.prototype.setContext=function(context)
{this.context=context;}
SUGAR.forms.Trigger.fire=function()
{var eval;var val;try{eval=SUGAR.forms.DefaultExpressionParser.evaluate(this.condition,this.context);}catch(e){if(!SUGAR.isIE&&console&&console.log){console.log('ERROR:'+e+"; in Condition: "+this.condition);}}
if(typeof(eval)!='undefined')
val=eval.evaluate();if(val==SUGAR.expressions.Expression.TRUE){if(this.dependency instanceof SUGAR.forms.Dependency){this.dependency.fire(false);return;}}else if(val==SUGAR.expressions.Expression.FALSE){if(this.dependency instanceof SUGAR.forms.Dependency){this.dependency.fire(true);return;}}}
SUGAR.forms.flashInProgress={};SUGAR.forms.FlashField=function(field,to_color){if(typeof(field)=='undefined')return;if(SUGAR.forms.flashInProgress[field.id])
return;SUGAR.forms.flashInProgress[field.id]=true;var original=field.style.backgroundColor;if(typeof(original)=='undefined'||original==''){original='#FFFFFF';}
if(typeof(to_color)=='undefined')
var to_color='#FF8F8F';var oButtonAnim=new YAHOO.util.ColorAnim(field,{backgroundColor:{to:to_color}},0.2);oButtonAnim.onComplete.subscribe(function(){if(this.attributes.backgroundColor.to==to_color){this.attributes.backgroundColor.to=original;this.animate();}else{field.style.backgroundColor=original;SUGAR.forms.flashInProgress[field.id]=false;}});var tabsId=field.form.getAttribute("name")+"_tabs";if(typeof(window[tabsId])!="undefined"){var tabView=window[tabsId];var parentDiv=YAHOO.util.Dom.getAncestorByTagName(field,"div");if(tabView.get){var tabs=tabView.get("tabs");for(var i in tabs){if(i!=tabView.get("activeIndex")&&(tabs[i].get("contentEl")==parentDiv||YAHOO.util.Dom.isAncestor(tabs[i].get("contentEl"),field)))
{var label=tabs[i].get("labelEl");if(SUGAR.forms.flashInProgress[label.parentNode.id])
return;var tabAnim=new YAHOO.util.ColorAnim(label,{color:{to:'#F00'}},0.2);tabAnim.origColor=Dom.getStyle(label,"color");tabAnim.onComplete.subscribe(function(){if(this.attributes.color.to=='#F00'){this.attributes.color.to=this.origColor;this.animate();}else{SUGAR.forms.flashInProgress[label.parentNode.id]=false;}});SUGAR.forms.flashInProgress[label.parentNode.id]=true;tabAnim.animate();}}}}
oButtonAnim.animate();}
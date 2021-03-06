<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


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

	

$mod_strings = array (
  'LBL_MODULE_NAME' => 'Targets',
  'LBL_MODULE_ID' => 'Targets',
  'LBL_PROSPECT' => 'Target:',
  'db_last_name' => 'LBL_LIST_LAST_NAME',
  'db_first_name' => 'LBL_LIST_FIRST_NAME',
  'db_title' => 'LBL_LIST_TITLE',
  'db_email1' => 'LBL_LIST_EMAIL_ADDRESS',
  'db_email2' => 'LBL_LIST_OTHER_EMAIL_ADDRESS',
  'LBL_FAX_PHONE' => 'Fax:',
  'LBL_DEFAULT_SUBPANEL_TITLE' => 'Targets',
  'LBL_CONVERT_BUTTON_KEY' => 'V',
  'LBL_TRACKER_KEY' => 'Tracker Key',
  'LBL_INVITEE' => 'Relatórios Directos',
  'LBL_MODULE_TITLE' => 'Targets: Ecrã Principal',
  'LBL_SEARCH_FORM_TITLE' => 'Pesquisar Targets',
  'LBL_LIST_FORM_TITLE' => 'Lista de Targets',
  'LBL_NEW_FORM_TITLE' => 'Novo Target',
  'LBL_BUSINESSCARD' => 'Cartão de Visita',
  'LBL_LIST_NAME' => 'Nome',
  'LBL_LIST_LAST_NAME' => 'Último Nome',
  'LBL_LIST_PROSPECT_NAME' => 'Nome do Target',
  'LBL_LIST_TITLE' => 'Cargo',
  'LBL_LIST_EMAIL_ADDRESS' => 'E-mail',
  'LBL_LIST_OTHER_EMAIL_ADDRESS' => 'Outro E-mail',
  'LBL_LIST_PHONE' => 'Telefone',
  'LBL_LIST_PROSPECT_ROLE' => 'Função',
  'LBL_LIST_FIRST_NAME' => 'Primeiro Nome',
  'LBL_ASSIGNED_TO_NAME' => 'Atribuído a',
  'LBL_ASSIGNED_TO_ID' => 'Atribuído a',
  'LBL_CAMPAIGN_ID' => 'ID Campanha',
  'LBL_EXISTING_PROSPECT' => 'Usado um contacto existente',
  'LBL_CREATED_PROSPECT' => 'Criado um novo contacto',
  'LBL_EXISTING_ACCOUNT' => 'Usada uma entidade existente',
  'LBL_CREATED_ACCOUNT' => 'Criada uma nova entidade',
  'LBL_CREATED_CALL' => 'Criada uma nova chamada telefónica',
  'LBL_CREATED_MEETING' => 'Criada uma nova reunião',
  'LBL_ADDMORE_BUSINESSCARD' => 'Incluir outro cartão de visita',
  'LBL_ADD_BUSINESSCARD' => 'Criar a partir de um Cartão de Visita',
  'LBL_NAME' => 'Nome:',
  'LBL_FULL_NAME' => 'Nome',
  'LBL_PROSPECT_NAME' => 'Nome do Target:',
  'LBL_PROSPECT_INFORMATION' => 'Informação do Target',
  'LBL_MORE_INFORMATION' => 'Mais Informações',
  'LBL_FIRST_NAME' => 'Primeiro Nome:',
  'LBL_OFFICE_PHONE' => 'Telefone da Empresa',
  'LBL_ANY_PHONE' => 'Outro Telefone:',
  'LBL_PHONE' => 'Telefone:',
  'LBL_LAST_NAME' => 'Último Nome:',
  'LBL_MOBILE_PHONE' => 'Telemóvel:',
  'LBL_HOME_PHONE' => 'Telefone de Casa:',
  'LBL_OTHER_PHONE' => 'Outro Telefone:',
  'LBL_PRIMARY_ADDRESS_STREET' => 'Rua do Endereço Principal:',
  'LBL_PRIMARY_ADDRESS_CITY' => 'Cidade do Endereço Principal:',
  'LBL_PRIMARY_ADDRESS_COUNTRY' => 'País do Endereço Principal:',
  'LBL_PRIMARY_ADDRESS_STATE' => 'Estado do Endereço Principal:',
  'LBL_PRIMARY_ADDRESS_POSTALCODE' => 'Código Postal do Endereço Principal:',
  'LBL_ALT_ADDRESS_STREET' => 'Rua do Endereço Alternativo:',
  'LBL_ALT_ADDRESS_CITY' => 'Cidade do Endereço Alternativo:',
  'LBL_ALT_ADDRESS_COUNTRY' => 'País do Endereço Alternativo:',
  'LBL_ALT_ADDRESS_STATE' => 'Estado do Endereço Alternativo:',
  'LBL_ALT_ADDRESS_POSTALCODE' => 'Código Postal do Endereço Alternativo:',
  'LBL_TITLE' => 'Cargo:',
  'LBL_DEPARTMENT' => 'Departamento:',
  'LBL_BIRTHDATE' => 'Data de Nascimento:',
  'LBL_EMAIL_ADDRESS' => 'E-mail:',
  'LBL_OTHER_EMAIL_ADDRESS' => 'Outro E-mail:',
  'LBL_ANY_EMAIL' => 'Outro E-mail qualquer:',
  'LBL_ASSISTANT' => 'Assistente:',
  'LBL_ASSISTANT_PHONE' => 'Telefone do Assistente:',
  'LBL_DO_NOT_CALL' => 'Não Telefonar:',
  'LBL_EMAIL_OPT_OUT' => 'Não Deseja receber E-mails:',
  'LBL_PRIMARY_ADDRESS' => 'Endereço Principal:',
  'LBL_ALTERNATE_ADDRESS' => 'Endereço Alternativo:',
  'LBL_ANY_ADDRESS' => 'Outro Endereço:',
  'LBL_CITY' => 'Cidade:',
  'LBL_STATE' => 'Estado:',
  'LBL_POSTAL_CODE' => 'Código Postal:',
  'LBL_COUNTRY' => 'País:',
  'LBL_DESCRIPTION_INFORMATION' => 'Informação de Descrição',
  'LBL_ADDRESS_INFORMATION' => 'Informação de Endereço',
  'LBL_DESCRIPTION' => 'Descrição:',
  'LBL_PROSPECT_ROLE' => 'Função:',
  'LBL_OPP_NAME' => 'Nome da Oportunidade:',
  'LBL_IMPORT_VCARD' => 'Importar a partir de vCard',
  'LBL_IMPORT_VCARDTEXT' => 'Criar novo contacto automaticamente ao importar um vCard dos seus ficheiros',
  'LBL_DUPLICATE' => 'Targets Possivelmente Duplicados',
  'MSG_SHOW_DUPLICATES' => 'Ao criar este contacto pode estar a duplicar um registo. Poderá clicar em Criar Contacto para continuar ou escolher Cancelar.',
  'MSG_DUPLICATE' => 'Ao criar este contacto pode duplicar um registo. Poderá seleccionar um contacto da lista abaixo ou clicar em Criar Contacto para continuar a criar o mesmo com os dados introduzidos previamente.',
  'LNK_IMPORT_VCARD' => 'Criar a partir de um vCard',
  'LNK_NEW_ACCOUNT' => 'Criar Nova Entidade',
  'LNK_NEW_OPPORTUNITY' => 'Criar Nova Oportunidade',
  'LNK_NEW_CASE' => 'Criar Nova Ocorrência',
  'LNK_NEW_NOTE' => 'Criar Nova Nota',
  'LNK_NEW_CALL' => 'Agendar Nova Chamada Telefónica',
  'LNK_NEW_EMAIL' => 'Arquivar E-mail',
  'LNK_NEW_MEETING' => 'Agendar Nova Reunião',
  'LNK_NEW_TASK' => 'Criar Nova Tarefa',
  'LNK_NEW_APPOINTMENT' => 'Criar Novo Compromisso',
  'LNK_IMPORT_PROSPECTS' => 'Importar Prospectos',
  'NTC_DELETE_CONFIRMATION' => 'Tem a certeza de que pretende eliminar este registo?',
  'NTC_REMOVE_CONFIRMATION' => 'Tem a certeza de que pretende remover este contacto desta ocorrência?',
  'NTC_REMOVE_DIRECT_REPORT_CONFIRMATION' => 'Tem a certeza de que pretende remover este registo como um relatório directo?',
  'ERR_DELETE_RECORD' => 'Um número de registo deve ser especificado para excluir o contacto.',
  'NTC_COPY_PRIMARY_ADDRESS' => 'Copiar o endereço principal para endereço alternativo',
  'NTC_COPY_ALTERNATE_ADDRESS' => 'Copiar endereço alternativo para endereço principal',
  'LBL_SALUTATION' => 'Saudação',
  'LBL_SAVE_PROSPECT' => 'Gravar o Target',
  'LBL_CREATED_OPPORTUNITY' => 'Criada uma nova oportunidade',
  'NTC_OPPORTUNITY_REQUIRES_ACCOUNT' => 'Criar uma Oportunidade requer uma Entidade.\\n Por favor, cria uma nova ou seleccione uma existente.',
  'LNK_SELECT_ACCOUNT' => 'Seleccionar uma Entidade',
  'LNK_NEW_PROSPECT' => 'Novo Target',
  'LNK_PROSPECT_LIST' => 'Targets',
  'LNK_NEW_CAMPAIGN' => 'Criar Nova Campanha',
  'LNK_CAMPAIGN_LIST' => 'Campanhas',
  'LNK_NEW_PROSPECT_LIST' => 'Nova Lista de Targets',
  'LNK_PROSPECT_LIST_LIST' => 'Listas de Targets',
  'LNK_IMPORT_PROSPECT' => 'Importar Targets',
  'LBL_SELECT_CHECKED_BUTTON_LABEL' => 'Seleccionar Targets Marcados',
  'LBL_SELECT_CHECKED_BUTTON_TITLE' => 'Seleccionar Targets Marcados',
  'LBL_INVALID_EMAIL' => 'E-mail Inválido:',
  'LBL_PROSPECT_LIST' => 'Lista de Potenciais Clientes',
  'LBL_CONVERT_BUTTON_TITLE' => 'Converter Target',
  'LBL_CONVERT_BUTTON_LABEL' => 'Converter Target',
  'LBL_CONVERTPROSPECT' => 'Converter Target',
  'LNK_NEW_CONTACT' => 'Novo Contacto',
  'LBL_CREATED_CONTACT' => 'Criado um novo contacto',
  'LBL_BACKTO_PROSPECTS' => 'Voltar aos Targets',
  'LBL_CAMPAIGNS' => 'Campanhas',
  'LBL_CAMPAIGN_LIST_SUBPANEL_TITLE' => 'Registo de Campanha',
  'LBL_LEAD_ID' => 'Id da Lead',
  'LBL_CONVERTED_LEAD' => 'Lead Convertida',
  'LBL_ACCOUNT_NAME' => 'Nome da Entidade',
  'LBL_EDIT_ACCOUNT_NAME' => 'Nome da Entidade:',
  'LBL_CREATED_USER' => 'Utilizador Criado',
  'LBL_MODIFIED_USER' => 'Utilizador Modificado',
  'LBL_CAMPAIGNS_SUBPANEL_TITLE' => 'Campanhas',
  'LBL_HISTORY_SUBPANEL_TITLE' => 'Histórico',
);


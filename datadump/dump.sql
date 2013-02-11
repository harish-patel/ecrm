-- MySQL dump 10.11
--
-- Host: localhost    Database: ecrm
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `account_type` varchar(50) default NULL,
  `industry` varchar(50) default NULL,
  `annual_revenue` varchar(100) default NULL,
  `phone_fax` varchar(100) default NULL,
  `billing_address_street` varchar(150) default NULL,
  `billing_address_city` varchar(100) default NULL,
  `billing_address_state` varchar(100) default NULL,
  `billing_address_postalcode` varchar(20) default NULL,
  `billing_address_country` varchar(255) default NULL,
  `rating` varchar(100) default NULL,
  `phone_office` varchar(100) default NULL,
  `phone_alternate` varchar(100) default NULL,
  `website` varchar(255) default NULL,
  `ownership` varchar(100) default NULL,
  `employees` varchar(10) default NULL,
  `ticker_symbol` varchar(10) default NULL,
  `shipping_address_street` varchar(150) default NULL,
  `shipping_address_city` varchar(100) default NULL,
  `shipping_address_state` varchar(100) default NULL,
  `shipping_address_postalcode` varchar(20) default NULL,
  `shipping_address_country` varchar(255) default NULL,
  `parent_id` char(36) default NULL,
  `sic_code` varchar(10) default NULL,
  `campaign_id` char(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_accounts_tmst_id` (`team_set_id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('f1534f3b-7b78-69b9-7524-51066491d80c','test','2013-01-28 11:45:26','2013-01-28 11:45:26','1','1',NULL,0,'1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_accounts_primary` (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) default NULL,
  `bug_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) default NULL,
  `case_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) default NULL,
  `account_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) default NULL,
  `account_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(150) default NULL,
  `category` varchar(100) default NULL,
  `acltype` varchar(100) default NULL,
  `aclaccess` int(3) default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('3106018a-6d48-4e0d-817b-50f7da6ad757','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Leads','module',1,0),('3e57d5d8-4af6-5123-9634-50f7da05fd4e','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Leads','module',89,0),('46e53dac-24c7-4cb5-3a1d-50f7da9541dd','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Leads','module',90,0),('511ab2be-f596-dfdf-43d1-50f7daf132dc','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Leads','module',90,0),('5aa10b67-6abf-8416-7cab-50f7dab99dfd','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Leads','module',90,0),('6076505e-8fc2-f354-ff2c-50f7da97e414','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Leads','module',90,0),('63edcc0d-b00e-8472-de58-50f7da42cee1','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Leads','module',90,0),('67b0c7ff-031f-c545-240d-50f7daef841c','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Leads','module',90,0),('a40e415d-7f01-2b7f-1060-50f7dafa9e12','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Cases','module',1,0),('a756db0d-4e3e-3d73-9c14-50f7dad839ca','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Cases','module',89,0),('aab9578e-3e2c-6aba-ed59-50f7dae92379','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Cases','module',90,0),('adff5786-d446-c286-1cc3-50f7da952131','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Cases','module',90,0),('b20aee2d-c493-8f6f-4f32-50f7da5f0308','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Cases','module',90,0),('b55a2cb2-53fd-db04-e596-50f7daacd1cb','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Cases','module',90,0),('b8c377ea-00ac-4869-bdda-50f7da913406','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Cases','module',90,0),('bc129934-1ba2-6716-2eea-50f7da3c71dc','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Cases','module',90,0),('e843d2de-b9de-d031-5766-50f7da429411','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Bugs','module',1,0),('ec27bfab-0dc9-0188-341a-50f7da206099','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Bugs','module',89,0),('f05ac1a4-de71-102d-8f4f-50f7da330347','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Bugs','module',90,0),('7d300eb1-0990-e58a-a196-50f7da045ee4','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Bugs','module',90,0),('4b130941-c125-4c8b-70c3-50f7dad5c170','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Bugs','module',90,0),('a7be0ae1-3bb0-9bda-d125-50f7da15a630','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Bugs','module',90,0),('ec7701c1-3e91-2cc2-6641-50f7daec2aaa','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Bugs','module',90,0),('12f08222-d943-d49a-2fe0-50f7da9c4bb7','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Bugs','module',90,0),('5ae6e49d-a0fd-0f9c-18e1-50f7da87f167','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Users','module',1,0),('5e366e8f-77f9-53ee-14fc-50f7dabaf7fd','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Users','module',89,0),('619d9fa8-55b6-0db8-72d7-50f7da2355e7','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Users','module',90,0),('66a5f5dd-8144-da6b-49da-50f7da643771','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Users','module',90,0),('6c470de8-905d-4b08-5d21-50f7da680882','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Users','module',90,0),('70066817-f532-49cf-3c7a-50f7daf6586b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Users','module',90,0),('7591e603-9c15-2103-3945-50f7da526f1d','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Users','module',90,0),('7c387612-5008-189d-5fcb-50f7da7b4d60','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Users','module',90,0),('b2905cfe-341e-c9bd-5101-50f7da23a270','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Project','module',1,0),('b823544f-63c0-c5ca-075c-50f7da9fd0f6','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Project','module',89,0),('bd78ec13-b1cd-514d-a981-50f7dab5d8df','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Project','module',90,0),('c2b00cf5-6f98-61f9-932a-50f7da26e2d5','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Project','module',90,0),('c841359b-57ed-5eab-06d3-50f7da7e01d2','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Project','module',90,0),('ce44e3bf-3a16-ac50-7e16-50f7da14ae72','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Project','module',90,0),('d3c47ce5-6bb7-9987-d3df-50f7da9e8901','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Project','module',90,0),('d91a9b39-ba92-1b46-ef88-50f7da9ca5b7','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Project','module',90,0),('1824e1e6-ef4e-8be7-4ec1-50f7dacdbe35','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','ProjectTask','module',1,0),('1d547b09-3e44-0f97-b1ca-50f7da21c7a6','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','ProjectTask','module',89,0),('22da89b1-c585-165e-e05b-50f7dafb1039','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','ProjectTask','module',90,0),('28439513-b70a-38b2-0845-50f7da4d358c','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','ProjectTask','module',90,0),('2dd72679-1c59-54c6-64ed-50f7dadb8aaa','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','ProjectTask','module',90,0),('334f37bd-c4c0-dd38-8bfd-50f7dae15128','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','ProjectTask','module',90,0),('39172859-c52c-93f8-ed93-50f7dae28144','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','ProjectTask','module',90,0),('3ea3e437-e75f-48c5-fd45-50f7da114e96','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','ProjectTask','module',90,0),('6958c742-cb15-aa7a-586f-50f7da59cfde','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Campaigns','module',1,0),('6d000344-a026-5291-82de-50f7da67f551','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Campaigns','module',89,0),('7091835c-ced8-814c-a305-50f7da392577','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Campaigns','module',90,0),('7418f27c-93fd-111f-9e9f-50f7da272d21','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Campaigns','module',90,0),('77b8b700-636d-ee02-df50-50f7da53af5b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Campaigns','module',90,0),('7b053237-a0fb-9f86-b9e1-50f7da8d89fb','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Campaigns','module',90,0),('7e6dcb74-288b-a127-3d18-50f7da361867','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Campaigns','module',90,0),('837b5096-c9f6-6ed9-0c19-50f7da7a571d','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Campaigns','module',90,0),('b1c315ce-0ce2-adfe-5c52-50f7dae6f344','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','ProspectLists','module',1,0),('b5c6bd63-e644-bcf7-91af-50f7dab48258','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','ProspectLists','module',89,0),('b96eeb91-639c-c647-40c4-50f7da9b9857','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','ProspectLists','module',90,0),('bd42cfe9-6f7b-d63a-22a3-50f7da315cab','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','ProspectLists','module',90,0),('c0d5ef38-44d8-6192-04e0-50f7da13be0b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','ProspectLists','module',90,0),('c44caa12-a490-0aa9-e2e2-50f7da8b71a3','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','ProspectLists','module',90,0),('c80f47fd-e3b3-b930-3be9-50f7dafa87c3','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','ProspectLists','module',90,0),('cb8cebb2-4b27-0030-77bc-50f7da34f8e9','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','ProspectLists','module',90,0),('edd61ba4-85bc-28fe-2e61-50f7da5dde27','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Prospects','module',1,0),('f15231b1-34c4-74d4-0400-50f7dae14fd7','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Prospects','module',89,0),('cfc00817-d274-d562-c34f-50f7da9c27e5','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Prospects','module',90,0),('423f04e2-93f1-a901-2714-50f7daae7b8b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Prospects','module',90,0),('908d0238-2091-de24-cf09-50f7da9e4500','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Prospects','module',90,0),('c7020a7c-5dff-ac9d-76f4-50f7da013f7d','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Prospects','module',90,0),('101ef03b-f8b2-ef5f-4b7a-50f7da6742c3','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Prospects','module',90,0),('139f1aee-918e-3fd6-a99f-50f7dacec563','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Prospects','module',90,0),('452d1fb6-9cfe-3016-6fbe-50f7da11500a','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','EmailMarketing','module',1,0),('487a9b36-c0c0-0f38-0595-50f7da60067e','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','EmailMarketing','module',89,0),('4c48e636-cce4-017e-d93c-50f7daf1ec27','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','EmailMarketing','module',90,0),('511fed56-8c55-6fba-e36e-50f7da5ef880','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','EmailMarketing','module',90,0),('54f5e89c-d0f1-a559-46a3-50f7da03e087','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','EmailMarketing','module',90,0),('585f17fb-3ac0-eefc-fbfc-50f7da744195','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','EmailMarketing','module',90,0),('5bcf1a18-9309-21c9-9b5b-50f7da0f6da2','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','EmailMarketing','module',90,0),('5f5ff6b9-1e70-c1c2-d337-50f7dadaefc1','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','EmailMarketing','module',90,0),('2b8b465c-af19-bdd7-f28d-50f7daa998de','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Contacts','module',1,0),('2f376f02-66a9-9724-c985-50f7dafa243a','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Contacts','module',89,0),('32a2dbf3-5d40-ae76-b4fb-50f7da13a0f4','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Contacts','module',90,0),('35f8958e-16a0-0b47-bb9d-50f7dacf5240','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Contacts','module',90,0),('39653c61-9e24-73f8-92d8-50f7dac4fcc8','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Contacts','module',90,0),('3cb79fe4-50e4-e41c-09ae-50f7dac89c1b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Contacts','module',90,0),('404a028d-96bc-5a2c-5dfe-50f7da422ff7','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Contacts','module',90,0),('439f0b3d-0385-a909-53d2-50f7da9c2bc1','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Contacts','module',90,0),('7a85a279-3056-c083-d399-50f7dab51354','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Accounts','module',1,0),('7e56af18-e2e0-c35e-71fd-50f7da0e2434','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Accounts','module',89,0),('81a6a922-64b2-0965-c799-50f7da62c22b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Accounts','module',90,0),('851a564b-d8dc-03c7-d432-50f7dacba87a','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Accounts','module',90,0),('8907fdb9-b429-622a-b7bb-50f7da6d107f','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Accounts','module',90,0),('8e360944-3848-27ce-4aeb-50f7dad6f780','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Accounts','module',90,0),('943c4c17-62c3-4ede-ce73-50f7da7fcd15','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Accounts','module',90,0),('9a1b298b-5bb4-c6b8-382f-50f7dafebe8f','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Accounts','module',90,0),('d7a1c14c-11d8-d005-9e59-50f7daa7f305','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Opportunities','module',1,0),('db644323-3313-f6e2-7c19-50f7dada220e','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Opportunities','module',89,0),('def4e860-c334-c66d-fb6e-50f7da53d407','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Opportunities','module',90,0),('e27e648a-3677-b6d3-25de-50f7da6c1b12','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Opportunities','module',90,0),('e605d120-e52f-718e-4152-50f7da8c6d11','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Opportunities','module',90,0),('e99b9770-4e98-0346-b0b5-50f7da3005a6','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Opportunities','module',90,0),('ed499376-9d63-23c7-836c-50f7da58afd6','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Opportunities','module',90,0),('f10f8c7f-1039-049b-0449-50f7dad4e74b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Opportunities','module',90,0),('6deafc10-e3a2-1e82-62ab-50f7da01e59d','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','EmailTemplates','module',1,0),('715be27d-569d-2f00-d306-50f7dabcf551','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','EmailTemplates','module',89,0),('74d16f6e-aebd-b852-63ea-50f7da5e9da5','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','EmailTemplates','module',90,0),('786daae3-9843-dc7d-8948-50f7da255abf','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','EmailTemplates','module',90,0),('7c1a9f0f-d2dd-98ed-dc14-50f7da845a8a','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','EmailTemplates','module',90,0),('7fb369ff-f372-642c-4a51-50f7da49b5a2','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','EmailTemplates','module',90,0),('8316c549-677f-fde4-cf64-50f7da5c53c0','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','EmailTemplates','module',90,0),('869cda72-6894-d326-9c06-50f7da12090f','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','EmailTemplates','module',90,0),('9e91fd37-c2cb-a6df-7d9e-50f7da53a328','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Notes','module',1,0),('a1f7bad9-7dbb-92ef-eeef-50f7dad94cc7','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Notes','module',89,0),('a5735c5c-8500-88f7-555d-50f7da6516e3','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Notes','module',90,0),('a8d5d55d-a86e-8443-eddc-50f7daf96122','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Notes','module',90,0),('ac84e1e4-58bd-5c59-82e2-50f7dafb74ae','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Notes','module',90,0),('afefc8e2-5c37-22f7-bfff-50f7da707dc9','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Notes','module',90,0),('b3902099-4575-d6a4-c7d2-50f7da1e7876','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Notes','module',90,0),('b6f48ab3-7604-dd07-8841-50f7da0e399a','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Notes','module',90,0),('e8689320-cd6e-cdae-5d13-50f7da3775f3','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Calls','module',1,0),('ebbc7016-0c15-80ed-e1d2-50f7da091899','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Calls','module',89,0),('ef563d68-eb92-eb49-ab22-50f7da13eabf','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Calls','module',90,0),('f2adce32-d782-140f-f686-50f7daf9735d','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Calls','module',90,0),('264807b1-1f3d-870b-aa73-50f7dac50497','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Calls','module',90,0),('60c40e8f-7fa0-3509-c419-50f7da8a0c58','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Calls','module',90,0),('98a60baa-9f7e-c72e-b489-50f7da80ca91','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Calls','module',90,0),('ce350cdb-8316-b91d-5707-50f7da92e6c5','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Calls','module',90,0),('36b3f613-6a25-b06c-1bf1-50f7dae97527','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Emails','module',1,0),('3b26c287-7a22-fb88-cb4f-50f7da17e4d1','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Emails','module',89,0),('3fc495e9-d346-6d80-f183-50f7dab69f05','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Emails','module',90,0),('43dea386-52e9-b268-a889-50f7daff64b4','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Emails','module',90,0),('477b2387-bc91-3695-bb68-50f7da7ed1e9','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Emails','module',90,0),('4c3ecf26-9467-87e6-0171-50f7da41e4c8','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Emails','module',90,0),('5055f879-1b17-d23d-def1-50f7da03635e','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Emails','module',90,0),('54a4e130-4890-9073-0ed6-50f7da7ee110','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Emails','module',90,0),('73aed953-4beb-138c-7848-50f7dab386bd','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Meetings','module',1,0),('77e03b19-a135-944f-a89b-50f7da8024ff','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Meetings','module',89,0),('7bec6cc1-d7af-ee56-d2db-50f7da53e6f1','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Meetings','module',90,0),('804c4879-5a54-1505-66dd-50f7da78e7ec','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Meetings','module',90,0),('84a0173d-5ce2-7d49-5fc4-50f7da99024d','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Meetings','module',90,0),('8873207a-bbc2-1197-4819-50f7da7b2ecb','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Meetings','module',90,0),('8c673336-da5d-70c9-7079-50f7da47cc61','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Meetings','module',90,0),('90f46725-60c2-205c-318c-50f7daffb185','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Meetings','module',90,0),('b7da298f-b3be-3f37-1eb4-50f7da0f6259','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Tasks','module',1,0),('bc26fceb-feb9-1d1e-d3eb-50f7da049ee9','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Tasks','module',89,0),('c028921f-ab4b-67ea-7c71-50f7dad4a6a1','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Tasks','module',90,0),('c44d16a5-f27a-48c6-0f4e-50f7da4a6b61','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Tasks','module',90,0),('c881b799-2cf1-29e5-14e6-50f7da3f6c9b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Tasks','module',90,0),('cd5acba7-b219-8a24-032a-50f7da31edd7','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Tasks','module',90,0),('d177d8c7-0d9e-b0e6-319e-50f7da731bd6','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Tasks','module',90,0),('d5549549-a10e-19a4-a1fa-50f7dab01f2c','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Tasks','module',90,0),('35793210-2578-9849-0f0e-50f7da937351','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','TrackerSessions','TrackerSession',-99,0),('3aac7f00-33bf-a7d1-4dbf-50f7dac9adac','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','TrackerSessions','TrackerSession',-99,0),('3e8ac61d-9d93-635b-e2b8-50f7dacc59d8','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','TrackerSessions','TrackerSession',-99,0),('439fdf46-e0fb-1b75-2ad4-50f7da9cc8b8','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','TrackerSessions','TrackerSession',-99,0),('4b5036c4-0de2-8f25-2c41-50f7da92ddee','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','TrackerSessions','TrackerSession',-99,0),('4edc2c60-386c-3bda-a1cc-50f7da8cff6e','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','TrackerSessions','TrackerSession',-99,0),('52969ea0-86f2-4fd3-40ba-50f7da54f798','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','TrackerSessions','TrackerSession',-99,0),('560cab3d-9cc2-dfac-438b-50f7daf028b3','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','TrackerSessions','TrackerSession',-99,0),('59c0f442-6c14-53b6-596b-50f7da28e1f0','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','TrackerPerfs','TrackerPerf',-99,0),('5d31ad8e-b817-270c-a36e-50f7daa536bc','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','TrackerPerfs','TrackerPerf',-99,0),('60a4ffd0-7322-54d3-fd8a-50f7da451462','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','TrackerPerfs','TrackerPerf',-99,0),('64177a23-5b2c-c646-1f25-50f7da11b27d','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','TrackerPerfs','TrackerPerf',-99,0),('678f09f5-246a-b605-b400-50f7da25476f','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','TrackerPerfs','TrackerPerf',-99,0),('6b420d1f-d3a5-aef7-d23a-50f7dacc1c14','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','TrackerPerfs','TrackerPerf',-99,0),('6ece00a1-111c-ec91-46d1-50f7da6f56c3','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','TrackerPerfs','TrackerPerf',-99,0),('72635ac7-98ea-9d0f-2140-50f7da80039f','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','TrackerPerfs','TrackerPerf',-99,0),('764d48e2-2efb-1a98-591c-50f7da1b8c0b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','TrackerQueries','TrackerQuery',-99,0),('79d8d8dc-2b64-3b18-cb56-50f7da04285d','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','TrackerQueries','TrackerQuery',-99,0),('7d64b433-2bd9-ced3-444d-50f7da57d7be','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','TrackerQueries','TrackerQuery',-99,0),('80f2f65e-4cad-8132-490e-50f7dae85e00','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','TrackerQueries','TrackerQuery',-99,0),('84e99ed1-c14e-0390-c4d5-50f7dadde214','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','TrackerQueries','TrackerQuery',-99,0),('8851204e-59a5-40a8-5697-50f7da262b34','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','TrackerQueries','TrackerQuery',-99,0),('8f30050b-66b5-c18f-ba3e-50f7dab33c9c','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','TrackerQueries','TrackerQuery',-99,0),('937c1da6-9a82-5261-4f0c-50f7da15f433','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','TrackerQueries','TrackerQuery',-99,0),('ac6bf13a-bd48-0983-6cb2-50f7da688030','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Trackers','Tracker',-99,0),('b06adc0f-30db-6378-fd47-50f7dab4a8c2','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Trackers','Tracker',-99,0),('b51fc2b2-70c5-b120-c711-50f7da6ff451','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Trackers','Tracker',-99,0),('ba226bbb-d398-9aa4-416b-50f7da2e6695','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Trackers','Tracker',-99,0),('bded9d93-883b-2b7d-e9fa-50f7daaad700','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Trackers','Tracker',-99,0),('c20e5431-a8e8-3da2-53ed-50f7dabda9ee','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Trackers','Tracker',-99,0),('c5f79fae-ee76-1f75-fd3c-50f7da31f6f5','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Trackers','Tracker',-99,0),('c9e1238a-f4b4-5dd6-2882-50f7dab12374','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Trackers','Tracker',-99,0),('ccd25611-85b4-0383-a90a-50f7daa7563e','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Documents','module',1,0),('d12e8bf6-b6a4-6954-d949-50f7dab57d27','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Documents','module',89,0),('d5afdf04-2cb6-dd25-42c0-50f7da6c9520','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Documents','module',90,0),('d9abb69d-b128-ed94-bff5-50f7da2cd770','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Documents','module',90,0),('ddfece5e-97de-6ad0-55c8-50f7da1274cf','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Documents','module',90,0),('e2442346-6c91-d77f-99ac-50f7da39d9e2','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Documents','module',90,0),('e67740b6-ecbe-9c7f-9b0c-50f7dae82a97','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Documents','module',90,0),('eacc05c2-5039-5f49-3ae1-50f7da549485','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Documents','module',90,0),('6e635eaa-218e-aba0-aa12-50f7daba8bb6','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Reports','module',1,0),('759fd051-b716-8fc4-1746-50f7da8f3157','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Reports','module',89,0),('7d3c8f6c-788c-752d-36da-50f7da20b187','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Reports','module',90,0),('8477f1ad-5f04-6aab-4588-50f7dac3ab14','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Reports','module',90,0),('8b9e7deb-05d3-0435-cb54-50f7daa3f888','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Reports','module',90,0),('933ea969-3a90-2ac4-8d77-50f7daea8819','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Reports','module',90,0),('98788269-8af6-9f2f-d72d-50f7dab2aed9','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Reports','module',90,0),('9be1f14a-2caf-03ea-55b9-50f7da55fed4','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Reports','module',90,0),('dafcc951-dc37-d46a-8778-50f7da1cbbd5','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Contracts','module',1,0),('def5ac62-216f-c858-dea1-50f7da23e7f2','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Contracts','module',89,0),('e280a53a-721f-487d-43b5-50f7da16cc7e','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Contracts','module',90,0),('e5d0387e-4ce2-0d5d-ddf2-50f7da820656','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Contracts','module',90,0),('e931f5d5-cc61-abe3-0302-50f7da91b2d1','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Contracts','module',90,0),('ec85f5bf-4eaf-d231-3d49-50f7dafd6b6a','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Contracts','module',90,0),('efd71771-7c60-63ac-a5c6-50f7da08320f','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Contracts','module',90,0),('f337c48b-d830-1d92-c3f9-50f7da6e3247','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Contracts','module',90,0),('d44be2a1-4621-4a9a-761f-50f7dab24aaa','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Quotes','module',1,0),('d7c6c0ed-b676-1577-b17d-50f7da6f651e','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Quotes','module',89,0),('db4215c9-9f45-f11c-aa09-50f7dadc0c97','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Quotes','module',90,0),('ded50025-249e-d460-03dc-50f7da93ad33','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Quotes','module',90,0),('e25529b3-d261-4fe3-1652-50f7da702acb','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Quotes','module',90,0),('e5c96ef0-e2fa-8ed0-c062-50f7dacec34b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Quotes','module',90,0),('e9ddb565-fee2-fdaf-5354-50f7da652a4e','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Quotes','module',90,0),('ed5d6064-81b7-2968-3db5-50f7dabf6c84','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Quotes','module',90,0),('3b24f827-14f8-9c0c-e1ec-50f7da5f131e','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Products','module',1,0),('3edeb661-7531-8779-94d8-50f7dae29255','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Products','module',89,0),('42431446-582c-ffc1-21d6-50f7da9b4cb9','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Products','module',90,0),('45b4de3d-4792-4ffe-9c4d-50f7da250e1e','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Products','module',90,0),('493c6c93-1bb1-fff9-e4e3-50f7da2f00c0','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Products','module',90,0),('4cdc1c73-7534-dfcb-8bd8-50f7da73f26d','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Products','module',90,0),('51283a4f-8bb2-cff7-bc14-50f7da832b11','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Products','module',90,0),('5482a7bd-092c-9a65-e274-50f7da2bbb14','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Products','module',90,0),('2710e7e1-a2bb-6f5c-ec2c-50f7da3d881b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Forecasts','module',1,0),('2df25d8e-d0c3-5d0b-d29a-50f7da48c815','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Forecasts','module',89,0),('350b47a4-7bd9-362b-1c7e-50f7dad7eb81','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Forecasts','module',90,0),('3bfe2e9b-f7bd-576a-4761-50f7da4e1461','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Forecasts','module',90,0),('4359dee5-d3ea-1da0-3087-50f7da425a9c','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Forecasts','module',90,0),('4a203aba-e6c3-6660-aa83-50f7da6e55fb','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Forecasts','module',90,0),('4ec66e4d-5001-0325-843a-50f7da9a92f7','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Forecasts','module',90,0),('52403d28-da85-9f60-0aaa-50f7da0bc5d0','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Forecasts','module',90,0),('82e16a40-b770-3ba6-f450-50f7da4679f1','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','ForecastSchedule','module',1,0),('8831a124-33c9-ca74-c995-50f7da7555c2','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','ForecastSchedule','module',89,0),('8d06f6e9-9d47-c32c-c9a7-50f7dac97827','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','ForecastSchedule','module',90,0),('907ac0d3-aa7c-9503-7a77-50f7da68be16','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','ForecastSchedule','module',90,0),('94598774-032f-7847-df50-50f7daab6bf5','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','ForecastSchedule','module',90,0),('97c6c521-5d56-4c29-4d46-50f7da5c5e98','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','ForecastSchedule','module',90,0),('9b7f657e-bb26-0cf0-cdac-50f7da4be26b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','ForecastSchedule','module',90,0),('9ee62a6c-c6b8-176c-cb12-50f7daa11c53','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','ForecastSchedule','module',90,0),('56d76c87-0b72-76da-2db1-50f7da5b3330','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','KBDocuments','module',1,0),('5a398197-febb-d796-632c-50f7da24b772','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','KBDocuments','module',89,0),('5db02f8c-4ee7-1c19-aa68-50f7da07f8ea','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','KBDocuments','module',90,0),('6158b2f0-ee89-6bcb-0e6b-50f7da6f3e75','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','KBDocuments','module',90,0),('64f7b986-8fa3-6823-00d3-50f7da682467','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','KBDocuments','module',90,0),('68570f5d-a126-ba1c-84d5-50f7da137065','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','KBDocuments','module',90,0),('6bbbb2a6-52af-fdd9-0458-50f7dafa3132','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','KBDocuments','module',90,0),('6f1b709a-822c-098d-5b45-50f7da62404d','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','KBDocuments','module',90,0),('78e6510b-a426-502d-6713-50f7da11d0a0','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','Notifications','module',1,0),('7c5e5a7c-21a2-d139-f925-50f7da350c0d','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','Notifications','module',89,0),('7fee8b91-04fa-b1de-59ac-50f7da7a8881','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','Notifications','module',90,0),('836edd05-8fa0-8c41-1fd7-50f7dab72f68','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','Notifications','module',90,0),('86db7d81-641c-e3a0-47d5-50f7da0303fd','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','Notifications','module',90,0),('8a57f3cb-0a77-d246-29a2-50f7dafa7ae4','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','Notifications','module',90,0),('8dcf845f-6521-b00e-b81b-50f7da71f948','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','Notifications','module',90,0),('913f99d2-b359-5bae-e0bd-50f7da4cd6dc','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','Notifications','module',90,0),('c93e5b12-c404-0aa5-4ab9-50f7dab77196','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'admin','EAPM','module',1,0),('cdf3a82a-d1b2-538f-fa8c-50f7da31639b','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'access','EAPM','module',89,0),('d24e1078-6e4b-c3e3-c7e9-50f7da6c3d86','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'view','EAPM','module',90,0),('d6f0c497-981b-4473-2be7-50f7dabf9ca8','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'list','EAPM','module',90,0),('db45a967-94ba-a834-7bad-50f7daa8a0dc','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'edit','EAPM','module',90,0),('df9ec892-5cd7-cd02-525b-50f7dabce535','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'delete','EAPM','module',90,0),('e3fbad14-f579-445d-cb93-50f7dabb8e10','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'import','EAPM','module',90,0),('e89d1de8-f2c5-4cde-86e8-50f7da7710da','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'export','EAPM','module',90,0),('c04ee3be-ce7d-4520-584e-5110d0f7f5b2','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','admin','ed_Department','module',1,0),('c9188cbc-be03-6582-eb4d-5110d0013a23','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','access','ed_Department','module',89,0),('cab14712-2ada-f3a8-4715-5110d01457d4','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','view','ed_Department','module',90,0),('cc488874-d491-1bc0-c27a-5110d0d637fa','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','list','ed_Department','module',90,0),('cdd98bea-e0a3-c506-ee93-5110d05419a2','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','edit','ed_Department','module',90,0),('cf58f033-e311-f975-8fcf-5110d0b39c1f','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','delete','ed_Department','module',90,0),('d0e3cfa9-c941-ba67-d9e9-5110d094a8f3','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','import','ed_Department','module',90,0),('d278066e-4ef8-8901-e1a6-5110d01a128d','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','export','ed_Department','module',90,0),('98f4379f-c657-8367-b965-5110d06ac786','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','admin','ed_Employee','module',1,0),('9aaa17d8-b114-39f1-93a2-5110d0b0f8c7','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','access','ed_Employee','module',89,0),('9c695169-e0e4-9ea9-741a-5110d0204bfc','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','view','ed_Employee','module',90,0),('9e1adcd9-5128-0ef3-b504-5110d0a1ae86','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','list','ed_Employee','module',90,0),('9fdd4da2-2e59-e016-b6c9-5110d0734290','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','edit','ed_Employee','module',90,0),('a1c0afd6-2dd8-64b1-ad32-5110d00bf8e0','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','delete','ed_Employee','module',90,0),('a365fe2f-ba9c-a8a2-bf10-5110d0e72ef5','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','import','ed_Employee','module',90,0),('a4d3c37b-305f-8f66-7434-5110d001f2fd','2013-02-05 09:28:46','2013-02-05 09:28:46','1','1','export','ed_Employee','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_fields`
--

DROP TABLE IF EXISTS `acl_fields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `acl_fields` (
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(150) default NULL,
  `category` varchar(100) default NULL,
  `aclaccess` int(3) default NULL,
  `deleted` tinyint(1) default '0',
  `role_id` char(36) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_aclfield_role_del` (`role_id`,`category`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `acl_fields`
--

LOCK TABLES `acl_fields` WRITE;
/*!40000 ALTER TABLE `acl_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(150) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
INSERT INTO `acl_roles` VALUES ('48c8d2b9-a113-0bbb-ad25-50f7da1eec18','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'Tracker','Tracker Role',0),('7f647a34-8c17-22c3-f2ec-50f7da28cd09','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'Sales Administrator','Sales Administrator Role',0),('89a3681e-9497-56d8-d594-50f7da483724','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'Marketing Administrator','Marketing Administrator Role',0),('948ffcc1-232e-fd48-73d4-50f7da3e6266','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'Customer Support Administrator','Customer Support Administrator Role',0);
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) default NULL,
  `action_id` varchar(36) default NULL,
  `access_override` int(3) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
INSERT INTO `acl_roles_actions` VALUES ('4c4e894a-fda6-f548-4bde-50f7da028cc4','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','ac6bf13a-bd48-0983-6cb2-50f7da688030',1,'2013-01-17 11:01:56',0),('5a874d4c-9196-4028-c612-50f7da21626d','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','b06adc0f-30db-6378-fd47-50f7dab4a8c2',89,'2013-01-17 11:01:56',0),('62ebae81-d486-f676-d355-50f7dacbfe72','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','b51fc2b2-70c5-b120-c711-50f7da6ff451',90,'2013-01-17 11:01:56',0),('64ce3278-b0cc-a385-43c0-50f7dafb587e','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','ba226bbb-d398-9aa4-416b-50f7da2e6695',90,'2013-01-17 11:01:56',0),('6567c9f7-3c3d-5807-8de1-50f7da09e75e','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','bded9d93-883b-2b7d-e9fa-50f7daaad700',90,'2013-01-17 11:01:56',0),('660e3178-55ba-fbdc-a220-50f7daff35fc','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','c20e5431-a8e8-3da2-53ed-50f7dabda9ee',90,'2013-01-17 11:01:56',0),('669e7298-5025-0ff1-d776-50f7daaeea15','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','c5f79fae-ee76-1f75-fd3c-50f7da31f6f5',90,'2013-01-17 11:01:56',0),('67395979-aee4-87ba-21b1-50f7da00115b','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','c9e1238a-f4b4-5dd6-2882-50f7dab12374',90,'2013-01-17 11:01:56',0),('67d2e272-2b42-2386-544f-50f7da1123c4','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','764d48e2-2efb-1a98-591c-50f7da1b8c0b',1,'2013-01-17 11:01:56',0),('6874daa8-73eb-31e8-f7c3-50f7da226134','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','79d8d8dc-2b64-3b18-cb56-50f7da04285d',89,'2013-01-17 11:01:56',0),('6903f5f6-6e9e-b1ce-ab40-50f7daa981e7','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','7d64b433-2bd9-ced3-444d-50f7da57d7be',90,'2013-01-17 11:01:56',0),('699fe066-19dc-daf2-70e1-50f7dacb9722','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','80f2f65e-4cad-8132-490e-50f7dae85e00',90,'2013-01-17 11:01:56',0),('6ace0d4d-6e37-e7c1-4c79-50f7da0cf105','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','84e99ed1-c14e-0390-c4d5-50f7dadde214',90,'2013-01-17 11:01:56',0),('6c14e228-11b8-90b9-9f64-50f7daef4b60','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','8851204e-59a5-40a8-5697-50f7da262b34',90,'2013-01-17 11:01:56',0),('6d759a01-1231-33bc-1715-50f7da4b9699','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','8f30050b-66b5-c18f-ba3e-50f7dab33c9c',90,'2013-01-17 11:01:56',0),('6ebf0b14-515b-fa57-329c-50f7daf451dc','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','937c1da6-9a82-5261-4f0c-50f7da15f433',90,'2013-01-17 11:01:56',0),('70073731-9f53-e267-4f5a-50f7da723e9a','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','59c0f442-6c14-53b6-596b-50f7da28e1f0',1,'2013-01-17 11:01:56',0),('715169f3-64c8-777e-650c-50f7da39b282','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','5d31ad8e-b817-270c-a36e-50f7daa536bc',89,'2013-01-17 11:01:56',0),('72a6cd34-96df-edaa-e590-50f7dad41c83','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','60a4ffd0-7322-54d3-fd8a-50f7da451462',90,'2013-01-17 11:01:56',0),('740b14af-ff6f-7d57-ca48-50f7dadeb57e','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','64177a23-5b2c-c646-1f25-50f7da11b27d',90,'2013-01-17 11:01:56',0),('74a03045-8cc9-b6e6-0fb1-50f7da6425ea','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','678f09f5-246a-b605-b400-50f7da25476f',90,'2013-01-17 11:01:56',0),('7519a2f9-1caa-65d7-b2fe-50f7da54e06b','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','6b420d1f-d3a5-aef7-d23a-50f7dacc1c14',90,'2013-01-17 11:01:56',0),('7596c893-016a-9eb3-bdfa-50f7da1feaab','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','6ece00a1-111c-ec91-46d1-50f7da6f56c3',90,'2013-01-17 11:01:56',0),('7615ef4c-5027-7233-ae76-50f7dae70567','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','72635ac7-98ea-9d0f-2140-50f7da80039f',90,'2013-01-17 11:01:56',0),('76afd51e-99d9-5062-e5a7-50f7dafe9669','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','35793210-2578-9849-0f0e-50f7da937351',1,'2013-01-17 11:01:56',0),('7738c00a-2d45-63cd-4606-50f7dacdba94','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','3aac7f00-33bf-a7d1-4dbf-50f7dac9adac',89,'2013-01-17 11:01:56',0),('77ba8e70-38e7-b917-9c4e-50f7da2881d2','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','3e8ac61d-9d93-635b-e2b8-50f7dacc59d8',90,'2013-01-17 11:01:56',0),('783d43b6-1bbc-3b4a-06e6-50f7da427941','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','439fdf46-e0fb-1b75-2ad4-50f7da9cc8b8',90,'2013-01-17 11:01:56',0),('78ba3143-295b-1ac5-f464-50f7daa2db38','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','4b5036c4-0de2-8f25-2c41-50f7da92ddee',90,'2013-01-17 11:01:56',0),('793d1ea8-115b-fa7b-748f-50f7da0dc3b1','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','4edc2c60-386c-3bda-a1cc-50f7da8cff6e',90,'2013-01-17 11:01:56',0),('79b72c0f-2f54-76b5-2687-50f7da34267d','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','52969ea0-86f2-4fd3-40ba-50f7da54f798',90,'2013-01-17 11:01:56',0),('7a32271b-d9be-0c2e-48de-50f7da0ee92c','48c8d2b9-a113-0bbb-ad25-50f7da1eec18','560cab3d-9cc2-dfac-438b-50f7daf028b3',90,'2013-01-17 11:01:56',0),('81fde03d-51c2-18bd-a1b9-50f7da562ef0','7f647a34-8c17-22c3-f2ec-50f7da28cd09','7a85a279-3056-c083-d399-50f7dab51354',100,'2013-01-17 11:01:56',0),('832a6158-7f53-e6bf-2e7b-50f7da79fb19','7f647a34-8c17-22c3-f2ec-50f7da28cd09','7e56af18-e2e0-c35e-71fd-50f7da0e2434',89,'2013-01-17 11:01:56',0),('83a693d7-0bbb-8080-7c9b-50f7da81ed1d','7f647a34-8c17-22c3-f2ec-50f7da28cd09','2b8b465c-af19-bdd7-f28d-50f7daa998de',100,'2013-01-17 11:01:56',0),('84237068-ecdc-9427-382b-50f7da2a8709','7f647a34-8c17-22c3-f2ec-50f7da28cd09','2f376f02-66a9-9724-c985-50f7dafa243a',89,'2013-01-17 11:01:56',0),('849fe9e3-c2fa-3efc-7997-50f7da226c48','7f647a34-8c17-22c3-f2ec-50f7da28cd09','2710e7e1-a2bb-6f5c-ec2c-50f7da3d881b',100,'2013-01-17 11:01:56',0),('85216ece-3d5d-cbde-5b66-50f7dad7cfb7','7f647a34-8c17-22c3-f2ec-50f7da28cd09','2df25d8e-d0c3-5d0b-d29a-50f7da48c815',89,'2013-01-17 11:01:56',0),('85a176b4-d695-3119-ecf7-50f7daf6b0dd','7f647a34-8c17-22c3-f2ec-50f7da28cd09','82e16a40-b770-3ba6-f450-50f7da4679f1',100,'2013-01-17 11:01:56',0),('86273e1b-aaf1-9d07-a192-50f7daf5a0c2','7f647a34-8c17-22c3-f2ec-50f7da28cd09','8831a124-33c9-ca74-c995-50f7da7555c2',89,'2013-01-17 11:01:56',0),('86b89941-b1b0-b15f-0211-50f7daf17ae8','7f647a34-8c17-22c3-f2ec-50f7da28cd09','3106018a-6d48-4e0d-817b-50f7da6ad757',100,'2013-01-17 11:01:56',0),('873b9d68-59ed-401a-8e27-50f7da14c2d9','7f647a34-8c17-22c3-f2ec-50f7da28cd09','3e57d5d8-4af6-5123-9634-50f7da05fd4e',89,'2013-01-17 11:01:56',0),('87c7eef1-5102-0759-f015-50f7da9eba78','7f647a34-8c17-22c3-f2ec-50f7da28cd09','d44be2a1-4621-4a9a-761f-50f7dab24aaa',100,'2013-01-17 11:01:56',0),('88534f7d-afcb-7254-f861-50f7da1d22d6','7f647a34-8c17-22c3-f2ec-50f7da28cd09','d7c6c0ed-b676-1577-b17d-50f7da6f651e',89,'2013-01-17 11:01:56',0),('88d9e97a-d4fa-db9d-b641-50f7da8943b6','7f647a34-8c17-22c3-f2ec-50f7da28cd09','d7a1c14c-11d8-d005-9e59-50f7daa7f305',100,'2013-01-17 11:01:56',0),('8959e375-ce6d-22a6-e4e3-50f7daf7b4dd','7f647a34-8c17-22c3-f2ec-50f7da28cd09','db644323-3313-f6e2-7c19-50f7dada220e',89,'2013-01-17 11:01:56',0),('8d227bd2-000a-7c68-5aae-50f7daa02708','89a3681e-9497-56d8-d594-50f7da483724','7a85a279-3056-c083-d399-50f7dab51354',100,'2013-01-17 11:01:56',0),('8d9f6933-a174-f21f-e857-50f7daac0dad','89a3681e-9497-56d8-d594-50f7da483724','7e56af18-e2e0-c35e-71fd-50f7da0e2434',89,'2013-01-17 11:01:56',0),('8e1b2244-15aa-1a01-dbbc-50f7da2bc892','89a3681e-9497-56d8-d594-50f7da483724','2b8b465c-af19-bdd7-f28d-50f7daa998de',100,'2013-01-17 11:01:56',0),('8eafcc17-741e-7d78-40fa-50f7da23df4f','89a3681e-9497-56d8-d594-50f7da483724','2f376f02-66a9-9724-c985-50f7dafa243a',89,'2013-01-17 11:01:56',0),('8fffba33-eae6-c537-8907-50f7dae5010f','89a3681e-9497-56d8-d594-50f7da483724','6958c742-cb15-aa7a-586f-50f7da59cfde',100,'2013-01-17 11:01:56',0),('9079726d-a306-2424-b647-50f7da13ce51','89a3681e-9497-56d8-d594-50f7da483724','6d000344-a026-5291-82de-50f7da67f551',89,'2013-01-17 11:01:56',0),('90ff6080-e306-90de-df29-50f7dac63d45','89a3681e-9497-56d8-d594-50f7da483724','b1c315ce-0ce2-adfe-5c52-50f7dae6f344',100,'2013-01-17 11:01:56',0),('91819df1-1cf2-b84e-a0ed-50f7dac34021','89a3681e-9497-56d8-d594-50f7da483724','b5c6bd63-e644-bcf7-91af-50f7dab48258',89,'2013-01-17 11:01:56',0),('91fe465e-4e74-1d5c-5b66-50f7daaf7b76','89a3681e-9497-56d8-d594-50f7da483724','3106018a-6d48-4e0d-817b-50f7da6ad757',100,'2013-01-17 11:01:56',0),('928e63d0-6710-9c83-cb8f-50f7da9c2f0f','89a3681e-9497-56d8-d594-50f7da483724','3e57d5d8-4af6-5123-9634-50f7da05fd4e',89,'2013-01-17 11:01:56',0),('93111639-c364-42a1-380f-50f7da215aa4','89a3681e-9497-56d8-d594-50f7da483724','edd61ba4-85bc-28fe-2e61-50f7da5dde27',100,'2013-01-17 11:01:56',0),('93afd37f-2fa2-643d-5a85-50f7da05439b','89a3681e-9497-56d8-d594-50f7da483724','f15231b1-34c4-74d4-0400-50f7dae14fd7',89,'2013-01-17 11:01:56',0),('9dc952de-0829-43d4-0fc1-50f7da019a2e','948ffcc1-232e-fd48-73d4-50f7da3e6266','7a85a279-3056-c083-d399-50f7dab51354',100,'2013-01-17 11:01:56',0),('9e4b2894-ceb9-0eff-0b3a-50f7da563b8f','948ffcc1-232e-fd48-73d4-50f7da3e6266','7e56af18-e2e0-c35e-71fd-50f7da0e2434',89,'2013-01-17 11:01:56',0),('9edc31e1-2b77-bd96-cd24-50f7da8b3fee','948ffcc1-232e-fd48-73d4-50f7da3e6266','2b8b465c-af19-bdd7-f28d-50f7daa998de',100,'2013-01-17 11:01:56',0),('9f7adef2-106c-0ab4-f16f-50f7da998c97','948ffcc1-232e-fd48-73d4-50f7da3e6266','2f376f02-66a9-9724-c985-50f7dafa243a',89,'2013-01-17 11:01:56',0),('a00a8d4e-b476-e161-625c-50f7da6bc931','948ffcc1-232e-fd48-73d4-50f7da3e6266','e843d2de-b9de-d031-5766-50f7da429411',100,'2013-01-17 11:01:56',0),('a0a83070-0b89-3f37-6080-50f7da20d1ba','948ffcc1-232e-fd48-73d4-50f7da3e6266','ec27bfab-0dc9-0188-341a-50f7da206099',89,'2013-01-17 11:01:56',0),('a1290037-773e-0272-dba6-50f7daa80ca4','948ffcc1-232e-fd48-73d4-50f7da3e6266','a40e415d-7f01-2b7f-1060-50f7dafa9e12',100,'2013-01-17 11:01:56',0),('a2193f71-ec3a-c2a8-cbbd-50f7da4ccf13','948ffcc1-232e-fd48-73d4-50f7da3e6266','a756db0d-4e3e-3d73-9c14-50f7dad839ca',89,'2013-01-17 11:01:56',0),('a2a3f006-6c7d-05e6-4924-50f7da9543c0','948ffcc1-232e-fd48-73d4-50f7da3e6266','56d76c87-0b72-76da-2db1-50f7da5b3330',100,'2013-01-17 11:01:56',0),('a32631bf-231b-18a1-19c7-50f7dac3a0da','948ffcc1-232e-fd48-73d4-50f7da3e6266','5a398197-febb-d796-632c-50f7da24b772',89,'2013-01-17 11:01:56',0);
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) default NULL,
  `user_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) default NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book_list_items`
--

DROP TABLE IF EXISTS `address_book_list_items`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `address_book_list_items` (
  `list_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `abli_list_id_idx` (`list_id`),
  KEY `abli_list_id_bean_idx` (`list_id`,`bean_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `address_book_list_items`
--

LOCK TABLES `address_book_list_items` WRITE;
/*!40000 ALTER TABLE `address_book_list_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book_list_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book_lists`
--

DROP TABLE IF EXISTS `address_book_lists`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `address_book_lists` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  `list_name` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `abml_user_bean_idx` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `address_book_lists`
--

LOCK TABLES `address_book_lists` WRITE;
/*!40000 ALTER TABLE `address_book_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `bug_number` int(11) NOT NULL auto_increment,
  `type` varchar(255) default NULL,
  `status` varchar(100) default NULL,
  `priority` varchar(100) default NULL,
  `resolution` varchar(255) default NULL,
  `system_id` int(11) default NULL,
  `work_log` text,
  `found_in_release` varchar(255) default NULL,
  `fixed_in_release` varchar(255) default NULL,
  `source` varchar(255) default NULL,
  `product_category` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  UNIQUE KEY `bug_number` (`bug_number`,`system_id`),
  KEY `idx_bugs_tmst_id` (`team_set_id`),
  KEY `idx_bug_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_bugs_primary` (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `duration_hours` int(2) default NULL,
  `duration_minutes` int(2) default NULL,
  `date_start` datetime default NULL,
  `date_end` datetime default NULL,
  `parent_type` varchar(255) default NULL,
  `status` varchar(100) default 'Planned',
  `direction` varchar(100) default NULL,
  `parent_id` char(36) default NULL,
  `reminder_time` int(4) default '-1',
  `outlook_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_calls_tmst_id` (`team_set_id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) default NULL,
  `contact_id` varchar(36) default NULL,
  `required` varchar(1) default '1',
  `accept_status` varchar(25) default 'none',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) default NULL,
  `lead_id` varchar(36) default NULL,
  `required` varchar(1) default '1',
  `accept_status` varchar(25) default 'none',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) default NULL,
  `user_id` varchar(36) default NULL,
  `required` varchar(1) default '1',
  `accept_status` varchar(25) default 'none',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) default NULL,
  `target_tracker_key` varchar(36) default NULL,
  `target_id` varchar(36) default NULL,
  `target_type` varchar(100) default NULL,
  `activity_type` varchar(100) default NULL,
  `activity_date` datetime default NULL,
  `related_id` varchar(36) default NULL,
  `related_type` varchar(100) default NULL,
  `archived` tinyint(1) default '0',
  `hits` int(11) default '0',
  `list_id` char(36) default NULL,
  `deleted` tinyint(1) default '0',
  `date_modified` datetime default NULL,
  `more_information` varchar(100) default NULL,
  `marketing_id` char(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) default NULL,
  `tracker_url` varchar(255) default 'http://',
  `tracker_key` int(11) NOT NULL auto_increment,
  `campaign_id` char(36) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `is_optout` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `tracker_key` int(11) NOT NULL auto_increment,
  `tracker_count` int(11) default '0',
  `refer_url` varchar(255) default 'http://',
  `tracker_text` varchar(255) default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `status` varchar(100) default NULL,
  `impressions` int(11) default '0',
  `currency_id` char(36) default NULL,
  `budget` double default NULL,
  `expected_cost` double default NULL,
  `actual_cost` double default NULL,
  `expected_revenue` double default NULL,
  `campaign_type` varchar(100) default NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_campaigns_tmst_id` (`team_set_id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_campaigns_primary` (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `case_number` int(11) NOT NULL auto_increment,
  `type` varchar(255) default NULL,
  `status` varchar(100) default NULL,
  `priority` varchar(100) default NULL,
  `resolution` text,
  `system_id` int(11) default NULL,
  `work_log` text,
  `account_id` char(36) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  UNIQUE KEY `case_number` (`case_number`,`system_id`),
  KEY `idx_cases_tmst_id` (`team_set_id`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_cases_primary` (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) default NULL,
  `bug_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_tree`
--

DROP TABLE IF EXISTS `category_tree`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `category_tree` (
  `self_id` varchar(36) default NULL,
  `node_id` int(11) NOT NULL auto_increment,
  `parent_node_id` int(11) default '0',
  `type` varchar(36) default NULL,
  PRIMARY KEY  (`node_id`),
  KEY `idx_categorytree` (`self_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `category_tree`
--

LOCK TABLES `category_tree` WRITE;
/*!40000 ALTER TABLE `category_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `config` (
  `category` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','sales@ecrm.co.in'),('notify','fromname','ECRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.2.0'),('MySettings','tab','YToyNjp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6MTE6IktCRG9jdW1lbnRzIjtzOjExOiJLQkRvY3VtZW50cyI7czo1OiJDYWxscyI7czo1OiJDYWxscyI7czo4OiJQcm9kdWN0cyI7czo4OiJQcm9kdWN0cyI7czo5OiJDb250cmFjdHMiO3M6OToiQ29udHJhY3RzIjtzOjg6Ik1lZXRpbmdzIjtzOjg6Ik1lZXRpbmdzIjtzOjk6IkZvcmVjYXN0cyI7czo5OiJGb3JlY2FzdHMiO3M6NjoiUXVvdGVzIjtzOjY6IlF1b3RlcyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czo5OiJQcm9zcGVjdHMiO3M6OToiUHJvc3BlY3RzIjtzOjU6IlRhc2tzIjtzOjU6IlRhc2tzIjtzOjg6IkNvbnRhY3RzIjtzOjg6IkNvbnRhY3RzIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjU6IkxlYWRzIjtzOjU6IkxlYWRzIjtzOjg6IkNhbGVuZGFyIjtzOjg6IkNhbGVuZGFyIjtzOjc6IlByb2plY3QiO3M6NzoiUHJvamVjdCI7czo3OiJSZXBvcnRzIjtzOjc6IlJlcG9ydHMiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo5OiJDYW1wYWlnbnMiO3M6OToiQ2FtcGFpZ25zIjtzOjY6IkVtYWlscyI7czo2OiJFbWFpbHMiO3M6NToiQ2FzZXMiO3M6NToiQ2FzZXMiO3M6NDoiQnVncyI7czo0OiJCdWdzIjtzOjEzOiJlZF9EZXBhcnRtZW50IjtzOjEzOiJlZF9EZXBhcnRtZW50IjtzOjExOiJlZF9FbXBsb3llZSI7czoxMToiZWRfRW1wbG95ZWUiO30='),('portal','on','0'),('license','users','1000'),('license','expire_date','2014-05-15'),('license','key','abc15d8f39cf159cc8c1e17a8f621ce6'),('tracker','Tracker','1'),('tracker','tracker_perf','1'),('tracker','tracker_sessions','1'),('tracker','tracker_queries','1'),('system','system_id','1'),('system','skypeout_on','0'),('license','num_lic_oc','0'),('MySettings','hide_subpanels','YTowOnt9'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('Update','CheckUpdates','automatic'),('system','name','Ecrm Solutions CRM'),('license','last_connection_fail','2013-02-07 04:48:38'),('license','last_validation','no_connection'),('license','vk_end_date','2014-05-18 07:40:50'),('license','validation_key','YToxOntzOjg6InZlcmlmaWVkIjtiOjA7fQ=='),('license','latest_versions',''),('Update','last_check_date','1360212519'),('sugarfeed','flushdate','2013-02-07'),('system','adminwizard','1'),('notify','allow_default_outbound','2'),('proxy','on','0'),('proxy','host',''),('proxy','port',''),('proxy','auth','0'),('proxy','username',''),('proxy','password',''),('system','mailmerge_on','0'),('MySettings','disable_useredit','no'),('captcha','on','0'),('captcha','public_key',''),('captcha','private_key',''),('ldap','hostname',''),('ldap','port',''),('ldap','base_dn',''),('ldap','login_filter',''),('ldap','bind_attr',''),('ldap','login_attr',''),('ldap','group_dn',''),('ldap','group_name',''),('ldap','group_user_attr',''),('ldap','group_attr',''),('ldap','admin_user',''),('ldap','admin_password',''),('ldap','auto_create_users','0'),('ldap','enc_key',''),('system','ldap_enabled','0'),('ldap','group','0'),('ldap','authentication','0');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `salutation` varchar(255) default NULL,
  `first_name` varchar(100) default NULL,
  `last_name` varchar(100) default NULL,
  `title` varchar(100) default NULL,
  `department` varchar(255) default NULL,
  `do_not_call` tinyint(1) default '0',
  `phone_home` varchar(100) default NULL,
  `phone_mobile` varchar(100) default NULL,
  `phone_work` varchar(100) default NULL,
  `phone_other` varchar(100) default NULL,
  `phone_fax` varchar(100) default NULL,
  `primary_address_street` varchar(150) default NULL,
  `primary_address_city` varchar(100) default NULL,
  `primary_address_state` varchar(100) default NULL,
  `primary_address_postalcode` varchar(20) default NULL,
  `primary_address_country` varchar(255) default NULL,
  `alt_address_street` varchar(150) default NULL,
  `alt_address_city` varchar(100) default NULL,
  `alt_address_state` varchar(100) default NULL,
  `alt_address_postalcode` varchar(20) default NULL,
  `alt_address_country` varchar(255) default NULL,
  `assistant` varchar(75) default NULL,
  `assistant_phone` varchar(100) default NULL,
  `picture` varchar(255) default NULL,
  `lead_source` varchar(255) default NULL,
  `reports_to_id` char(36) default NULL,
  `birthdate` date default NULL,
  `campaign_id` char(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_contacts_tmst_id` (`team_set_id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('6be04917-8cba-4abf-87bf-5110cc6b49c4','2013-02-05 09:09:50','2013-02-05 09:09:50','1','1',NULL,0,'1','1','1','Mr.','Harish','Patel',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_contacts_primary` (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) default NULL,
  `bug_id` varchar(36) default NULL,
  `contact_role` varchar(50) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) default NULL,
  `case_id` varchar(36) default NULL,
  `contact_role` varchar(50) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) default NULL,
  `user_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_types`
--

DROP TABLE IF EXISTS `contract_types`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contract_types` (
  `id` char(36) NOT NULL,
  `name` varchar(30) default NULL,
  `list_order` int(4) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contract_types`
--

LOCK TABLES `contract_types` WRITE;
/*!40000 ALTER TABLE `contract_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `reference_code` varchar(255) default NULL,
  `account_id` char(36) default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `currency_id` char(36) default NULL,
  `total_contract_value` decimal(26,6) default NULL,
  `total_contract_value_usdollar` decimal(26,6) default NULL,
  `status` varchar(100) default NULL,
  `customer_signed_date` date default NULL,
  `company_signed_date` date default NULL,
  `expiration_notice` datetime default NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_contracts_tmst_id` (`team_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_audit`
--

DROP TABLE IF EXISTS `contracts_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_contracts_primary` (`id`),
  KEY `idx_contracts_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contracts_audit`
--

LOCK TABLES `contracts_audit` WRITE;
/*!40000 ALTER TABLE `contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_contacts`
--

DROP TABLE IF EXISTS `contracts_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contracts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) default NULL,
  `contract_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `contracts_contacts_alt` (`contact_id`,`contract_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contracts_contacts`
--

LOCK TABLES `contracts_contacts` WRITE;
/*!40000 ALTER TABLE `contracts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_opportunities`
--

DROP TABLE IF EXISTS `contracts_opportunities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contracts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) default NULL,
  `contract_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `contracts_opp_alt` (`contract_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contracts_opportunities`
--

LOCK TABLES `contracts_opportunities` WRITE;
/*!40000 ALTER TABLE `contracts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_products`
--

DROP TABLE IF EXISTS `contracts_products`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contracts_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) default NULL,
  `contract_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `contracts_prod_alt` (`contract_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contracts_products`
--

LOCK TABLES `contracts_products` WRITE;
/*!40000 ALTER TABLE `contracts_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_quotes`
--

DROP TABLE IF EXISTS `contracts_quotes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contracts_quotes` (
  `id` varchar(36) NOT NULL,
  `quote_id` varchar(36) default NULL,
  `contract_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `contracts_quot_alt` (`contract_id`,`quote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contracts_quotes`
--

LOCK TABLES `contracts_quotes` WRITE;
/*!40000 ALTER TABLE `contracts_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) default NULL,
  `symbol` varchar(36) default NULL,
  `iso4217` varchar(3) default NULL,
  `conversion_rate` double default '0',
  `status` varchar(100) default NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) default NULL,
  `set_num` int(11) default '0',
  `field0` varchar(255) default NULL,
  `field1` varchar(255) default NULL,
  `field2` varchar(255) default NULL,
  `field3` varchar(255) default NULL,
  `field4` varchar(255) default NULL,
  `field5` varchar(255) default NULL,
  `field6` varchar(255) default NULL,
  `field7` varchar(255) default NULL,
  `field8` varchar(255) default NULL,
  `field9` varchar(255) default NULL,
  `deleted` tinyint(1) default '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) default NULL,
  `document_id` varchar(36) default NULL,
  `doc_id` varchar(100) default NULL,
  `doc_type` varchar(100) default NULL,
  `doc_url` varchar(255) default NULL,
  `date_entered` datetime default NULL,
  `created_by` char(36) default NULL,
  `filename` varchar(255) default NULL,
  `file_ext` varchar(100) default NULL,
  `file_mime_type` varchar(100) default NULL,
  `revision` varchar(100) default NULL,
  `deleted` tinyint(1) default '0',
  `date_modified` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `document_name` varchar(255) default NULL,
  `doc_id` varchar(100) default NULL,
  `doc_type` varchar(100) default 'Sugar',
  `doc_url` varchar(255) default NULL,
  `active_date` date default NULL,
  `exp_date` date default NULL,
  `category_id` varchar(100) default NULL,
  `subcategory_id` varchar(100) default NULL,
  `status_id` varchar(100) default NULL,
  `document_revision_id` varchar(36) default NULL,
  `related_doc_id` char(36) default NULL,
  `related_doc_rev_id` char(36) default NULL,
  `is_template` tinyint(1) default '0',
  `template_type` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_documents_tmst_id` (`team_set_id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `document_id` varchar(36) default NULL,
  `account_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `document_id` varchar(36) default NULL,
  `bug_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `document_id` varchar(36) default NULL,
  `case_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `document_id` varchar(36) default NULL,
  `contact_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `document_id` varchar(36) default NULL,
  `opportunity_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_products`
--

DROP TABLE IF EXISTS `documents_products`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `documents_products` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `document_id` varchar(36) default NULL,
  `product_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `documents_products_product_id` (`product_id`,`document_id`),
  KEY `documents_products_document_id` (`document_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `documents_products`
--

LOCK TABLES `documents_products` WRITE;
/*!40000 ALTER TABLE `documents_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_quotes`
--

DROP TABLE IF EXISTS `documents_quotes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `documents_quotes` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `document_id` varchar(36) default NULL,
  `quote_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `documents_quotes_quote_id` (`quote_id`,`document_id`),
  KEY `documents_quotes_document_id` (`document_id`,`quote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `documents_quotes`
--

LOCK TABLES `documents_quotes` WRITE;
/*!40000 ALTER TABLE `documents_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `password` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `application` varchar(100) default 'webex',
  `api_data` text,
  `consumer_key` varchar(255) default NULL,
  `consumer_secret` varchar(255) default NULL,
  `oauth_token` varchar(255) default NULL,
  `oauth_secret` varchar(255) default NULL,
  `validated` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_departme_ed_employee_c`
--

DROP TABLE IF EXISTS `ed_departme_ed_employee_c`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ed_departme_ed_employee_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `ed_departmcdfcartment_ida` varchar(36) default NULL,
  `ed_departm2457mployee_idb` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `ed_department_ed_employee_alt` (`ed_departmcdfcartment_ida`,`ed_departm2457mployee_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ed_departme_ed_employee_c`
--

LOCK TABLES `ed_departme_ed_employee_c` WRITE;
/*!40000 ALTER TABLE `ed_departme_ed_employee_c` DISABLE KEYS */;
INSERT INTO `ed_departme_ed_employee_c` VALUES ('fdd80c7c-ff97-bda8-447a-5110d235b213','2013-02-05 09:34:00',0,'e43dedf7-263e-2e1a-1f59-5110d1e9f5f8','2f711f55-7243-e540-53c0-5110d13a06b8');
/*!40000 ALTER TABLE `ed_departme_ed_employee_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_department`
--

DROP TABLE IF EXISTS `ed_department`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ed_department` (
  `id` char(36) NOT NULL,
  `name` varchar(255) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `assigned_user_id` char(36) default NULL,
  `department_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_ed_department_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ed_department`
--

LOCK TABLES `ed_department` WRITE;
/*!40000 ALTER TABLE `ed_department` DISABLE KEYS */;
INSERT INTO `ed_department` VALUES ('e43dedf7-263e-2e1a-1f59-5110d1e9f5f8','Sales','2013-02-05 09:30:27','2013-02-05 09:30:27','1','1','This is the sales team. ',0,'1','1','1',NULL);
/*!40000 ALTER TABLE `ed_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_department_audit`
--

DROP TABLE IF EXISTS `ed_department_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ed_department_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_ed_department_primary` (`id`),
  KEY `idx_ed_department_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ed_department_audit`
--

LOCK TABLES `ed_department_audit` WRITE;
/*!40000 ALTER TABLE `ed_department_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ed_department_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_employee`
--

DROP TABLE IF EXISTS `ed_employee`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ed_employee` (
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `assigned_user_id` char(36) default NULL,
  `salutation` varchar(255) default NULL,
  `first_name` varchar(100) default NULL,
  `last_name` varchar(100) default NULL,
  `title` varchar(100) default NULL,
  `department` varchar(255) default NULL,
  `do_not_call` tinyint(1) default '0',
  `phone_home` varchar(100) default NULL,
  `phone_mobile` varchar(100) default NULL,
  `phone_work` varchar(100) default NULL,
  `phone_other` varchar(100) default NULL,
  `phone_fax` varchar(100) default NULL,
  `primary_address_street` varchar(150) default NULL,
  `primary_address_city` varchar(100) default NULL,
  `primary_address_state` varchar(100) default NULL,
  `primary_address_postalcode` varchar(20) default NULL,
  `primary_address_country` varchar(255) default NULL,
  `alt_address_street` varchar(150) default NULL,
  `alt_address_city` varchar(100) default NULL,
  `alt_address_state` varchar(100) default NULL,
  `alt_address_postalcode` varchar(20) default NULL,
  `alt_address_country` varchar(255) default NULL,
  `assistant` varchar(75) default NULL,
  `assistant_phone` varchar(100) default NULL,
  `picture` varchar(255) default NULL,
  `employee_unique_id` int(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_ed_employee_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ed_employee`
--

LOCK TABLES `ed_employee` WRITE;
/*!40000 ALTER TABLE `ed_employee` DISABLE KEYS */;
INSERT INTO `ed_employee` VALUES ('2f711f55-7243-e540-53c0-5110d13a06b8','2013-02-05 09:33:44','2013-02-05 09:33:44','1','1',NULL,0,'1','1','1','Mr.','Pralhad','Rajgor','Senior Developer','Technology',0,NULL,'9987998700',NULL,NULL,NULL,'Test','Mumbai','Maharashtra','40098','India','Test','Mumbai','Maharashtra','40098','India',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ed_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_employee_audit`
--

DROP TABLE IF EXISTS `ed_employee_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ed_employee_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_ed_employee_primary` (`id`),
  KEY `idx_ed_employee_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ed_employee_audit`
--

LOCK TABLES `ed_employee_audit` WRITE;
/*!40000 ALTER TABLE `ed_employee_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ed_employee_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_employeed_department_c`
--

DROP TABLE IF EXISTS `ed_employeed_department_c`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ed_employeed_department_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `ed_employe5b04mployee_ida` varchar(36) default NULL,
  `ed_employebd1eartment_idb` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `ed_employee_ed_department_alt` (`ed_employe5b04mployee_ida`,`ed_employebd1eartment_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ed_employeed_department_c`
--

LOCK TABLES `ed_employeed_department_c` WRITE;
/*!40000 ALTER TABLE `ed_employeed_department_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `ed_employeed_department_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) default NULL,
  `primary_address` tinyint(1) default '0',
  `reply_to_address` tinyint(1) default '0',
  `date_created` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('15e2bfff-7bcb-4ce8-f043-50f7de6986c3','16148a07-4044-812f-5dd0-50f7deea7dfe','1','Users',1,0,'2013-01-17 11:19:49','2013-01-17 11:19:49',0),('433caa39-33b9-f475-3212-5110d1d9e1f3','436add08-b20c-cd14-93d9-5110d107075d','2f711f55-7243-e540-53c0-5110d13a06b8','ed_Employee',1,0,'2013-02-05 09:33:44','2013-02-05 09:33:44',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) default NULL,
  `email_address_caps` varchar(255) default NULL,
  `invalid_email` tinyint(1) default '0',
  `opt_out` tinyint(1) default '0',
  `date_created` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('16148a07-4044-812f-5dd0-50f7deea7dfe','ecrmsolutions@gmail.com','ECRMSOLUTIONS@GMAIL.COM',0,0,'2013-01-17 11:19:49','2013-02-06 06:06:20',0),('436add08-b20c-cd14-93d9-5110d107075d','pralhad@vitruviantech.com','PRALHAD@VITRUVIANTECH.COM',0,0,'2013-02-05 09:33:44','2013-02-05 09:33:44',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `email_cache` (
  `ie_id` char(36) NOT NULL,
  `mbox` varchar(60) default NULL,
  `subject` varchar(255) default NULL,
  `fromaddr` varchar(100) default NULL,
  `toaddr` varchar(255) default NULL,
  `senddate` datetime default NULL,
  `message_id` varchar(255) default NULL,
  `mailsize` int(10) unsigned default NULL,
  `imap_uid` int(10) unsigned default NULL,
  `msgno` int(10) unsigned default NULL,
  `recent` tinyint(4) default NULL,
  `flagged` tinyint(4) default NULL,
  `answered` tinyint(4) default NULL,
  `deleted` tinyint(4) default NULL,
  `seen` tinyint(4) default NULL,
  `draft` tinyint(4) default NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(255) default NULL,
  `from_name` varchar(100) default NULL,
  `from_addr` varchar(100) default NULL,
  `reply_to_name` varchar(100) default NULL,
  `reply_to_addr` varchar(100) default NULL,
  `inbound_email_id` varchar(36) default NULL,
  `date_start` datetime default NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) default NULL,
  `campaign_id` char(36) default NULL,
  `all_prospect_lists` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) default NULL,
  `email_marketing_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `email_templates` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` varchar(36) default NULL,
  `published` varchar(3) default NULL,
  `name` varchar(255) default NULL,
  `description` text,
  `subject` varchar(255) default NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `base_module` varchar(50) default NULL,
  `from_name` varchar(255) default NULL,
  `from_address` varchar(255) default NULL,
  `text_only` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_email_templates_tmst_id` (`team_set_id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','5bba7084-7a6c-96a9-8ce6-50f7daa598c0','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" width=\"550\" align=\\\"\\\"\\\"center\\\"\\\"\\\"><tbody><tr><td colspan=\\\"2\\\"><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br><p>$config_site_url</p><br><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td colspan=\\\"2\\\"></td>         </tr> </tbody></table> </div>',0,NULL,NULL,NULL,NULL,0),('1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','69b851fc-eb23-9fc9-73b8-50f7da975bce','2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" width=\"550\" align=\\\"\\\"\\\"center\\\"\\\"\\\"><tbody><tr><td colspan=\\\"2\\\"><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td colspan=\\\"2\\\"></td>         </tr> </tbody></table> </div>',0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `emailman` (
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `user_id` char(36) default NULL,
  `id` int(11) NOT NULL auto_increment,
  `campaign_id` char(36) default NULL,
  `marketing_id` char(36) default NULL,
  `list_id` char(36) default NULL,
  `send_date_time` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `in_queue` tinyint(1) default '0',
  `in_queue_date` datetime default NULL,
  `send_attempts` int(11) default '0',
  `deleted` tinyint(1) default '0',
  `related_id` char(36) default NULL,
  `related_type` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `emails` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `assigned_user_id` char(36) default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `deleted` tinyint(1) default '0',
  `date_sent` datetime default NULL,
  `message_id` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `type` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  `flagged` tinyint(1) default '0',
  `reply_to_status` tinyint(1) default '0',
  `intent` varchar(100) default 'pick',
  `mailbox_id` char(36) default NULL,
  `parent_type` varchar(100) default NULL,
  `parent_id` char(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_emails_tmst_id` (`team_set_id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES ('1','1','a317eb1a-7b83-9911-9653-510665988537','2013-01-28 11:46:02','2013-01-28 11:46:02','1','1','1',0,'2013-01-28 11:46:00',NULL,'Quote for: test','draft','draft',0,0,'pick',NULL,'Quotes','216cc0a5-f1e3-79dd-c4f6-51066491a9fa');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) default NULL,
  `bean_id` char(36) default NULL,
  `bean_module` varchar(100) default NULL,
  `campaign_data` text,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
INSERT INTO `emails_beans` VALUES ('acf28a67-5762-be13-0607-5106659e0613','a317eb1a-7b83-9911-9653-510665988537','f1534f3b-7b78-69b9-7524-51066491d80c','Accounts',NULL,'2013-01-28 11:46:02',0),('c8fcfec8-b6f7-bdef-b5b0-51066555aa0c','a317eb1a-7b83-9911-9653-510665988537','216cc0a5-f1e3-79dd-c4f6-51066491a9fa','Quotes',NULL,'2013-01-28 11:46:02',0);
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) default NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) default NULL,
  `reply_to_addr` varchar(255) default NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
INSERT INTO `emails_text` VALUES ('a317eb1a-7b83-9911-9653-510665988537','','','','','','','Here is the quote you requested (You can change this text)','',0);
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions`
--

DROP TABLE IF EXISTS `expressions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `expressions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `lhs_type` varchar(15) default NULL,
  `lhs_field` varchar(50) default NULL,
  `lhs_module` varchar(50) default NULL,
  `lhs_value` varchar(100) default NULL,
  `lhs_group_type` varchar(10) default NULL,
  `operator` varchar(15) default NULL,
  `rhs_group_type` varchar(10) default NULL,
  `rhs_type` varchar(15) default NULL,
  `rhs_field` varchar(50) default NULL,
  `rhs_module` varchar(50) default NULL,
  `rhs_value` varchar(255) default NULL,
  `parent_id` char(36) NOT NULL,
  `exp_type` varchar(100) default NULL,
  `exp_order` int(4) default NULL,
  `parent_type` varchar(255) default NULL,
  `parent_exp_id` char(36) default NULL,
  `parent_exp_side` int(8) default NULL,
  `ext1` varchar(50) default NULL,
  `ext2` varchar(50) default NULL,
  `ext3` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_exp` (`parent_id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `expressions`
--

LOCK TABLES `expressions` WRITE;
/*!40000 ALTER TABLE `expressions` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) default NULL,
  `vname` varchar(255) default NULL,
  `comments` varchar(255) default NULL,
  `help` varchar(255) default NULL,
  `custom_module` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `len` int(11) default NULL,
  `required` tinyint(1) default '0',
  `default_value` varchar(255) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `audited` tinyint(1) default '0',
  `massupdate` tinyint(1) default '0',
  `duplicate_merge` smallint(6) default '0',
  `reportable` tinyint(1) default '1',
  `importable` varchar(255) default NULL,
  `ext1` varchar(255) default NULL,
  `ext2` varchar(255) default NULL,
  `ext3` varchar(255) default NULL,
  `ext4` text,
  PRIMARY KEY  (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Leadslead_age_c','lead_age_c','LBL_LEAD_AGE','Lead Age (In Days)','Lead Age (In Days)','Leads','int',255,0,NULL,'2013-01-30 07:36:51',0,0,0,0,1,'true',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) default NULL,
  `folder_type` varchar(25) default NULL,
  `parent_folder` char(36) default NULL,
  `has_child` tinyint(1) default '0',
  `is_group` tinyint(1) default '0',
  `is_dynamic` tinyint(1) default '0',
  `dynamic_query` text,
  `assign_to_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
INSERT INTO `folders` VALUES ('d83ab7d4-0801-50fd-12e6-510665c9cb4c','My Email','inbound','',1,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'inbound\' OR status = \'inbound\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'sent\', \'archived\', \'draft\') AND type NOT IN (\'out\', \'archived\', \'draft\')','','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','1','1',0),('14ed042a-c951-3830-5597-51066544ea4e','My Drafts','draft','d83ab7d4-0801-50fd-12e6-510665c9cb4c',0,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'draft\' OR status = \'draft\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')','','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','1','1',0),('1d3c0000-ff17-1f96-381e-510665739942','Sent Emails','sent','d83ab7d4-0801-50fd-12e6-510665c9cb4c',0,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'out\' OR status = \'sent\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')','','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','1','1',0);
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) default NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_folders_rel_folder_id` (`folder_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
INSERT INTO `folders_subscriptions` VALUES ('dd540906-fcf9-e91f-7b89-5106655e59c1','d83ab7d4-0801-50fd-12e6-510665c9cb4c','1'),('15fd0aa6-ed53-58c5-eed9-51066570c978','14ed042a-c951-3830-5597-51066544ea4e','1'),('1e3e03e4-1cd7-da89-91ff-5106654a537c','1d3c0000-ff17-1f96-381e-510665739942','1');
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forecast_schedule`
--

DROP TABLE IF EXISTS `forecast_schedule`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `forecast_schedule` (
  `id` char(36) NOT NULL,
  `timeperiod_id` char(36) default NULL,
  `user_id` char(36) default NULL,
  `cascade_hierarchy` tinyint(1) default '0',
  `forecast_start_date` date default NULL,
  `status` varchar(100) default NULL,
  `created_by` varchar(36) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `forecast_schedule`
--

LOCK TABLES `forecast_schedule` WRITE;
/*!40000 ALTER TABLE `forecast_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `forecast_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forecasts`
--

DROP TABLE IF EXISTS `forecasts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `forecasts` (
  `id` char(36) NOT NULL,
  `timeperiod_id` char(36) default NULL,
  `forecast_type` varchar(100) default NULL,
  `opp_count` int(5) default NULL,
  `opp_weigh_value` int(11) default NULL,
  `best_case` int(11) default NULL,
  `likely_case` int(11) default NULL,
  `worst_case` int(11) default NULL,
  `user_id` char(36) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `forecasts`
--

LOCK TABLES `forecasts` WRITE;
/*!40000 ALTER TABLE `forecasts` DISABLE KEYS */;
/*!40000 ALTER TABLE `forecasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `holidays` (
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `holiday_date` date default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `person_id` char(36) default NULL,
  `person_type` varchar(255) default NULL,
  `related_module` varchar(255) default NULL,
  `related_module_id` char(36) default NULL,
  `resource_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_holiday_id_del` (`id`,`deleted`),
  KEY `idx_holiday_id_rel` (`related_module_id`,`related_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `holidays`
--

LOCK TABLES `holidays` WRITE;
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) default NULL,
  `source` varchar(36) default NULL,
  `enclosure` varchar(1) default ' ',
  `delimiter` varchar(1) default ',',
  `module` varchar(36) default NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) default '1',
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `assigned_user_id` char(36) default NULL,
  `is_published` varchar(3) default 'no',
  PRIMARY KEY  (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `inbound_email` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(255) default NULL,
  `status` varchar(100) default 'Active',
  `server_url` varchar(100) default NULL,
  `email_user` varchar(100) default NULL,
  `email_password` varchar(100) default NULL,
  `port` int(5) default NULL,
  `service` varchar(50) default NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) default '0',
  `mailbox_type` varchar(10) default NULL,
  `template_id` char(36) default NULL,
  `stored_options` text,
  `group_id` char(36) default NULL,
  `is_personal` tinyint(1) default '0',
  `groupfolder_id` char(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_inbound_email_tmst_id` (`team_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `autoreplied_to` varchar(100) default NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kbcontents`
--

DROP TABLE IF EXISTS `kbcontents`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `kbcontents` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` char(36) NOT NULL,
  `kbdocument_body` longtext,
  `document_revision_id` char(36) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `modified_user_id` char(36) default NULL,
  `kb_index` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `fts_unique_idx` (`kb_index`),
  KEY `idx_kbcontents_tmst_id` (`team_set_id`),
  FULLTEXT KEY `kbdocument_body` (`kbdocument_body`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `kbcontents`
--

LOCK TABLES `kbcontents` WRITE;
/*!40000 ALTER TABLE `kbcontents` DISABLE KEYS */;
/*!40000 ALTER TABLE `kbcontents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kbcontents_audit`
--

DROP TABLE IF EXISTS `kbcontents_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `kbcontents_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_kbcontents_primary` (`id`),
  KEY `idx_kbcontents_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `kbcontents_audit`
--

LOCK TABLES `kbcontents_audit` WRITE;
/*!40000 ALTER TABLE `kbcontents_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `kbcontents_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kbdocument_revisions`
--

DROP TABLE IF EXISTS `kbdocument_revisions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `kbdocument_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) default NULL,
  `kbdocument_id` varchar(36) default NULL,
  `date_entered` datetime default NULL,
  `created_by` char(36) default NULL,
  `filename` varchar(255) default NULL,
  `file_ext` varchar(100) default NULL,
  `file_mime_type` varchar(100) default NULL,
  `revision` varchar(100) default NULL,
  `deleted` tinyint(1) default '0',
  `latest` tinyint(1) default '0',
  `kbcontent_id` varchar(36) default NULL,
  `document_revision_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_del_latest_kbcontent_id` (`deleted`,`latest`,`kbcontent_id`),
  KEY `idx_cont_id_doc_id` (`kbcontent_id`,`kbdocument_id`),
  KEY `idx_name_rev_id_del` (`document_revision_id`,`kbdocument_id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `kbdocument_revisions`
--

LOCK TABLES `kbdocument_revisions` WRITE;
/*!40000 ALTER TABLE `kbdocument_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `kbdocument_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kbdocuments`
--

DROP TABLE IF EXISTS `kbdocuments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `kbdocuments` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` varchar(36) NOT NULL,
  `kbdocument_name` varchar(255) default NULL,
  `active_date` date default NULL,
  `exp_date` date default NULL,
  `status_id` varchar(100) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `is_external_article` tinyint(1) default '0',
  `description` text,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `kbdocument_revision_id` varchar(36) default NULL,
  `kbdocument_revision_number` varchar(100) default NULL,
  `mail_merge_document` varchar(3) default 'off',
  `related_doc_id` char(36) default NULL,
  `related_doc_rev_id` char(36) default NULL,
  `is_template` tinyint(1) default '0',
  `template_type` varchar(100) default NULL,
  `kbdoc_approver_id` char(36) default NULL,
  `assigned_user_id` char(36) default NULL,
  `parent_id` char(36) default NULL,
  `parent_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_kbdocuments_tmst_id` (`team_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `kbdocuments`
--

LOCK TABLES `kbdocuments` WRITE;
/*!40000 ALTER TABLE `kbdocuments` DISABLE KEYS */;
/*!40000 ALTER TABLE `kbdocuments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kbdocuments_kbtags`
--

DROP TABLE IF EXISTS `kbdocuments_kbtags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `kbdocuments_kbtags` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` varchar(36) NOT NULL,
  `kbdocument_id` varchar(36) default NULL,
  `kbtag_id` varchar(36) default NULL,
  `date_entered` datetime default NULL,
  `created_by` char(36) default NULL,
  `revision` varchar(100) default NULL,
  `deleted` tinyint(1) default '0',
  `date_modified` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_kbdocuments_kbtags_tmst_id` (`team_set_id`),
  KEY `idx_doc_id_tag_id` (`kbdocument_id`,`kbtag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `kbdocuments_kbtags`
--

LOCK TABLES `kbdocuments_kbtags` WRITE;
/*!40000 ALTER TABLE `kbdocuments_kbtags` DISABLE KEYS */;
/*!40000 ALTER TABLE `kbdocuments_kbtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kbdocuments_views_ratings`
--

DROP TABLE IF EXISTS `kbdocuments_views_ratings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `kbdocuments_views_ratings` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `kbdocument_id` varchar(36) default NULL,
  `views_number` int(11) default '0',
  `ratings_number` int(11) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_kbvr_kbdoc` (`kbdocument_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `kbdocuments_views_ratings`
--

LOCK TABLES `kbdocuments_views_ratings` WRITE;
/*!40000 ALTER TABLE `kbdocuments_views_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `kbdocuments_views_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kbtags`
--

DROP TABLE IF EXISTS `kbtags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `kbtags` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` varchar(36) NOT NULL,
  `parent_tag_id` varchar(36) default NULL,
  `tag_name` varchar(255) default NULL,
  `root_tag` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `created_by` char(36) default NULL,
  `revision` varchar(100) default NULL,
  `deleted` tinyint(1) default '0',
  `date_modified` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_kbtags_tmst_id` (`team_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `kbtags`
--

LOCK TABLES `kbtags` WRITE;
/*!40000 ALTER TABLE `kbtags` DISABLE KEYS */;
INSERT INTO `kbtags` VALUES (NULL,NULL,'FAQs',NULL,'FAQs',0,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `kbtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `salutation` varchar(255) default NULL,
  `first_name` varchar(100) default NULL,
  `last_name` varchar(100) default NULL,
  `title` varchar(100) default NULL,
  `department` varchar(100) default NULL,
  `do_not_call` tinyint(1) default '0',
  `phone_home` varchar(100) default NULL,
  `phone_mobile` varchar(100) default NULL,
  `phone_work` varchar(100) default NULL,
  `phone_other` varchar(100) default NULL,
  `phone_fax` varchar(100) default NULL,
  `primary_address_street` varchar(150) default NULL,
  `primary_address_city` varchar(100) default NULL,
  `primary_address_state` varchar(100) default NULL,
  `primary_address_postalcode` varchar(20) default NULL,
  `primary_address_country` varchar(255) default NULL,
  `alt_address_street` varchar(150) default NULL,
  `alt_address_city` varchar(100) default NULL,
  `alt_address_state` varchar(100) default NULL,
  `alt_address_postalcode` varchar(20) default NULL,
  `alt_address_country` varchar(255) default NULL,
  `assistant` varchar(75) default NULL,
  `assistant_phone` varchar(100) default NULL,
  `converted` tinyint(1) default '0',
  `refered_by` varchar(100) default NULL,
  `lead_source` varchar(100) default NULL,
  `lead_source_description` text,
  `status` varchar(100) default NULL,
  `status_description` text,
  `reports_to_id` char(36) default NULL,
  `account_name` varchar(255) default NULL,
  `account_description` text,
  `contact_id` char(36) default NULL,
  `account_id` char(36) default NULL,
  `opportunity_id` char(36) default NULL,
  `opportunity_name` varchar(255) default NULL,
  `opportunity_amount` varchar(50) default NULL,
  `campaign_id` char(36) default NULL,
  `birthdate` date default NULL,
  `portal_name` varchar(255) default NULL,
  `portal_app` varchar(255) default NULL,
  `website` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_leads_tmst_id` (`team_set_id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES ('a194f956-385d-5308-57d0-5108cf65874f','2013-01-09 07:43:13','2013-02-05 09:36:41','1','1',NULL,0,'1','1','1','Mr.','Harish','Patel','Director','Technology',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://www.realtyredefined.com'),('e855654e-8c7c-5d6f-05b3-510902dcb49b','2013-01-30 11:24:21','2013-01-31 07:05:26','1','1',NULL,0,'1','1','1','Mr.','Gajanan','Salve',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://www.ecrm.co.in'),('513516fb-4632-1ba7-b977-5109025ec5e6','2013-01-16 11:24:39','2013-01-31 10:02:34','1','1',NULL,0,'1','1','1','Mr.','Nirav','Gosalia',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://www.realtyredefined.com'),('5c62b390-3ba9-2c9e-388d-510a4c59d149','2013-01-31 10:50:52','2013-01-31 10:50:52','1','1',NULL,0,'1','1','1','Mr.','Mayank','Vora',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://www.realtyredefined.com');
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_leads_primary` (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `lead_age_c` int(255) default NULL,
  PRIMARY KEY  (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
INSERT INTO `leads_cstm` VALUES ('513516fb-4632-1ba7-b977-5109025ec5e6',14),('a194f956-385d-5308-57d0-5108cf65874f',27),('e855654e-8c7c-5d6f-05b3-510902dcb49b',0);
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) default NULL,
  `parent_type` varchar(25) default NULL,
  `document_id` varchar(36) default NULL,
  `document_revision_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `manufacturers` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(50) default NULL,
  `list_order` int(4) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_manufacturers` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `location` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `join_url` varchar(200) default NULL,
  `host_url` varchar(400) default NULL,
  `displayed_url` varchar(400) default NULL,
  `creator` varchar(50) default NULL,
  `external_id` varchar(50) default NULL,
  `duration_hours` int(2) default NULL,
  `duration_minutes` int(2) default NULL,
  `date_start` datetime default NULL,
  `date_end` datetime default NULL,
  `parent_type` varchar(100) default NULL,
  `status` varchar(100) default 'Planned',
  `type` varchar(255) default 'Sugar',
  `parent_id` char(36) default NULL,
  `reminder_time` int(11) default '-1',
  `outlook_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_meetings_tmst_id` (`team_set_id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) default NULL,
  `contact_id` varchar(36) default NULL,
  `required` varchar(1) default '1',
  `accept_status` varchar(25) default 'none',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) default NULL,
  `lead_id` varchar(36) default NULL,
  `required` varchar(1) default '1',
  `accept_status` varchar(25) default 'none',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) default NULL,
  `user_id` varchar(36) default NULL,
  `required` varchar(1) default '1',
  `accept_status` varchar(25) default 'none',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(255) default NULL,
  `file_mime_type` varchar(100) default NULL,
  `filename` varchar(255) default NULL,
  `parent_type` varchar(255) default NULL,
  `parent_id` char(36) default NULL,
  `contact_id` char(36) default NULL,
  `portal_flag` tinyint(1) default '0',
  `embed_flag` tinyint(1) default '0',
  `description` text,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_notes_tmst_id` (`team_set_id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (NULL,'1','1','caf41da1-e49d-804d-ea9b-510665291caa','2013-01-28 11:46:02','2013-01-28 11:46:02','1','1','Email Attachment : Quote_test_1.pdf','application/pdf','Quote_test_1.pdf','Emails','a317eb1a-7b83-9911-9653-510665988537',NULL,0,0,NULL,0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `name` varchar(255) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `is_read` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_audit`
--

DROP TABLE IF EXISTS `notifications_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `notifications_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_notifications_primary` (`id`),
  KEY `idx_notifications_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `notifications_audit`
--

LOCK TABLES `notifications_audit` WRITE;
/*!40000 ALTER TABLE `notifications_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `opportunity_type` varchar(255) default NULL,
  `campaign_id` char(36) default NULL,
  `lead_source` varchar(50) default NULL,
  `amount` double default NULL,
  `amount_usdollar` double default NULL,
  `currency_id` char(36) default NULL,
  `date_closed` date default NULL,
  `next_step` varchar(100) default NULL,
  `sales_stage` varchar(255) default NULL,
  `probability` double default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_opportunities_tmst_id` (`team_set_id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_opportunities_primary` (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) default NULL,
  `opportunity_id` varchar(36) default NULL,
  `contact_role` varchar(50) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) default NULL,
  `type` varchar(15) default 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) default 'smtp',
  `mail_smtptype` varchar(20) default 'other',
  `mail_smtpserver` varchar(100) default NULL,
  `mail_smtpport` int(5) default '0',
  `mail_smtpuser` varchar(100) default NULL,
  `mail_smtppass` varchar(100) default NULL,
  `mail_smtpauth_req` tinyint(1) default '0',
  `mail_smtpssl` int(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('b2722d09-de6e-eaca-9e6a-50f7daa794fa','system','system','1','SMTP','other','',25,'','',1,0);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_bundle_note`
--

DROP TABLE IF EXISTS `product_bundle_note`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_bundle_note` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `bundle_id` varchar(36) default NULL,
  `note_id` varchar(36) default NULL,
  `note_index` int(11) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_pbn_bundle` (`bundle_id`),
  KEY `idx_pbn_note` (`note_id`),
  KEY `idx_pbn_pb_nb` (`note_id`,`bundle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_bundle_note`
--

LOCK TABLES `product_bundle_note` WRITE;
/*!40000 ALTER TABLE `product_bundle_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_bundle_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_bundle_notes`
--

DROP TABLE IF EXISTS `product_bundle_notes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_bundle_notes` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_bundle_notes`
--

LOCK TABLES `product_bundle_notes` WRITE;
/*!40000 ALTER TABLE `product_bundle_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_bundle_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_bundle_product`
--

DROP TABLE IF EXISTS `product_bundle_product`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_bundle_product` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `bundle_id` varchar(36) default NULL,
  `product_id` varchar(36) default NULL,
  `product_index` int(11) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_pbp_bundle` (`bundle_id`),
  KEY `idx_pbp_quote` (`product_id`),
  KEY `idx_pbp_bq` (`product_id`,`bundle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_bundle_product`
--

LOCK TABLES `product_bundle_product` WRITE;
/*!40000 ALTER TABLE `product_bundle_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_bundle_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_bundle_quote`
--

DROP TABLE IF EXISTS `product_bundle_quote`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_bundle_quote` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `bundle_id` varchar(36) default NULL,
  `quote_id` varchar(36) default NULL,
  `bundle_index` int(11) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_pbq_bundle` (`bundle_id`),
  KEY `idx_pbq_quote` (`quote_id`),
  KEY `idx_pbq_bq` (`quote_id`,`bundle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_bundle_quote`
--

LOCK TABLES `product_bundle_quote` WRITE;
/*!40000 ALTER TABLE `product_bundle_quote` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_bundle_quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_bundles`
--

DROP TABLE IF EXISTS `product_bundles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_bundles` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(255) default NULL,
  `bundle_stage` varchar(255) default NULL,
  `description` text,
  `tax` decimal(26,6) default NULL,
  `tax_usdollar` decimal(26,6) default NULL,
  `total` decimal(26,6) default NULL,
  `total_usdollar` decimal(26,6) default NULL,
  `subtotal_usdollar` decimal(26,6) default NULL,
  `shipping_usdollar` decimal(26,6) default NULL,
  `deal_tot` decimal(26,2) default NULL,
  `deal_tot_usdollar` decimal(26,2) default NULL,
  `new_sub` decimal(26,6) default NULL,
  `new_sub_usdollar` decimal(26,6) default NULL,
  `subtotal` decimal(26,6) default NULL,
  `shipping` decimal(26,6) default NULL,
  `currency_id` char(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_product_bundles_tmst_id` (`team_set_id`),
  KEY `idx_products_bundles` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_bundles`
--

LOCK TABLES `product_bundles` WRITE;
/*!40000 ALTER TABLE `product_bundles` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_bundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_categories` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(50) default NULL,
  `list_order` int(4) default NULL,
  `description` text,
  `parent_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_productcategories` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_product`
--

DROP TABLE IF EXISTS `product_product`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_product` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `parent_id` varchar(36) default NULL,
  `child_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_pp_parent` (`parent_id`),
  KEY `idx_pp_child` (`child_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_product`
--

LOCK TABLES `product_product` WRITE;
/*!40000 ALTER TABLE `product_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_templates`
--

DROP TABLE IF EXISTS `product_templates`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_templates` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `type_id` char(36) default NULL,
  `manufacturer_id` char(36) default NULL,
  `category_id` char(36) default NULL,
  `name` varchar(50) default NULL,
  `mft_part_num` varchar(50) default NULL,
  `vendor_part_num` varchar(50) default NULL,
  `date_cost_price` date default NULL,
  `cost_price` decimal(26,6) default NULL,
  `discount_price` decimal(26,6) default NULL,
  `list_price` decimal(26,6) default NULL,
  `cost_usdollar` decimal(26,6) default NULL,
  `discount_usdollar` decimal(26,6) default NULL,
  `list_usdollar` decimal(26,6) default NULL,
  `currency_id` char(36) default NULL,
  `currency` varchar(255) default NULL,
  `status` varchar(100) default NULL,
  `tax_class` varchar(100) default NULL,
  `date_available` date default NULL,
  `website` varchar(255) default NULL,
  `weight` decimal(12,2) default NULL,
  `qty_in_stock` int(5) default NULL,
  `description` text,
  `support_name` varchar(50) default NULL,
  `support_description` varchar(255) default NULL,
  `support_contact` varchar(50) default NULL,
  `support_term` varchar(100) default NULL,
  `pricing_formula` varchar(100) default NULL,
  `pricing_factor` decimal(8,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_product_template` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_templates`
--

LOCK TABLES `product_templates` WRITE;
/*!40000 ALTER TABLE `product_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `product_types` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(50) default NULL,
  `description` text,
  `list_order` int(4) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_producttypes` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `products` (
  `id` char(36) NOT NULL,
  `name` varchar(50) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `product_template_id` char(36) default NULL,
  `account_id` char(36) default NULL,
  `contact_id` char(36) default NULL,
  `type_id` char(36) default NULL,
  `quote_id` char(36) default NULL,
  `manufacturer_id` char(36) default NULL,
  `category_id` char(36) default NULL,
  `mft_part_num` varchar(50) default NULL,
  `vendor_part_num` varchar(50) default NULL,
  `date_purchased` date default NULL,
  `cost_price` decimal(26,6) default NULL,
  `discount_price` decimal(26,6) default NULL,
  `discount_amount` decimal(26,6) default NULL,
  `discount_amount_usdollar` decimal(26,6) default NULL,
  `discount_select` tinyint(1) default '0',
  `deal_calc` decimal(26,6) default NULL,
  `deal_calc_usdollar` decimal(26,6) default NULL,
  `list_price` decimal(26,6) default NULL,
  `cost_usdollar` decimal(26,6) default NULL,
  `discount_usdollar` decimal(26,6) default NULL,
  `list_usdollar` decimal(26,6) default NULL,
  `currency_id` char(36) default NULL,
  `status` varchar(100) default NULL,
  `tax_class` varchar(100) default NULL,
  `website` varchar(255) default NULL,
  `weight` decimal(12,2) default NULL,
  `quantity` int(5) default NULL,
  `support_name` varchar(50) default NULL,
  `support_description` varchar(255) default NULL,
  `support_contact` varchar(50) default NULL,
  `support_term` varchar(100) default NULL,
  `date_support_expires` date default NULL,
  `date_support_starts` date default NULL,
  `pricing_formula` varchar(100) default NULL,
  `pricing_factor` int(4) default NULL,
  `serial_number` varchar(50) default NULL,
  `asset_number` varchar(50) default NULL,
  `book_value` decimal(26,6) default NULL,
  `book_value_usdollar` decimal(26,6) default NULL,
  `book_value_date` date default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_products_tmst_id` (`team_set_id`),
  KEY `idx_products` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_audit`
--

DROP TABLE IF EXISTS `products_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_products_primary` (`id`),
  KEY `idx_products_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `products_audit`
--

LOCK TABLES `products_audit` WRITE;
/*!40000 ALTER TABLE `products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `project` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `assigned_user_id` char(36) default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(50) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `estimated_start_date` date default NULL,
  `estimated_end_date` date default NULL,
  `status` varchar(255) default NULL,
  `priority` varchar(255) default NULL,
  `is_template` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_project_tmst_id` (`team_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_resources`
--

DROP TABLE IF EXISTS `project_resources`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `project_resources` (
  `id` char(36) NOT NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `project_id` char(36) default NULL,
  `resource_id` char(36) default NULL,
  `resource_type` varchar(20) default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `project_resources`
--

LOCK TABLES `project_resources` WRITE;
/*!40000 ALTER TABLE `project_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `project_task` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) default NULL,
  `name` varchar(50) default NULL,
  `status` varchar(255) default NULL,
  `description` text,
  `resource_id` text,
  `predecessors` text,
  `date_start` date default NULL,
  `time_start` int(11) default NULL,
  `time_finish` int(11) default NULL,
  `date_finish` date default NULL,
  `duration` int(11) default NULL,
  `duration_unit` text,
  `actual_duration` int(11) default NULL,
  `percent_complete` int(11) default NULL,
  `parent_task_id` int(11) default NULL,
  `assigned_user_id` char(36) default NULL,
  `modified_user_id` char(36) default NULL,
  `priority` varchar(255) default NULL,
  `created_by` char(36) default NULL,
  `milestone_flag` tinyint(1) default '0',
  `order_number` int(11) default '1',
  `task_number` int(11) default NULL,
  `estimated_effort` int(11) default NULL,
  `actual_effort` int(11) default NULL,
  `deleted` tinyint(1) default '0',
  `utilization` int(11) default '100',
  PRIMARY KEY  (`id`),
  KEY `idx_project_task_tmst_id` (`team_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_project_task_primary` (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) default NULL,
  `project_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) default NULL,
  `project_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) default NULL,
  `project_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) default NULL,
  `project_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) default NULL,
  `project_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) default NULL,
  `project_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_quotes`
--

DROP TABLE IF EXISTS `projects_quotes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `projects_quotes` (
  `id` varchar(36) NOT NULL,
  `quote_id` varchar(36) default NULL,
  `project_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_proj_quote_proj` (`project_id`),
  KEY `idx_proj_quote_quote` (`quote_id`),
  KEY `projects_quotes_alt` (`project_id`,`quote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `projects_quotes`
--

LOCK TABLES `projects_quotes` WRITE;
/*!40000 ALTER TABLE `projects_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) default NULL,
  `campaign_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) default NULL,
  `list_type` varchar(100) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `deleted` tinyint(1) default '0',
  `description` text,
  `domain_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_prospect_lists_tmst_id` (`team_set_id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) default NULL,
  `related_id` varchar(36) default NULL,
  `related_type` varchar(25) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `salutation` varchar(255) default NULL,
  `first_name` varchar(100) default NULL,
  `last_name` varchar(100) default NULL,
  `title` varchar(100) default NULL,
  `department` varchar(255) default NULL,
  `do_not_call` tinyint(1) default '0',
  `phone_home` varchar(100) default NULL,
  `phone_mobile` varchar(100) default NULL,
  `phone_work` varchar(100) default NULL,
  `phone_other` varchar(100) default NULL,
  `phone_fax` varchar(100) default NULL,
  `primary_address_street` varchar(150) default NULL,
  `primary_address_city` varchar(100) default NULL,
  `primary_address_state` varchar(100) default NULL,
  `primary_address_postalcode` varchar(20) default NULL,
  `primary_address_country` varchar(255) default NULL,
  `alt_address_street` varchar(150) default NULL,
  `alt_address_city` varchar(100) default NULL,
  `alt_address_state` varchar(100) default NULL,
  `alt_address_postalcode` varchar(20) default NULL,
  `alt_address_country` varchar(255) default NULL,
  `assistant` varchar(75) default NULL,
  `assistant_phone` varchar(100) default NULL,
  `tracker_key` int(11) NOT NULL auto_increment,
  `birthdate` date default NULL,
  `lead_id` char(36) default NULL,
  `account_name` varchar(150) default NULL,
  `campaign_id` char(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_prospects_tmst_id` (`team_set_id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotas`
--

DROP TABLE IF EXISTS `quotas`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `quotas` (
  `id` char(36) NOT NULL,
  `user_id` char(36) default NULL,
  `timeperiod_id` char(36) NOT NULL,
  `quota_type` varchar(100) default NULL,
  `amount` int(11) default NULL,
  `amount_base_currency` int(11) default NULL,
  `currency_id` char(36) NOT NULL,
  `committed` tinyint(1) default '0',
  `modified_user_id` char(36) default NULL,
  `created_by` varchar(36) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `quotas`
--

LOCK TABLES `quotas` WRITE;
/*!40000 ALTER TABLE `quotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(50) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `shipper_id` char(36) default NULL,
  `currency_id` char(36) default NULL,
  `taxrate_id` char(36) default NULL,
  `show_line_nums` tinyint(1) default '1',
  `calc_grand_total` tinyint(1) default '1',
  `quote_type` varchar(100) default NULL,
  `date_quote_expected_closed` date default NULL,
  `original_po_date` date default NULL,
  `payment_terms` varchar(128) default NULL,
  `date_quote_closed` date default NULL,
  `date_order_shipped` date default NULL,
  `order_stage` varchar(100) default NULL,
  `quote_stage` varchar(100) default NULL,
  `purchase_order_num` varchar(50) default NULL,
  `quote_num` int(11) NOT NULL auto_increment,
  `subtotal` decimal(26,6) default NULL,
  `subtotal_usdollar` decimal(26,6) default NULL,
  `shipping` decimal(26,6) default NULL,
  `shipping_usdollar` decimal(26,6) default NULL,
  `discount` decimal(26,6) default NULL,
  `deal_tot` decimal(26,2) default NULL,
  `deal_tot_usdollar` decimal(26,2) default NULL,
  `new_sub` decimal(26,6) default NULL,
  `new_sub_usdollar` decimal(26,6) default NULL,
  `tax` decimal(26,6) default NULL,
  `tax_usdollar` decimal(26,6) default NULL,
  `total` decimal(26,6) default NULL,
  `total_usdollar` decimal(26,6) default NULL,
  `billing_address_street` varchar(150) default NULL,
  `billing_address_city` varchar(100) default NULL,
  `billing_address_state` varchar(100) default NULL,
  `billing_address_postalcode` varchar(20) default NULL,
  `billing_address_country` varchar(100) default NULL,
  `shipping_address_street` varchar(150) default NULL,
  `shipping_address_city` varchar(100) default NULL,
  `shipping_address_state` varchar(100) default NULL,
  `shipping_address_postalcode` varchar(20) default NULL,
  `shipping_address_country` varchar(100) default NULL,
  `system_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `quote_num` (`quote_num`,`system_id`),
  KEY `idx_quotes_tmst_id` (`team_set_id`),
  KEY `idx_qte_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES ('216cc0a5-f1e3-79dd-c4f6-51066491a9fa','test','2013-01-28 11:45:33','2013-01-28 11:45:33','1','1',NULL,0,'1','1','1',NULL,'-99',NULL,1,1,'Quotes','2013-01-31',NULL,NULL,NULL,NULL,NULL,'Draft',NULL,1,'0.000000','0.000000','0.000000','0.000000',NULL,'0.00',NULL,'0.000000',NULL,'0.000000','0.000000','0.000000','0.000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes_accounts`
--

DROP TABLE IF EXISTS `quotes_accounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `quotes_accounts` (
  `id` varchar(36) NOT NULL,
  `quote_id` varchar(36) default NULL,
  `account_id` varchar(36) default NULL,
  `account_role` varchar(20) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_acc_qte_acc` (`account_id`),
  KEY `idx_acc_qte_opp` (`quote_id`),
  KEY `idx_quote_account_role` (`quote_id`,`account_role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `quotes_accounts`
--

LOCK TABLES `quotes_accounts` WRITE;
/*!40000 ALTER TABLE `quotes_accounts` DISABLE KEYS */;
INSERT INTO `quotes_accounts` VALUES ('afdc29c4-8b18-10bf-524a-510664eeab0f','216cc0a5-f1e3-79dd-c4f6-51066491a9fa','f1534f3b-7b78-69b9-7524-51066491d80c','Ship To','2013-01-28 11:45:33',0),('b375627a-29ae-86a7-0aaa-5106648866ff','216cc0a5-f1e3-79dd-c4f6-51066491a9fa','f1534f3b-7b78-69b9-7524-51066491d80c','Bill To','2013-01-28 11:45:33',0);
/*!40000 ALTER TABLE `quotes_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes_audit`
--

DROP TABLE IF EXISTS `quotes_audit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text,
  KEY `idx_quotes_primary` (`id`),
  KEY `idx_quotes_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `quotes_audit`
--

LOCK TABLES `quotes_audit` WRITE;
/*!40000 ALTER TABLE `quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes_contacts`
--

DROP TABLE IF EXISTS `quotes_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `quotes_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) default NULL,
  `quote_id` varchar(36) default NULL,
  `contact_role` varchar(20) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_qte_con` (`contact_id`),
  KEY `idx_con_qte_opp` (`quote_id`),
  KEY `idx_quote_contact_role` (`quote_id`,`contact_role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `quotes_contacts`
--

LOCK TABLES `quotes_contacts` WRITE;
/*!40000 ALTER TABLE `quotes_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotes_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes_opportunities`
--

DROP TABLE IF EXISTS `quotes_opportunities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `quotes_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) default NULL,
  `quote_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_opp_qte_opp` (`opportunity_id`),
  KEY `idx_quote_oportunities` (`quote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `quotes_opportunities`
--

LOCK TABLES `quotes_opportunities` WRITE;
/*!40000 ALTER TABLE `quotes_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotes_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) default NULL,
  `lhs_module` varchar(100) default NULL,
  `lhs_table` varchar(64) default NULL,
  `lhs_key` varchar(64) default NULL,
  `rhs_module` varchar(100) default NULL,
  `rhs_table` varchar(64) default NULL,
  `rhs_key` varchar(64) default NULL,
  `join_table` varchar(64) default NULL,
  `join_key_lhs` varchar(64) default NULL,
  `join_key_rhs` varchar(64) default NULL,
  `relationship_type` varchar(64) default NULL,
  `relationship_role_column` varchar(64) default NULL,
  `relationship_role_column_value` varchar(50) default NULL,
  `reverse` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('97f4524f-2806-78fe-a24b-5110d839714d','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9846c8a4-1695-d540-ec44-5110d800c54f','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('988c18fb-797c-5e95-eb58-5110d85e6df6','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('98cfd51f-dfad-08a3-76f0-5110d8cac6c4','leads_team_count_relationship','Teams','team_sets','id','Leads','leads','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99244a46-8eb4-9987-0bd2-5110d81812eb','leads_teams','Leads','leads','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('996c59f0-a5aa-3df2-7e30-5110d8d9e204','leads_team','Teams','teams','id','Leads','leads','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99bb1643-3650-8900-0896-5110d8570b9d','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('9a1b5ea6-6fd9-f46f-95e7-5110d8d29f40','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('9a684e9b-6d29-12ed-a91e-5110d811569e','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9ab3cebf-fd55-cce5-ddc3-5110d873aefc','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('9afdc52e-89d8-4af6-d283-5110d826afc0','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('9b46f06c-0876-95d7-ba51-5110d8af7d7f','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('9b905a97-6805-c5ea-e9c1-5110d858abe0','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('9bd957ab-7c79-779b-0216-5110d81d7b2a','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('9c21c88c-ced4-9eeb-3679-5110d8956969','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9edef628-785b-5d76-76b0-5110d88535da','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9f2f8906-cce3-3cf5-3426-5110d8d3417e','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9f80b781-0a86-5013-7e3a-5110d89ed257','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9fd8a4ce-2dfe-dfba-7261-5110d8e4d338','cases_team_count_relationship','Teams','team_sets','id','Cases','cases','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a02fab20-ea2d-e3cf-87aa-5110d8f8b2a6','cases_teams','Cases','cases','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('a077183f-a547-5bba-84ce-5110d8616882','cases_team','Teams','teams','id','Cases','cases','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a0bb89ec-7c79-6909-a224-5110d8f0280b','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a1005fee-742b-b491-5f34-5110d8c64010','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a144ab86-ef0b-a92c-788e-5110d8a69e42','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a18934be-8951-3d8b-6297-5110d87b62b9','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a1d3b1c5-8251-9944-4a33-5110d89de85a','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a4a81026-ae89-8cdc-cef0-5110d8f5fe14','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4f3947a-ad17-36b6-0be5-5110d83870d3','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a53bcf8e-7116-d1f4-46e5-5110d8c5c926','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a583c863-69d9-d774-e3b4-5110d825d5f1','bugs_team_count_relationship','Teams','team_sets','id','Bugs','bugs','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a5cb2f28-1521-5732-ce0b-5110d8a9f7e7','bugs_teams','Bugs','bugs','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('a613f6a3-cda0-dc1f-3888-5110d8033496','bugs_team','Teams','teams','id','Bugs','bugs','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a66348b6-8fc1-3aa6-cf67-5110d83a2e65','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('a6af6bd5-4939-d7ab-923c-5110d868920e','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('a6f90f76-e4ce-4057-705a-5110d8a0f2cc','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('a7413bdc-7407-4e61-f318-5110d8740515','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('a789aac3-eae9-6d8d-0061-5110d8fa4cea','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('a7d45af4-64cd-08b4-34ab-5110d80b51e6','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a817a018-fa52-0551-acbf-5110d89e0f4a','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a9947421-df37-b262-9422-5110d8ff103c','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a9f14ed0-2c2a-9fc5-a26b-5110d8a7f413','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('aa41f364-ebd3-9445-1359-5110d8dd2ed7','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('aa9eb64e-5df2-2684-ed5f-5110d8b77339','users_team_count_relationship','Teams','team_sets','id','users','users','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aaf1579e-2821-51df-ec12-5110d8032616','users_teams','users','users','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('ab43fa35-df3e-6a3f-1333-5110d8ce3589','users_team','Teams','teams','id','users','users','default_team',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('acb569c4-f93b-a61c-c1a5-5110d808adc5','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('acfe8d75-18f8-eaa2-1f57-5110d8276770','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('af4df27c-b975-eba6-3c32-5110d85246e4','project_team_count_relationship','Teams','team_sets','id','Project','project','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('afb77fa9-0e12-f3de-b8f7-5110d83db3f6','project_teams','Project','project','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('b00c5983-6205-dcb3-cb3d-5110d8bd47f1','project_team','Teams','teams','id','Project','project','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b051c9e1-ac72-0a14-eaca-5110d84d76a8','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b0aa0901-75e6-9f60-53ae-5110d89e40a0','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b0f4307b-4d6b-5cd3-c13d-5110d8c110bf','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b163b3f0-8261-2893-bd65-5110d8bbb568','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b1b3dfd2-7350-5342-386c-5110d88d9527','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b1fe0fb1-5c0b-5714-1b1b-5110d89f43ca','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b25088dc-3342-227e-8237-5110d80ceadd','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b297d780-cae9-8b91-7fe3-5110d8ceeaf1','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b2db25d2-88fb-df76-dafe-5110d87c7119','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b31f84ad-315b-0b7b-ec6f-5110d8cc9464','projects_users_resources','Project','project','id','Users','users','id','project_resources','project_id','resource_id','many-to-many','resource_type','Users',0,0),('b3638d2a-1df0-3b08-2af1-5110d8b118b2','projects_contacts_resources','Project','project','id','Contacts','contacts','id','project_resources','project_id','resource_id','many-to-many','resource_type','Contacts',0,0),('b3ab6635-5cd4-fa5b-9ac1-5110d8a3c526','projects_holidays','Project','project','id','Holidays','holidays','related_module_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b6221150-ce0f-e283-6e21-5110d8810a73','projecttask_team_count_relationship','Teams','team_sets','id','ProjectTask','project_task','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b66f23fe-ba84-5050-2307-5110d849a556','projecttask_teams','ProjectTask','project_task','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('b6bb30a6-ad12-172a-762b-5110d813750f','projecttask_team','Teams','teams','id','ProjectTask','project_task','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b7016415-66b8-a355-94fa-5110d8f04a42','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('b745f6f5-67d9-6426-3178-5110d8dee80d','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('b79b16ac-5ebd-d96d-cdab-5110d8dd1d36','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('b7ed3a1a-a7ce-b394-8796-5110d854fad5','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('b83fc0bc-ebc0-d308-92e5-5110d83a74cf','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('b8a247c0-d98c-27f7-3acf-5110d8a4ee38','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b90f7f60-7358-2faf-fb42-5110d8e0ca13','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b98ea4d5-ade0-ac63-9ebf-5110d8ab263f','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc8737db-4a3d-c7d5-5955-5110d8f57bbf','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bcd16d2d-1d92-fefc-997c-5110d8458238','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd191aee-b13b-b32a-8bdb-5110d83a6cda','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd7fe2f1-e12a-83c5-5090-5110d89e527d','campaigns_team_count_relationship','Teams','team_sets','id','Campaigns','campaigns','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('be155051-f023-cda4-b27b-5110d84f211c','campaigns_teams','Campaigns','campaigns','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('be91528f-6cd0-1b7d-3e43-5110d895cff9','campaigns_team','Teams','teams','id','Campaigns','campaigns','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bede683f-3980-3c15-c731-5110d8e692d7','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bf2710c6-4eab-74a4-aecd-5110d83814b3','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bf6fe243-9768-b548-ea87-5110d8777cde','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bfb82439-12a0-2937-e96e-5110d81b4d3c','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c005f0d7-a7f7-f5c5-cfb5-5110d8063f68','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c058405a-36fe-aa28-4d13-5110d8be0b55','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c0a2a131-3e07-0197-0afb-5110d8f926a9','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c0ebc17b-2cc0-c5e0-531a-5110d8139d8f','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c1336ce0-2457-75c1-c6db-5110d86d687f','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c17af3b4-7014-16a9-ff9e-5110d8bc0997','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4757ec6-b824-f5da-3ef8-5110d8279198','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4c958a7-7604-afba-0271-5110d803292a','prospectlists_team_count_relationship','Teams','team_sets','id','ProspectLists','prospect_lists','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c5133d50-b34e-aca9-1f0a-5110d84c08dd','prospectlists_teams','ProspectLists','prospect_lists','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('c55d488b-cd34-8eb3-114b-5110d8d54eaf','prospectlists_team','Teams','teams','id','ProspectLists','prospect_lists','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c82a2c46-75e0-e00e-84cc-5110d88dfb92','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c8755017-1d57-54d3-0096-5110d8408129','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c8bdddd6-f926-ce8d-0dcb-5110d88c0ee3','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c90654b9-5ec4-b678-0b18-5110d8a8a904','prospects_team_count_relationship','Teams','team_sets','id','Prospects','prospects','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c951229d-051b-b939-4ec3-5110d8732337','prospects_teams','Prospects','prospects','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('c9a2d537-ae8e-a1db-a6ca-5110d80c75d2','prospects_team','Teams','teams','id','Prospects','prospects','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c9f24e61-b847-6625-0840-5110d8b7299b','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('ca428715-6d17-17f8-053d-5110d8b95a13','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('ca98b824-e979-379b-b1e7-5110d807ba2a','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('caf93966-25d3-bbc6-530e-5110d8cacb5a','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('cb533ca5-8947-48a4-51d0-5110d802fca8','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('cbb5ac17-6dee-b654-88fe-5110d8a009bd','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('cc0cefbb-cd56-1c75-892b-5110d89dabd6','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('cc563237-99a4-3a2a-ebc8-5110d8327307','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d42184e6-d48d-deb4-9db6-5110d816a376','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e07419e7-d214-e994-e7a4-5110d8addfdf','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6eda0169-c930-7c1f-dc66-5110d83dda09','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('75020b40-d6aa-c860-9a2f-5110d8348184','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('7a690149-3566-e27c-3f34-5110d8442f6c','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','schedulers_times','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1037540c-51ea-344d-4bde-5110d83d7368','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('108e7f88-167e-988c-be24-5110d875373d','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('10d6f64a-4361-6d01-7f6f-5110d8967435','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1133650d-1a5d-737b-073c-5110d8ae9354','contacts_team_count_relationship','Teams','team_sets','id','Contacts','contacts','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1187e419-bebb-0a36-4060-5110d82f8ebe','contacts_teams','Contacts','contacts','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('11d0fea8-c7e1-92bb-9df2-5110d8c48f80','contacts_team','Teams','teams','id','Contacts','contacts','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12199d16-6e50-210b-f54b-5110d893a545','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('1261fc6e-8e1e-fae3-2ce2-5110d8319e9a','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('12aa0d04-6ff3-8717-7f88-5110d8bcd700','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12f13c32-ef9f-39ad-6df3-5110d846991a','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1337cf63-c2bc-7a12-d1be-5110d81cb18a','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1392be8e-1c27-eb05-f691-5110d8866f07','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13fbcc9d-fd91-6ff3-1fb3-5110d84c20c0','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('1464dd1d-9cb6-bade-4f1a-5110d87a0a5e','contact_products','Contacts','contacts','id','Products','products','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('14ae3ae2-690d-621f-b777-5110d8001614','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('181ea573-f6d4-d498-0c7f-5110d8577716','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('187e2c99-5a04-6e48-83f1-5110d811aafc','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18d6c6b1-0f6f-fd74-e4e9-5110d845b133','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('192bc401-59e3-ae20-307e-5110d806bce5','accounts_team_count_relationship','Teams','team_sets','id','Accounts','accounts','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('19789ec3-1a65-e778-cc74-5110d8587baf','accounts_teams','Accounts','accounts','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('19cec291-7985-244d-daa6-5110d8dccaeb','accounts_team','Teams','teams','id','Accounts','accounts','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a418576-2d5b-3782-fed9-5110d8d08d51','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('1aaab528-c391-72b1-b1aa-5110d86e9b5f','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('1af856d0-15e8-a1e3-c745-5110d8b6c5a7','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b66872e-ca34-384e-6a45-5110d8bbce63','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1bb9c705-51ef-b628-54c6-5110d88d6d4b','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1c032c99-8794-7b94-1b8e-5110d8307397','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1c4ac41c-f7a5-56d6-c02d-5110d8cdb6c5','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1cb5bac6-c16f-e429-7c45-5110d84a78ed','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1d2d2c2a-039a-93e6-8a9b-5110d875ab04','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1da0671e-d072-24e0-f332-5110d8ace7bb','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1def70da-076e-8674-8906-5110d8c48f20','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20f87da3-007c-6565-b0b8-5110d8fce5fb','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('215f8d4c-b050-c6f0-9b7a-5110d817d421','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('21bbd920-4284-b049-7143-5110d82aad26','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('220f6d2f-e3c8-b14e-4d54-5110d83cfa96','opportunities_team_count_relationship','Teams','team_sets','id','Opportunities','opportunities','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2261f924-d924-4240-261d-5110d8506aa2','opportunities_teams','Opportunities','opportunities','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('22b44868-611b-9679-2c16-5110d8a7b7a3','opportunities_team','Teams','teams','id','Opportunities','opportunities','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('23311a47-37b8-f3ca-ffe5-5110d8742aef','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('23ad1fcb-daed-0ae0-66e2-5110d878bd09','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('2435c924-90ee-7b81-85a7-5110d89d5f8f','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('24ab3070-8004-b855-72e0-5110d8d0d08d','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('2520f6c6-9951-53b5-a572-5110d84d8d9a','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('25b5ce34-3ecb-658a-230b-5110d80209cc','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2637c1ef-46f2-71b4-76b9-5110d88a39a3','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('26ac0f8d-d34d-a8c7-ce3b-5110d8c59bc9','opportunities_campaign','campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('32fed235-746b-c2d2-643c-5110d81b361f','emailtemplates_team_count_relationship','Teams','team_sets','id','EmailTemplates','email_templates','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('336323f2-a4c1-a5e4-3046-5110d82dac25','emailtemplates_teams','EmailTemplates','email_templates','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('33bf2884-9e5f-b4d9-c4a8-5110d8089218','emailtemplates_team','Teams','teams','id','EmailTemplates','email_templates','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34142466-c5b5-7f64-9adb-5110d848b2f2','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('39886ebf-879d-b8ea-0f25-5110d82da8b6','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('39e91504-8f70-ff55-55a4-5110d88aae6a','notes_team_count_relationship','Teams','team_sets','id','Notes','notes','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a44f9b9-312e-b719-6e0b-5110d8b33aa1','notes_teams','Notes','notes','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('3aa0bf14-1ea1-a708-a235-5110d8306155','notes_team','Teams','teams','id','Notes','notes','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3afb89c8-d362-8a5b-1049-5110d877968a','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b5b6293-eff1-8b27-53ad-5110d8a86aff','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e571aab-511f-f454-e5a2-5110d8c9ef9c','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3eb57bc6-9712-63c1-3ed8-5110d83f8e5c','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f0915e3-2b41-4b7f-cf30-5110d8904439','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f603fac-fd9c-9ff8-83af-5110d81f9733','calls_team_count_relationship','Teams','team_sets','id','Calls','calls','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3fb0984c-9fe6-e6d8-c000-5110d832170c','calls_teams','Calls','calls','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('3ffbd1b3-41b0-b45e-21a5-5110d866ea41','calls_team','Teams','teams','id','Calls','calls','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('40436e23-5842-9b77-3b19-5110d8b47ba8','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('481392f7-f7b1-29c1-bdb9-5110d83951ac','emails_team_count_relationship','Teams','team_sets','id','Emails','emails','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('48678d3c-dfdf-d9ee-8a15-5110d876218b','emails_teams','Emails','emails','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('48c1a787-439f-3f1c-2d86-5110d8c5ec8b','emails_team','Teams','teams','id','Emails','emails','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('49215e69-ecf7-dda7-a98b-5110d8d79344','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4978a31e-077b-cfb8-d875-5110d8f5c188','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('49cbbcf9-6c34-9360-545d-5110d83476f0','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a0e7cb4-85d8-d3d6-953d-5110d889eee6','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c8ec05f-b475-ce0d-d1d9-5110d855c9d1','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4cd558f7-12e3-7484-adcd-5110d8107ae4','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d22eb66-bb4f-8ad0-c6b7-5110d83673f6','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d6d8056-9526-f102-0435-5110d895c064','meetings_team_count_relationship','Teams','team_sets','id','Meetings','meetings','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4db6d4ba-ccd8-d4aa-8885-5110d859046f','meetings_teams','Meetings','meetings','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('4dff8a5b-c5ab-8cbe-c8db-5110d838de5d','meetings_team','Teams','teams','id','Meetings','meetings','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e479c23-16d7-cd54-085c-5110d866a25e','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('50acaf28-dbe8-13d6-975f-5110d81b966f','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50f6ea53-86cc-76b9-631b-5110d8346049','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5137df46-6d4f-7f9f-339d-5110d82cafdf','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5178b475-cfc7-a9c2-4e44-5110d8cadeb0','tasks_team_count_relationship','Teams','team_sets','id','Tasks','tasks','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51b913ef-8cc7-b4e6-6dea-5110d8c8f3d7','tasks_teams','Tasks','tasks','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('51fa603e-3efd-8a21-78aa-5110d8b7c227','tasks_team','Teams','teams','id','Tasks','tasks','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a63650c-6fda-338e-6309-5110d86ffcca','tracker_monitor_id','TrackerPerfs','tracker_perf','monitor_id','Trackers','tracker','monitor_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('6cb9dd3d-2c36-586b-855e-5110d830bb2b','tracker_user_id','Users','users','id','TrackerSessions','tracker','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a061906d-27d1-02e2-ac7f-5110d80261f6','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a0a975a0-9b3e-90a3-3a8c-5110d8608c82','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a0ec23a6-ade3-de31-4d04-5110d84a06b3','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a12e5f6e-f00a-44ae-7716-5110d85cc0db','documents_team_count_relationship','Teams','team_sets','id','Documents','documents','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a17110e6-932f-481a-9574-5110d82e8e24','documents_teams','Documents','documents','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('a1b304af-923f-4bdb-5a12-5110d89c5426','documents_team','Teams','teams','id','Documents','documents','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1f70f0b-895d-7fa9-d0cf-5110d84f1a19','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bfe0e8ce-26f5-3e2c-1b88-5110d8c2ee01','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d2d36ab8-ddc4-de60-bcb5-5110d801aaac','inboundemail_team_count_relationship','Teams','team_sets','id','InboundEmail','inbound_email','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d321482a-0aaf-d201-3a6d-5110d81e2be9','inboundemail_teams','InboundEmail','inbound_email','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('d381d367-91a2-c3d3-596f-5110d88162c6','inboundemail_team','Teams','teams','id','InboundEmail','inbound_email','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d3cea0c5-d924-a018-06e6-5110d89b148e','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('d4181b58-95f1-165b-b90d-5110d83ee6fc','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('dec92d09-c101-0446-4f76-5110d8925a32','savedsearch_team_count_relationship','Teams','team_sets','id','SavedSearch','saved_search','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df2cdd44-02b8-9417-4a39-5110d8cc002b','savedsearch_teams','SavedSearch','saved_search','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('df83ca4d-b9d4-6c09-e71a-5110d866301a','savedsearch_team','Teams','teams','id','SavedSearch','saved_search','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dfc9c56a-f252-afe4-5e65-5110d8e23a32','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ec3b0304-6b7b-9a5c-c122-5110d8b8fea7','reports_team_count_relationship','Teams','team_sets','id','Reports','saved_reports','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ec8d24e1-61d6-a12a-6171-5110d8187bf1','reports_teams','Reports','saved_reports','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('ecdc5bd1-9e95-439c-2c33-5110d83787be','reports_team','Teams','teams','id','Reports','saved_reports','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ed2b73d6-680c-22e4-9810-5110d8ce8d69','report_assigned_user','Users','users','id','Reports','saved_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a7b096c-8159-e7a3-94de-5110d8362920','contracts_modified_user','Users','users','id','Contracts','contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1fe00658-6724-fe71-f360-5110d8567f78','contracts_created_by','Users','users','id','Contracts','contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('25100cc1-1a85-90d9-f35f-5110d88a01a1','contracts_assigned_user','Users','users','id','Contracts','contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2a3d03ac-81bf-8359-355b-5110d8dd2bc3','contracts_team_count_relationship','Teams','team_sets','id','Contracts','contracts','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f3004f4-2a04-27fa-fe73-5110d8e7e3bb','contracts_teams','Contracts','contracts','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('35a0017d-bf9e-c0c3-89b3-5110d86e2d57','contracts_team','Teams','teams','id','Contracts','contracts','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b5d082e-5120-4477-1e26-5110d8781bbc','contracts_contract_types','Contracts','contracts','type','ContractTypes','contract_types','id',NULL,NULL,NULL,'one-to-many','type','Contracts',0,0),('4042098f-0dfc-2b61-f42e-5110d8644687','contract_notes','Contracts','contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contracts',0,0),('45040aad-e6be-2502-1e56-5110d810d8a8','account_contracts','Accounts','accounts','id','Contracts','contracts','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62380c3d-a28f-6412-297f-5110d8e75f96','team_memberships','Teams','teams','id','Users','users','id','team_memberships','team_id','user_id','many-to-many',NULL,NULL,0,0),('11f2dfc3-7315-1b7b-0d1f-5110d8d6917a','teamnotices_team_count_relationship','Teams','team_sets','id','TeamNotices','team_notices','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1249f8cc-2045-8e06-26ef-5110d83aff40','teamnotices_teams','TeamNotices','team_notices','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('1297cb7e-513c-dcd7-efd4-5110d87942b2','teamnotices_team','Teams','teams','id','TeamNotices','team_notices','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('208aad6f-2f05-da25-6a05-5110d816fe08','product_templates_product_categories','ProductCategories','product_categories','id','ProductTemplates','product_templates','category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20d64a8a-fdab-71ce-626a-5110d86ab21f','product_templates_product_types','ProductTypes','product_types','id','ProductTemplates','product_templates','type_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2125830d-f94c-a59c-b8fd-5110d8bf0ac4','product_templates_manufacturers','Manufacturers','manufacturers','id','ProductTemplates','product_templates','manufacturer_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2173d644-9685-bc9d-1f9d-5110d88160e8','product_templates_modified_user','Users','users','id','ProductTemplates','product_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('21bf9cf5-49de-010b-1acf-5110d8f24341','product_templates_created_by','Users','users','id','ProductTemplates','product_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2457efb4-4004-ca66-545e-5110d8e2a3f6','member_categories','ProductCategories','product_categories','id','ProductCategories','product_categories','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('297eeac2-d374-868b-c162-5110d81d4f56','quotes_modified_user','Users','users','id','Quotes','quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('29d945ae-e633-ecb6-9bf4-5110d8545dc9','quotes_created_by','Users','users','id','Quotes','quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2a3aaa01-3520-3967-d05b-5110d8e44f8f','quotes_assigned_user','Users','users','id','Quotes','quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2a85c0b3-b3dd-9e48-08c5-5110d82105ab','quotes_team_count_relationship','Teams','team_sets','id','Quotes','quotes','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2ad6c606-e1f1-bc0e-383c-5110d8fab535','quotes_teams','Quotes','quotes','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('2b217001-eabf-2635-6877-5110d821085b','quotes_team','Teams','teams','id','Quotes','quotes','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b6a7ab1-2e69-9708-a6e7-5110d8d6baa5','quote_tasks','Quotes','quotes','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Quotes',0,0),('2bb3765e-f14e-01d8-db65-5110d82e0209','quote_notes','Quotes','quotes','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Quotes',0,0),('2bfe2a3f-9daf-02ec-bf83-5110d81d3dce','quote_meetings','Quotes','quotes','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Quotes',0,0),('2c549763-dd3b-3178-98eb-5110d8a298ab','quote_calls','Quotes','quotes','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Quotes',0,0),('2ccfc762-3bc7-62ad-89b2-5110d89033f8','quote_emails','Quotes','quotes','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Quotes',0,0),('2d18a3dd-6ecd-8cad-15dc-5110d8d65505','quote_products','Quotes','quotes','id','Products','products','quote_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('356de58d-d86b-61fc-000e-5110d89072e8','products_modified_user','Users','users','id','Products','products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35ba4fd6-56c3-177c-fe74-5110d8e8915b','products_created_by','Users','users','id','Products','products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3611ca4c-a79a-7ea7-b162-5110d8f4590d','products_team_count_relationship','Teams','team_sets','id','Products','products','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3666305d-9989-36c5-b62b-5110d8747d9b','products_teams','Products','products','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('36b47882-a913-fc34-0145-5110d865cd0b','products_team','Teams','teams','id','Products','products','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('36fd0fd9-373c-8925-aeec-5110d8a0f06e','product_notes','Products','products','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Products',0,0),('374e0406-bb26-8f4e-0abf-5110d8be2e77','products_accounts','Accounts','accounts','id','Products','products','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('379b8e2e-8351-5c2a-d4fb-5110d8eaec48','product_categories','ProductCategories','product_categories','id','Products','products','category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('37e278c5-1004-c251-0b91-5110d87ae18e','product_types','ProductTypes','product_types','id','Products','products','type_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('398fdda3-261c-47eb-6b21-5110d8e8e61a','productbundles_team_count_relationship','Teams','team_sets','id','ProductBundles','product_bundles','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('39d83a48-1b76-1a45-0f3c-5110d8915b12','productbundles_teams','ProductBundles','product_bundles','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('3a1e58d3-290c-7ef6-d0a1-5110d8b0af28','productbundles_team','Teams','teams','id','ProductBundles','product_bundles','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e925711-a234-c5ea-a237-5110d8613d42','timeperiod_forecast_schedules','TimePeriods','timeperiods','id','Forecasts','forecast_schedule','timeperiod_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4edece77-326e-2e71-7f62-5110d80c7d6e','related_timeperiods','TimePeriods','timeperiods','id','TimePeriods','timeperiods','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('56d8b78f-257a-137f-4c95-5110d8214c06','forecasts_created_by','Users','users','id','Forecasts','forecasts','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a786f4ff-ef6a-0b61-c085-5110d8275b00','workflow_triggers','WorkFlow','workflow','id','WorkFlowTriggerShells','workflow_triggershells','parent_id',NULL,NULL,NULL,'one-to-many','frame_type','Primary',0,0),('a7fa19fe-7707-7ca4-2b98-5110d8fa036f','workflow_trigger_filters','WorkFlow','workflow','id','WorkFlowTriggerShells','workflow_triggershells','parent_id',NULL,NULL,NULL,'one-to-many','frame_type','Secondary',0,0),('a8700d26-f185-ff0c-a746-5110d835c9ee','workflow_alerts','WorkFlow','workflow','id','WorkFlowAlertShells','workflow_alertshells','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a8e4d6ea-0ed3-9c1e-d5ca-5110d8d33ed2','workflow_actions','WorkFlow','workflow','id','WorkFlowActionShells','workflow_actionshells','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aaf45f89-4255-7773-66a2-5110d8cc3bc1','past_triggers','WorkFlowTriggerShells','workflow_triggershells','id','Expressions','expressions','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','past_trigger',0,0),('ab58a301-4c18-dea7-d4f3-5110d8caf47e','future_triggers','WorkFlowTriggerShells','workflow_triggershells','id','Expressions','expressions','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','future_trigger',0,0),('abca341d-99c7-22c4-1992-5110d8f6b808','trigger_expressions','WorkFlowTriggerShells','workflow_triggershells','id','Expressions','expressions','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','expression',0,0),('ad687a10-e9c8-3050-ced6-5110d83a69e5','alert_components','WorkFlowAlertShells','workflow_alertshells','id','WorkFlowAlerts','workflow_alerts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('af5645f9-985a-2be2-659c-5110d861e6d7','expressions','WorkFlowAlerts','workflow_alerts','id','Expressions','expressions','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','filter',0,0),('afc19617-a679-6921-f9de-5110d8b2535d','rel1_alert_fil','WorkFlowAlerts','workflow_alerts','id','Expressions','expressions','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','rel1_alert_fil',0,0),('b02ec04c-9d40-53e0-d764-5110d8b8a746','rel2_alert_fil','WorkFlowAlerts','workflow_alerts','id','Expressions','expressions','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','rel2_alert_fil',0,0),('b2447668-bcb6-9d58-8e87-5110d8c8b076','actions','WorkFlowActionShells','workflow_actionshells','id','WorkFlowActions','workflow_actions','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b2af8617-ec3b-66b7-0da3-5110d8abc018','action_bridge','WorkFlowActionShells','workflow_actionshells','id','WorkFlow','workflow','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b30b09dc-37cc-2481-0567-5110d861f17a','rel1_action_fil','WorkFlowActionShells','workflow_actionshells','id','Expressions','expressions','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','rel1_action_fil',0,0),('b5fb9b68-edb6-8f06-f79d-5110d856047d','member_expressions','Expressions','expressions','id','Expressions','expressions','parent_exp_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3744bdd-4fa3-783e-3b26-5110d81fd812','kbdocuments_team_count_relationship','Teams','team_sets','id','KBDocuments','kbdocuments','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3d39560-ff61-bc91-eded-5110d89d2838','kbdocuments_teams','KBDocuments','kbdocuments','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('c424b362-760b-e561-3db1-5110d8295197','kbdocuments_team','Teams','teams','id','KBDocuments','kbdocuments','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c470b26e-c36f-23ac-035e-5110d8089a97','kbdocument_revisions','KBDocuments','kbdocuments','id','KBDocumentRevisions','kbdocument_revisions','kbdocument_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4baddd4-86ac-f6bb-32ea-5110d850b3fc','kbdocuments_modified_user','Users','users','id','KBDocuments','kbdocuments','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c5082528-7ea3-f365-4bd9-5110d82f26a7','kbdocuments_created_by','Users','users','id','KBDocuments','kbdocuments','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c5540639-535a-1472-a47c-5110d82e0646','kb_assigned_user','Users','users','id','KBDocuments','kbdocuments','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c5b406f3-82bd-5f55-f208-5110d85f6968','kbdoc_approver_user','Users','users','id','KBDocuments','kbdocuments','kbdoc_approver_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c601bf78-9597-ab35-cabe-5110d80b3eb1','case_kbdocuments','Cases','cases','id','KBDocuments','kbdocuments','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('c64e2804-bc79-0122-e4b4-5110d880d5dd','email_kbdocuments','Emails','emails','id','KBDocuments','kbdocuments','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Emails',0,0),('cdefda06-4d45-1e60-3c37-5110d852a270','kbrev_revisions_created_by','Users','users','id','KBDocumentRevisions','kbdocument_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d6423b0c-fca1-b9ee-5811-5110d83376d8','kbtags_team_count_relationship','Teams','team_sets','id','KBTags','kbtags','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d693ee22-e2d5-a278-2e28-5110d883db6a','kbtags_teams','KBTags','kbtags','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('d6e1a597-463e-6b76-bf9c-5110d8acb0fb','kbtags_team','Teams','teams','id','KBTags','kbtags','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e0622412-60cd-6981-ddb7-5110d80cc710','kbdocumentkbtags_team_count_relationship','Teams','team_sets','id','KBDocumentKBTags','kbdocuments_kbtags','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e0adf3da-471e-4311-17e3-5110d8cb3e09','kbdocumentkbtags_teams','KBDocumentKBTags','kbdocuments_kbtags','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('e0f26fa0-d7ee-d877-f897-5110d83e0299','kbdocumentkbtags_team','Teams','teams','id','KBDocumentKBTags','kbdocuments_kbtags','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e135590f-38b3-c515-e169-5110d861889d','kbrevisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eaecea62-94df-c9e8-8d0b-5110d88cc31f','kbcontents_team_count_relationship','Teams','team_sets','id','KBContents','kbcontents','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eb3f2eb6-f0d3-16c7-c81b-5110d8db2c3e','kbcontents_teams','KBContents','kbcontents','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('eb851465-a96a-e95d-fb68-5110d86ecd32','kbcontents_team','Teams','teams','id','KBContents','kbcontents','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b41e711-0b06-717d-4e9e-5110d8fe8782','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b9213be-7bd7-df70-39f4-5110d888ac2d','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1bdebde1-c73b-abaa-e62b-5110d8d0ae12','sugarfeed_team_count_relationship','Teams','team_sets','id','SugarFeed','sugarfeed','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1c2ad71d-472f-fd76-eb3f-5110d8d53d26','sugarfeed_teams','SugarFeed','sugarfeed','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('1c775ead-f95e-9953-9362-5110d88743e4','sugarfeed_team','Teams','teams','id','SugarFeed','sugarfeed','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1cda9228-9bf2-7316-38e8-5110d88e9fe5','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2c703fab-58c6-6f9f-d6cb-5110d808aa47','notifications_modified_user','Users','users','id','Notifications','notifications','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2cd30fa7-e91e-da35-59de-5110d802f175','notifications_created_by','Users','users','id','Notifications','notifications','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d215ebd-7a47-3da7-f543-5110d8c572b7','notifications_assigned_user','Users','users','id','Notifications','notifications','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4287f279-1176-a4e3-5e52-5110d802df76','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('42f33b8e-4584-23f1-7731-5110d8a8316d','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('434d577b-0230-2484-e8d1-5110d8d8c534','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d625301-4955-7304-30c3-5110d87a960e','sugarfavorites_modified_user','Users','users','id','SugarFavorites','sugarfavorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4db36ea8-e673-88d0-f169-5110d83929fd','sugarfavorites_created_by','Users','users','id','SugarFavorites','sugarfavorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e28a5c2-511e-42bd-a710-5110d81c2003','sugarfavorites_assigned_user','Users','users','id','SugarFavorites','sugarfavorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('773339a7-beec-d885-1ef4-5110d8c17319','ed_department_modified_user','Users','users','id','ed_Department','ed_department','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('777f5356-f973-173c-7040-5110d8c1fdb2','ed_department_created_by','Users','users','id','ed_Department','ed_department','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77c3bbec-c4a5-6ce5-cddc-5110d82a0f22','ed_department_team_count_relationship','Teams','team_sets','id','ed_Department','ed_department','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78280991-b109-6a24-c0f5-5110d8bc2234','ed_department_teams','ed_Department','ed_department','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('7873b658-7ac7-f80b-e74d-5110d8e36e3b','ed_department_team','Teams','teams','id','ed_Department','ed_department','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78b6f9b1-5a41-391e-7374-5110d89c079a','ed_department_assigned_user','Users','users','id','ed_Department','ed_department','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b10b842-3dbe-eddc-424f-5110d8325d72','ed_employee_modified_user','Users','users','id','ed_Employee','ed_employee','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b76867f-ccb7-9fa6-57ba-5110d860b06a','ed_employee_created_by','Users','users','id','ed_Employee','ed_employee','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7be94f74-2603-b451-2aae-5110d8b7f131','ed_employee_team_count_relationship','Teams','team_sets','id','ed_Employee','ed_employee','team_set_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c55b6fa-f1f9-b17e-77ee-5110d802e3f4','ed_employee_teams','ed_Employee','ed_employee','team_set_id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('7ca728d4-28b9-4390-31c9-5110d89edd1f','ed_employee_team','Teams','teams','id','ed_Employee','ed_employee','team_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d0c909d-b1fa-7d4a-77c7-5110d846d938','ed_employee_assigned_user','Users','users','id','ed_Employee','ed_employee','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d62438e-8744-0352-12b5-5110d8aecbae','ed_employee_email_addresses','ed_Employee','ed_employee','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','ed_Employee',0,0),('7dcc9160-030c-f34b-f3b1-5110d831e88a','ed_employee_email_addresses_primary','ed_Employee','ed_employee','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('c59eadf9-670c-edec-b2ba-5110d8244bc3','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('c61a0cfe-699f-e67a-c962-5110d8ceeb32','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('c67bee93-4596-e271-4d45-5110d8e924d5','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('c6e7432a-aee2-2362-4a6a-5110d8be5c78','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('c748676a-d84b-b82a-18a8-5110d80c50e9','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('c7997887-142e-6ffb-af22-5110d8506e2f','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('c7e6bccf-4dc2-3750-425e-5110d8ffa912','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('c837a343-ce10-104b-13a0-5110d8bd2ba2','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('c8892132-5245-4817-36d5-5110d8030588','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('c8d94a7e-bdee-7632-a150-5110d8173c44','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('c9303e0d-0422-73a1-fe87-5110d8483622','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('c98d2a9c-fe7f-30c1-56de-5110d8ba5f96','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('c9da1dfd-a9a4-f99f-55c9-5110d88e4f15','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('ca274323-fa7d-29a5-bd7b-5110d850d5c8','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('ca7fe4ed-fd2b-3cd7-4857-5110d8904d8b','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('cacc1009-aa11-017d-f14b-5110d84346bc','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('cb1955f6-b004-6acf-8782-5110d8a35005','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('cb62eb5d-5d36-b227-fc39-5110d819d128','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('cbcfc4cb-e9a5-7812-8c6e-5110d81d0454','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('cc3b3337-1281-e24e-f115-5110d8204cba','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('cca9fd95-951b-4205-db1f-5110d899a0c6','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('cd0d0fc5-c2bd-5a8a-be65-5110d88322e0','emails_quotes','Emails','emails','id','Quotes','quotes','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Quotes',0,0),('cd80dcfc-62bb-95a2-d451-5110d8e3990a','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('cdd80e30-5d68-fcbf-1c53-5110d8e46905','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('ce25a6d2-21bc-6eb2-4cb0-5110d853bad8','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('ce85bdab-59cd-ea52-2345-5110d8798dc7','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('cedd6719-477b-327d-f8aa-5110d801c862','team_sets_teams','TeamSets','team_sets','id','Teams','teams','id','team_sets_teams','team_set_id','team_id','many-to-many',NULL,NULL,0,0),('cf73b4e5-6ba6-3a7d-0391-5110d8c9083d','tracker_tracker_queries','Trackers','tracker','monitor_id','TrackerQueries','tracker_queries','query_id','tracker_tracker_queries','monitor_id','query_id','many-to-many',NULL,NULL,0,0),('cfc9c3ac-c2ef-7fea-1ec8-5110d8f5e992','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('d018bb91-b74a-e173-f844-5110d80912c5','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('d061357f-d516-1ebd-ab64-5110d89327bf','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('d0b8df68-ed6d-71ae-b63b-5110d83acf52','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('d11d7470-6b42-15d0-fadb-5110d8d97231','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('d16c27ec-cee4-eb8e-be5d-5110d822a67a','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('d1e62cf7-a090-317b-85c5-5110d8647897','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('d24b84e9-843f-a615-f65e-5110d851bf2b','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('d2a0a4ac-363a-61a8-500c-5110d8344b22','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('d2f55cc5-9507-8123-d2da-5110d8705f32','projects_products','Project','project','id','Products','products','id','projects_products','project_id','product_id','many-to-many',NULL,NULL,0,0),('d3470228-c115-82d2-8eeb-5110d88949a9','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('d397dbcb-47a6-cdec-f26f-5110d82b5dc1','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('d3fb89eb-ea5a-0eee-fa22-5110d828f24f','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('d4852c0f-4970-ff5f-23ef-5110d8c36d98','product_bundle_note','ProductBundles','product_bundles','id','ProductBundleNotes','product_bundle_note','id','product_bundle_note','bundle_id','note_id','many-to-many',NULL,NULL,0,0),('d4ecdcb4-f31a-4b4b-9858-5110d8a46e11','product_bundle_product','ProductBundles','product_bundles','id','Products','products','id','product_bundle_product','bundle_id','product_id','many-to-many',NULL,NULL,0,0),('d54bc28f-8937-04a5-3f6a-5110d8fd9018','product_bundle_quote','ProductBundles','product_bundles','id','Quotes','quotes','id','product_bundle_quote','bundle_id','quote_id','many-to-many',NULL,NULL,0,0),('d5b7ae65-26ea-920b-af79-5110d887b161','product_product','Products','products','id','Products','products','id','product_product','parent_id','child_id','many-to-many',NULL,NULL,1,0),('d6173323-8bd3-633b-0072-5110d8141e45','quotes_billto_accounts','Quotes','quotes','id','Accounts','accounts','id','quotes_accounts','quote_id','account_id','many-to-many','account_role','Bill To',0,0),('d6817333-f71c-9171-f8ae-5110d8a197d6','quotes_shipto_accounts','Quotes','quotes','id','Accounts','accounts','id','quotes_accounts','quote_id','account_id','many-to-many','account_role','Ship To',0,0),('d6e7ea16-e594-7cf3-547e-5110d8a92038','quotes_contacts_shipto','Quotes','quotes','id','Contacts','contacts','id','quotes_contacts','quote_id','contact_id','many-to-many','contact_role','Ship To',0,0),('d737be29-4f6e-1c47-eba5-5110d8604830','quotes_contacts_billto','Quotes','quotes','id','Contacts','contacts','id','quotes_contacts','quote_id','contact_id','many-to-many','contact_role','Bill To',0,0),('d797eb33-cc11-1013-3409-5110d80bce92','quotes_opportunities','Quotes','quotes','id','Opportunities','opportunities','id','quotes_opportunities','quote_id','opportunity_id','many-to-many',NULL,NULL,0,0),('d806e864-1f42-b058-dc51-5110d812ab26','contracts_opportunities','Contracts','contracts','id','Opportunities','opportunities','id','contracts_opportunities','contract_id','opportunity_id','many-to-many',NULL,NULL,0,0),('d86c74a9-0db7-adc6-1fc6-5110d8ea3a65','contracts_contacts','Contracts','contracts','id','Contacts','contacts','id','contracts_contacts','contract_id','contact_id','many-to-many',NULL,NULL,0,0),('d8cca39c-eb23-f189-cd8b-5110d88dd013','contracts_quotes','Contracts','contracts','id','Quotes','quotes','id','contracts_quotes','contract_id','quote_id','many-to-many',NULL,NULL,0,0),('d92abcf4-2e0b-a76a-f980-5110d841491a','contracts_products','Contracts','contracts','id','Products','products','id','contracts_products','contract_id','product_id','many-to-many',NULL,NULL,0,0),('d98ad881-4af2-5bd7-fb57-5110d83fc0e7','projects_quotes','Project','project','id','Quotes','quotes','id','projects_quotes','project_id','quote_id','many-to-many',NULL,NULL,0,0),('d9f9c238-52e4-111d-dc29-5110d87eed6d','users_holidays','Users','users','id','Holidays','holidays','person_id',NULL,NULL,NULL,'one-to-many','related_module','',0,0),('da4c6213-e85e-d2cd-af18-5110d80e7ddb','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('da9a8a70-61d1-1dbf-d6e1-5110d891e54b','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('daf232d6-ce08-e2dd-9eba-5110d868e1e8','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('db40d2bc-a90c-7603-5a1c-5110d8d17f17','contracts_documents','Contracts','contracts','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Contracts',0,0),('db8afed7-476b-21f0-f1d0-5110d8019588','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('dbd32673-9163-73c7-0e7c-5110d81d2402','contracttype_documents','ContractTypes','contract_types','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','ContracTemplates',0,0),('dc334feb-bccd-2336-9dd7-5110d8726731','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('dc8aeed2-6720-f927-9051-5110d8e4c5dc','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('dcf0caf6-eda2-29ca-a454-5110d86bc83c','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('dd476402-0d7c-3fde-6f1c-5110d873cfd8','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('dd9a9d0c-5ade-9c68-64ff-5110d860fc16','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('ddfb9a09-bfaf-feda-4041-5110d86c487b','documents_products','Documents','documents','id','Products','products','id','documents_products','document_id','product_id','many-to-many',NULL,NULL,0,0),('de51b0f5-748c-adfc-da7a-5110d873afe2','documents_quotes','Documents','documents','id','Quotes','quotes','id','documents_quotes','document_id','quote_id','many-to-many',NULL,NULL,0,0),('dea44fcb-3c26-4919-3aca-5110d8591b52','ed_department_ed_employee','ed_Department','ed_department','id','ed_Employee','ed_employee','id','ed_departme_ed_employee_c','ed_departmcdfcartment_ida','ed_departm2457mployee_idb','many-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(50) default NULL,
  `list_order` int(4) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_cache`
--

DROP TABLE IF EXISTS `report_cache`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `report_cache` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  `contents` text,
  `report_options` text,
  `deleted` varchar(1) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  PRIMARY KEY  (`id`,`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `report_cache`
--

LOCK TABLES `report_cache` WRITE;
/*!40000 ALTER TABLE `report_cache` DISABLE KEYS */;
INSERT INTO `report_cache` VALUES ('62473264-8883-26b3-68c3-50f7dac8ed64','1','{\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"date_closed\",\"table_key\":\"self\",\"qualifier_name\":\"between_dates\",\"runtime\":1,\"input_name0\":\"2009-10-01\",\"input_name1\":\"2009-12-31\"}}}}',NULL,'0','2013-01-24 08:55:16','2013-01-24 08:55:16');
/*!40000 ALTER TABLE `report_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_schedules`
--

DROP TABLE IF EXISTS `report_schedules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `report_schedules` (
  `id` char(36) NOT NULL,
  `user_id` char(36) default NULL,
  `report_id` char(36) default NULL,
  `date_start` datetime default NULL,
  `next_run` datetime default NULL,
  `active` tinyint(1) default '0',
  `time_interval` int(11) default NULL,
  `date_modified` datetime default NULL,
  `schedule_type` varchar(3) default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `report_schedules`
--

LOCK TABLES `report_schedules` WRITE;
/*!40000 ALTER TABLE `report_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(150) default NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) default NULL,
  `module_id` varchar(36) default NULL,
  `allow` tinyint(1) default '0',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) default NULL,
  `user_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_reports`
--

DROP TABLE IF EXISTS `saved_reports`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `saved_reports` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) default NULL,
  `module` varchar(36) default NULL,
  `report_type` varchar(36) default NULL,
  `content` longtext,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `assigned_user_id` char(36) default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `is_published` tinyint(1) default '0',
  `chart_type` varchar(36) default 'none',
  `schedule_type` varchar(3) default 'pro',
  `favorite` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_saved_reports_tmst_id` (`team_set_id`),
  KEY `idx_rep_owner_module_name` (`assigned_user_id`,`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `saved_reports`
--

LOCK TABLES `saved_reports` WRITE;
/*!40000 ALTER TABLE `saved_reports` DISABLE KEYS */;
INSERT INTO `saved_reports` VALUES ('1','1','62473264-8883-26b3-68c3-50f7dac8ed64','Current Quarter Forecast','Opportunities','tabular','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Opportunity Name\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Name\",\"table_key\":\"Opportunities:accounts\"},{\"name\":\"amount_usdollar\",\"label\":\"Amount\",\"table_key\":\"self\"},{\"name\":\"date_closed\",\"label\":\"Expected Close Date\",\"table_key\":\"self\"},{\"name\":\"probability\",\"label\":\"Probability (%)\",\"table_key\":\"self\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Opportunities:assigned_user_link\"}],\"module\":\"Opportunities\",\"group_defs\":[],\"summary_columns\":[],\"report_name\":\"Current Quarter Forecast\",\"do_round\":1,\"numerical_chart_column\":\"\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"tabular\",\"full_table_list\":{\"self\":{\"value\":\"Opportunities\",\"module\":\"Opportunities\",\"label\":\"Opportunities\"},\"Opportunities:accounts\":{\"name\":\"Opportunities  >  Accounts\",\"parent\":\"self\",\"link_def\":{\"name\":\"accounts\",\"relationship_name\":\"accounts_opportunities\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Accounts\",\"table_key\":\"Opportunities:accounts\"},\"dependents\":[\"display_cols_row_2\"],\"module\":\"Accounts\",\"label\":\"Accounts\"},\"Opportunities:assigned_user_link\":{\"name\":\"Opportunities  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"opportunities_assigned_user\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Opportunities:assigned_user_link\"},\"dependents\":[\"display_cols_row_6\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"date_closed\",\"table_key\":\"self\",\"qualifier_name\":\"between_dates\",\"runtime\":1,\"input_name0\":\"2009-10-01\",\"input_name1\":\"2009-12-31\"}}},\"chart_type\":\"none\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','6adf5b1e-6579-a48a-07cd-50f7da9620a4','Detailed Forecast','Opportunities','tabular','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Opportunity Name\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Account Name\",\"table_key\":\"accounts\"},{\"name\":\"amount_usdollar\",\"label\":\"Amount\",\"table_key\":\"self\"},{\"name\":\"description\",\"label\":\"Description\",\"table_key\":\"self\"},{\"name\":\"next_step\",\"label\":\"Next Step\",\"table_key\":\"self\"},{\"name\":\"date_closed\",\"label\":\"Expected Close Date\",\"table_key\":\"self\"},{\"name\":\"probability\",\"label\":\"Probability (%)\",\"table_key\":\"self\"}],\"summary_columns\":[],\"order_by\":[{\"name\":\"probability\",\"label\":\"Probability (%)\",\"table_key\":\"self\",\"sort_dir\":\"a\"}],\"filters_def\":[],\"group_defs\":[],\"links_def\":[\"accounts\",\"team_link\",\"created_by_link\",\"modified_user_link\",\"assigned_user_link\"],\"module\":\"Opportunities\",\"report_name\":\"Detailed Forecast\",\"report_type\":\"tabular\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','6dd0d542-dd24-41a3-ec88-50f7da8c204f','Partner Account List','Accounts','tabular','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Account Name\",\"table_key\":\"self\"},{\"name\":\"phone_office\",\"label\":\"Phone Office\",\"table_key\":\"self\"},{\"name\":\"description\",\"label\":\"Description\",\"table_key\":\"self\"},{\"name\":\"annual_revenue\",\"label\":\"Annual Revenue\",\"table_key\":\"self\"},{\"name\":\"account_type\",\"label\":\"Type\",\"table_key\":\"self\"},{\"name\":\"full_name\",\"label\":\"Assigned to\",\"table_key\":\"assigned_user_link\"}],\"summary_columns\":[],\"filters_def\":[{\"name\":\"account_type\",\"table_key\":\"self\",\"qualifier_name\":\"is\",\"input_name0\":\"Partner\"}],\"group_defs\":[],\"links_def\":[\"member_of\",\"team_link\",\"created_by_link\",\"modified_user_link\",\"assigned_user_link\"],\"module\":\"Accounts\",\"report_name\":\"Partner Account List\",\"order_by\":[],\"report_type\":\"tabular\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','70b35bda-8bfe-445b-b787-50f7daf39630','Customer Account List','Accounts','tabular','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Account Name\",\"table_key\":\"self\"},{\"name\":\"website\",\"label\":\"Website\",\"table_key\":\"self\"},{\"name\":\"phone_office\",\"label\":\"Phone Office\",\"table_key\":\"self\"},{\"name\":\"description\",\"label\":\"Description\",\"table_key\":\"self\"},{\"name\":\"account_type\",\"label\":\"Type\",\"table_key\":\"self\"},{\"name\":\"full_name\",\"label\":\"Assigned to\",\"table_key\":\"assigned_user_link\"}],\"summary_columns\":[],\"filters_def\":[{\"name\":\"account_type\",\"table_key\":\"self\",\"qualifier_name\":\"is\",\"input_name0\":\"Customer\"}],\"group_defs\":[],\"links_def\":[\"member_of\",\"team_link\",\"created_by_link\",\"modified_user_link\",\"assigned_user_link\"],\"module\":\"Accounts\",\"report_name\":\"Customer Account List\",\"order_by\":[],\"report_type\":\"tabular\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','73bf17bd-ee3f-9df3-7a96-50f7da4c0f96','Call List By Last Date Contacted','Contacts','tabular','{\"display_columns\":[{\"name\":\"date_modified\",\"label\":\"Last Modified\",\"table_key\":\"self\"},{\"name\":\"full_name\",\"label\":\"Contact Name\",\"table_key\":\"self\"},{\"name\":\"phone_work\",\"label\":\"Office Phone\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Account Name\",\"table_key\":\"accounts\"},{\"name\":\"alt_address_country\",\"label\":\"Alternate Address Country\",\"table_key\":\"self\"},{\"name\":\"full_name\",\"label\":\"Assigned to\",\"table_key\":\"assigned_user_link\"}],\"summary_columns\":[],\"filters_def\":[{\"name\":\"do_not_call\",\"table_key\":\"self\",\"qualifier_name\":\"equals\",\"input_name0\":[\"no\"]}],\"group_defs\":[],\"links_def\":[\"accounts\",\"reports_to_link\",\"team_link\",\"created_by_link\",\"modified_user_link\",\"assigned_user_link\"],\"order_by\":[],\"module\":\"Contacts\",\"report_name\":\"Call list by last date modified\",\"report_type\":\"tabular\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','76c60fba-0741-1b26-8fa5-50f7da63f3fa','Opportunities By Lead Source','Opportunities','detailed_summary','{\"report_type\":\"summary\",\"display_columns\":[{\"name\":\"lead_source\",\"label\":\"Lead Source\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Opportunity Name\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Account Name\",\"table_key\":\"accounts\"},{\"name\":\"amount_usdollar\",\"label\":\"Amount\",\"table_key\":\"self\"},{\"name\":\"sales_stage\",\"label\":\"Sales Stage\",\"table_key\":\"self\"},{\"name\":\"probability\",\"label\":\"Probability (%)\",\"table_key\":\"self\"},{\"name\":\"full_name\",\"label\":\"Assigned to\",\"table_key\":\"assigned_user_link\"}],\"summary_columns\":[{\"name\":\"lead_source\",\"label\":\"Opportunities: Lead Source\",\"table_key\":\"self\"},{\"name\":\"count\",\"label\":\"Count\",\"group_function\":\"count\",\"table_key\":\"self\"}],\"order_by\":[{\"name\":\"amount_usdollar\",\"label\":\"Amount\",\"table_key\":\"self\",\"sort_dir\":\"d\"}],\"filters_def\":[],\"group_defs\":[{\"name\":\"lead_source\",\"label\":\"Lead Source\",\"table_key\":\"self\"}],\"links_def\":[\"accounts\",\"team_link\",\"created_by_link\",\"modified_user_link\",\"assigned_user_link\"],\"module\":\"Opportunities\",\"report_name\":\"Opportunities by Lead Source\",\"chart_type\":\"hBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"count\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','79c9bd1f-ca8f-0f17-068b-50f7da14e018','Open Cases By User By Status','Cases','detailed_summary','{\"report_type\":\"summary\",\"display_columns\":[{\"name\":\"case_number\",\"label\":\"Cases: Number\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Cases: Subject\",\"table_key\":\"self\"},{\"name\":\"date_entered\",\"label\":\"Cases: Date Created\",\"table_key\":\"self\"}],\"summary_columns\":[{\"name\":\"count\",\"label\":\"Count\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"status\",\"label\":\"Cases: Status\",\"table_key\":\"self\",\"is_group_by\":\"visible\"},{\"name\":\"user_name\",\"label\":\"Assigned to User: User Name\",\"table_key\":\"self_link_0\",\"is_group_by\":\"visible\"}],\"filters_def\":[{\"name\":\"status\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"input_name0\":[\"New\",\"Assigned\",\"Pending Input\"]}],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"self_link_0\"},{\"name\":\"status\",\"label\":\"Status\",\"table_key\":\"self\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Cases\",\"module\":\"Cases\",\"label\":\"Cases\",\"children\":{\"self_link_0\":\"self_link_0\"}},\"self_link_0\":{\"parent\":\"self\",\"children\":[],\"value\":\"assigned_user_link\",\"label\":\"Assigned to User\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"cases_assigned_user\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"self_link_0\"},\"module\":\"Users\"}},\"module\":\"Cases\",\"report_name\":\"Open Cases By User By Status\",\"chart_type\":\"hBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"count\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','7cd7b164-31f1-8efb-f45e-50f7da5f65a1','Open Cases By Month By User','Cases','detailed_summary','{\"report_type\":\"summary\",\"display_columns\":[{\"name\":\"case_number\",\"label\":\"Cases: Number\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Cases: Subject\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Account: Name\",\"table_key\":\"self_link_1\"}],\"summary_columns\":[{\"name\":\"date_entered\",\"label\":\"Date Created\",\"table_key\":\"self\",\"qualifier\":\"month\",\"is_group_by\":\"hidden\",\"column_function\":\"month\"},{\"name\":\"count\",\"label\":\"Count\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"date_entered\",\"label\":\"Cases: Month: Date Created\",\"column_function\":\"month\",\"table_key\":\"self\"},{\"name\":\"user_name\",\"label\":\"Assigned to User: User Name\",\"table_key\":\"self_link_0\",\"is_group_by\":\"visible\"}],\"filters_def\":[{\"name\":\"status\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"input_name0\":[\"New\",\"Assigned\",\"Pending Input\"]}],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"date_entered\",\"label\":\"Date Created\",\"table_key\":\"self\",\"qualifier\":\"month\",\"is_group_by\":\"hidden\",\"column_function\":\"month\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"self_link_0\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Cases\",\"module\":\"Cases\",\"label\":\"Cases\",\"children\":{\"self_link_0\":\"self_link_0\",\"self_link_1\":\"self_link_1\"}},\"self_link_0\":{\"parent\":\"self\",\"children\":[],\"value\":\"assigned_user_link\",\"label\":\"Assigned to User\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"cases_assigned_user\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"self_link_0\"},\"module\":\"Users\"},\"self_link_1\":{\"parent\":\"self\",\"children\":[],\"value\":\"account\",\"label\":\"Account\",\"link_def\":{\"name\":\"account\",\"relationship_name\":\"account_cases\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Account\",\"table_key\":\"self_link_1\"},\"module\":\"Accounts\"}},\"module\":\"Cases\",\"report_name\":\"Open Cases By Month By User\",\"chart_type\":\"vBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"count\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'vBarF','pro',0),('1','1','7ff0f508-1a6a-52c4-0638-50f7da0a408c','Open Cases By Priority By User','Cases','detailed_summary','{\"report_type\":\"summary\",\"display_columns\":[{\"name\":\"case_number\",\"label\":\"Cases: Number\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Cases: Subject\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Account: Name\",\"table_key\":\"self_link_1\"}],\"summary_columns\":[{\"name\":\"count\",\"label\":\"Count\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"priority\",\"label\":\"Cases: Priority\",\"table_key\":\"self\",\"is_group_by\":\"visible\"},{\"name\":\"user_name\",\"label\":\"Assigned to User: User Name\",\"table_key\":\"self_link_0\",\"is_group_by\":\"visible\"}],\"filters_def\":[{\"name\":\"status\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"input_name0\":[\"New\",\"Assigned\",\"Pending Input\"]}],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"self_link_0\"},{\"name\":\"priority\",\"label\":\"Priority\",\"table_key\":\"self\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Cases\",\"module\":\"Cases\",\"label\":\"Cases\",\"children\":{\"self_link_0\":\"self_link_0\",\"self_link_1\":\"self_link_1\"}},\"self_link_0\":{\"parent\":\"self\",\"children\":[],\"value\":\"assigned_user_link\",\"label\":\"Assigned to User\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"cases_assigned_user\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"self_link_0\"},\"module\":\"Users\"},\"self_link_1\":{\"parent\":\"self\",\"children\":[],\"value\":\"account\",\"label\":\"Account\",\"link_def\":{\"name\":\"account\",\"relationship_name\":\"account_cases\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Account\",\"table_key\":\"self_link_1\"},\"module\":\"Accounts\"}},\"module\":\"Cases\",\"report_name\":\"Open Cases By Priority By User\",\"chart_type\":\"hBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"count\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','82e949ac-415c-5a5f-0d09-50f7dafb578f','New Cases By Month','Cases','summary','{\"report_type\":\"summary\",\"display_columns\":[],\"summary_columns\":[{\"name\":\"date_entered\",\"label\":\"Date Created\",\"table_key\":\"self\",\"qualifier\":\"month\",\"is_group_by\":\"hidden\",\"column_function\":\"month\"},{\"name\":\"count\",\"label\":\"Count\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"date_entered\",\"label\":\"Cases: Month: Date Created\",\"column_function\":\"month\",\"table_key\":\"self\"}],\"filters_def\":[],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"date_entered\",\"label\":\"Date Created\",\"table_key\":\"self\",\"qualifier\":\"month\",\"is_group_by\":\"hidden\",\"column_function\":\"month\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Cases\",\"module\":\"Cases\",\"label\":\"Cases\",\"children\":[]}},\"module\":\"Cases\",\"report_name\":\"New Cases By Month\",\"chart_type\":\"vBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"count\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'vBarF','pro',0),('1','1','85f1a03a-2099-80c6-c8a6-50f7da4a0c5d','Pipeline By Type By Team','Opportunities','summary','{\"report_type\":\"summary\",\"display_columns\":[],\"summary_columns\":[{\"name\":\"amount_usdollar\",\"label\":\"Opportunities: SUM: Amount\",\"group_function\":\"sum\",\"table_key\":\"self\"},{\"name\":\"opportunity_type\",\"label\":\"Opportunities: Type\",\"table_key\":\"self\",\"is_group_by\":\"visible\"},{\"name\":\"name\",\"label\":\"Team: Team Name\",\"table_key\":\"self_link_0\",\"is_group_by\":\"visible\"}],\"filters_def\":[{\"name\":\"sales_stage\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"input_name0\":[\"Prospecting\",\"Qualification\",\"Needs Analysis\",\"Value Proposition\",\"Id. Decision Makers\",\"Perception Analysis\",\"Proposal\\/Price Quote\",\"Negotiation\\/Review\"]}],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"name\",\"label\":\"Team Name\",\"table_key\":\"self_link_0\"},{\"name\":\"opportunity_type\",\"label\":\"Type\",\"table_key\":\"self\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Opportunities\",\"module\":\"Opportunities\",\"label\":\"Opportunities\",\"children\":{\"self_link_0\":\"self_link_0\"}},\"self_link_0\":{\"parent\":\"self\",\"children\":[],\"value\":\"team_link\",\"label\":\"Team\",\"link_def\":{\"name\":\"team_link\",\"relationship_name\":\"opportunities_team\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Team\",\"table_key\":\"self_link_0\"},\"module\":\"Teams\"}},\"module\":\"Opportunities\",\"report_name\":\"Pipeline By Type By Team\",\"chart_type\":\"hBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"self:amount_usdollar:sum\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','88ec4217-56cf-6d67-6dcd-50f7da05e3c0','Pipeline By Team By User','Opportunities','summary','{\"report_type\":\"summary\",\"display_columns\":[],\"summary_columns\":[{\"name\":\"amount_usdollar\",\"label\":\"Opportunities: SUM: Amount\",\"group_function\":\"sum\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Team: Team Name\",\"table_key\":\"self_link_0\",\"is_group_by\":\"visible\"},{\"name\":\"user_name\",\"label\":\"Assigned to User: User Name\",\"table_key\":\"self_link_1\",\"is_group_by\":\"visible\"}],\"filters_def\":[{\"name\":\"sales_stage\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"input_name0\":[\"Prospecting\",\"Qualification\",\"Needs Analysis\",\"Value Proposition\",\"Id. Decision Makers\",\"Perception Analysis\",\"Proposal\\/Price Quote\",\"Negotiation\\/Review\"]}],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"name\",\"label\":\"Team Name\",\"table_key\":\"self_link_0\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"self_link_1\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Opportunities\",\"module\":\"Opportunities\",\"label\":\"Opportunities\",\"children\":{\"self_link_0\":\"self_link_0\",\"self_link_1\":\"self_link_1\"}},\"self_link_0\":{\"parent\":\"self\",\"children\":[],\"value\":\"team_link\",\"label\":\"Team\",\"link_def\":{\"name\":\"team_link\",\"relationship_name\":\"opportunities_team\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Team\",\"table_key\":\"self_link_0\"},\"module\":\"Teams\"},\"self_link_1\":{\"parent\":\"self\",\"children\":[],\"value\":\"assigned_user_link\",\"label\":\"Assigned to User\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"opportunities_assigned_user\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"self_link_1\"},\"module\":\"Users\"}},\"module\":\"Opportunities\",\"report_name\":\"Pipeline By Team By User\",\"chart_type\":\"hBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"self:amount_usdollar:sum\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','8be9fbca-9b36-f049-345b-50f7da37a408','Opportunities Won By Lead Source','Opportunities','summary','{\"report_type\":\"summary\",\"display_columns\":[],\"summary_columns\":[{\"name\":\"amount_usdollar\",\"label\":\"Opportunities: SUM: Amount\",\"group_function\":\"sum\",\"table_key\":\"self\"},{\"name\":\"lead_source\",\"label\":\"Opportunities: Lead Source\",\"table_key\":\"self\",\"is_group_by\":\"visible\"},{\"name\":\"count\",\"label\":\"Count\",\"group_function\":\"count\",\"table_key\":\"self\"}],\"filters_def\":[{\"name\":\"sales_stage\",\"table_key\":\"self\",\"qualifier_name\":\"is\",\"input_name0\":[\"Closed Won\"]}],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"lead_source\",\"label\":\"Lead Source\",\"table_key\":\"self\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Opportunities\",\"module\":\"Opportunities\",\"label\":\"Opportunities\",\"children\":[]}},\"module\":\"Opportunities\",\"report_name\":\"Opportunities Won By Lead Source\",\"chart_type\":\"hBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"self:amount_usdollar:sum\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','8ed415ec-5b95-bae2-d91b-50f7da96ea65','Tasks By Team By User','Tasks','summary','{\"report_type\":\"summary\",\"display_columns\":[],\"summary_columns\":[{\"name\":\"count\",\"label\":\"Count\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Team: Team Name\",\"table_key\":\"self_link_0\",\"is_group_by\":\"visible\"},{\"name\":\"user_name\",\"label\":\"Assigned to User: User Name\",\"table_key\":\"self_link_1\",\"is_group_by\":\"visible\"}],\"filters_def\":[],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"name\",\"label\":\"Team Name\",\"table_key\":\"self_link_0\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"self_link_1\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Tasks\",\"module\":\"Tasks\",\"label\":\"Tasks\",\"children\":{\"self_link_0\":\"self_link_0\",\"self_link_1\":\"self_link_1\"}},\"self_link_0\":{\"parent\":\"self\",\"children\":[],\"value\":\"team_link\",\"label\":\"Team\",\"link_def\":{\"name\":\"team_link\",\"relationship_name\":\"tasks_team\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Team\",\"table_key\":\"self_link_0\"},\"module\":\"Teams\"},\"self_link_1\":{\"parent\":\"self\",\"children\":[],\"value\":\"assigned_user_link\",\"label\":\"Assigned to User\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tasks_assigned_user\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"self_link_1\"},\"module\":\"Users\"}},\"module\":\"Tasks\",\"report_name\":\"Tasks By Team By User\",\"chart_type\":\"hBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"count\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','91e13463-e8e3-930e-656c-50f7da0e156f','Meetings By Team By User','Meetings','summary','{\"report_type\":\"summary\",\"display_columns\":[],\"summary_columns\":[{\"name\":\"count\",\"label\":\"Count\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Team: Team Name\",\"table_key\":\"self_link_0\",\"is_group_by\":\"visible\"},{\"name\":\"user_name\",\"label\":\"Assigned to User: User Name\",\"table_key\":\"self_link_1\",\"is_group_by\":\"visible\"}],\"filters_def\":[],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"name\",\"label\":\"Team Name\",\"table_key\":\"self_link_0\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"self_link_1\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Meetings\",\"module\":\"Meetings\",\"label\":\"Meetings\",\"children\":{\"self_link_0\":\"self_link_0\",\"self_link_1\":\"self_link_1\"}},\"self_link_0\":{\"parent\":\"self\",\"children\":[],\"value\":\"team_link\",\"label\":\"Team\",\"link_def\":{\"name\":\"team_link\",\"relationship_name\":\"meetings_team\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Team\",\"table_key\":\"self_link_0\"},\"module\":\"Teams\"},\"self_link_1\":{\"parent\":\"self\",\"children\":[],\"value\":\"assigned_user_link\",\"label\":\"Assigned to User\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"meetings_assigned_user\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"self_link_1\"},\"module\":\"Users\"}},\"module\":\"Meetings\",\"report_name\":\"Calls By Team By User\",\"chart_type\":\"hBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"count\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','94e41fd3-25dc-eb8a-8a8b-50f7dacc7d17','Calls By Team By User','Calls','summary','{\"report_type\":\"summary\",\"display_columns\":[],\"summary_columns\":[{\"name\":\"count\",\"label\":\"Count\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Team: Team Name\",\"table_key\":\"self_link_0\",\"is_group_by\":\"visible\"},{\"name\":\"user_name\",\"label\":\"Assigned to User: User Name\",\"table_key\":\"self_link_1\",\"is_group_by\":\"visible\"}],\"filters_def\":[],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"name\",\"label\":\"Team Name\",\"table_key\":\"self_link_0\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"self_link_1\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Calls\",\"module\":\"Calls\",\"label\":\"Calls\",\"children\":{\"self_link_0\":\"self_link_0\",\"self_link_1\":\"self_link_1\"}},\"self_link_0\":{\"parent\":\"self\",\"children\":[],\"value\":\"team_link\",\"label\":\"Team\",\"link_def\":{\"name\":\"team_link\",\"relationship_name\":\"calls_team\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Team\",\"table_key\":\"self_link_0\"},\"module\":\"Teams\"},\"self_link_1\":{\"parent\":\"self\",\"children\":[],\"value\":\"assigned_user_link\",\"label\":\"Assigned to User\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"calls_assigned_user\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"self_link_1\"},\"module\":\"Users\"}},\"module\":\"Calls\",\"report_name\":\"Meetings By Team By User\",\"chart_type\":\"hBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"count\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','986e6004-3579-d6cd-8d1f-50f7da9668bc','Accounts By Type By Industry','Accounts','summary','{\"report_type\":\"summary\",\"display_columns\":[],\"summary_columns\":[{\"name\":\"count\",\"label\":\"Count\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"account_type\",\"label\":\"Accounts: Type\",\"table_key\":\"self\",\"is_group_by\":\"visible\"},{\"name\":\"industry\",\"label\":\"Accounts: Industry\",\"table_key\":\"self\",\"is_group_by\":\"visible\"}],\"filters_def\":[],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"account_type\",\"label\":\"Type\",\"table_key\":\"self\"},{\"name\":\"industry\",\"label\":\"Industry\",\"table_key\":\"self\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Accounts\",\"module\":\"Accounts\",\"label\":\"Accounts\",\"children\":[]}},\"module\":\"Accounts\",\"report_name\":\"Accounts By Type By Industry\",\"chart_type\":\"hBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"count\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','9b3e4e31-d4ef-2163-d791-50f7da0979fc','Leads By Lead Source','Leads','summary','{\"report_type\":\"summary\",\"display_columns\":[],\"summary_columns\":[{\"name\":\"count\",\"label\":\"Count\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"lead_source\",\"label\":\"Leads: Lead Source\",\"table_key\":\"self\",\"is_group_by\":\"visible\"}],\"filters_def\":[],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"lead_source\",\"label\":\"Lead Source\",\"table_key\":\"self\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Leads\",\"module\":\"Leads\",\"label\":\"Leads\",\"children\":{\"self_link_0\":\"self_link_0\"}},\"self_link_0\":{\"parent\":\"self\",\"children\":[],\"value\":\"assigned_user_link\",\"label\":\"Assigned To User\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"leads_assigned_user\",\"bean_is_lhs\":\"\",\"link_type\":\"one\",\"label\":\"Assigned To User\",\"table_key\":\"self_link_0\"},\"module\":\"Users\"}},\"module\":\"Leads\",\"report_name\":\"Leads By Lead Source\",\"chart_type\":\"vBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"count\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'vBarF','pro',0),('1','1','9e35f020-d68d-ec65-7b9a-50f7da14a6a2','Customer Account Owners','Accounts','summary','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Name\",\"table_key\":\"self\"},{\"name\":\"website\",\"label\":\"Website\",\"table_key\":\"self\"},{\"name\":\"phone_office\",\"label\":\"Phone Office\",\"table_key\":\"self\"},{\"name\":\"billing_address_city\",\"label\":\"Billing City\",\"table_key\":\"self\"},{\"name\":\"billing_address_country\",\"label\":\"Billing Country\",\"table_key\":\"self\"}],\"module\":\"Accounts\",\"group_defs\":[{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Accounts:assigned_user_link\",\"type\":\"user_name\"}],\"summary_columns\":[{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Accounts:assigned_user_link\"},{\"name\":\"count\",\"label\":\"Count\",\"field_type\":\"\",\"group_function\":\"count\",\"table_key\":\"self\"}],\"order_by\":[{\"name\":\"name\",\"type\":\"name\",\"dbType\":\"varchar\",\"vname\":\"Name\",\"len\":\"150\",\"unified_search\":\"1\",\"audited\":\"1\",\"required\":\"1\",\"importable\":\"required\",\"merge_filter\":\"selected\",\"table_key\":\"self\",\"sort_dir\":\"a\"}],\"report_name\":\"Customer Account Owners\",\"chart_type\":\"none\",\"do_round\":1,\"chart_description\":\"Customer Account Owners\",\"numerical_chart_column\":\"self:count\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"Accounts\",\"module\":\"Accounts\",\"label\":\"Accounts\"},\"Accounts:assigned_user_link\":{\"name\":\"Accounts > Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"accounts_assigned_user\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Accounts:assigned_user_link\"},\"dependents\":[\"Filter.1_table_filter_row_1\",\"group_by_row_1\",\"display_summaries_row_group_by_row_1\",\"Filter.1_table_filter_row_1\",\"group_by_row_1\",\"display_summaries_row_group_by_row_1\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"user_name\",\"table_key\":\"Accounts:assigned_user_link\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Current User\"]}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','a12fb080-7349-8d6e-d9c8-50f7da22b77d','My New Customer Accounts','Accounts','tabular','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Name\",\"table_key\":\"self\"},{\"name\":\"website\",\"label\":\"Website\",\"table_key\":\"self\"},{\"name\":\"phone_office\",\"label\":\"Phone Office\",\"table_key\":\"self\"},{\"name\":\"billing_address_city\",\"label\":\"Billing City\",\"table_key\":\"self\"},{\"name\":\"billing_address_country\",\"label\":\"Billing Country\",\"table_key\":\"self\"}],\"module\":\"Accounts\",\"group_defs\":[],\"summary_columns\":[],\"report_name\":\"My New Customer Accounts\",\"do_round\":1,\"numerical_chart_column\":\"\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"tabular\",\"full_table_list\":{\"self\":{\"value\":\"Accounts\",\"module\":\"Accounts\",\"label\":\"Accounts\"},\"Accounts:assigned_user_link\":{\"name\":\"Accounts  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"accounts_assigned_user\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Accounts:assigned_user_link\"},\"dependents\":[\"Filter.1_table_filter_row_2\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"account_type\",\"table_key\":\"self\",\"qualifier_name\":\"is\",\"input_name0\":[\"Customer\"]},\"1\":{\"name\":\"user_name\",\"table_key\":\"Accounts:assigned_user_link\",\"qualifier_name\":\"is\",\"input_name0\":[\"Current User\"]},\"2\":{\"name\":\"date_entered\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_7_days\",\"runtime\":1,\"input_name0\":\"undefined\",\"input_name1\":\"on\"}}},\"chart_type\":\"none\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','a42f64a6-49d0-2553-f7a4-50f7dafc86a8','Opportunities By Sales Stage','Opportunities','summary','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Opportunity Name\",\"table_key\":\"self\"},{\"name\":\"amount_usdollar\",\"label\":\"Amount\",\"table_key\":\"self\"},{\"name\":\"date_closed\",\"label\":\"Expected Close Date\",\"table_key\":\"self\"},{\"name\":\"description\",\"label\":\"Description\",\"table_key\":\"self\"},{\"name\":\"opportunity_type\",\"label\":\"Type\",\"table_key\":\"self\"},{\"name\":\"probability\",\"label\":\"Probability (%)\",\"table_key\":\"self\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Opportunities:assigned_user_link\"}],\"module\":\"Opportunities\",\"group_defs\":[{\"name\":\"sales_stage\",\"label\":\"Sales Stage\",\"table_key\":\"self\",\"type\":\"enum\"}],\"summary_columns\":[{\"name\":\"sales_stage\",\"label\":\"Sales Stage\",\"table_key\":\"self\"},{\"name\":\"count\",\"label\":\"Count\",\"field_type\":\"\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"amount_usdollar\",\"label\":\"AVG: Amount\",\"field_type\":\"currency\",\"group_function\":\"avg\",\"table_key\":\"self\"},{\"name\":\"amount_usdollar\",\"label\":\"SUM: Amount\",\"field_type\":\"currency\",\"group_function\":\"sum\",\"table_key\":\"self\"}],\"order_by\":[{\"name\":\"date_closed\",\"label\":\"Expected Close Date\",\"table_key\":\"self\",\"sort_dir\":\"a\"}],\"report_name\":\"Opportunities By Stage\",\"chart_type\":\"none\",\"do_round\":1,\"chart_description\":\"Opportunities By Stage\",\"numerical_chart_column\":\"self:count\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"Opportunities\",\"module\":\"Opportunities\",\"label\":\"Opportunities\"},\"Opportunities:assigned_user_link\":{\"name\":\"Opportunities  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"opportunities_assigned_user\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Opportunities:assigned_user_link\"},\"dependents\":[\"display_cols_row_11\",\"Filter.1_table_filter_row_2\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"sales_stage\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Prospecting\",\"Qualification\",\"Needs Analysis\",\"Value Proposition\",\"Id. Decision Makers\",\"Perception Analysis\",\"Proposal\\/Price Quote\",\"Negotiation\\/Review\",\"Closed Won\",\"Closed Lost\"],\"column_name\":\"self:sales_stage\",\"id\":\"rowid0\"},\"1\":{\"name\":\"user_name\",\"table_key\":\"Opportunities:assigned_user_link\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"1\",\"seed_chris_id\",\"seed_jim_id\",\"seed_max_id\",\"seed_sally_id\",\"seed_sarah_id\",\"seed_will_id\"],\"column_name\":\"Opportunities:assigned_user_link:user_name\",\"id\":\"rowid1\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','a76453d8-ecb7-c9c1-7c07-50f7daf7446c','Opportunities By Type','Opportunities','summary','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Opportunity Name\",\"table_key\":\"self\"},{\"name\":\"amount_usdollar\",\"label\":\"Amount\",\"table_key\":\"self\"},{\"name\":\"date_closed\",\"label\":\"Expected Close Date\",\"table_key\":\"self\"},{\"name\":\"sales_stage\",\"label\":\"Sales Stage\",\"table_key\":\"self\"},{\"name\":\"description\",\"label\":\"Description\",\"table_key\":\"self\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Opportunities:assigned_user_link\"}],\"module\":\"Opportunities\",\"group_defs\":[{\"name\":\"opportunity_type\",\"label\":\"Type\",\"table_key\":\"self\",\"type\":\"enum\"},{\"name\":\"sales_stage\",\"label\":\"Sales Stage\",\"table_key\":\"self\",\"type\":\"enum\"}],\"summary_columns\":[{\"name\":\"opportunity_type\",\"label\":\"Type\",\"table_key\":\"self\"},{\"name\":\"sales_stage\",\"label\":\"Sales Stage\",\"table_key\":\"self\"},{\"name\":\"count\",\"label\":\"Count\",\"field_type\":\"\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"amount_usdollar\",\"label\":\"AVG: Amount\",\"field_type\":\"currency\",\"group_function\":\"avg\",\"table_key\":\"self\"},{\"name\":\"amount_usdollar\",\"label\":\"SUM: Amount\",\"field_type\":\"currency\",\"group_function\":\"sum\",\"table_key\":\"self\"}],\"report_name\":\"Opportunities By Type\",\"chart_type\":\"none\",\"do_round\":1,\"chart_description\":\"Opportunities By Type\",\"numerical_chart_column\":\"self:count\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"Opportunities\",\"module\":\"Opportunities\",\"label\":\"Opportunities\"},\"Opportunities:assigned_user_link\":{\"name\":\"Opportunities  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"opportunities_assigned_user\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Opportunities:assigned_user_link\"},\"dependents\":[\"Filter.1_table_filter_row_3\",\"display_cols_row_12\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"opportunity_type\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Existing Business\",\"New Business\"]},\"1\":{\"name\":\"sales_stage\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Prospecting\",\"Qualification\",\"Needs Analysis\",\"Value Proposition\",\"Id. Decision Makers\",\"Perception Analysis\",\"Proposal\\/Price Quote\",\"Negotiation\\/Review\",\"Closed Won\",\"Closed Lost\"]},\"2\":{\"name\":\"user_name\",\"table_key\":\"Opportunities:assigned_user_link\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Current User\",\"1\",\"seed_chris_id\",\"seed_jim_id\",\"seed_max_id\",\"seed_sally_id\",\"seed_sarah_id\",\"seed_will_id\"]}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','aa65939e-e6fa-6510-f043-50f7da016cbd','Open Calls','Calls','tabular','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Subject\",\"table_key\":\"self\"},{\"name\":\"status\",\"label\":\"Status\",\"table_key\":\"self\"},{\"name\":\"date_entered\",\"label\":\"Date Created\",\"table_key\":\"self\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Calls:assigned_user_link\"}],\"module\":\"Calls\",\"group_defs\":[],\"summary_columns\":[],\"order_by\":[{\"name\":\"date_entered\",\"vname\":\"Date Created\",\"type\":\"datetime\",\"group\":\"created_by_name\",\"table_key\":\"self\",\"sort_dir\":\"a\"}],\"report_name\":\"Open Calls\",\"do_round\":1,\"numerical_chart_column\":\"\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"tabular\",\"full_table_list\":{\"self\":{\"value\":\"Calls\",\"module\":\"Calls\",\"label\":\"Calls\"},\"Calls:assigned_user_link\":{\"name\":\"Calls  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"calls_assigned_user\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Calls:assigned_user_link\"},\"dependents\":[\"display_cols_row_4\",\"Filter.1_table_filter_row_3\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"status\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Planned\",\"Not Held\"]},\"1\":{\"name\":\"date_start\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_7_days\",\"runtime\":1,\"input_name0\":\"undefined\",\"input_name1\":\"on\"},\"2\":{\"name\":\"user_name\",\"table_key\":\"Calls:assigned_user_link\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Current User\"]}}},\"chart_type\":\"none\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','ad47a793-d4cd-8066-b9ac-50f7dad25e95','Open Meetings','Meetings','tabular','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Subject\",\"table_key\":\"self\"},{\"name\":\"description\",\"label\":\"Description\",\"table_key\":\"self\"},{\"name\":\"date_entered\",\"label\":\"Date Created\",\"table_key\":\"self\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Meetings:assigned_user_link\"}],\"module\":\"Meetings\",\"group_defs\":[],\"summary_columns\":[],\"order_by\":[{\"name\":\"date_entered\",\"vname\":\"Date Created\",\"type\":\"datetime\",\"group\":\"created_by_name\",\"table_key\":\"self\",\"sort_dir\":\"a\"}],\"report_name\":\"Open Meetings\",\"do_round\":1,\"numerical_chart_column\":\"\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"tabular\",\"full_table_list\":{\"self\":{\"value\":\"Meetings\",\"module\":\"Meetings\",\"label\":\"Meetings\"},\"Meetings:assigned_user_link\":{\"name\":\"Meetings  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"meetings_assigned_user\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Meetings:assigned_user_link\"},\"dependents\":[\"Filter.1_table_filter_row_3\",\"display_cols_row_4\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"status\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Planned\",\"Not Held\"]},\"1\":{\"name\":\"date_start\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_7_days\",\"runtime\":1,\"input_name0\":\"undefined\",\"input_name1\":\"on\"},\"2\":{\"name\":\"user_name\",\"table_key\":\"Meetings:assigned_user_link\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Current User\"]}}},\"chart_type\":\"none\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','b05f69ee-9ce4-f405-1e59-50f7da2c84bf','Open Tasks','Tasks','tabular','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Subject\",\"table_key\":\"self\"},{\"name\":\"priority\",\"label\":\"Priority\",\"table_key\":\"self\"},{\"name\":\"status\",\"label\":\"Status\",\"table_key\":\"self\"},{\"name\":\"date_entered\",\"label\":\"Date Created\",\"table_key\":\"self\"},{\"name\":\"date_due\",\"label\":\"Due Date\",\"table_key\":\"self\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Tasks:assigned_user_link\"}],\"module\":\"Tasks\",\"group_defs\":[],\"summary_columns\":[],\"order_by\":[{\"name\":\"date_due\",\"vname\":\"Due Date\",\"type\":\"datetime\",\"group\":\"date_due\",\"table_key\":\"self\",\"sort_dir\":\"d\"}],\"report_name\":\"Open Tasks\",\"do_round\":1,\"numerical_chart_column\":\"\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"tabular\",\"full_table_list\":{\"self\":{\"value\":\"Tasks\",\"module\":\"Tasks\",\"label\":\"Tasks\"},\"Tasks:assigned_user_link\":{\"name\":\"Tasks  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tasks_assigned_user\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Tasks:assigned_user_link\"},\"dependents\":[\"Filter.1_table_filter_row_4\",\"display_cols_row_6\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"status\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Not Started\",\"In Progress\",\"Pending Input\"]},\"1\":{\"name\":\"date_entered\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_7_days\",\"runtime\":1,\"input_name0\":\"undefined\",\"input_name1\":\"on\"},\"2\":{\"name\":\"user_name\",\"table_key\":\"Tasks:assigned_user_link\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Current User\"]}}},\"chart_type\":\"none\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','b371893a-284b-fc4d-3977-50f7da6c9759','Opportunities Won By Account','Opportunities','detailed_summary','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Opportunity Name\",\"table_key\":\"self\"},{\"name\":\"name\",\"label\":\"Account Name\",\"table_key\":\"Opportunities:accounts\"},{\"name\":\"date_closed\",\"label\":\"Expected Close Date\",\"table_key\":\"self\"}],\"module\":\"Opportunities\",\"group_defs\":[{\"name\":\"name\",\"label\":\"Account Name\",\"table_key\":\"Opportunities:accounts\",\"type\":\"name\"}],\"summary_columns\":[{\"name\":\"name\",\"label\":\"Account Name\",\"table_key\":\"Opportunities:accounts\"}],\"report_name\":\"Opportunities Won By Account\",\"chart_type\":\"none\",\"do_round\":1,\"chart_description\":\"Opportunities Won By Account\",\"numerical_chart_column\":\"\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"summary\",\"order_by\":[{\"name\":\"date_closed\",\"vname\":\"Expected Close Date\",\"type\":\"date\",\"audited\":\"1\",\"importable\":\"required\",\"table_key\":\"self\",\"sort_dir\":\"a\"}],\"full_table_list\":{\"self\":{\"value\":\"Opportunities\",\"module\":\"Opportunities\",\"label\":\"Opportunities\"},\"Opportunities:accounts\":{\"name\":\"Opportunities  >  Accounts\",\"parent\":\"self\",\"link_def\":{\"name\":\"accounts\",\"relationship_name\":\"accounts_opportunities\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Accounts\",\"table_key\":\"Opportunities:accounts\"},\"dependents\":[\"group_by_row_1\",\"display_summaries_row_group_by_row_1\",\"display_cols_row_3\",\"group_by_row_1\",\"display_summaries_row_group_by_row_1\",\"display_cols_row_3\",\"group_by_row_1\",\"display_summaries_row_group_by_row_1\",\"display_cols_row_3\",\"Filter.1_table_filter_row_4\",\"Filter.1_table_filter_row_2\",\"group_by_row_1\",\"display_summaries_row_group_by_row_1\",\"display_cols_row_3\"],\"module\":\"Accounts\",\"label\":\"Accounts\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"sales_stage\",\"table_key\":\"self\",\"qualifier_name\":\"is\",\"runtime\":1,\"input_name0\":[\"Closed Won\"]},\"1\":{\"name\":\"name\",\"table_key\":\"Opportunities:accounts\",\"qualifier_name\":\"not_empty\",\"runtime\":1,\"input_name0\":\"not_empty\",\"input_name1\":\"on\"},\"2\":{\"name\":\"date_closed\",\"table_key\":\"self\",\"qualifier_name\":\"not_empty\",\"runtime\":1,\"input_name0\":\"not_empty\",\"input_name1\":\"on\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','b67096cb-b30c-5228-cbf6-50f7da556a10','Opportunities Won By User','Opportunities','detailed_summary','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Opportunity Name\",\"table_key\":\"self\"},{\"name\":\"date_closed\",\"label\":\"Expected Close Date\",\"table_key\":\"self\"}],\"module\":\"Opportunities\",\"group_defs\":[{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Opportunities:assigned_user_link\",\"type\":\"user_name\"}],\"summary_columns\":[{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Opportunities:assigned_user_link\"}],\"order_by\":[{\"name\":\"date_closed\",\"vname\":\"Expected Close Date\",\"type\":\"date\",\"audited\":\"1\",\"importable\":\"required\",\"table_key\":\"self\",\"sort_dir\":\"a\"}],\"report_name\":\"Opportunities Won By User\",\"chart_type\":\"none\",\"do_round\":1,\"chart_description\":\"\",\"numerical_chart_column\":\"\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"Opportunities\",\"module\":\"Opportunities\",\"label\":\"Opportunities\"},\"Opportunities:assigned_user_link\":{\"name\":\"Opportunities  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"opportunities_assigned_user\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Opportunities:assigned_user_link\"},\"dependents\":[\"Filter.1_table_filter_row_2\",\"group_by_row_1\",\"display_summaries_row_group_by_row_1\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"sales_stage\",\"table_key\":\"self\",\"qualifier_name\":\"is\",\"input_name0\":[\"Closed Won\"]},\"1\":{\"name\":\"user_name\",\"table_key\":\"Opportunities:assigned_user_link\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Current User\",\"1\",\"seed_chris_id\",\"seed_jim_id\",\"seed_max_id\",\"seed_sally_id\",\"seed_sarah_id\",\"seed_will_id\"]},\"2\":{\"name\":\"date_closed\",\"table_key\":\"self\",\"qualifier_name\":\"not_empty\",\"runtime\":1,\"input_name0\":\"undefined\",\"input_name1\":\"on\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','b95bebf1-e7f2-f138-717c-50f7dacee61c','All Open Opportunities','Opportunities','tabular','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Opportunity Name\",\"table_key\":\"self\"},{\"name\":\"opportunity_type\",\"label\":\"Type\",\"table_key\":\"self\"},{\"name\":\"sales_stage\",\"label\":\"Sales Stage\",\"table_key\":\"self\"},{\"name\":\"date_closed\",\"label\":\"Expected Close Date\",\"table_key\":\"self\"},{\"name\":\"amount_usdollar\",\"label\":\"Amount\",\"table_key\":\"self\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Opportunities:assigned_user_link\"}],\"module\":\"Opportunities\",\"group_defs\":[],\"summary_columns\":[],\"order_by\":[{\"name\":\"date_closed\",\"vname\":\"Expected Close Date\",\"type\":\"date\",\"audited\":\"1\",\"importable\":\"required\",\"table_key\":\"self\",\"sort_dir\":\"a\"}],\"report_name\":\"All Open Opportunities\",\"chart_type\":\"none\",\"do_round\":1,\"numerical_chart_column\":\"\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"tabular\",\"full_table_list\":{\"self\":{\"value\":\"Opportunities\",\"module\":\"Opportunities\",\"label\":\"Opportunities\"},\"Opportunities:assigned_user_link\":{\"name\":\"Opportunities  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"opportunities_assigned_user\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Opportunities:assigned_user_link\"},\"dependents\":[\"display_cols_row_6\",\"display_cols_row_6\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"sales_stage\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Prospecting\",\"Qualification\",\"Needs Analysis\",\"Value Proposition\",\"Id. Decision Makers\",\"Perception Analysis\",\"Proposal\\/Price Quote\",\"Negotiation\\/Review\"]},\"1\":{\"name\":\"date_closed\",\"table_key\":\"self\",\"qualifier_name\":\"not_empty\",\"runtime\":1,\"input_name0\":\"undefined\",\"input_name1\":\"on\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','bc40c334-4233-df7a-3a31-50f7dab86a50','All Closed Opportunities','Opportunities','tabular','{\"display_columns\":[{\"name\":\"name\",\"label\":\"Opportunity Name\",\"table_key\":\"self\"},{\"name\":\"opportunity_type\",\"label\":\"Type\",\"table_key\":\"self\"},{\"name\":\"sales_stage\",\"label\":\"Sales Stage\",\"table_key\":\"self\"},{\"name\":\"date_closed\",\"label\":\"Expected Close Date\",\"table_key\":\"self\"},{\"name\":\"amount_usdollar\",\"label\":\"Amount\",\"table_key\":\"self\"},{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"Opportunities:assigned_user_link\"}],\"module\":\"Opportunities\",\"group_defs\":[],\"summary_columns\":[],\"order_by\":[{\"name\":\"date_closed\",\"vname\":\"Expected Close Date\",\"type\":\"date\",\"audited\":\"1\",\"importable\":\"required\",\"table_key\":\"self\",\"sort_dir\":\"a\"}],\"report_name\":\"All Closed Opportunities\",\"do_round\":1,\"numerical_chart_column\":\"\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"tabular\",\"full_table_list\":{\"self\":{\"value\":\"Opportunities\",\"module\":\"Opportunities\",\"label\":\"Opportunities\"},\"Opportunities:assigned_user_link\":{\"name\":\"Opportunities  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"opportunities_assigned_user\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Opportunities:assigned_user_link\"},\"dependents\":[\"display_cols_row_8\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"sales_stage\",\"table_key\":\"self\",\"qualifier_name\":\"one_of\",\"runtime\":1,\"input_name0\":[\"Closed Won\",\"Closed Lost\"]},\"1\":{\"name\":\"date_closed\",\"table_key\":\"self\",\"qualifier_name\":\"not_empty\",\"runtime\":1,\"input_name0\":\"undefined\",\"input_name1\":\"on\"}}},\"chart_type\":\"none\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','bf3a5b7a-6485-fb1a-599d-50f7dac7c0ce','My Usage Metrics (Today)','TrackerPerfs','summary','{\"display_columns\":[],\"module\":\"Trackers\",\"report_name\":\"My Usage Metrics (Today)\",\"group_defs\":[],\"summary_columns\":[{\"name\":\"server_response_time\",\"label\":\"Total Server Response Time (secs)\",\"group_function\":\"sum\",\"table_key\":\"Trackers:tracker_monitor_id\"},{\"name\":\"db_round_trips\",\"label\":\"Total Database Roundtrips\",\"group_function\":\"sum\",\"table_key\":\"Trackers:tracker_monitor_id\"},{\"name\":\"files_opened\",\"label\":\"Total Files Accessed\",\"group_function\":\"sum\",\"table_key\":\"Trackers:tracker_monitor_id\"}],\"chart_type\":\"none\",\"chart_description\":\"My Usage Metrics (Today)\",\"numerical_chart_column\":\"Trackers>tracker_monitor_id->server_response_time\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Trackers\"},\"Trackers:tracker_user_id\":{\"name\":\"Trackers  >  Assigned to User\",\"label\":\"Users\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tracker_user_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Trackers:tracker_user_id\"},\"dependents\":[\"Filter_1_table_filter_row_1\"],\"module\":\"Users\"},\"Trackers:tracker_monitor_id\":{\"name\":\"Trackers  >  Monitor Id\",\"label\":\"TrackerPerfs\",\"parent\":\"self\",\"link_def\":{\"name\":\"monitor_id_link\",\"relationship_name\":\"tracker_monitor_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Monitor Id\",\"table_key\":\"Trackers:tracker_monitor_id\"},\"dependents\":[\"display_summaries_row_1\",\"display_summaries_row_2\",\"display_summaries_row_3\"],\"module\":\"TrackerPerfs\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"user_name\",\"table_key\":\"Trackers:tracker_user_id\",\"qualifier_name\":\"is\",\"input_name0\":[\"Current User\"]},\"1\":{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_today\",\"input_name0\":\"tp_today\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','c21faec8-ab18-d87d-6f0d-50f7dae27ff8','My Usage Metrics (Last 7 Days)','TrackerPerfs','summary','{\"display_columns\":[],\"module\":\"Trackers\",\"report_name\":\"My Usage Metrics (Last 7 Days)\",\"group_defs\":[],\"summary_columns\":[{\"name\":\"server_response_time\",\"label\":\"Total Server Response Time (secs)\",\"group_function\":\"sum\",\"table_key\":\"Trackers:tracker_monitor_id\"},{\"name\":\"db_round_trips\",\"label\":\"Total Database Roundtrips\",\"group_function\":\"sum\",\"table_key\":\"Trackers:tracker_monitor_id\"},{\"name\":\"files_opened\",\"label\":\"Total Files Accessed\",\"group_function\":\"sum\",\"table_key\":\"Trackers:tracker_monitor_id\"}],\"chart_type\":\"none\",\"chart_description\":\"My Usage Metrics (Last 7 Days)\",\"numerical_chart_column\":\"Trackers>tracker_monitor_id->server_response_time\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Trackers\"},\"Trackers:tracker_user_id\":{\"name\":\"Trackers  >  Assigned to User\",\"label\":\"Users\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tracker_user_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Trackers:tracker_user_id\"},\"dependents\":[\"Filter_1_table_filter_row_1\"],\"module\":\"Users\"},\"Trackers:tracker_monitor_id\":{\"name\":\"Trackers  >  Monitor Id\",\"label\":\"TrackerPerfs\",\"parent\":\"self\",\"link_def\":{\"name\":\"monitor_id_link\",\"relationship_name\":\"tracker_monitor_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Monitor Id\",\"table_key\":\"Trackers:tracker_monitor_id\"},\"dependents\":[\"display_summaries_row_1\",\"display_summaries_row_2\",\"display_summaries_row_3\"],\"module\":\"TrackerPerfs\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"user_name\",\"table_key\":\"Trackers:tracker_user_id\",\"qualifier_name\":\"is\",\"input_name0\":[\"Current User\"]},\"1\":{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_7_days\",\"input_name0\":\"tp_last_7_days\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','c5433548-5bc1-b98c-7218-50f7da9a14d3','My Usage Metrics (Last 30 Days)','TrackerPerfs','summary','{\"display_columns\":[],\"module\":\"Trackers\",\"report_name\":\"My Usage Metrics (Last 30 Days)\",\"group_defs\":[],\"summary_columns\":[{\"name\":\"server_response_time\",\"label\":\"Total Server Response Time (secs)\",\"group_function\":\"sum\",\"table_key\":\"Trackers:tracker_monitor_id\"},{\"name\":\"db_round_trips\",\"label\":\"Total Database Roundtrips\",\"group_function\":\"sum\",\"table_key\":\"Trackers:tracker_monitor_id\"},{\"name\":\"files_opened\",\"label\":\"Total Files Accessed\",\"group_function\":\"sum\",\"table_key\":\"Trackers:tracker_monitor_id\"}],\"chart_type\":\"none\",\"chart_description\":\"My Usage Metrics (Last 30 Days)\",\"numerical_chart_column\":\"Trackers>tracker_monitor_id->server_response_time\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Trackers\"},\"Trackers:tracker_user_id\":{\"name\":\"Trackers  >  Assigned to User\",\"label\":\"Users\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tracker_user_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Trackers:tracker_user_id\"},\"dependents\":[\"Filter_1_table_filter_row_1\"],\"module\":\"Users\"},\"Trackers:tracker_monitor_id\":{\"name\":\"Trackers  >  Monitor Id\",\"label\":\"TrackerPerfs\",\"parent\":\"self\",\"link_def\":{\"name\":\"monitor_id_link\",\"relationship_name\":\"tracker_monitor_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Monitor Id\",\"table_key\":\"Trackers:tracker_monitor_id\"},\"dependents\":[\"display_summaries_row_1\",\"display_summaries_row_2\",\"display_summaries_row_3\"],\"module\":\"TrackerPerfs\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"user_name\",\"table_key\":\"Trackers:tracker_user_id\",\"qualifier_name\":\"is\",\"input_name0\":[\"Current User\"]},\"1\":{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_30_days\",\"input_name0\":\"tp_last_30_days\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','c84a0a7b-bc25-e7ad-4b44-50f7da17453c','My Module Usage (Today)','Trackers','summary','{\"display_columns\":[],\"module\":\"Trackers\",\"report_name\":\"My Module Usage (Today)\",\"group_defs\":[{\"name\":\"module_name\",\"label\":\"Module Name\",\"table_key\":\"self\"}],\"summary_columns\":[{\"name\":\"module_name\",\"label\":\"Trackers > Module Name\",\"table_key\":\"self\"},{\"name\":\"count\",\"label\":\"Trackers > Count\",\"group_function\":\"count\",\"table_key\":\"self\"}],\"chart_type\":\"hBarF\",\"chart_description\":\"My Module Usage (Today)\",\"numerical_chart_column\":\"count\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Trackers\"},\"Trackers:tracker_user_id\":{\"name\":\"Trackers  >  Assigned to User\",\"label\":\"Users\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tracker_user_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Trackers:tracker_user_id\"},\"dependents\":[\"Filter_1_table_filter_row_1\"],\"module\":\"Users\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"user_name\",\"table_key\":\"Trackers:tracker_user_id\",\"qualifier_name\":\"is\",\"input_name0\":[\"Current User\"]},\"1\":{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_today\",\"input_name0\":\"tp_today\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','cb41896b-237a-a905-3bde-50f7da8bfd8e','My Module Usage (Last 7 Days)','Trackers','summary','{\"display_columns\":[],\"module\":\"Trackers\",\"report_name\":\"My Module Usage (Last 7 Days)\",\"group_defs\":[{\"name\":\"module_name\",\"label\":\"Module Name\",\"table_key\":\"self\"}],\"summary_columns\":[{\"name\":\"module_name\",\"label\":\"Trackers > Module Name\",\"table_key\":\"self\"},{\"name\":\"count\",\"label\":\"Trackers > Count\",\"group_function\":\"count\",\"table_key\":\"self\"}],\"chart_type\":\"hBarF\",\"chart_description\":\"My Module Usage (Last 7 Days)\",\"numerical_chart_column\":\"count\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Trackers\"},\"Trackers:tracker_user_id\":{\"name\":\"Trackers  >  Assigned to User\",\"label\":\"Users\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tracker_user_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Trackers:tracker_user_id\"},\"dependents\":[\"Filter_1_table_filter_row_1\"],\"module\":\"Users\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"user_name\",\"table_key\":\"Trackers:tracker_user_id\",\"qualifier_name\":\"is\",\"input_name0\":[\"Current User\"]},\"1\":{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_7_days\",\"input_name0\":\"tp_last_7_days\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','ce1fd075-9dc9-fc5d-237e-50f7dae567e4','My Module Usage (Last 30 Days)','Trackers','summary','{\"display_columns\":[],\"module\":\"Trackers\",\"report_name\":\"My Module Usage (Last 30 Days)\",\"group_defs\":[{\"name\":\"module_name\",\"label\":\"Module Name\",\"table_key\":\"self\"}],\"summary_columns\":[{\"name\":\"module_name\",\"label\":\"Trackers > Module Name\",\"table_key\":\"self\"},{\"name\":\"count\",\"label\":\"Trackers > Count\",\"group_function\":\"count\",\"table_key\":\"self\"}],\"chart_type\":\"hBarF\",\"chart_description\":\"My Module Usage (Last 30 Days)\",\"numerical_chart_column\":\"count\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Trackers\"},\"Trackers:tracker_user_id\":{\"name\":\"Trackers  >  Assigned to User\",\"label\":\"Users\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tracker_user_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Trackers:tracker_user_id\"},\"dependents\":[\"Filter_1_table_filter_row_1\"],\"module\":\"Users\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"user_name\",\"table_key\":\"Trackers:tracker_user_id\",\"qualifier_name\":\"is\",\"input_name0\":[\"Current User\"]},\"1\":{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_30_days\",\"input_name0\":\"tp_last_30_days\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','d129a6cd-4aab-3576-0746-50f7da8ccfa2','Users Usage Metrics (Last 7 Days)','TrackerPerfs','summary','{\"report_type\":\"summary\",\"display_columns\":[],\"summary_columns\":[{\"name\":\"user_id\",\"label\":\"User Id\",\"table_key\":\"self\",\"is_group_by\":\"visible\"},{\"name\":\"server_response_time\",\"label\":\"Total Server Response Time (secs)\",\"group_function\":\"sum\",\"table_key\":\"self_link_0\"},{\"name\":\"db_round_trips\",\"label\":\"Total Database Roundtrips\",\"group_function\":\"sum\",\"table_key\":\"self_link_0\"},{\"name\":\"files_opened\",\"label\":\"Total Files Accessed\",\"group_function\":\"sum\",\"table_key\":\"self_link_0\"}],\"filters_def\":[{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_7_days\",\"input_name0\":\"tp_last_7_days\"}],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"user_id\",\"label\":\"User Id\",\"table_key\":\"self\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Tracker\",\"children\":[]},\"self_link_0\":{\"parent\":\"self\",\"children\":[],\"value\":\"monitor_id_link\",\"label\":\"Monitor Id\",\"link_def\":{\"name\":\"monitor_id_link\",\"relationship_name\":\"tracker_monitor_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Monitor Id\",\"table_key\":\"self_link_0\"},\"module\":\"TrackerPerfs\"}},\"module\":\"Trackers\",\"report_name\":\"Users Usage Metrics (Last 7 Days)\",\"chart_type\":\"none\",\"chart_description\":\"Users Usage Metrics (Last 7 Days)\",\"numerical_chart_column\":\"self_link_0:server_response_time:sum\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','d443c20c-ae16-0707-0475-50f7daf3966d','Users Usage Metrics (Last 30 Days)','TrackerPerfs','summary','{\"report_type\":\"summary\",\"display_columns\":[],\"summary_columns\":[{\"name\":\"user_id\",\"label\":\"User Id\",\"table_key\":\"self\",\"is_group_by\":\"visible\"},{\"name\":\"server_response_time\",\"label\":\"Total Server Response Time (secs)\",\"group_function\":\"sum\",\"table_key\":\"self_link_0\"},{\"name\":\"db_round_trips\",\"label\":\"Total Database Roundtrips\",\"group_function\":\"sum\",\"table_key\":\"self_link_0\"},{\"name\":\"files_opened\",\"label\":\"Total Files Accessed\",\"group_function\":\"sum\",\"table_key\":\"self_link_0\"}],\"filters_def\":[{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_30_days\",\"input_name0\":\"tp_last_30_days\"}],\"filters_combiner\":\"AND\",\"group_defs\":[{\"name\":\"user_id\",\"label\":\"User Id\",\"table_key\":\"self\"}],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Tracker\",\"children\":[]},\"self_link_0\":{\"parent\":\"self\",\"children\":[],\"value\":\"monitor_id_link\",\"label\":\"Monitor Id\",\"link_def\":{\"name\":\"monitor_id_link\",\"relationship_name\":\"tracker_monitor_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Monitor Id\",\"table_key\":\"self_link_0\"},\"module\":\"TrackerPerfs\"}},\"module\":\"Trackers\",\"report_name\":\"Users Usage Metrics (Last 30 Days)\",\"chart_type\":\"none\",\"chart_description\":\"Users Usage Metrics (Last 30 Days)\",\"numerical_chart_column\":\"self_link_0:server_response_time:sum\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','d740f515-250d-95d8-fcaf-50f7da6c80ed','Modules Used By My Direct Reports (Last 30 Days)','Trackers','summary','{\"display_columns\":[],\"module\":\"Trackers\",\"group_defs\":[{\"name\":\"module_name\",\"label\":\"Module Name\",\"table_key\":\"self\",\"type\":\"varchar\"}],\"summary_columns\":[{\"name\":\"module_name\",\"label\":\"Module Name\",\"table_key\":\"self\"},{\"name\":\"count\",\"label\":\"Count\",\"field_type\":\"\",\"group_function\":\"count\",\"table_key\":\"self\"}],\"report_name\":\"Modules Used By My Direct Reports (Last 30 Days)\",\"chart_type\":\"hBarF\",\"chart_description\":\"\",\"numerical_chart_column\":\"self:count\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Trackers\"},\"Trackers:assigned_user_link\":{\"name\":\"Trackers  >  Assigned to User \",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tracker_user_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Trackers:assigned_user_link\"},\"dependents\":[\"Filter.1_table_filter_row_3\"],\"module\":\"Users\",\"label\":\"Assigned to User\"},\"Trackers:assigned_user_link:reports_to_link\":{\"name\":\"Trackers  >  Assigned to User  >  Reports To\",\"parent\":\"Trackers:assigned_user_link\",\"link_def\":{\"name\":\"reports_to_link\",\"relationship_name\":\"user_direct_reports\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Reports to\",\"table_key\":\"Trackers:assigned_user_link:reports_to_link\"},\"dependents\":[\"Filter.1_table_filter_row_3\"],\"module\":\"Users\",\"label\":\"Reports to\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"module_name\",\"table_key\":\"self\",\"qualifier_name\":\"not_equals_str\",\"input_name0\":\"UserPreferences\",\"input_name1\":\"on\"},\"1\":{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_30_days\",\"input_name0\":\"undefined\",\"input_name1\":\"on\"},\"2\":{\"name\":\"user_name\",\"table_key\":\"Trackers:assigned_user_link:reports_to_link\",\"qualifier_name\":\"one_of\",\"input_name0\":[\"Current User\"]}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'hBarF','pro',0),('1','1','da3cfcf6-f16d-8a8f-9a85-50f7dac6f5fe','Slow Queries','TrackerQueries','tabular','{\"report_type\":\"tabular\",\"display_columns\":[{\"name\":\"text\",\"label\":\"SQL STATEMENT\",\"table_key\":\"self\"},{\"name\":\"sec_avg\",\"label\":\"Average Seconds\",\"table_key\":\"self\"},{\"name\":\"sec_total\",\"label\":\"Seconds Total\",\"table_key\":\"self\"},{\"name\":\"run_count\",\"label\":\"Execution Count\",\"table_key\":\"self\"}],\"summary_columns\":[],\"filters_def\":[],\"filters_combiner\":\"AND\",\"group_defs\":[],\"full_table_list\":{\"self\":{\"parent\":\"\",\"value\":\"TrackerQueries\",\"module\":\"TrackerQueries\",\"label\":\"Tracker Queries\",\"children\":[]}},\"module\":\"TrackerQueries\",\"report_name\":\"Slow Queries\",\"chart_type\":\"none\",\"chart_description\":\"\",\"numerical_chart_column\":\"count\",\"assigned_user_id\":\"1\"}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','dd1167a4-8ffb-bc2d-a800-50f7da75f027','My Records Modified (Last 7 Days)','Trackers','tabular','{\"display_columns\":[{\"name\":\"item_id\",\"label\":\"Trackers > Item Id\",\"table_key\":\"self\"},{\"name\":\"item_summary\",\"label\":\"Trackers > Item Summary\",\"table_key\":\"self\"},{\"name\":\"module_name\",\"label\":\"Trackers > Module Name\",\"table_key\":\"self\"},{\"name\":\"action\",\"label\":\"Trackers > Action\",\"table_key\":\"self\"},{\"name\":\"date_modified\",\"label\":\"Trackers > Last Modified\",\"table_key\":\"self\"}],\"module\":\"Trackers\",\"report_name\":\"My Records Modified (Last 7 Days)\",\"group_defs\":[],\"summary_columns\":[],\"chart_type\":\"none\",\"numerical_chart_column\":\"\",\"report_type\":\"tabular\",\"full_table_list\":{\"self\":{\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Trackers\"},\"Trackers:tracker_user_id\":{\"name\":\"Trackers  >  Assigned to User\",\"label\":\"Users\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tracker_user_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Trackers:tracker_user_id\"},\"dependents\":[\"Filter_1_table_filter_row_1\"],\"module\":\"Users\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"user_name\",\"table_key\":\"Trackers:tracker_user_id\",\"qualifier_name\":\"is\",\"input_name0\":[\"Current User\"]},\"1\":{\"name\":\"action\",\"table_key\":\"self\",\"qualifier_name\":\"equals\",\"input_name0\":\"save\",\"input_name1\":\"on\"},\"2\":{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_7_days\",\"input_name0\":\"tp_last_7_days\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','e05135a0-af86-a71e-bf48-50f7da198940','My Recently Modified Records (Last 30 Days)','Trackers','tabular','{\"display_columns\":[{\"name\":\"item_id\",\"label\":\"Trackers > Item Id\",\"table_key\":\"self\"},{\"name\":\"item_summary\",\"label\":\"Trackers > Item Summary\",\"table_key\":\"self\"},{\"name\":\"module_name\",\"label\":\"Trackers > Module Name\",\"table_key\":\"self\"},{\"name\":\"action\",\"label\":\"Trackers > Action\",\"table_key\":\"self\"},{\"name\":\"date_modified\",\"label\":\"Trackers > Last Modified\",\"table_key\":\"self\"}],\"module\":\"Trackers\",\"report_name\":\"My Recently Modified Records (Last 30 Days)\",\"group_defs\":[],\"summary_columns\":[],\"chart_type\":\"none\",\"numerical_chart_column\":\"\",\"report_type\":\"tabular\",\"full_table_list\":{\"self\":{\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Trackers\"},\"Trackers:tracker_user_id\":{\"name\":\"Trackers  >  Assigned to User\",\"label\":\"Users\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tracker_user_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Trackers:tracker_user_id\"},\"dependents\":[\"Filter_1_table_filter_row_1\"],\"module\":\"Users\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"user_name\",\"table_key\":\"Trackers:tracker_user_id\",\"qualifier_name\":\"is\",\"input_name0\":[\"Current User\"]},\"1\":{\"name\":\"action\",\"table_key\":\"self\",\"qualifier_name\":\"equals\",\"input_name0\":\"save\",\"input_name1\":\"on\"},\"2\":{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_30_days\",\"input_name0\":\"tp_last_30_days\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','e34af02f-b3c9-61dd-777c-50f7da707aed','Records Modified By My Direct Reports (Last 30 Days)','Trackers','tabular','{\"display_columns\":[{\"name\":\"user_id\",\"label\":\"User Id\",\"table_key\":\"self\"},{\"name\":\"item_id\",\"label\":\"Item Id\",\"table_key\":\"self\"},{\"name\":\"item_summary\",\"label\":\"Item Summary\",\"table_key\":\"self\"},{\"name\":\"module_name\",\"label\":\"Module Name\",\"table_key\":\"self\"},{\"name\":\"date_modified\",\"label\":\"Last Modified\",\"table_key\":\"self\"}],\"module\":\"Trackers\",\"group_defs\":[],\"summary_columns\":[],\"report_name\":\"Records Modified By My Direct Reports (Last 30 Days)\",\"chart_type\":\"none\",\"numerical_chart_column\":\"\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"tabular\",\"full_table_list\":{\"self\":{\"value\":\"Trackers\",\"module\":\"Trackers\",\"label\":\"Trackers\"},\"Trackers:assigned_user_link\":{\"name\":\"Trackers  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tracker_user_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"Trackers:assigned_user_link\"},\"dependents\":[\"Filter.1_table_filter_row_4\",\"Filter.1_table_filter_row_5\",\"Filter.1_table_filter_row_4\",\"Filter.1_table_filter_row_4\"],\"module\":\"Users\",\"label\":\"Assigned to User\",\"optional\":false},\"Trackers:assigned_user_link:reports_to_link\":{\"name\":\"Trackers  >  Assigned to User  >  Reports To\",\"parent\":\"Trackers:assigned_user_link\",\"link_def\":{\"name\":\"reports_to_link\",\"relationship_name\":\"user_direct_reports\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Reports to\",\"table_key\":\"Trackers:assigned_user_link:reports_to_link\"},\"dependents\":[\"Filter.1_table_filter_row_5\",\"Filter.1_table_filter_row_4\",\"Filter.1_table_filter_row_4\"],\"module\":\"Users\",\"label\":\"Reports to\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"action\",\"table_key\":\"self\",\"qualifier_name\":\"equals\",\"input_name0\":\"save\",\"input_name1\":\"on\"},\"1\":{\"name\":\"date_modified\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_30_days\",\"input_name0\":\"tp_last_30_days\",\"input_name1\":\"on\"},\"2\":{\"name\":\"module_name\",\"table_key\":\"self\",\"qualifier_name\":\"not_equals_str\",\"input_name0\":\"UserPreferences\",\"input_name1\":\"on\"},\"3\":{\"name\":\"user_name\",\"table_key\":\"Trackers:assigned_user_link:reports_to_link\",\"qualifier_name\":\"is\",\"input_name0\":[\"Current User\"]}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','e64590e4-a7b9-3643-a384-50f7dae94375','Active User Sessions (Last 7 Days)','TrackerSessions','tabular','{\"display_columns\":[{\"name\":\"user_name\",\"label\":\"User Name\",\"table_key\":\"TrackerSessions:assigned_user_link\"},{\"name\":\"first_name\",\"label\":\"First Name\",\"table_key\":\"TrackerSessions:assigned_user_link\"},{\"name\":\"last_name\",\"label\":\"Last Name\",\"table_key\":\"TrackerSessions:assigned_user_link\"},{\"name\":\"round_trips\",\"label\":\"Session Roundtrips\",\"table_key\":\"self\"},{\"name\":\"seconds\",\"label\":\"Seconds\",\"table_key\":\"self\"}],\"module\":\"TrackerSessions\",\"group_defs\":[],\"summary_columns\":[],\"report_name\":\"Active User Sessions (Last 7 Days)\",\"chart_type\":\"none\",\"numerical_chart_column\":\"\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"tabular\",\"full_table_list\":{\"self\":{\"value\":\"TrackerSessions\",\"module\":\"TrackerSessions\",\"label\":\"TrackerSessions\"},\"TrackerSessions:assigned_user_link\":{\"name\":\"TrackerSessions  >  Assigned to User\",\"parent\":\"self\",\"link_def\":{\"name\":\"assigned_user_link\",\"relationship_name\":\"tracker_user_id\",\"bean_is_lhs\":false,\"link_type\":\"one\",\"label\":\"Assigned to User\",\"table_key\":\"TrackerSessions:assigned_user_link\"},\"dependents\":[\"display_cols_row_1\",\"display_cols_row_2\",\"display_cols_row_3\",\"display_cols_row_1\",\"display_cols_row_2\",\"display_cols_row_3\"],\"module\":\"Users\",\"label\":\"Assigned to User\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"date_end\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_7_days\",\"input_name0\":\"tp_last_7_days\",\"input_name1\":\"on\"},\"1\":{\"name\":\"active\",\"table_key\":\"self\",\"qualifier_name\":\"equals\",\"input_name0\":[\"1\"]}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0),('1','1','e92acb61-bbab-53f7-051d-50f7da9712ef','User Sessions Summary (Last 7 Days)','TrackerSessions','summary','{\"display_columns\":[],\"module\":\"TrackerSessions\",\"group_defs\":[{\"name\":\"user_id\",\"label\":\"User Id\",\"table_key\":\"self\",\"type\":\"varchar\"}],\"summary_columns\":[{\"name\":\"user_id\",\"label\":\"User Id\",\"table_key\":\"self\"},{\"name\":\"count\",\"label\":\"Count\",\"field_type\":\"\",\"group_function\":\"count\",\"table_key\":\"self\"},{\"name\":\"round_trips\",\"label\":\"SUM: Session Roundtrips\",\"field_type\":\"int\",\"group_function\":\"sum\",\"table_key\":\"self\"},{\"name\":\"seconds\",\"label\":\"SUM: Seconds\",\"field_type\":\"int\",\"group_function\":\"sum\",\"table_key\":\"self\"}],\"report_name\":\"User Sessions Summary (Last 7 Days)\",\"chart_type\":\"none\",\"chart_description\":\"\",\"numerical_chart_column\":\"self:round_trips:sum\",\"numerical_chart_column_type\":\"\",\"assigned_user_id\":\"1\",\"report_type\":\"summary\",\"full_table_list\":{\"self\":{\"value\":\"TrackerSessions\",\"module\":\"TrackerSessions\",\"label\":\"TrackerSessions\"}},\"filters_def\":{\"Filter_1\":{\"operator\":\"AND\",\"0\":{\"name\":\"date_end\",\"table_key\":\"self\",\"qualifier_name\":\"tp_last_7_days\",\"input_name0\":\"tp_last_7_days\",\"input_name1\":\"on\"}}}}',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1','1',NULL,1,'none','pro',0);
/*!40000 ALTER TABLE `saved_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `saved_search` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` char(36) NOT NULL,
  `name` varchar(150) default NULL,
  `search_module` varchar(150) default NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `assigned_user_id` char(36) default NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY  (`id`),
  KEY `idx_saved_search_tmst_id` (`team_set_id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` char(36) default NULL,
  `modified_user_id` char(36) default NULL,
  `name` varchar(255) default NULL,
  `job` varchar(255) default NULL,
  `date_time_start` datetime default NULL,
  `date_time_end` datetime default NULL,
  `job_interval` varchar(100) default NULL,
  `time_from` time default NULL,
  `time_to` time default NULL,
  `last_run` datetime default NULL,
  `status` varchar(100) default NULL,
  `catch_up` tinyint(1) default '1',
  PRIMARY KEY  (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('41d703e7-5cd0-3be5-f1c7-50f7dac6f4ad',0,'2013-01-17 11:01:56','2013-01-17 11:01:56',NULL,'1','Process Workflow Tasks','function::processWorkflow','2005-01-01 08:30:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('c6a4013c-7c04-d220-ea67-50f7da2a460f',0,'2013-01-17 11:01:56','2013-01-17 11:01:56',NULL,'1','Run Report Generation Scheduled Tasks','function::processQueue','2005-01-01 07:15:01','2020-12-31 23:59:59','0::6::*::*::*',NULL,NULL,NULL,'Inactive',1),('148655fe-ca9d-f99b-26c3-50f7da5341ce',0,'2013-01-17 11:01:56','2013-01-17 11:01:56',NULL,'1','Prune tracker tables','function::trimTracker','2005-01-01 19:15:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('1cc5b6ea-96c4-99f9-c088-50f7daba1fc3',0,'2013-01-17 11:01:56','2013-01-17 11:01:56',NULL,'1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 12:45:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('24c588ca-f89b-63c5-a760-50f7da07a330',0,'2013-01-17 11:01:56','2013-01-17 11:01:56',NULL,'1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 06:45:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('2cbd28bc-b3ba-9c25-5e11-50f7dae79b82',0,'2013-01-17 11:01:56','2013-01-17 11:01:56',NULL,'1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 08:15:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('34c2f13d-d586-b909-b532-50f7da40e4fa',0,'2013-01-17 11:01:56','2013-01-17 11:01:56',NULL,'1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 08:15:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('4558bf04-6304-648e-b4fa-50f7da36b900',0,'2013-01-17 11:01:56','2013-01-17 11:01:56',NULL,'1','Update tracker_sessions table','function::updateTrackerSessions','2005-01-01 17:45:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',1);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers_times`
--

DROP TABLE IF EXISTS `schedulers_times`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schedulers_times` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `scheduler_id` char(36) NOT NULL,
  `execute_time` datetime default NULL,
  `status` varchar(100) default 'ready',
  PRIMARY KEY  (`id`),
  KEY `idx_scheduler_id` (`scheduler_id`,`execute_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schedulers_times`
--

LOCK TABLES `schedulers_times` WRITE;
/*!40000 ALTER TABLE `schedulers_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedulers_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_active`
--

DROP TABLE IF EXISTS `session_active`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `session_active` (
  `id` char(36) NOT NULL,
  `session_id` varchar(100) default NULL,
  `last_request_time` datetime default NULL,
  `session_type` varchar(100) default NULL,
  `is_violation` tinyint(1) default '0',
  `num_active_sessions` int(11) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `session_active`
--

LOCK TABLES `session_active` WRITE;
/*!40000 ALTER TABLE `session_active` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_history`
--

DROP TABLE IF EXISTS `session_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `session_history` (
  `id` char(36) NOT NULL,
  `session_id` varchar(100) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `last_request_time` datetime default NULL,
  `session_type` varchar(100) default NULL,
  `is_violation` tinyint(1) default '0',
  `num_active_sessions` int(11) default '0',
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `session_history`
--

LOCK TABLES `session_history` WRITE;
/*!40000 ALTER TABLE `session_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `shippers` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(50) default NULL,
  `list_order` int(4) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_shippers` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `shippers`
--

LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfavorites`
--

DROP TABLE IF EXISTS `sugarfavorites`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sugarfavorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` varchar(50) default NULL,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `module` varchar(50) default NULL,
  `record_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_favs_date_entered` (`date_entered`,`deleted`),
  KEY `idx_favs_user_module` (`modified_user_id`,`module`,`deleted`),
  KEY `idx_favs_module_record_deleted` (`module`,`record_id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sugarfavorites`
--

LOCK TABLES `sugarfavorites` WRITE;
/*!40000 ALTER TABLE `sugarfavorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `sugarfavorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` varchar(255) default NULL,
  `deleted` tinyint(1) default '0',
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `assigned_user_id` char(36) default NULL,
  `related_module` varchar(100) default NULL,
  `related_id` char(36) default NULL,
  `link_url` varchar(255) default NULL,
  `link_type` varchar(30) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_sugarfeed_tmst_id` (`team_set_id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
INSERT INTO `sugarfeed` VALUES ('aed5b674-097a-1498-2c18-5108cf200c35','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:a194f956-385d-5308-57d0-5108cf65874f:Harish Patel]','2013-01-30 07:43:13','2013-01-30 07:43:13','1','1',NULL,0,'1','1','1','Leads','a194f956-385d-5308-57d0-5108cf65874f',NULL,NULL),('eacd0346-a6f4-8ebd-1f93-5109028f35e2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:e855654e-8c7c-5d6f-05b3-510902dcb49b:Gajanan Salve]','2013-01-30 11:24:21','2013-01-30 11:24:21','1','1',NULL,0,'1','1','1','Leads','e855654e-8c7c-5d6f-05b3-510902dcb49b',NULL,NULL),('5832faf5-baf1-dcb4-57e8-510902db5858','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:513516fb-4632-1ba7-b977-5109025ec5e6:Nirav Gosalia]','2013-01-30 11:24:39','2013-01-30 11:24:39','1','1',NULL,0,'1','1','1','Leads','513516fb-4632-1ba7-b977-5109025ec5e6',NULL,NULL),('2599c975-7de9-1001-937f-510a4c55173b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:5c62b390-3ba9-2c9e-388d-510a4c59d149:Mayank Vora]','2013-01-31 10:50:52','2013-01-31 10:50:52','1','1',NULL,0,'1','1','1','Leads','5c62b390-3ba9-2c9e-388d-510a4c59d149',NULL,NULL),('74395365-ece9-58b7-1fe1-5110cc80f36f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:6be04917-8cba-4abf-87bf-5110cc6b49c4:Harish Patel]','2013-02-05 09:09:50','2013-02-05 09:09:50','1','1',NULL,0,'1','1','1','Contacts','6be04917-8cba-4abf-87bf-5110cc6b49c4',NULL,NULL);
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems`
--

DROP TABLE IF EXISTS `systems`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `systems` (
  `id` char(36) NOT NULL,
  `system_id` int(11) NOT NULL auto_increment,
  `system_key` varchar(36) default NULL,
  `user_id` char(36) default NULL,
  `last_connect_date` datetime default NULL,
  `status` varchar(255) default 'Active',
  `num_syncs` int(11) default '0',
  `system_name` varchar(100) default NULL,
  `install_method` varchar(100) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `system_id` (`system_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `systems`
--

LOCK TABLES `systems` WRITE;
/*!40000 ALTER TABLE `systems` DISABLE KEYS */;
INSERT INTO `systems` VALUES ('96e5c362-fdd7-69ae-6845-50f7da42b2b7',1,'1f8a0bb7dcb17a13aa81ff4adb5b35ba','1','2013-01-17 11:01:56','Active',0,NULL,'web','2013-01-17 11:01:56','2013-01-17 11:01:56',0);
/*!40000 ALTER TABLE `systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  `assigned_user_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `status` varchar(100) default 'Not Started',
  `date_due_flag` tinyint(1) default '0',
  `date_due` datetime default NULL,
  `date_start_flag` tinyint(1) default '0',
  `date_start` datetime default NULL,
  `parent_type` varchar(255) default NULL,
  `parent_id` char(36) default NULL,
  `contact_id` char(36) default NULL,
  `priority` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_tasks_tmst_id` (`team_set_id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxrates`
--

DROP TABLE IF EXISTS `taxrates`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `taxrates` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(50) default NULL,
  `value` decimal(7,5) default NULL,
  `list_order` int(4) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_taxrates` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `taxrates`
--

LOCK TABLES `taxrates` WRITE;
/*!40000 ALTER TABLE `taxrates` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxrates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_memberships`
--

DROP TABLE IF EXISTS `team_memberships`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `team_memberships` (
  `id` char(36) NOT NULL,
  `team_id` char(36) default NULL,
  `user_id` char(36) default NULL,
  `explicit_assign` tinyint(1) default '0',
  `implicit_assign` tinyint(1) default '0',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_team_membership` (`user_id`,`team_id`),
  KEY `idx_teammemb_team_user` (`team_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `team_memberships`
--

LOCK TABLES `team_memberships` WRITE;
/*!40000 ALTER TABLE `team_memberships` DISABLE KEYS */;
INSERT INTO `team_memberships` VALUES ('118f4b7d-c887-c26d-597d-50f7dae1fb70','1','1',1,0,'2013-01-17 11:01:56',0),('28a514e9-86e4-cb68-0555-50f7dada2637','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','1',1,0,'2013-01-17 11:01:56',0);
/*!40000 ALTER TABLE `team_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_notices`
--

DROP TABLE IF EXISTS `team_notices`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `team_notices` (
  `team_id` char(36) default NULL,
  `team_set_id` char(36) default NULL,
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `date_start` date default NULL,
  `date_end` date default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(50) default NULL,
  `description` text,
  `status` varchar(100) default NULL,
  `url` varchar(255) default NULL,
  `url_title` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_team_notices_tmst_id` (`team_set_id`),
  KEY `idx_team_notice` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `team_notices`
--

LOCK TABLES `team_notices` WRITE;
/*!40000 ALTER TABLE `team_notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_sets`
--

DROP TABLE IF EXISTS `team_sets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `team_sets` (
  `id` char(36) NOT NULL,
  `name` varchar(128) default NULL,
  `team_md5` varchar(32) default NULL,
  `team_count` int(11) default '0',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `created_by` char(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_team_sets_md5` (`team_md5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `team_sets`
--

LOCK TABLES `team_sets` WRITE;
/*!40000 ALTER TABLE `team_sets` DISABLE KEYS */;
INSERT INTO `team_sets` VALUES ('d4ff302e-4fcb-6413-16a3-50f7da9000d6','d41d8cd98f00b204e9800998ecf8427e','d41d8cd98f00b204e9800998ecf8427e',0,'2013-01-17 11:01:56',0,NULL),('1','c4ca4238a0b923820dcc509a6f75849b','c4ca4238a0b923820dcc509a6f75849b',1,'2013-01-17 11:01:56',0,NULL),('1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','22b7bb337e3516c825fd848cb7e10e56','22b7bb337e3516c825fd848cb7e10e56',1,'2013-01-17 11:01:56',0,NULL);
/*!40000 ALTER TABLE `team_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_sets_modules`
--

DROP TABLE IF EXISTS `team_sets_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `team_sets_modules` (
  `id` char(36) NOT NULL,
  `team_set_id` char(36) default NULL,
  `module_table_name` varchar(128) default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_team_sets_modules` (`team_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `team_sets_modules`
--

LOCK TABLES `team_sets_modules` WRITE;
/*!40000 ALTER TABLE `team_sets_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_sets_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_sets_teams`
--

DROP TABLE IF EXISTS `team_sets_teams`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `team_sets_teams` (
  `id` char(36) NOT NULL,
  `team_set_id` char(36) default NULL,
  `team_id` char(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_ud_set_id` (`team_set_id`,`team_id`),
  KEY `idx_ud_team_id` (`team_id`),
  KEY `idx_ud_team_set_id` (`team_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `team_sets_teams`
--

LOCK TABLES `team_sets_teams` WRITE;
/*!40000 ALTER TABLE `team_sets_teams` DISABLE KEYS */;
INSERT INTO `team_sets_teams` VALUES ('42c838fa-4714-7098-7c3d-50f7da51bcfd','1','1','2013-01-17 11:01:56',0),('64b8d9e5-87d5-8efe-ff08-50f7da23d836','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-01-17 11:01:56',0);
/*!40000 ALTER TABLE `team_sets_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `teams` (
  `id` char(36) NOT NULL,
  `name` varchar(128) default NULL,
  `name_2` varchar(128) default NULL,
  `associated_user_id` char(36) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `private` tinyint(1) default '0',
  `description` text,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_team_del` (`name`),
  KEY `idx_team_del_name` (`deleted`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES ('1','Global',NULL,NULL,'2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,0,'Globally Visible',0),('1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','Administrator',NULL,'1','2013-01-17 11:01:56','2013-02-06 06:06:19','1',NULL,1,'Private team for admin',0);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeperiods`
--

DROP TABLE IF EXISTS `timeperiods`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `timeperiods` (
  `id` varchar(36) NOT NULL,
  `name` varchar(36) default NULL,
  `parent_id` char(36) default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `created_by` varchar(36) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `is_fiscal_year` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `timeperiods`
--

LOCK TABLES `timeperiods` WRITE;
/*!40000 ALTER TABLE `timeperiods` DISABLE KEYS */;
/*!40000 ALTER TABLE `timeperiods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL auto_increment,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) default NULL,
  `module_name` varchar(255) default NULL,
  `item_id` varchar(36) default NULL,
  `item_summary` varchar(255) default NULL,
  `team_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `action` varchar(255) default NULL,
  `session_id` varchar(36) default NULL,
  `visible` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (173,'590c079d-fc25-dce7-7ad4-511256a5ea70','1','Contacts','6be04917-8cba-4abf-87bf-5110cc6b49c4','Mr. Harish Patel','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-02-06 13:10:10','detailview','1p6tg5jhnj7j05ut3actfmmcu5',1,0),(6,'94a85108-f8f5-3662-1813-5100f6c6defc','1','Reports','62473264-8883-26b3-68c3-50f7dac8ed64','Current Quarter Forecast','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-01-24 08:55:16','detailview','15bito2m709rbpa79kt5e6dnr4',1,0),(8,'55d31c98-9181-ea68-8f62-51066445fe14','1','Quotes','216cc0a5-f1e3-79dd-c4f6-51066491a9fa','test','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-01-28 11:45:36','detailview','dsuvb9kcj17teno6un2l0em997',1,0),(150,'10e8a3bd-39e2-ce68-aff2-5110d2db0b3c','1','Leads','a194f956-385d-5308-57d0-5108cf65874f','Mr. Harish Patel','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-02-05 09:36:41','detailview','ceacr9jg4e6lotd5gu3oqe59f5',1,0),(127,'79b4d1fe-94ef-ff65-e5c1-510a41244199','1','Leads','513516fb-4632-1ba7-b977-5109025ec5e6','Mr. Nirav Gosalia','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-01-31 10:02:35','detailview','hfjq4e6in1o4vuocliae3jc1n2',1,0),(67,'96dc057b-9df5-0989-0df8-510a23d6951b','1','Leads','e855654e-8c7c-5d6f-05b3-510902dcb49b','Mr. Gajanan Salve','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-01-31 07:56:16','editview','rsvblqp1gihv6aoi7lo6jm2v10',1,0),(135,'1e5d8712-0f05-9deb-9f58-510fa901f904','1','Teams','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','Administrator','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-02-04 12:28:19','detailview','0k7gtdf321psagm8vt492qa9r3',1,0),(168,'e6f8e8cd-0dbd-03d8-cce5-5111f23c80a0','1','UserPreferences','54eeef37-76b8-a136-04f8-50f7da674472','Base Implementation.  Should be overridden.','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-02-06 06:06:19','save','lj1ffjvmrih1k8ecnaj2b1dp87',1,0),(172,'d7004c40-bdf9-d627-c1e0-5111f6ed13dc','1','Accounts','f1534f3b-7b78-69b9-7524-51066491d80c','test','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-02-06 06:20:29','detailview','lj1ffjvmrih1k8ecnaj2b1dp87',1,0),(169,'ebd103d7-5d00-f183-ea3b-5111f26d88ee','1','Users','1','Administrator','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-02-06 06:06:20','detailview','lj1ffjvmrih1k8ecnaj2b1dp87',1,0),(166,'91f899fd-9215-1663-d6da-5110d85c9d96','1','ed_Department','e43dedf7-263e-2e1a-1f59-5110d1e9f5f8','Sales','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-02-05 10:01:52','detailview','ceacr9jg4e6lotd5gu3oqe59f5',1,0),(153,'12586003-7340-6234-5a79-5110d3972735','1','Leads','5c62b390-3ba9-2c9e-388d-510a4c59d149','Mr. Mayank Vora','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-02-05 09:41:57','detailview','ceacr9jg4e6lotd5gu3oqe59f5',1,0),(164,'c5cab4f7-3b8b-b912-bc86-5110d7546c76','1','ed_Employee','2f711f55-7243-e540-53c0-5110d13a06b8','Mr. Pralhad Rajgor','1f7e91c4-55f4-e4c2-c6c0-50f7dacfd7c7','2013-02-05 09:55:41','detailview','ceacr9jg4e6lotd5gu3oqe59f5',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_perf`
--

DROP TABLE IF EXISTS `tracker_perf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tracker_perf` (
  `id` int(11) NOT NULL auto_increment,
  `monitor_id` char(36) NOT NULL,
  `server_response_time` double default NULL,
  `db_round_trips` int(6) default NULL,
  `files_opened` int(6) default NULL,
  `memory_usage` int(12) default NULL,
  `deleted` tinyint(1) default '0',
  `date_modified` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_tracker_perf_mon_id` (`monitor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tracker_perf`
--

LOCK TABLES `tracker_perf` WRITE;
/*!40000 ALTER TABLE `tracker_perf` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_perf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_queries`
--

DROP TABLE IF EXISTS `tracker_queries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tracker_queries` (
  `id` int(11) NOT NULL auto_increment,
  `query_id` char(36) NOT NULL,
  `text` text,
  `query_hash` varchar(36) default NULL,
  `sec_total` double default NULL,
  `sec_avg` double default NULL,
  `run_count` int(6) default NULL,
  `deleted` tinyint(1) default '0',
  `date_modified` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_tracker_queries_query_hash` (`query_hash`),
  KEY `idx_tracker_queries_query_id` (`query_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tracker_queries`
--

LOCK TABLES `tracker_queries` WRITE;
/*!40000 ALTER TABLE `tracker_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_sessions`
--

DROP TABLE IF EXISTS `tracker_sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tracker_sessions` (
  `id` int(11) NOT NULL auto_increment,
  `session_id` varchar(36) default NULL,
  `date_start` datetime default NULL,
  `date_end` datetime default NULL,
  `seconds` int(9) default '0',
  `client_ip` varchar(20) default NULL,
  `user_id` varchar(36) default NULL,
  `active` tinyint(1) default '1',
  `round_trips` int(5) default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_tracker_sessions_s_id` (`session_id`),
  KEY `idx_tracker_sessions_uas_id` (`user_id`,`active`,`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tracker_sessions`
--

LOCK TABLES `tracker_sessions` WRITE;
/*!40000 ALTER TABLE `tracker_sessions` DISABLE KEYS */;
INSERT INTO `tracker_sessions` VALUES (1,'cj11v2efhj786dpgsu06qj40f6','2013-01-17 11:18:52','2013-01-17 11:23:22',270,'127.0.0.1','1',0,8,0),(2,'skmkmt9cfl759pf8l0acc87oh3','2013-01-17 11:23:43','2013-01-17 11:23:43',0,'127.0.0.1','1',0,1,0),(3,'veiqdi9isu288htjc460l6boa1','2013-01-17 11:23:44','2013-01-17 11:27:53',249,'127.0.0.1','1',0,9,0),(4,'4qq5sj7df3od96v5vu4oem1eq5','2013-01-21 07:20:17','2013-01-21 07:20:17',0,'127.0.0.1','1',0,1,0),(5,'d0gjq9ca5jo15990btns44fc67','2013-01-21 07:21:11','2013-01-21 07:21:34',23,'127.0.0.1','1',0,5,0),(6,'8lvu7knr5lhsp9a4pvmahsgna2','2013-01-21 07:23:20','2013-01-21 07:23:20',0,'192.168.1.129','1',0,1,0),(7,'g0n0jeopj99ff6i4ijudegqjs6','2013-01-21 07:24:13','2013-01-21 07:24:36',23,'192.168.1.129','1',0,2,0),(8,'1bdmafoiaa2ov2506bi0e4slp3','2013-01-21 07:25:30','2013-01-21 07:30:25',295,'192.168.1.129','1',0,14,0),(9,'eo8l1ibt7camp1hp4v4rur56v2','2013-01-21 12:01:11','2013-01-21 12:01:11',0,'::1','1',0,1,0),(10,'g2q4fn3vq99ifnk4284cmhllm3','2013-01-21 12:01:24','2013-01-21 12:01:45',21,'::1','1',0,9,0),(11,'79cuvfuu9o3v7cggqvt3s7n596','2013-01-24 08:48:31','2013-01-24 08:48:31',0,'::1','1',0,1,0),(12,'15bito2m709rbpa79kt5e6dnr4','2013-01-24 08:48:41','2013-01-24 08:55:34',413,'::1','1',0,13,0),(13,'njnjkqlpa97kijmt1llg5naf33','2013-01-24 09:03:06','2013-01-24 09:03:06',0,'::1','1',0,1,0),(14,'fif9vp5n2o6k5e91hqq1iovil7','2013-01-24 09:03:16','2013-01-24 09:03:16',0,'::1','1',0,1,0),(15,'nr5mrajoc18f58k1b5ekiocmb2','2013-01-28 09:45:22','2013-01-28 09:45:22',0,'::1','1',0,1,0),(16,'lt10pma0en98tclg0rqr356bh6','2013-01-28 09:45:37','2013-01-28 09:45:37',0,'::1','1',0,1,0),(17,'9b4c6f9r3p77ptgn3bnkrak1g1','2013-01-28 11:43:14','2013-01-28 11:43:14',0,'::1','1',0,1,0),(18,'dsuvb9kcj17teno6un2l0em997','2013-01-28 11:43:30','2013-01-28 11:59:45',975,'::1','1',0,27,0),(19,'j5b4tpc3i6mu2873h0hog865a3','2013-01-30 07:34:25','2013-01-30 07:34:25',0,'::1','1',0,1,0),(20,'qep95uie27dv0t9agnpo7c25r7','2013-01-30 07:34:39','2013-01-30 07:43:24',525,'::1','1',0,31,0),(21,'0r8h0taaumu922ft7p7ps857l4','2013-01-30 07:43:57','2013-01-30 07:43:57',0,'::1','1',0,1,0),(22,'p60kft7q9ivbngu9pof9bmjkp3','2013-01-30 07:44:10','2013-01-30 08:02:40',1110,'::1','1',0,23,0),(23,'cvitd3b48g5qd219u358j4ca64','2013-01-30 08:52:15','2013-01-30 08:52:15',0,'::1','1',0,1,0),(24,'b1s00te5q7k7ngh02dhl37a490','2013-01-30 08:52:33','2013-01-30 11:30:43',9490,'::1','1',0,53,0),(25,'jtkfhja63s3duickfll286obb7','2013-01-31 07:03:22','2013-01-31 07:03:22',0,'::1','1',0,1,0),(26,'rsvblqp1gihv6aoi7lo6jm2v10','2013-01-31 07:03:37','2013-01-31 08:19:04',4527,'::1','1',0,77,0),(27,'12p0mi6pn009u8hvtl7s16oqh2','2013-01-31 08:43:30','2013-01-31 08:43:30',0,'::1','1',0,1,0),(28,'hfjq4e6in1o4vuocliae3jc1n2','2013-01-31 08:43:52','2013-01-31 10:54:58',7866,'::1','1',0,126,0),(29,'sr30ppsvvkg2gkql0780pj9596','2013-01-31 12:51:13','2013-01-31 12:51:13',0,'::1','1',0,1,0),(30,'u7jtsjo3ph5r5k1v9orftmq5v7','2013-01-31 12:51:27','2013-01-31 12:55:42',255,'::1','1',0,12,0),(31,'imifndj5dfpi5b8ahmqdbuern7','2013-02-04 12:23:38','2013-02-04 12:23:38',0,'::1','1',0,1,0),(32,'0k7gtdf321psagm8vt492qa9r3','2013-02-04 12:23:46','2013-02-04 12:29:31',345,'::1','1',0,21,0),(33,'b8vqnm2r8krgbs2q8vsf9tor90','2013-02-05 06:23:24','2013-02-05 06:30:29',425,'::1','1',0,2,0),(34,'ceacr9jg4e6lotd5gu3oqe59f5','2013-02-05 06:30:39','2013-02-05 10:01:56',12677,'::1','1',0,249,0),(35,'9g9j2vpdf7vnq6a0fvsu8c1kk2','2013-02-05 10:03:40','2013-02-05 10:03:40',0,'::1','1',0,1,0),(36,'2uu1bmqrhlg030c7j1vek8j5k3','2013-02-05 10:04:04','2013-02-05 10:04:09',5,'::1','1',0,2,0),(37,'n00dbcba6ebg9eous20q004uh7','2013-02-05 10:05:06','2013-02-05 10:05:06',0,'::1','1',0,1,0),(38,'8al2h2airaj2mqjji9c05tj7r4','2013-02-05 10:05:12','2013-02-05 10:06:36',84,'::1','1',0,2,0),(39,'s51179oh1bcsujcviko51pgi26','2013-02-05 10:22:37','2013-02-05 10:22:37',0,'::1','1',0,1,0),(40,'22m81llfnbmmidn8vmcc5bun82','2013-02-05 10:22:44','2013-02-05 10:22:50',6,'::1','1',0,3,0),(41,'2rt7pvepgivoijgt7jtoihb1a1','2013-02-05 10:28:38','2013-02-05 10:28:38',0,'::1','1',0,1,0),(42,'gpg9hq64b6ecpf3kpuaklo21l2','2013-02-05 10:28:44','2013-02-05 10:32:06',202,'::1','1',0,2,0),(43,'ag11ko926gojflqpa4phnssoo3','2013-02-05 10:44:22','2013-02-05 10:44:22',0,'::1','1',0,1,0),(44,'ifgkv0lpcehmv4vabnqm34q1d6','2013-02-05 10:44:28','2013-02-05 11:16:47',1939,'::1','1',0,5,0),(45,'r0dmsg78e1232cbnsq5da4hno3','2013-02-06 05:58:53','2013-02-06 05:58:53',0,'::1','1',0,1,0),(46,'lj1ffjvmrih1k8ecnaj2b1dp87','2013-02-06 05:59:11','2013-02-06 06:20:29',1278,'::1','1',0,35,0),(47,'6j5eh7icdvomvpj0i0oeejsp12','2013-02-06 07:17:08','2013-02-06 07:17:08',0,'::1','1',0,1,0),(48,'dg6og4u8fgqv1ljc2d33md14n7','2013-02-06 07:17:14','2013-02-06 07:24:57',463,'::1','1',0,2,0),(49,'qf61ovjqakunuclqjhu5n2hep3','2013-02-06 08:46:35','2013-02-06 08:46:35',0,'::1','1',0,1,0),(50,'ecckfsia2hbquibsnk4s73eld5','2013-02-06 08:46:41','2013-02-06 08:46:53',12,'::1','1',0,2,0),(51,'kkm164ov8b77o17l8t6efvvor4','2013-02-06 09:18:27','2013-02-06 09:18:27',0,'::1','1',0,1,0),(52,'nuhib56ubja5j2nu5grm3tgfo1','2013-02-06 09:18:45','2013-02-06 09:24:37',352,'::1','1',0,2,0),(53,'pr0p8ahnqrmthu8ve8f2ucuij7','2013-02-06 09:33:53','2013-02-06 09:33:53',0,'::1','1',0,1,0),(54,'3p6jss10qpvm64n78rchmit8j5','2013-02-06 09:34:03','2013-02-06 09:34:08',5,'::1','1',0,2,0),(55,'a1gukk2a5spo6ds43j6l104ta6','2013-02-06 09:43:20','2013-02-06 09:43:20',0,'::1','1',0,1,0),(56,'jk4dv6rfba8dta8ntv1d7ci5j7','2013-02-06 09:43:26','2013-02-06 10:03:43',1217,'::1','1',0,4,0),(57,'2odegla7jaqsb9p5q7eqi56fo3','2013-02-06 10:04:41','2013-02-06 10:04:41',0,'::1','1',0,1,0),(58,'vcvmi1dc9f5iuujfbodvstvb63','2013-02-06 10:05:24','2013-02-06 10:05:35',11,'::1','1',0,3,0),(59,'v093kcp3s18a72ou2rf8n76tk0','2013-02-06 10:57:46','2013-02-06 10:57:46',0,'::1','1',0,1,0),(60,'9eqc59qllpq7umcchhslumml37','2013-02-06 10:57:53','2013-02-06 10:57:53',0,'::1','1',0,1,0),(61,'9b8h1q9frtld6p6jibs81hob56','2013-02-06 11:08:22','2013-02-06 11:08:22',0,'::1','1',0,1,0),(62,'fvnbv9hgcrjl16ivqvc3v6ng84','2013-02-06 11:08:28','2013-02-06 11:08:28',0,'::1','1',0,1,0),(63,'t34tmo3kqbuobclriif5o195o0','2013-02-06 11:15:20','2013-02-06 11:15:20',0,'::1','1',0,1,0),(64,'4rkoucnalk42b7l4hf2so0aja2','2013-02-06 11:15:27','2013-02-06 11:18:16',169,'::1','1',0,4,0),(65,'6rbeg7q3eh6jlhdl2j4h4pvou2','2013-02-06 11:47:18','2013-02-06 11:47:18',0,'::1','1',0,1,0),(66,'kadfkfkooa9o532rc0dj1ngjt4','2013-02-06 11:47:28','2013-02-06 11:48:09',41,'::1','1',0,6,0),(67,'bbdt8lepts0clgs8gcq0gfbsb0','2013-02-06 12:17:14','2013-02-06 12:17:14',0,'::1','1',0,1,0),(68,'oj21s66etpumfb7ja3rv0q0rf1','2013-02-06 12:17:22','2013-02-06 12:18:32',70,'::1','1',0,3,0),(69,'p4e1c3n4q29vkg99lgnecn4ar2','2013-02-06 12:48:39','2013-02-06 12:48:39',0,'::1','1',0,1,0),(70,'qa81062cbr9ngbei6s6e7keha4','2013-02-06 12:48:46','2013-02-06 12:55:01',375,'::1','1',0,2,0),(71,'t4k6698hho00od03b8ciksqh36','2013-02-06 13:02:30','2013-02-06 13:02:30',0,'::1','1',0,1,0),(72,'hk9u5r3op6k39bs4sd9v0vplf3','2013-02-06 13:02:36','2013-02-06 13:06:10',214,'::1','1',0,2,0),(73,'3gaqkbfdm4lt4v1evddiesjbn6','2013-02-06 13:06:16','2013-02-06 13:08:42',146,'::1','1',0,2,0),(74,'1p6tg5jhnj7j05ut3actfmmcu5','2013-02-06 13:09:25','2013-02-06 13:10:10',45,'::1','1',0,3,0),(75,'8l10cu9cq8l43vdc96umtmmrh1','2013-02-07 04:48:38','2013-02-07 04:48:38',0,'::1','1',1,1,0),(76,'c9lvtfffb4ojegmbodidtvtg85','2013-02-07 04:48:52','2013-02-07 04:49:16',24,'::1','1',1,2,0);
/*!40000 ALTER TABLE `tracker_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_tracker_queries`
--

DROP TABLE IF EXISTS `tracker_tracker_queries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tracker_tracker_queries` (
  `id` int(11) NOT NULL auto_increment,
  `monitor_id` varchar(36) default NULL,
  `query_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_tracker_tq_monitor` (`monitor_id`),
  KEY `idx_tracker_tq_query` (`query_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tracker_tracker_queries`
--

LOCK TABLES `tracker_tracker_queries` WRITE;
/*!40000 ALTER TABLE `tracker_tracker_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_tracker_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) default NULL,
  `md5sum` varchar(32) default NULL,
  `type` varchar(30) default NULL,
  `status` varchar(50) default NULL,
  `version` varchar(10) default NULL,
  `name` varchar(255) default NULL,
  `description` text,
  `id_name` varchar(255) default NULL,
  `manifest` longtext,
  `date_entered` datetime default NULL,
  `enabled` tinyint(1) default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
INSERT INTO `upgrade_history` VALUES ('906038d3-9c2a-1199-8426-5110d8033a86','cache//upload/upgrades/module/empdept2013_02_05_153125.zip','031422c536ff44cd6eed5db9f1cd54da','module','installed','1360058484','empdept','Test module representing the relation ship between employees and the departments to which they belong. ','empdept','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjA6e31zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czoyOiJlZCI7czo2OiJhdXRob3IiO3M6MzI6IlZpdHJ1dmlhbiBUZWNobm9sb2dpZXMgUHZ0LiBMdGQuIjtzOjExOiJkZXNjcmlwdGlvbiI7czoxMDM6IlRlc3QgbW9kdWxlIHJlcHJlc2VudGluZyB0aGUgcmVsYXRpb24gc2hpcCBiZXR3ZWVuIGVtcGxveWVlcyBhbmQgdGhlIGRlcGFydG1lbnRzIHRvIHdoaWNoIHRoZXkgYmVsb25nLiAiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NzoiZW1wZGVwdCI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTMtMDItMDUgMTA6MDE6MjMiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7czoxMDoiMTM2MDA1ODQ4NCI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo4OntzOjI6ImlkIjtzOjc6ImVtcGRlcHQiO3M6NToiYmVhbnMiO2E6Mjp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTM6ImVkX0RlcGFydG1lbnQiO3M6NToiY2xhc3MiO3M6MTM6ImVkX0RlcGFydG1lbnQiO3M6NDoicGF0aCI7czozOToibW9kdWxlcy9lZF9EZXBhcnRtZW50L2VkX0RlcGFydG1lbnQucGhwIjtzOjM6InRhYiI7YjoxO31pOjE7YTo0OntzOjY6Im1vZHVsZSI7czoxMToiZWRfRW1wbG95ZWUiO3M6NToiY2xhc3MiO3M6MTE6ImVkX0VtcGxveWVlIjtzOjQ6InBhdGgiO3M6MzU6Im1vZHVsZXMvZWRfRW1wbG95ZWUvZWRfRW1wbG95ZWUucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YToyOntpOjA7YToyOntzOjQ6ImZyb20iO3M6OTA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGF5b3V0ZGVmcy9lZF9kZXBhcnRtZW50X2VkX2VtcGxveWVlX2VkX0VtcGxveWVlLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImVkX0VtcGxveWVlIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjkyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvZWRfZGVwYXJ0bWVudF9lZF9lbXBsb3llZV9lZF9EZXBhcnRtZW50LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImVkX0RlcGFydG1lbnQiO319czoxMzoicmVsYXRpb25zaGlwcyI7YToxOntpOjA7YToxOntzOjk6Im1ldGFfZGF0YSI7czo4OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2VkX2RlcGFydG1lbnRfZWRfZW1wbG95ZWVNZXRhRGF0YS5waHAiO319czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToyOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDU6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvZWRfRGVwYXJ0bWVudCI7czoyOiJ0byI7czoyMToibW9kdWxlcy9lZF9EZXBhcnRtZW50Ijt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjQzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2VkX0VtcGxveWVlIjtzOjI6InRvIjtzOjE5OiJtb2R1bGVzL2VkX0VtcGxveWVlIjt9fXM6ODoibGFuZ3VhZ2UiO2E6NDU6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJiZ19CRyI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJjc19DWiI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJkYV9ESyI7fWk6NDthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJkZV9ERSI7fWk6NTthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJlc19FUyI7fWk6NjthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJldF9FRSI7fWk6NzthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fWk6ODthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJoZV9JTCI7fWk6OTthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJodV9IVSI7fWk6MTA7YTozOntzOjQ6ImZyb20iO3M6NjI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRW1wbG95ZWUucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiZWRfRW1wbG95ZWUiO3M6ODoibGFuZ3VhZ2UiO3M6NToiaXRfaXQiO31pOjExO2E6Mzp7czo0OiJmcm9tIjtzOjYyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VkX0VtcGxveWVlLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImVkX0VtcGxveWVlIjtzOjg6Imxhbmd1YWdlIjtzOjU6Imx0X0xUIjt9aToxMjthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJqYV9KUCI7fWk6MTM7YTozOntzOjQ6ImZyb20iO3M6NjI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRW1wbG95ZWUucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiZWRfRW1wbG95ZWUiO3M6ODoibGFuZ3VhZ2UiO3M6NToibmJfTk8iO31pOjE0O2E6Mzp7czo0OiJmcm9tIjtzOjYyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VkX0VtcGxveWVlLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImVkX0VtcGxveWVlIjtzOjg6Imxhbmd1YWdlIjtzOjU6Im5sX05MIjt9aToxNTthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJwbF9QTCI7fWk6MTY7YTozOntzOjQ6ImZyb20iO3M6NjI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRW1wbG95ZWUucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiZWRfRW1wbG95ZWUiO3M6ODoibGFuZ3VhZ2UiO3M6NToicHRfUFQiO31pOjE3O2E6Mzp7czo0OiJmcm9tIjtzOjYyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VkX0VtcGxveWVlLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImVkX0VtcGxveWVlIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJvX1JPIjt9aToxODthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fWk6MTk7YTozOntzOjQ6ImZyb20iO3M6NjI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRW1wbG95ZWUucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiZWRfRW1wbG95ZWUiO3M6ODoibGFuZ3VhZ2UiO3M6NToic3ZfU0UiO31pOjIwO2E6Mzp7czo0OiJmcm9tIjtzOjYyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VkX0VtcGxveWVlLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImVkX0VtcGxveWVlIjtzOjg6Imxhbmd1YWdlIjtzOjU6InRyX1RSIjt9aToyMTthOjM6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7fWk6MjI7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRGVwYXJ0bWVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJlZF9EZXBhcnRtZW50IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToyMzthOjM6e3M6NDoiZnJvbSI7czo2NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9EZXBhcnRtZW50LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImVkX0RlcGFydG1lbnQiO3M6ODoibGFuZ3VhZ2UiO3M6NToiYmdfQkciO31pOjI0O2E6Mzp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VkX0RlcGFydG1lbnQucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiZWRfRGVwYXJ0bWVudCI7czo4OiJsYW5ndWFnZSI7czo1OiJjc19DWiI7fWk6MjU7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRGVwYXJ0bWVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJlZF9EZXBhcnRtZW50IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImRhX0RLIjt9aToyNjthOjM6e3M6NDoiZnJvbSI7czo2NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9EZXBhcnRtZW50LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImVkX0RlcGFydG1lbnQiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZGVfREUiO31pOjI3O2E6Mzp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VkX0RlcGFydG1lbnQucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiZWRfRGVwYXJ0bWVudCI7czo4OiJsYW5ndWFnZSI7czo1OiJlc19FUyI7fWk6Mjg7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRGVwYXJ0bWVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJlZF9EZXBhcnRtZW50IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImV0X0VFIjt9aToyOTthOjM6e3M6NDoiZnJvbSI7czo2NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9EZXBhcnRtZW50LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImVkX0RlcGFydG1lbnQiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZnJfRlIiO31pOjMwO2E6Mzp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VkX0RlcGFydG1lbnQucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiZWRfRGVwYXJ0bWVudCI7czo4OiJsYW5ndWFnZSI7czo1OiJoZV9JTCI7fWk6MzE7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRGVwYXJ0bWVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJlZF9EZXBhcnRtZW50IjtzOjg6Imxhbmd1YWdlIjtzOjU6Imh1X0hVIjt9aTozMjthOjM6e3M6NDoiZnJvbSI7czo2NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9EZXBhcnRtZW50LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImVkX0RlcGFydG1lbnQiO3M6ODoibGFuZ3VhZ2UiO3M6NToiaXRfaXQiO31pOjMzO2E6Mzp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VkX0RlcGFydG1lbnQucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiZWRfRGVwYXJ0bWVudCI7czo4OiJsYW5ndWFnZSI7czo1OiJsdF9MVCI7fWk6MzQ7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRGVwYXJ0bWVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJlZF9EZXBhcnRtZW50IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImphX0pQIjt9aTozNTthOjM6e3M6NDoiZnJvbSI7czo2NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9EZXBhcnRtZW50LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImVkX0RlcGFydG1lbnQiO3M6ODoibGFuZ3VhZ2UiO3M6NToibmJfTk8iO31pOjM2O2E6Mzp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VkX0RlcGFydG1lbnQucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiZWRfRGVwYXJ0bWVudCI7czo4OiJsYW5ndWFnZSI7czo1OiJubF9OTCI7fWk6Mzc7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRGVwYXJ0bWVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJlZF9EZXBhcnRtZW50IjtzOjg6Imxhbmd1YWdlIjtzOjU6InBsX1BMIjt9aTozODthOjM6e3M6NDoiZnJvbSI7czo2NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9EZXBhcnRtZW50LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImVkX0RlcGFydG1lbnQiO3M6ODoibGFuZ3VhZ2UiO3M6NToicHRfUFQiO31pOjM5O2E6Mzp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VkX0RlcGFydG1lbnQucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiZWRfRGVwYXJ0bWVudCI7czo4OiJsYW5ndWFnZSI7czo1OiJyb19STyI7fWk6NDA7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRGVwYXJ0bWVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJlZF9EZXBhcnRtZW50IjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9aTo0MTthOjM6e3M6NDoiZnJvbSI7czo2NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lZF9EZXBhcnRtZW50LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImVkX0RlcGFydG1lbnQiO3M6ODoibGFuZ3VhZ2UiO3M6NToic3ZfU0UiO31pOjQyO2E6Mzp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VkX0RlcGFydG1lbnQucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiZWRfRGVwYXJ0bWVudCI7czo4OiJsYW5ndWFnZSI7czo1OiJ0cl9UUiI7fWk6NDM7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZWRfRGVwYXJ0bWVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJlZF9EZXBhcnRtZW50IjtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjt9aTo0NDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX1zOjc6InZhcmRlZnMiO2E6Mjp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjg3OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvZWRfZGVwYXJ0bWVudF9lZF9lbXBsb3llZV9lZF9FbXBsb3llZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJlZF9FbXBsb3llZSI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo4OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2VkX2RlcGFydG1lbnRfZWRfZW1wbG95ZWVfZWRfRGVwYXJ0bWVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJlZF9EZXBhcnRtZW50Ijt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2013-02-05 10:01:23',1);
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) default NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `assigned_user_id` char(36) default NULL,
  `contents` longtext,
  PRIMARY KEY  (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('54eeef37-76b8-a136-04f8-50f7da674472','global',0,'2013-01-17 11:01:56','2013-02-06 06:07:55','1','YTozNjp7czoxMDoidXNlcl90aGVtZSI7czo1OiJTdWdhciI7czoxMzoicmVtaW5kZXJfdGltZSI7czo0OiIxODAwIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTI6IlBhY2lmaWMvQXBpYSI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjM6IkFsbCI7czo4OiJtYXhfdGFicyI7czoyOiIxMCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjI3OiJzdWdhcnBkZl9wZGZfZm9udF9uYW1lX21haW4iO3M6OToiaGVsdmV0aWNhIjtzOjI3OiJzdWdhcnBkZl9wZGZfZm9udF9zaXplX21haW4iO3M6MToiOCI7czoyNzoic3VnYXJwZGZfcGRmX2ZvbnRfbmFtZV9kYXRhIjtzOjk6ImhlbHZldGljYSI7czoyNzoic3VnYXJwZGZfcGRmX2ZvbnRfc2l6ZV9kYXRhIjtzOjE6IjgiO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjg6IlJlcG9ydHNRIjthOjA6e31zOjEyOiJ1c2VyUHJpdkd1aWQiO3M6MzY6IjU4MGMwNjRhLWFmYTMtOTViNy1hYjUxLTUxMTBkOThlZDE0YyI7fQ=='),('8c0e3eaf-d1f7-4be7-7cbf-50f7de761fd1','Home',1,'2013-01-17 11:19:54','2013-01-17 11:19:54','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjI1OntzOjM2OiI3ZjUwZTI0My1hNjZiLTA4YWYtZGFmZi01MGY3ZGUzYWU3MWMiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiI3ZjU3MjRhYy03NjM2LTFjMmUtYzdlNS01MGY3ZGUzNzMzZWMiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6NToidGl0bGUiO3M6MTA6IlN1Z2FyIE5ld3MiO3M6MzoidXJsIjtzOjQwOiJodHRwOi8vd3d3LnN1Z2FyY3JtLmNvbS9jcm0vcHJvZHVjdC9uZXdzIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiI4Yzk5YzczNy00MDUyLWYzMGMtMDAzZi01MGY3ZGVmNWMzYzQiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15Q2FsbHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYWxscyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvQ2FsbHMvRGFzaGxldHMvTXlDYWxsc0Rhc2hsZXQvTXlDYWxsc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI5YWRkMzYyYS0wYzg3LWRmMzMtNzcxMy01MGY3ZGUwOTRjOGEiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15TWVldGluZ3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJNZWV0aW5ncyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJhNzE5N2NjZi0zNjg2LWVkN2UtMTcxZC01MGY3ZGUyZjM0MWIiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MjI6Ik15T3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4MDoibW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImM0MjU1YTUzLWU4ZWQtMDY3My0zYjFlLTUwZjdkZTgxNjEzNSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlBY2NvdW50c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9BY2NvdW50cy9EYXNobGV0cy9NeUFjY291bnRzRGFzaGxldC9NeUFjY291bnRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImQ4YWUxMTJmLWNkYjEtZjZmYy00MGE3LTUwZjdkZWViN2I1NSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlMZWFkc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkxlYWRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9MZWFkcy9EYXNobGV0cy9NeUxlYWRzRGFzaGxldC9NeUxlYWRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImQ5YTkxOTVhLWU1MDctNmVhZC1kYmM0LTUwZjdkZTk5ZWQ0YSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyOToiTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODc6Im1vZHVsZXMvQ2hhcnRzL0Rhc2hsZXRzL015UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0L015UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjQ6e3M6MTc6Im15cGJzc19kYXRlX3N0YXJ0IjtOO3M6MTU6Im15cGJzc19kYXRlX2VuZCI7TjtzOjE5OiJteXBic3Nfc2FsZXNfc3RhZ2VzIjtOO3M6MTc6Im15cGJzc19jaGFydF90eXBlIjtOO319czozNjoiZGEzZDk5ZTgtMzliNS01MDZmLTkzNTctNTBmN2RlNjk4MDc0IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjI3OiJNeU9wcG9ydHVuaXRpZXNHYXVnZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODM6Im1vZHVsZXMvQ2hhcnRzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0dhdWdlRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNHYXVnZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJkYWRmYWQ4NC1kMjEyLTM5MmUtYTAzZi01MGY3ZGUzYTgwYzciO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MjI6Ik15T3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJkYjc5ZjRiMi03NWIwLWI3NmEtNDUxMi01MGY3ZGUxM2JiYzEiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6Mjg6Ik15Q2xvc2VkT3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6OTI6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeUNsb3NlZE9wcG9ydHVuaXRpZXNEYXNobGV0L015Q2xvc2VkT3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJlYzU2MWY4Ni1mNjA3LWJmZDktYTBiYy01MGY3ZGU5MmNlNDYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTM6IkNoYXJ0c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9DaGFydHNEYXNobGV0L0NoYXJ0c0Rhc2hsZXQucGhwIjtzOjg6InJlcG9ydElkIjtzOjM2OiI3NmM2MGZiYS0wNzQxLTFiMjYtOGZhNS01MGY3ZGE2M2YzZmEiO31zOjM2OiI5MWQwMDZhNC02YzY5LWNhN2EtNGE0Mi01MGY3ZGVhNjUwYjYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MjU6Ik15Rm9yZWNhc3RpbmdDaGFydERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IkZvcmVjYXN0cyI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjc5OiJtb2R1bGVzL0NoYXJ0cy9EYXNobGV0cy9NeUZvcmVjYXN0aW5nQ2hhcnREYXNobGV0L015Rm9yZWNhc3RpbmdDaGFydERhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiIxZTk5MDAxOS0wMzk3LWNhYmMtZWNlNC01MGY3ZGVkMDI0Y2EiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTM6IkNoYXJ0c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkxlYWRzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9DaGFydHNEYXNobGV0L0NoYXJ0c0Rhc2hsZXQucGhwIjtzOjg6InJlcG9ydElkIjtzOjM2OiI5YjNlNGUzMS1kNGVmLTIxNjMtZDc5MS01MGY3ZGEwOTc5ZmMiO31zOjM2OiIxMDVhYzE4ZS1lNmMxLWE3YzctNjg3NS01MGY3ZGUzYjQ2OTgiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MjM6IkNhbXBhaWduUk9JQ2hhcnREYXNobGV0IjtzOjY6Im1vZHVsZSI7czo5OiJDYW1wYWlnbnMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo3NToibW9kdWxlcy9DaGFydHMvRGFzaGxldHMvQ2FtcGFpZ25ST0lDaGFydERhc2hsZXQvQ2FtcGFpZ25ST0lDaGFydERhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiIxMTRkOGZlMS0zODBlLWY1MjItYmIwMy01MGY3ZGU0MGViOGMiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMTIxZWMzNDktNzc0Yi1mMWIwLTUwZjUtNTBmN2RlMDBjY2MxIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE5OiJUb3BDYW1wYWlnbnNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo5OiJDYW1wYWlnbnMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo3MDoibW9kdWxlcy9DYW1wYWlnbnMvRGFzaGxldHMvVG9wQ2FtcGFpZ25zRGFzaGxldC9Ub3BDYW1wYWlnbnNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNGVmODc3ZTQtY2NmNy01OTI3LTVmMzYtNTBmN2RlYjQ1ODE1IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjEzOiJDaGFydHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYXNlcyI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvQ2hhcnRzRGFzaGxldC9DaGFydHNEYXNobGV0LnBocCI7czo4OiJyZXBvcnRJZCI7czozNjoiNzljOWJkMWYtY2E4Zi0wZjE3LTA2OGItNTBmN2RhMTRlMDE4Ijt9czozNjoiNGZjMmJlZWUtOGVhZi0xYzdjLWU5YWQtNTBmN2RlYzIxNWIzIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjEzOiJDaGFydHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYXNlcyI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvQ2hhcnRzRGFzaGxldC9DaGFydHNEYXNobGV0LnBocCI7czo4OiJyZXBvcnRJZCI7czozNjoiN2NkN2IxNjQtMzFmMS04ZWZiLWY0NWUtNTBmN2RhNWY2NWExIjt9czozNjoiNTAyY2IzYjMtYzlmNy0yODczLTlhOGMtNTBmN2RlMzFkMTc5IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhc2VzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FzZXMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYXNlcy9EYXNobGV0cy9NeUNhc2VzRGFzaGxldC9NeUNhc2VzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjUzYTQzOTlhLTNhNDUtOGU0ZC05MTVhLTUwZjdkZTFmN2M2NyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiTXlCdWdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiQnVncyI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0J1Z3MvRGFzaGxldHMvTXlCdWdzRGFzaGxldC9NeUJ1Z3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNTRhYWU3ZDktYzEyOC1hNzk1LWJhZjctNTBmN2RlZGY5YjNkIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJUcmFja2VyRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiVHJhY2tlcnMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1OToibW9kdWxlcy9UcmFja2Vycy9EYXNobGV0cy9UcmFja2VyRGFzaGxldC9UcmFja2VyRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjU1MTkxYTZhLTMzOGEtNGI2Ni04NTA0LTUwZjdkZTZmODFiOCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyNToiTXlNb2R1bGVzVXNlZENoYXJ0RGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiVHJhY2tlcnMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo3OToibW9kdWxlcy9DaGFydHMvRGFzaGxldHMvTXlNb2R1bGVzVXNlZENoYXJ0RGFzaGxldC9NeU1vZHVsZXNVc2VkQ2hhcnREYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNTU4NTUyMmUtOWRhZi1lMmU5LTM3ZWEtNTBmN2RlMTE4YzEyIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjI5OiJNeVRlYW1Nb2R1bGVzVXNlZENoYXJ0RGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiVHJhY2tlcnMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4NzoibW9kdWxlcy9DaGFydHMvRGFzaGxldHMvTXlUZWFtTW9kdWxlc1VzZWRDaGFydERhc2hsZXQvTXlUZWFtTW9kdWxlc1VzZWRDaGFydERhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI1NjM0YjI1My01Zjg0LTMxNDQtNTQyNS01MGY3ZGViMmU2YTgiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTM6IkNoYXJ0c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IlRyYWNrZXJzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9DaGFydHNEYXNobGV0L0NoYXJ0c0Rhc2hsZXQucGhwIjtzOjg6InJlcG9ydElkIjtzOjM2OiJkNzQwZjUxNS0yNTBkLTk1ZDgtZmNhZi01MGY3ZGE2YzgwZWQiO319czo1OiJwYWdlcyI7YTo1OntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6NTp7aTowO3M6MzY6IjhjOTljNzM3LTQwNTItZjMwYy0wMDNmLTUwZjdkZWY1YzNjNCI7aToxO3M6MzY6IjlhZGQzNjJhLTBjODctZGYzMy03NzEzLTUwZjdkZTA5NGM4YSI7aToyO3M6MzY6ImE3MTk3Y2NmLTM2ODYtZWQ3ZS0xNzFkLTUwZjdkZTJmMzQxYiI7aTozO3M6MzY6ImM0MjU1YTUzLWU4ZWQtMDY3My0zYjFlLTUwZjdkZTgxNjEzNSI7aTo0O3M6MzY6ImQ4YWUxMTJmLWNkYjEtZjZmYy00MGE3LTUwZjdkZWViN2I1NSI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiN2Y1MGUyNDMtYTY2Yi0wOGFmLWRhZmYtNTBmN2RlM2FlNzFjIjtpOjE7czozNjoiN2Y1NzI0YWMtNzYzNi0xYzJlLWM3ZTUtNTBmN2RlMzczM2VjIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6OToicGFnZVRpdGxlIjtzOjg6Ik15IFN1Z2FyIjt9aToxO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjM6e2k6MDtzOjM2OiJkOWE5MTk1YS1lNTA3LTZlYWQtZGJjNC01MGY3ZGU5OWVkNGEiO2k6MTtzOjM2OiJkYWRmYWQ4NC1kMjEyLTM5MmUtYTAzZi01MGY3ZGUzYTgwYzciO2k6MjtzOjM2OiJlYzU2MWY4Ni1mNjA3LWJmZDktYTBiYy01MGY3ZGU5MmNlNDYiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6Mzp7aTowO3M6MzY6ImRhM2Q5OWU4LTM5YjUtNTA2Zi05MzU3LTUwZjdkZTY5ODA3NCI7aToxO3M6MzY6ImRiNzlmNGIyLTc1YjAtYjc2YS00NTEyLTUwZjdkZTEzYmJjMSI7aToyO3M6MzY6IjkxZDAwNmE0LTZjNjktY2E3YS00YTQyLTUwZjdkZWE2NTBiNiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjk6InBhZ2VUaXRsZSI7czo1OiJTYWxlcyI7fWk6MjthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiMWU5OTAwMTktMDM5Ny1jYWJjLWVjZTQtNTBmN2RlZDAyNGNhIjtpOjE7czozNjoiMTE0ZDhmZTEtMzgwZS1mNTIyLWJiMDMtNTBmN2RlNDBlYjhjIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiIxMDVhYzE4ZS1lNmMxLWE3YzctNjg3NS01MGY3ZGUzYjQ2OTgiO2k6MTtzOjM2OiIxMjFlYzM0OS03NzRiLWYxYjAtNTBmNS01MGY3ZGUwMGNjYzEiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMiI7czo5OiJwYWdlVGl0bGUiO3M6OToiTWFya2V0aW5nIjt9aTozO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNTAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiI0ZWY4NzdlNC1jY2Y3LTU5MjctNWYzNi01MGY3ZGViNDU4MTUiO2k6MTtzOjM2OiI1MDJjYjNiMy1jOWY3LTI4NzMtOWE4Yy01MGY3ZGUzMWQxNzkiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI1MCUiO3M6ODoiZGFzaGxldHMiO2E6Mjp7aTowO3M6MzY6IjRmYzJiZWVlLThlYWYtMWM3Yy1lOWFkLTUwZjdkZWMyMTViMyI7aToxO3M6MzY6IjUzYTQzOTlhLTNhNDUtOGU0ZC05MTVhLTUwZjdkZTFmN2M2NyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjk6InBhZ2VUaXRsZSI7czo3OiJTdXBwb3J0Ijt9aTo0O2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNTAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiI1NGFhZTdkOS1jMTI4LWE3OTUtYmFmNy01MGY3ZGVkZjliM2QiO2k6MTtzOjM2OiI1NTg1NTIyZS05ZGFmLWUyZTktMzdlYS01MGY3ZGUxMThjMTIiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI1MCUiO3M6ODoiZGFzaGxldHMiO2E6Mjp7aTowO3M6MzY6IjU1MTkxYTZhLTMzOGEtNGI2Ni04NTA0LTUwZjdkZTZmODFiOCI7aToxO3M6MzY6IjU2MzRiMjUzLTVmODQtMzE0NC01NDI1LTUwZjdkZWIyZTZhOCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjk6InBhZ2VUaXRsZSI7czo3OiJUcmFja2VyIjt9fX0='),('a242a946-6218-ba27-02c2-50f7defabf6c','Home2_CALL',0,'2013-01-17 11:19:54','2013-01-17 11:19:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a68d6e32-c8ad-3db5-15b2-50f7decaf5aa','Home2_MEETING',0,'2013-01-17 11:19:54','2013-01-17 11:19:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('aacbbeda-f644-847e-5067-50f7dee12277','Home2_OPPORTUNITY',0,'2013-01-17 11:19:54','2013-01-17 11:19:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b0a5faf5-0dc1-5762-a9d7-50f7de6f245f','Home2_ACCOUNT',0,'2013-01-17 11:19:54','2013-01-17 11:19:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b6897140-b038-2dec-a521-50f7dee153bf','Home2_LEAD',0,'2013-01-17 11:19:54','2013-01-17 11:19:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('be3ec939-3cbd-89b2-5e66-50f7de8128da','Home2_SUGARFEED',0,'2013-01-17 11:19:54','2013-01-17 11:19:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e60af35b-ab70-d294-c370-50f7ded5e3ae','Home',0,'2013-01-17 11:21:21','2013-02-05 09:15:51','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjI2OntzOjM2OiJkNGM1NDQwZS0xMGZlLTQ3MjItYTI3Yy01MGY3ZGUwYjFmYWYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiJkY2RlOTA4MC1mYTBhLWIwZjYtYmQ1OC01MGY3ZGVhZTFmNjgiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15Q2FsbHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYWxscyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvQ2FsbHMvRGFzaGxldHMvTXlDYWxsc0Rhc2hsZXQvTXlDYWxsc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJlNDA4YjBiMy0yZGFhLTRlM2MtOGMxMC01MGY3ZGVhMjg3N2EiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15TWVldGluZ3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJNZWV0aW5ncyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJlOGNkYmEwYS02YjE3LTc0N2MtMjFlOS01MGY3ZGUzODc5YTciO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MjI6Ik15T3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4MDoibW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImVlN2VjMDY1LTEwZWUtZDQ4OS1iN2MzLTUwZjdkZTFiNDQzMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlBY2NvdW50c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9BY2NvdW50cy9EYXNobGV0cy9NeUFjY291bnRzRGFzaGxldC9NeUFjY291bnRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImYzYzI0N2E5LTJkNjMtNjAyNC0xMmU2LTUwZjdkZTI1ZmQ5ZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlMZWFkc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkxlYWRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9MZWFkcy9EYXNobGV0cy9NeUxlYWRzRGFzaGxldC9NeUxlYWRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjUzMTAwZGM3LWViZDEtNWE0Yy0wZDEzLTUwZjdkZTliNzJhZSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyOToiTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODc6Im1vZHVsZXMvQ2hhcnRzL0Rhc2hsZXRzL015UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0L015UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjQ6e3M6MTc6Im15cGJzc19kYXRlX3N0YXJ0IjtOO3M6MTU6Im15cGJzc19kYXRlX2VuZCI7TjtzOjE5OiJteXBic3Nfc2FsZXNfc3RhZ2VzIjtOO3M6MTc6Im15cGJzc19jaGFydF90eXBlIjtOO319czozNjoiYjNmMDAwZjItZDUzNS04NzM0LWMzOWQtNTBmN2RlOThhZjMzIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjI3OiJNeU9wcG9ydHVuaXRpZXNHYXVnZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODM6Im1vZHVsZXMvQ2hhcnRzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0dhdWdlRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNHYXVnZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiIxMTY5MGE5MS03MjE4LTFmOGMtM2VhNC01MGY3ZGVkZGE0OTkiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MjI6Ik15T3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiIxODJkMDM3OC1kMGZhLWZmY2ItMjNlNy01MGY3ZGUyNWJmNzkiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6Mjg6Ik15Q2xvc2VkT3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6OTI6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeUNsb3NlZE9wcG9ydHVuaXRpZXNEYXNobGV0L015Q2xvc2VkT3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI0OGQzMDExYy1hOTIwLTQwNGMtMzUzYi01MGY3ZGUxMTJlZDciO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTM6IkNoYXJ0c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9DaGFydHNEYXNobGV0L0NoYXJ0c0Rhc2hsZXQucGhwIjtzOjg6InJlcG9ydElkIjtzOjM2OiI3NmM2MGZiYS0wNzQxLTFiMjYtOGZhNS01MGY3ZGE2M2YzZmEiO31zOjM2OiJhMDNhMDU2NS1mNThiLTdlMGYtMTNiOS01MGY3ZGU0NDJiNjAiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MjU6Ik15Rm9yZWNhc3RpbmdDaGFydERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IkZvcmVjYXN0cyI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjc5OiJtb2R1bGVzL0NoYXJ0cy9EYXNobGV0cy9NeUZvcmVjYXN0aW5nQ2hhcnREYXNobGV0L015Rm9yZWNhc3RpbmdDaGFydERhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJhZmFmMDY1NC1mM2M4LTQwYzItNGZkZC01MGY3ZGUzYmZiYmEiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTM6IkNoYXJ0c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkxlYWRzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9DaGFydHNEYXNobGV0L0NoYXJ0c0Rhc2hsZXQucGhwIjtzOjg6InJlcG9ydElkIjtzOjM2OiI5YjNlNGUzMS1kNGVmLTIxNjMtZDc5MS01MGY3ZGEwOTc5ZmMiO31zOjM2OiJlYThjMGRhOS0zYjI3LTA3ODYtYzVlMi01MGY3ZGUzYjc1M2MiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MjM6IkNhbXBhaWduUk9JQ2hhcnREYXNobGV0IjtzOjY6Im1vZHVsZSI7czo5OiJDYW1wYWlnbnMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo3NToibW9kdWxlcy9DaGFydHMvRGFzaGxldHMvQ2FtcGFpZ25ST0lDaGFydERhc2hsZXQvQ2FtcGFpZ25ST0lDaGFydERhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJmNzU1MDIxYi0xNDhmLTY1MDUtY2JmZi01MGY3ZGViNmM1ZDMiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMTAxMjE5MTgtODljMy01ZTA4LTAwYTctNTBmN2RlZGVmNmY3IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE5OiJUb3BDYW1wYWlnbnNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo5OiJDYW1wYWlnbnMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo3MDoibW9kdWxlcy9DYW1wYWlnbnMvRGFzaGxldHMvVG9wQ2FtcGFpZ25zRGFzaGxldC9Ub3BDYW1wYWlnbnNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMTQyY2Q5Y2EtZWI3NS1kNmRkLWNmMGQtNTBmN2RlYTAwYWQ5IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjEzOiJDaGFydHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYXNlcyI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvQ2hhcnRzRGFzaGxldC9DaGFydHNEYXNobGV0LnBocCI7czo4OiJyZXBvcnRJZCI7czozNjoiNzljOWJkMWYtY2E4Zi0wZjE3LTA2OGItNTBmN2RhMTRlMDE4Ijt9czozNjoiMTRkZDg4Y2UtOGRlZi1mMjBiLWYwYzctNTBmN2RlOWUzYjQwIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjEzOiJDaGFydHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYXNlcyI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvQ2hhcnRzRGFzaGxldC9DaGFydHNEYXNobGV0LnBocCI7czo4OiJyZXBvcnRJZCI7czozNjoiN2NkN2IxNjQtMzFmMS04ZWZiLWY0NWUtNTBmN2RhNWY2NWExIjt9czozNjoiMTU0NDg0NWEtMTJlNC02Y2M0LTE0ZWItNTBmN2RlY2RmM2MxIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhc2VzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FzZXMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYXNlcy9EYXNobGV0cy9NeUNhc2VzRGFzaGxldC9NeUNhc2VzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE5NGM0MTFlLTM2NGUtZGY5Ny0yNzllLTUwZjdkZTNlZDVjOSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiTXlCdWdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiQnVncyI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0J1Z3MvRGFzaGxldHMvTXlCdWdzRGFzaGxldC9NeUJ1Z3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMWE0NGViMTUtYmY2Yy00NjIzLTQxOWQtNTBmN2RlOTFiYTA4IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJUcmFja2VyRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiVHJhY2tlcnMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1OToibW9kdWxlcy9UcmFja2Vycy9EYXNobGV0cy9UcmFja2VyRGFzaGxldC9UcmFja2VyRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjFhYTg1MDIzLWZjZjMtOTk0Yi04ZTM5LTUwZjdkZWIyMzdjOCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyNToiTXlNb2R1bGVzVXNlZENoYXJ0RGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiVHJhY2tlcnMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo3OToibW9kdWxlcy9DaGFydHMvRGFzaGxldHMvTXlNb2R1bGVzVXNlZENoYXJ0RGFzaGxldC9NeU1vZHVsZXNVc2VkQ2hhcnREYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMWIwZTUyOTktNmFmNC00ZGI2LTc1M2EtNTBmN2RlMzEyNTkwIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjI5OiJNeVRlYW1Nb2R1bGVzVXNlZENoYXJ0RGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiVHJhY2tlcnMiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4NzoibW9kdWxlcy9DaGFydHMvRGFzaGxldHMvTXlUZWFtTW9kdWxlc1VzZWRDaGFydERhc2hsZXQvTXlUZWFtTW9kdWxlc1VzZWRDaGFydERhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiIxYmNmY2JhNi1kMDg1LWU1NGMtYzViMi01MGY3ZGVkYmZmYjYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTM6IkNoYXJ0c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IlRyYWNrZXJzIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9DaGFydHNEYXNobGV0L0NoYXJ0c0Rhc2hsZXQucGhwIjtzOjg6InJlcG9ydElkIjtzOjM2OiJkNzQwZjUxNS0yNTBkLTk1ZDgtZmNhZi01MGY3ZGE2YzgwZWQiO31zOjM2OiJmMzlmZTc4MS03MTdhLTI5NDYtMTEyOS01MTEwY2RmZjYwOWMiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15Q29udGFjdHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJDb250YWN0cyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQ29udGFjdHMvRGFzaGxldHMvTXlDb250YWN0c0Rhc2hsZXQvTXlDb250YWN0c0Rhc2hsZXQucGhwIjt9czozNjoiZTNiYjEyNTktNjQxMC00ZmIwLWMxNmYtNTExMGNkOTgxNGNmIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjMyOiJPcHBvcnR1bml0aWVzQnlMZWFkU291cmNlRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjkzOiJtb2R1bGVzL0NoYXJ0cy9EYXNobGV0cy9PcHBvcnR1bml0aWVzQnlMZWFkU291cmNlRGFzaGxldC9PcHBvcnR1bml0aWVzQnlMZWFkU291cmNlRGFzaGxldC5waHAiO319czo1OiJwYWdlcyI7YTo1OntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6NTp7aTowO3M6MzY6ImRjZGU5MDgwLWZhMGEtYjBmNi1iZDU4LTUwZjdkZWFlMWY2OCI7aToxO3M6MzY6ImU0MDhiMGIzLTJkYWEtNGUzYy04YzEwLTUwZjdkZWEyODc3YSI7aToyO3M6MzY6ImU4Y2RiYTBhLTZiMTctNzQ3Yy0yMWU5LTUwZjdkZTM4NzlhNyI7aTozO3M6MzY6ImVlN2VjMDY1LTEwZWUtZDQ4OS1iN2MzLTUwZjdkZTFiNDQzMSI7aTo0O3M6MzY6ImYzYzI0N2E5LTJkNjMtNjAyNC0xMmU2LTUwZjdkZTI1ZmQ5ZCI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToxOntpOjA7czozNjoiZDRjNTQ0MGUtMTBmZS00NzIyLWEyN2MtNTBmN2RlMGIxZmFmIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6OToicGFnZVRpdGxlIjtzOjg6Ik15IFN1Z2FyIjt9aToxO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJlM2JiMTI1OS02NDEwLTRmYjAtYzE2Zi01MTEwY2Q5ODE0Y2YiO2k6MTtzOjM2OiJmMzlmZTc4MS03MTdhLTI5NDYtMTEyOS01MTEwY2RmZjYwOWMiO2k6MjtzOjM2OiIxMTY5MGE5MS03MjE4LTFmOGMtM2VhNC01MGY3ZGVkZGE0OTkiO2k6MztzOjM2OiI1MzEwMGRjNy1lYmQxLTVhNGMtMGQxMy01MGY3ZGU5YjcyYWUiO2k6NDtzOjM2OiI0OGQzMDExYy1hOTIwLTQwNGMtMzUzYi01MGY3ZGUxMTJlZDciO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6Mzp7aTowO3M6MzY6ImIzZjAwMGYyLWQ1MzUtODczNC1jMzlkLTUwZjdkZTk4YWYzMyI7aToxO3M6MzY6IjE4MmQwMzc4LWQwZmEtZmZjYi0yM2U3LTUwZjdkZTI1YmY3OSI7aToyO3M6MzY6ImEwM2EwNTY1LWY1OGItN2UwZi0xM2I5LTUwZjdkZTQ0MmI2MCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjk6InBhZ2VUaXRsZSI7czo1OiJTYWxlcyI7fWk6MjthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiYWZhZjA2NTQtZjNjOC00MGMyLTRmZGQtNTBmN2RlM2JmYmJhIjtpOjE7czozNjoiZjc1NTAyMWItMTQ4Zi02NTA1LWNiZmYtNTBmN2RlYjZjNWQzIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiJlYThjMGRhOS0zYjI3LTA3ODYtYzVlMi01MGY3ZGUzYjc1M2MiO2k6MTtzOjM2OiIxMDEyMTkxOC04OWMzLTVlMDgtMDBhNy01MGY3ZGVkZWY2ZjciO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMiI7czo5OiJwYWdlVGl0bGUiO3M6OToiTWFya2V0aW5nIjt9aTozO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNTAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiIxNDJjZDljYS1lYjc1LWQ2ZGQtY2YwZC01MGY3ZGVhMDBhZDkiO2k6MTtzOjM2OiIxNTQ0ODQ1YS0xMmU0LTZjYzQtMTRlYi01MGY3ZGVjZGYzYzEiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI1MCUiO3M6ODoiZGFzaGxldHMiO2E6Mjp7aTowO3M6MzY6IjE0ZGQ4OGNlLThkZWYtZjIwYi1mMGM3LTUwZjdkZTllM2I0MCI7aToxO3M6MzY6IjE5NGM0MTFlLTM2NGUtZGY5Ny0yNzllLTUwZjdkZTNlZDVjOSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjk6InBhZ2VUaXRsZSI7czo3OiJTdXBwb3J0Ijt9aTo0O2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNTAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiIxYTQ0ZWIxNS1iZjZjLTQ2MjMtNDE5ZC01MGY3ZGU5MWJhMDgiO2k6MTtzOjM2OiIxYjBlNTI5OS02YWY0LTRkYjYtNzUzYS01MGY3ZGUzMTI1OTAiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI1MCUiO3M6ODoiZGFzaGxldHMiO2E6Mjp7aTowO3M6MzY6IjFhYTg1MDIzLWZjZjMtOTk0Yi04ZTM5LTUwZjdkZWIyMzdjOCI7aToxO3M6MzY6IjFiY2ZjYmE2LWQwODUtZTU0Yy1jNWIyLTUwZjdkZWRiZmZiNiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjk6InBhZ2VUaXRsZSI7czo3OiJUcmFja2VyIjt9fX0='),('820e96b9-2a18-0160-a9be-5100f63ad31b','Reports2_SAVEDREPORT',0,'2013-01-24 08:55:09','2013-01-24 08:55:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoyNjoic2F2ZWRfcmVwb3J0cy5kYXRlX2VudGVyZWQiO3M6OToic29ydE9yZGVyIjtzOjQ6ImRlc2MiO319'),('cb4caad9-f124-7f01-42d3-5100f868be36','Accounts2_ACCOUNT',0,'2013-01-24 09:03:16','2013-01-24 09:03:16','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c06c8c0b-a6f6-5a3e-a0b0-510664ecf284','Quotes2_QUOTE',0,'2013-01-28 11:44:48','2013-01-28 11:44:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('769f181b-6172-399f-13c5-510665a602f5','Emails',0,'2013-01-28 11:47:33','2013-01-28 11:47:46','1','YToyOntzOjE1OiJlbWFpbDJQcmVmbGlnaHQiO2I6MTtzOjExOiJmb2N1c0ZvbGRlciI7czo2MjoiYToyOntzOjQ6ImllSWQiO3M6OToidW5kZWZpbmVkIjtzOjY6ImZvbGRlciI7czo5OiJ1bmRlZmluZWQiO30iO30='),('12595737-45eb-7e28-9498-5108ce46c79d','Leads2_LEAD',0,'2013-01-30 07:42:49','2013-01-30 07:42:49','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c481588e-2450-8f2b-3296-510a698f7e84','Leads',0,'2013-01-31 12:53:16','2013-01-31 12:53:16','1','YToxOntzOjE0OiJzdWJwYW5lbExheW91dCI7YTozOntpOjA7czo3OiJoaXN0b3J5IjtpOjE7czoxMDoiYWN0aXZpdGllcyI7aToyO3M6OToiY2FtcGFpZ25zIjt9fQ=='),('57da18fa-9f2d-8d39-a72d-510fa99c27fc','ACLRoles2_ACLROLE',0,'2013-02-04 12:27:24','2013-02-04 12:27:24','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7331c2d0-c7da-4187-d083-510fa9b428ee','Users2_USER',0,'2013-02-04 12:28:01','2013-02-04 12:28:01','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('216c033a-5437-7d82-c7f7-5110a7b0e1f7','Contacts2_CONTACT',0,'2013-02-05 06:30:56','2013-02-05 06:30:56','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d2a3771c-93cf-0fab-7557-5110cce582ec','Accounts',0,'2013-02-05 09:08:18','2013-02-05 09:08:18','1','YToxOntzOjE0OiJzdWJwYW5lbExheW91dCI7YToxNDp7aTowO3M6MTA6ImFjdGl2aXRpZXMiO2k6MTtzOjc6Imhpc3RvcnkiO2k6MjtzOjg6ImNvbnRhY3RzIjtpOjM7czo5OiJkb2N1bWVudHMiO2k6NDtzOjEzOiJvcHBvcnR1bml0aWVzIjtpOjU7czo2OiJxdW90ZXMiO2k6NjtzOjg6InByb2R1Y3RzIjtpOjc7czo5OiJjYW1wYWlnbnMiO2k6ODtzOjk6ImNvbnRyYWN0cyI7aTo5O3M6NToibGVhZHMiO2k6MTA7czo4OiJhY2NvdW50cyI7aToxMTtzOjU6ImNhc2VzIjtpOjEyO3M6NDoiYnVncyI7aToxMztzOjc6InByb2plY3QiO319'),('a5e42903-63ba-1356-0f88-5110cdd1b60f','Home2_CONTACT',0,'2013-02-05 09:15:13','2013-02-05 09:15:13','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1068427a-8681-8be2-a3f8-5110d11a9bf9','ed_Department2_ED_DEPARTMENT',0,'2013-02-05 09:29:53','2013-02-05 09:29:53','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6b540d74-6fa9-6578-a42c-5110d1b96fba','ed_Employee2_ED_EMPLOYEE',0,'2013-02-05 09:32:28','2013-02-05 09:32:28','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4cdf3b07-a0f8-ad1f-8e94-5110e5d91b63','Meetings2_MEETING',0,'2013-02-05 10:58:31','2013-02-05 10:58:31','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6f36047a-bbec-1c51-894a-511242086cd6','Home2_CASE',0,'2013-02-06 11:48:09','2013-02-06 11:48:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9ebb7eab-a172-3fb8-4ac6-511242def1d1','Home2_BUG',0,'2013-02-06 11:48:09','2013-02-06 11:48:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) default NULL,
  `user_hash` varchar(32) default NULL,
  `system_generated_password` tinyint(1) default '0',
  `pwd_last_changed` datetime default NULL,
  `authenticate_id` varchar(100) default NULL,
  `sugar_login` tinyint(1) default '1',
  `picture` varchar(255) default NULL,
  `first_name` varchar(30) default NULL,
  `last_name` varchar(30) default NULL,
  `reports_to_id` char(36) default NULL,
  `is_admin` tinyint(1) default '0',
  `external_auth_only` tinyint(1) default '0',
  `receive_notifications` tinyint(1) default '1',
  `description` text,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `title` varchar(50) default NULL,
  `department` varchar(50) default NULL,
  `phone_home` varchar(50) default NULL,
  `phone_mobile` varchar(50) default NULL,
  `phone_work` varchar(50) default NULL,
  `phone_other` varchar(50) default NULL,
  `phone_fax` varchar(50) default NULL,
  `status` varchar(100) default NULL,
  `address_street` varchar(150) default NULL,
  `address_city` varchar(100) default NULL,
  `address_state` varchar(100) default NULL,
  `address_country` varchar(100) default NULL,
  `address_postalcode` varchar(20) default NULL,
  `default_team` varchar(36) default NULL,
  `team_set_id` char(36) default NULL,
  `deleted` tinyint(1) default '0',
  `portal_only` tinyint(1) default '0',
  `employee_status` varchar(100) default NULL,
  `messenger_id` varchar(100) default NULL,
  `messenger_type` varchar(100) default NULL,
  `is_group` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`),
  KEY `idx_users_tmst_id` (`team_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','21232f297a57a5a743894a0e4a801fc3',0,NULL,NULL,1,'a067bdcb-2599-d417-4068-50f7da37233b',NULL,'Administrator',NULL,1,0,0,NULL,'2013-01-17 11:01:56','2013-02-06 06:06:19','1',NULL,'Administrator',NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,'1','1',0,0,'Active',NULL,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) default NULL,
  `feed_id` varchar(36) default NULL,
  `rank` int(11) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_holidays`
--

DROP TABLE IF EXISTS `users_holidays`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_holidays` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) default NULL,
  `holiday_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_user_holi_user` (`user_id`),
  KEY `idx_user_holi_holi` (`holiday_id`),
  KEY `users_quotes_alt` (`user_id`,`holiday_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_holidays`
--

LOCK TABLES `users_holidays` WRITE;
/*!40000 ALTER TABLE `users_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) default NULL,
  `import_module` varchar(36) default NULL,
  `bean_type` varchar(36) default NULL,
  `bean_id` char(36) default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) default NULL,
  `date_generated` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `user_id` varchar(36) default NULL,
  `name` varchar(255) default NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY  (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `content` text,
  PRIMARY KEY  (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(255) default NULL,
  `file_version` varchar(255) default NULL,
  `db_version` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES ('368ac209-5dc6-1945-55b3-50f7daeb25af',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'Chart Data Cache','3.5.1','3.5.1'),('3b36fcdf-6cf6-c60b-4cde-50f7da65dc59',0,'2013-01-17 11:01:56','2013-01-17 11:01:56','1',NULL,'htaccess','3.5.1','3.5.1'),('df0d344f-a09f-8a5f-d8a4-5110d8a32d36',0,'2013-02-05 10:01:44','2013-02-05 10:01:44','1','1','Rebuild Relationships','4.0.0','4.0.0'),('2c093965-810f-f811-6847-5110d64f2a3f',0,'2013-02-05 09:54:32','2013-02-05 09:54:32','1','1','Rebuild Extensions','4.0.0','4.0.0');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow`
--

DROP TABLE IF EXISTS `workflow`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `workflow` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(50) default NULL,
  `base_module` varchar(50) default NULL,
  `status` tinyint(1) default '0',
  `description` text,
  `type` varchar(100) default NULL,
  `fire_order` varchar(100) default NULL,
  `parent_id` char(36) default NULL,
  `record_type` varchar(100) default NULL,
  `list_order_y` int(3) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_workflow` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `workflow`
--

LOCK TABLES `workflow` WRITE;
/*!40000 ALTER TABLE `workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_actions`
--

DROP TABLE IF EXISTS `workflow_actions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `workflow_actions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `field` varchar(50) default NULL,
  `value` text,
  `set_type` varchar(10) default NULL,
  `adv_type` varchar(10) default NULL,
  `parent_id` char(36) NOT NULL,
  `ext1` varchar(50) default NULL,
  `ext2` varchar(50) default NULL,
  `ext3` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_action` (`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `workflow_actions`
--

LOCK TABLES `workflow_actions` WRITE;
/*!40000 ALTER TABLE `workflow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_actionshells`
--

DROP TABLE IF EXISTS `workflow_actionshells`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `workflow_actionshells` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `action_type` varchar(100) default NULL,
  `parent_id` char(36) NOT NULL,
  `parameters` varchar(255) default NULL,
  `rel_module` varchar(50) default NULL,
  `rel_module_type` varchar(10) default NULL,
  `action_module` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_actionshell` (`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `workflow_actionshells`
--

LOCK TABLES `workflow_actionshells` WRITE;
/*!40000 ALTER TABLE `workflow_actionshells` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_actionshells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_alerts`
--

DROP TABLE IF EXISTS `workflow_alerts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `workflow_alerts` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `field_value` varchar(50) default NULL,
  `rel_email_value` varchar(50) default NULL,
  `rel_module1` varchar(255) default NULL,
  `rel_module2` varchar(255) default NULL,
  `rel_module1_type` varchar(10) default NULL,
  `rel_module2_type` varchar(10) default NULL,
  `where_filter` tinyint(1) default '0',
  `user_type` varchar(100) default NULL,
  `array_type` varchar(100) default NULL,
  `relate_type` varchar(100) default NULL,
  `address_type` varchar(100) default NULL,
  `parent_id` char(36) NOT NULL,
  `user_display_type` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_workflowalerts` (`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `workflow_alerts`
--

LOCK TABLES `workflow_alerts` WRITE;
/*!40000 ALTER TABLE `workflow_alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_alertshells`
--

DROP TABLE IF EXISTS `workflow_alertshells`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `workflow_alertshells` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `name` varchar(50) default NULL,
  `alert_text` text,
  `alert_type` varchar(100) default NULL,
  `source_type` varchar(100) default NULL,
  `parent_id` char(36) NOT NULL,
  `custom_template_id` char(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_workflowalertshell` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `workflow_alertshells`
--

LOCK TABLES `workflow_alertshells` WRITE;
/*!40000 ALTER TABLE `workflow_alertshells` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_alertshells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_schedules`
--

DROP TABLE IF EXISTS `workflow_schedules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `workflow_schedules` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `date_expired` datetime default NULL,
  `workflow_id` char(36) default NULL,
  `target_module` varchar(50) default NULL,
  `bean_id` char(36) default NULL,
  `parameters` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_wkfl_schedule` (`workflow_id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `workflow_schedules`
--

LOCK TABLES `workflow_schedules` WRITE;
/*!40000 ALTER TABLE `workflow_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_triggershells`
--

DROP TABLE IF EXISTS `workflow_triggershells`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `workflow_triggershells` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  `created_by` char(36) default NULL,
  `field` varchar(50) default NULL,
  `type` varchar(100) default NULL,
  `frame_type` varchar(15) default NULL,
  `eval` text,
  `parent_id` char(36) NOT NULL,
  `show_past` tinyint(1) default '0',
  `rel_module` varchar(255) default NULL,
  `rel_module_type` varchar(10) default NULL,
  `parameters` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `workflow_triggershells`
--

LOCK TABLES `workflow_triggershells` WRITE;
/*!40000 ALTER TABLE `workflow_triggershells` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_triggershells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worksheet`
--

DROP TABLE IF EXISTS `worksheet`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `worksheet` (
  `id` char(36) NOT NULL,
  `user_id` char(36) default NULL,
  `timeperiod_id` char(36) default NULL,
  `forecast_type` varchar(100) default NULL,
  `related_id` char(36) default NULL,
  `related_forecast_type` varchar(100) default NULL,
  `best_case` int(11) default NULL,
  `likely_case` int(11) default NULL,
  `worst_case` int(11) default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` char(36) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `worksheet`
--

LOCK TABLES `worksheet` WRITE;
/*!40000 ALTER TABLE `worksheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `worksheet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-11 10:55:46

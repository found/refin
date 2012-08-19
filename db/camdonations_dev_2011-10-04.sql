# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.50)
# Database: camdonations_dev
# Generation Time: 2011-10-04 15:42:46 -0400
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table addresses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `addresses`;

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT '232',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;

INSERT INTO `addresses` (`id`, `member_id`, `address_1`, `address_2`, `city`, `state`, `postal_code`, `address_type`, `created_at`, `updated_at`, `country_id`)
VALUES
	(1,1,'869 Camelot Lane','','Harrisonburg','VA','22801','billing','2011-05-25 20:45:36','2011-05-25 20:45:36',232),
	(2,1,'968 Lane of Camelot','My House','Harrisonburg','VA','22801','mailing','2011-05-25 20:49:04','2011-09-23 14:33:52',232),
	(4,3,'869 Camelot Lane','','Harrisonburg','VA','22801','mailing','2011-06-02 18:18:38','2011-06-02 18:18:38',232),
	(5,3,'869 Camelot Lane','My House','Harrisonburg','VA','22801','billing','2011-06-02 18:34:04','2011-06-02 19:01:08',232),
	(6,6,'420 Neff Avenue','','Harrisonburg','VA','22801','billing','2011-08-23 18:04:36','2011-08-23 18:04:36',232),
	(7,8,'420 Neff Ave #215','','Harrisonburg','VA','22801','billing','2011-08-26 18:12:01','2011-08-26 18:12:01',232),
	(8,9,'28553 SR 751','','Newcomerstown','OH','43832','billing','2011-08-26 19:25:43','2011-08-26 19:28:00',232),
	(9,5,'4478 Ridge Rd','','Baltic','OH','43804','billing','2011-08-26 19:48:05','2011-09-23 13:23:49',232),
	(10,5,'4478 Ridge Rd SW','','Baltic','OH','43804','mailing','2011-08-26 19:48:25','2011-09-22 15:40:25',232),
	(11,10,'5170 COUNTY ROAD 314','','MILLERSBURG','OH','44654','billing','2011-08-30 19:37:09','2011-08-30 19:37:09',232),
	(12,11,'4464 SR 39','','Millersburg','OH','44654','billing','2011-09-02 18:34:51','2011-09-02 18:34:51',232),
	(13,12,'715 Yorkshire Road','','Earlysville','VA','22936','billing','2011-09-09 17:35:14','2011-09-09 17:35:14',232),
	(14,12,'845 South High','','harrisonburg','va','22801','mailing','2011-09-09 17:49:39','2011-09-09 18:16:49',232),
	(15,13,'420 Neff Avenue','Suite 215','Harrisonburg','va','22801','billing','2011-09-14 21:22:09','2011-09-23 14:11:31',232),
	(16,13,'420 Neff AVenue','Suite 215','Harrisonburg','va','22801','mailing','2011-09-14 21:22:09','2011-09-14 21:22:09',232),
	(17,14,'123 Anywhere','','Vancouver','BC','NKO 4G3','billing','2011-09-27 17:26:23','2011-09-27 17:26:23',232),
	(18,14,'123 Anywhere','','Vancouver','BC','NKO 4G3','mailing','2011-09-27 17:26:23','2011-09-27 17:26:23',232);

/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cat_prog_juncs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cat_prog_juncs`;

CREATE TABLE `cat_prog_juncs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `cat_prog_juncs` WRITE;
/*!40000 ALTER TABLE `cat_prog_juncs` DISABLE KEYS */;

INSERT INTO `cat_prog_juncs` (`id`, `category_id`, `program_id`, `created_at`, `updated_at`)
VALUES
	(2,6,5,'2011-08-16 19:50:27','2011-08-16 19:50:27'),
	(4,9,5,'2011-08-16 19:50:27','2011-08-16 19:50:27'),
	(7,1,13,'2011-08-16 19:51:55','2011-08-16 19:51:55'),
	(8,1,20,'2011-08-16 19:52:09','2011-08-16 19:52:09'),
	(11,9,6,'2011-08-17 21:17:14','2011-08-17 21:17:14'),
	(21,5,25,'2011-08-18 18:03:11','2011-08-18 18:03:11'),
	(22,7,25,'2011-08-18 18:03:11','2011-08-18 18:03:11'),
	(25,3,32,'2011-08-18 19:41:23','2011-08-18 19:41:23'),
	(28,9,34,'2011-08-22 14:52:17','2011-08-22 14:52:17'),
	(29,6,35,'2011-08-22 14:58:39','2011-08-22 14:58:39'),
	(30,1,36,'2011-08-22 15:01:15','2011-08-22 15:01:15'),
	(31,9,36,'2011-08-22 15:01:15','2011-08-22 15:01:15'),
	(32,2,37,'2011-08-22 15:06:30','2011-08-22 15:06:30'),
	(33,6,38,'2011-08-22 15:12:22','2011-08-22 15:12:22'),
	(34,1,39,'2011-08-22 15:19:52','2011-08-22 15:19:52'),
	(35,1,40,'2011-08-22 15:25:43','2011-08-22 15:25:43'),
	(36,2,27,'2011-08-22 18:11:53','2011-08-22 18:11:53'),
	(37,9,8,'2011-08-22 18:18:26','2011-08-22 18:18:26'),
	(39,21,33,'2011-08-23 14:19:02','2011-08-23 14:19:02'),
	(40,9,38,'2011-08-23 14:23:08','2011-08-23 14:23:08'),
	(41,6,3,'2011-08-23 14:23:57','2011-08-23 14:23:57'),
	(42,8,7,'2011-08-23 14:24:44','2011-08-23 14:24:44'),
	(43,12,7,'2011-08-23 14:24:44','2011-08-23 14:24:44'),
	(47,5,9,'2011-08-23 14:25:30','2011-08-23 14:25:30'),
	(49,11,10,'2011-08-23 14:26:13','2011-08-23 14:26:13'),
	(50,13,10,'2011-08-23 14:26:13','2011-08-23 14:26:13'),
	(51,4,11,'2011-08-23 14:26:37','2011-08-23 14:26:37'),
	(52,13,11,'2011-08-23 14:26:37','2011-08-23 14:26:37'),
	(55,7,12,'2011-08-23 14:27:16','2011-08-23 14:27:16'),
	(59,4,15,'2011-08-23 14:28:26','2011-08-23 14:28:26'),
	(61,1,2,'2011-08-23 14:29:02','2011-08-23 14:29:02'),
	(65,3,17,'2011-08-23 14:29:31','2011-08-23 14:29:31'),
	(68,9,18,'2011-08-23 14:32:55','2011-08-23 14:32:55'),
	(72,8,19,'2011-08-23 14:35:19','2011-08-23 14:35:19'),
	(78,7,22,'2011-08-23 15:16:54','2011-08-23 15:16:54'),
	(79,10,22,'2011-08-23 15:16:54','2011-08-23 15:16:54'),
	(82,8,23,'2011-08-23 15:17:22','2011-08-23 15:17:22'),
	(86,7,24,'2011-08-23 15:17:42','2011-08-23 15:17:42'),
	(91,2,1,'2011-08-23 15:18:51','2011-08-23 15:18:51'),
	(95,11,29,'2011-08-23 15:24:50','2011-08-23 15:24:50'),
	(99,11,30,'2011-08-23 15:27:15','2011-08-23 15:27:15'),
	(105,4,42,'2011-08-26 19:43:50','2011-08-26 19:43:50'),
	(106,9,3,'2011-09-07 20:34:24','2011-09-07 20:34:24'),
	(107,4,41,'2011-09-08 15:24:04','2011-09-08 15:24:04'),
	(108,13,41,'2011-09-08 15:24:04','2011-09-08 15:24:04'),
	(110,1,14,'2011-09-09 15:58:43','2011-09-09 15:58:43'),
	(111,8,13,'2011-09-29 15:48:53','2011-09-29 15:48:53'),
	(112,11,13,'2011-09-29 15:48:53','2011-09-29 15:48:53'),
	(113,6,18,'2011-09-29 15:52:27','2011-09-29 15:52:27'),
	(114,7,18,'2011-09-29 15:52:27','2011-09-29 15:52:27'),
	(115,4,26,'2011-09-29 15:55:23','2011-09-29 15:55:23'),
	(116,9,35,'2011-09-29 15:55:41','2011-09-29 15:55:41'),
	(117,1,28,'2011-09-29 15:56:34','2011-09-29 15:56:34'),
	(118,22,39,'2011-09-29 15:59:56','2011-09-29 15:59:56'),
	(119,23,39,'2011-09-29 16:00:58','2011-09-29 16:00:58'),
	(120,23,14,'2011-09-29 16:01:12','2011-09-29 16:01:12'),
	(121,23,2,'2011-09-29 16:01:28','2011-09-29 16:01:28'),
	(122,23,40,'2011-09-29 16:01:56','2011-09-29 16:01:56'),
	(123,23,28,'2011-09-29 16:02:12','2011-09-29 16:02:12');

/*!40000 ALTER TABLE `cat_prog_juncs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `category_short_description` text,
  `category_description` text,
  `category_image_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ancestry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_id` (`id`),
  KEY `index_categories_on_category_name` (`category_name`),
  KEY `index_categories_on_ancestry` (`ancestry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `category_name`, `category_short_description`, `category_description`, `category_image_id`, `position`, `created_at`, `updated_at`, `ancestry`)
VALUES
	(1,'Hunger Relief','<p>Short</p>','<p>long</p>',NULL,3,'2011-05-23 15:56:23','2011-05-24 15:39:34','15/18'),
	(2,'Orphans','<p>short</p>','<p>Long</p>',NULL,4,'2011-05-23 15:56:33','2011-05-24 15:05:18','16'),
	(3,'School','<p>short</p>','<p>Long</p>',NULL,5,'2011-05-23 15:56:44','2011-05-24 15:05:43','16'),
	(4,'Emergency Aid','<p>short</p>','<p>long</p>',NULL,6,'2011-05-23 15:56:57','2011-05-24 15:39:16','15/18'),
	(5,'Clothing','<p>short</p>','<p>long</p>',NULL,7,'2011-05-23 15:57:09','2011-05-24 15:38:38','15'),
	(6,'Literature','<p>Short</p>','<p>Long</p>',NULL,8,'2011-05-23 15:57:20','2011-05-24 15:06:09','17'),
	(7,'Self-Help','<p>Short	\r\n</p>','<p>Long</p>',NULL,9,'2011-05-23 15:57:42','2011-05-24 15:07:14','17'),
	(8,'Medical Aid','<p>Short</p>','<p>Long</p>',NULL,10,'2011-05-23 15:57:54','2011-05-24 15:39:23','15/18'),
	(9,'Spiritual Needs','<p>Short</p>','<p>Long</p>',NULL,11,'2011-05-23 15:58:06','2011-05-24 15:05:00','15'),
	(10,'Microfinance','<p>Short</p>','<p>Long</p>',NULL,12,'2011-05-23 15:58:21','2011-05-24 15:37:46','17/7'),
	(11,'Misc Needs','<p>Short</p>','<p>Long</p>',NULL,13,'2011-05-23 15:58:34','2011-05-24 15:13:45','17'),
	(12,'Martyrs','<p>Short</p>','<p>Long</p>',NULL,14,'2011-05-23 15:58:45','2011-05-24 15:14:17','17'),
	(13,'Service Programs','<p>Short</p>','<p>Long</p>',NULL,15,'2011-05-23 15:58:57','2011-05-24 15:14:08','17'),
	(15,'Immediate Need','','',NULL,0,'2011-05-24 15:04:30','2011-05-24 15:14:31',NULL),
	(16,'For Children','','',NULL,2,'2011-05-24 15:05:09','2011-05-24 15:05:09',NULL),
	(17,'For All','','',NULL,1,'2011-05-24 15:05:54','2011-05-24 15:05:54',NULL),
	(18,'Aid','<p>Types of Aid</p>','',NULL,NULL,'2011-05-24 15:39:08','2011-05-24 15:39:08','15'),
	(19,'Technical Training','','',NULL,NULL,'2011-05-24 15:40:05','2011-05-24 15:40:05','17/7'),
	(21,'Where Needed Most','<p>General funds used for whichever programs need the most help at the time, as well as administration and fund-raising expenses.</p>','<p>Where Needed Most (or non-specified) funds are used for aid programs that did not receive enough specified funds, and for general administration and fund-raising expenses. We want to be good stewards of all gifts from supporters and need your prayers for wisdom and direction from God. May He be glorified as we labor together to further His kingdom on earth!</p>',NULL,NULL,'2011-08-22 14:46:53','2011-08-22 14:46:53',NULL),
	(23,'Food Parcel','<p>Short</p>\r\n<br />','<p>Long</p>\r\n<br />',NULL,NULL,'2011-09-29 16:00:43','2011-09-29 16:00:43',NULL);

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contact_instances
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contact_instances`;

CREATE TABLE `contact_instances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `message` text,
  `request_follow_up` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `contact_instances` WRITE;
/*!40000 ALTER TABLE `contact_instances` DISABLE KEYS */;

INSERT INTO `contact_instances` (`id`, `contact_id`, `message`, `request_follow_up`, `created_at`, `updated_at`)
VALUES
	(1,1,'Testing 1...2...3...',0,'2011-08-30 14:23:18','2011-08-30 14:23:18'),
	(2,1,'Newsletter Signup form.',0,'2011-08-30 17:11:04','2011-08-30 17:11:04'),
	(3,1,'This is awesome!',0,'2011-08-30 17:11:18','2011-08-30 17:11:18'),
	(4,1,'Newsletter Signup form.',0,'2011-08-30 17:17:37','2011-08-30 17:17:37'),
	(5,2,'Hi,\r\n\r\nI am just testing you Contact Us page... :)\r\n\r\nHave a wonderful day!!\r\nStephen Martin\r\n\r\nP.S. You follow up by calling my extension in the office. :)',1,'2011-08-30 19:12:38','2011-08-30 19:12:38'),
	(6,3,'Newsletter Signup Form Submittal',0,'2011-09-28 15:48:51','2011-09-28 15:48:51');

/*!40000 ALTER TABLE `contact_instances` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `newsletter_recipient` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT 'UNITED STATES',
  PRIMARY KEY (`id`),
  KEY `index_contacts_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

INSERT INTO `contacts` (`id`, `email`, `first_name`, `last_name`, `address_1`, `address_2`, `city`, `state`, `postal_code`, `member_id`, `newsletter_recipient`, `position`, `created_at`, `updated_at`, `country`)
VALUES
	(1,'test@test.com','Test','User','','','','','',6,1,NULL,'2011-08-30 14:23:17','2011-08-30 17:11:18','UNITED STATES'),
	(2,'smartin@camoh.org','Stephen','Martin','PO BOX 360','','Berlin','Ohio','44610',NULL,0,NULL,'2011-08-30 19:12:38','2011-08-30 19:12:38','UNITED STATES'),
	(3,'bbeachy@camoh.org','Benjamin - TEST','Beachy - TEST','PO Box 360','','Berlin','OH','44610',11,1,NULL,'2011-09-28 15:48:51','2011-09-28 15:48:51','UNITED STATES');

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table content_holders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `content_holders`;

CREATE TABLE `content_holders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_content_holders_on_id` (`id`),
  KEY `index_content_holders_on_title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `content_holders` WRITE;
/*!40000 ALTER TABLE `content_holders` DISABLE KEYS */;

INSERT INTO `content_holders` (`id`, `title`, `body`, `position`, `created_at`, `updated_at`)
VALUES
	(1,'Header (do not remove)','<div id=\"placesocial\">\r\n        <a href=\"/contacts/newsletter_signup\"><img src=\"/images/btn_newsletter.gif\" /></a> \r\n        <a href=\"/donate\"><img src=\"/images/btn_make_a_donation.gif\" /></a>\r\n</div>\r\n<div id=\"placemainmenu\">\r\n        <div id=\"placemainmenu\">\r\n                <ul id=\"mainmenu\">\r\n                        <li>\r\n                                <a href=\"/\">Home</a>\r\n                        </li>\r\n                        <li>\r\n                                <a href=\"/programs\">Our Programs</a>\r\n                        </li>\r\n                        <li>\r\n                                <a href=\"/news\">News</a>\r\n                                <ul>\r\n                                        <li>\r\n                                                <a href=\"/news/releases\">News Releases</a>\r\n                                        </li>\r\n                                        <li>\r\n                                                <a href=\"/news/newsletters\">CAM Newsletters</a>\r\n                                        </li>\r\n                                </ul>\r\n                        </li>\r\n                        <li>\r\n                                <a href=\"/donate\">Donate</a>\r\n                        </li>\r\n                        <li>\r\n                                <a href=\"/about-cam/who-we-are\">About Us</a>\r\n                                <ul>\r\n                                        <li>\r\n                                                <a href=\"/about-cam/who-we-are\">Who we are</a>\r\n                                        </li>\r\n                                        <li>\r\n                                                <a href=\"/about-cam/locations\">Locations</a>\r\n                                        </li>\r\n                                        <li>        <a href=\"/about-cam/financial-accountability\">Financial Accountability</a>\r\n                                                <ul>\r\n                                                        <li>\r\n                                                                <a href=\"/about-cam/financial-accountability/financial-statements\">Financial Statements</a>\r\n                                                        </li>\r\n                                                </ul>\r\n                                        </li>\r\n                                        <li>\r\n                                                <a href=\"/about-cam/statement-of-faith\">Statement of Faith</a>\r\n                                        </li>\r\n                                        <li>\r\n                                                <a href=\"/about-cam/biblical-stewardship-services\">Biblical Stewardship Services</a>\r\n                                        </li>\r\n                                        <li>\r\n                                                <a href=\"/about-cam/tgs-international\">TGS International</a>\r\n                                        </li>\r\n                                </ul>\r\n                        </li>\r\n                        <li>\r\n                                <a href=\"/contacts/new\">Contact Us</a>\r\n                        </li>\r\n                        <div>\r\n                                <form id=\"frmsearch\" accept-charset=\"UTF-8\" action=\"/search\" method=\"post\">\r\n                                        <input name=\"utf8\" value=\"?\" type=\"hidden\" />\r\n                                        <input name=\"authenticity_token\" value=\"Vz1EFjKUWJbBQx7qXoLHmhK6jfetnglnhcvOVhCunQw=\" type=\"hidden\" />\r\n                                        <input id=\"query\" name=\"query\" class=\"textboxsearch\" type=\"search\" />\r\n                                        <input class=\"submitsearch\" name=\"commit\" value=\"Search!\" type=\"submit\" />\r\n                                </form>\r\n                        </div>\r\n                </ul>\r\n        </div>\r\n</div>\r\n',0,'2011-08-11 20:26:55','2011-09-12 15:49:02'),
	(2,'Footer (do not remove)','		<p><a href=\"/site-map\">site map</a> |\r\n			<a href=\"/contacts/new\">contact</a> |\r\n			<a href=\"/privacy-policy\">privacy policy</a>\r\n		</p>\r\n	<p>\r\n	  &lt;%= t(\'.copyright\', :year =&gt; Time.now.year,\r\n	                      :site_name =&gt; RefinerySetting.find_or_set(:site_name, \"Company Name\")) %&gt;\r\n	</p>',0,'2011-08-11 19:30:57','2011-09-30 13:15:52'),
	(5,'RRT Sidebar','<div class=\"boxnav\">\r\n<h3>Rapid Response Team</h3>\r\n<p>Currently we are looking for volunteers in the PA area to help clean up flooded houses from Hurricane Irene. If you\'d like to volunteer or schedule a volunteer group, please contact <em>Susan</em> at 330-893-2428. </p>\r\n</div>',0,'2011-08-09 15:38:17','2011-09-02 19:37:29'),
	(6,'attention_farmers','<div class=\"boxnav\">\r\n								<h3>Attention farmers!</h3>\r\n<p>Did you know you could make tax-deductible donations of grain or other commodities to Christian Aid Ministries? We can arrange for your grain donation to be received by the local mill or grain elevator of your choice. For more information, call the CAM office<strong> (330-893-2428)</strong> and ask for <em>Paul A. Miller </em>or <em>Eli Weaver</em>.</p>\r\n<div class=\"clear\"></div>\r\n							</div>',1,'2011-08-09 15:38:43','2011-09-09 19:11:17'),
	(8,'homepage_sidebar','<p>&#160;{{ content_holder_82 }} {{ content_holder_6 }} {{ content_holder_84 }}</p>',3,'2011-08-09 15:40:37','2011-09-19 15:16:55'),
	(9,'Open House','<div class=\"boxnav\">\r\n<h3>Annual CAM Open House</h3>\r\n\r\n<p><strong>When:</strong> November 4-5, 2011<strong><br />Where:</strong> CAM warehouse 2412 Division Highway Ephrata, PA 17522 Phone: 717-354-2434</p>\r\n<p>We invite you to join us at the 2011 annual CAM Open House. This year it will again be held at the CAM warehouse in Ephrata, Pennsylvania.<br />Open House includes a two-hour slide presentation on Friday and Saturday evening (same slides both evenings), reports from a number of overseas field staff, self-guided tours of the CAM warehouse, and a Biblical Stewardship seminar on Saturday morning. <br />A large display of Christian books and CDs will be available for purchase at special Open House prices Friday evening through Saturday evening.</p>\r\n<h3>We hope to see you there!</h3>\r\n</div>',4,'2011-08-11 18:53:18','2011-09-06 12:52:45'),
	(10,'Donation Complete Thank You Page ( DO NOT REMOVE )','<h1>Thank you for your Donation!</h1>\r\n<p>With your continued support, we can continue to offer our assistance around the world.&#160; Please check your email for your transaction information and receipt.</p>\r\n<br />',NULL,'2011-09-07 21:28:59','2011-09-07 21:29:31'),
	(11,'Programs Listing','<div class=\"boxnav\">\r\n<h1>Other Programs</h1>\r\n    <ul id=\"donations\">\r\n        <li>\r\n          <a href=\"/donations/5\">Bibles-for-the-World</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/6\">Billboard Evangelism</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/3\">Christian Family Magazines</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/7\">Christian Martyrs Fund</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/8\">Church Planning Projects</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/9\">Clothing Bundle Project</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/10\">Conservative Anabaptist Service Program (CASP)</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/11\">Disaster Response Services / Rapid Response Team</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/12\">Family Self-Support</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/13\">Gifts That Grow</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/4\">Haiti Sponsor-A-Child School Program</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/14\">Help for the Elderly</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/15\">International Crisis</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/2\">International Feed A Family</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/17\">International Sponsor-A-Student</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/18\">Jericho Road Ministries</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/19\">Medicines for Multitudes</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/20\">Milk for Many Mouths</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/21\">Nicaragua-Adopt-A-Family</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/22\">SALT Microfinance Program</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/23\">Save-A-Life!</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/24\">Seed Project</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/25\">Sewing Center</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/1\">Support An Orphan</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/26\">Special Needs Fund</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/27\">Strong Tower Children\'s Home</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/28\">Support A Widow</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/29\">Warm a Family</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"/donations/30\">Water for the World</a>\r\n        </li>\r\n    </ul>\r\n</div>',5,'2011-08-11 21:30:27','2011-08-18 15:00:05'),
	(12,'Newsletter Signup Header ( do not remove )','<h1>Signup for our Newsletter!</h1>\r\n<p>Please note this newsletter is a printed newsletter, and will be mailed to your mailbox.</p>\r\n',NULL,'2011-08-30 16:13:49','2011-09-30 13:27:07'),
	(13,'Contact Us Complete ( do not remove )','<h1>Thanks for contacting us!</h1>\r\n<p>We\'ll look into your matter shortly.</p>',NULL,'2011-08-30 16:37:24','2011-08-30 17:13:09'),
	(14,'Newsletter Signup Complete ( do not remove )','<h1>Thanks!</h1>\r\n<p>Please check your mailbox over the next few weeks for your first Christian Aid Ministries Newsletter!</p>',NULL,'2011-08-30 17:07:36','2011-09-30 13:24:39'),
	(15,'Donate Page Right Box ( do not remove )','<p>{{ donate_form_33 <img class=\"add-caption\" rel=\"225x255\" alt=\"Where Needed Most\" title=\"Where Needed Most\" src=\"/system/images/BAhbBlsHOgZmSSIyMjAxMS8wOS8yMi8xNF8wMF80MV81Mzdfd2hlcmVfbmVlZGVkX21vc3QuanBnBjoGRVQ/where_needed_most.jpg\" height=\"300\" width=\"300\" /> }}</p>',NULL,'2011-09-12 15:33:34','2011-09-22 18:01:31'),
	(77,'Footer Column 1 (do not remove)','<h4>Site Features</h4>\r\n		<ul class=\"menufooter\">\r\n			<li><a href=\"/about-cam/who-we-are\">About Us</a>\r\n</li>\r\n                        <li><a href=\"/about-cam/statement-of-faith\">Statement of Faith</a>\r\n</li>\r\n			\r\n			<li><a target=\"_blank\" title=\"2010 Annual Report\" href=\"/system/resources/2011/09/29/11_28_08_653_2010_AR_sm.pdf?iframe=true&amp;width=800&amp;height=1000\">Annual Report</a>\r\n</li>\r\n                       <li><a href=\"/about-cam/tgs-international\">TGS International</a>\r\n</li>\r\n		</ul>',0,'2011-08-11 19:30:57','2011-09-29 17:09:27'),
	(78,'Footer Column 2 (do not remove)','		<h4>Ways to Donate</h4>\r\n		<ul class=\"menufooter\">\r\n			<li><a href=\"/programs#category-6\">Bible &amp; Literature Distribution</a>\r\n</li>\r\n			<li><a href=\"/programs#category-4\">Crisis Projects &amp; Disaster Relief</a>\r\n</li>\r\n			<li><a href=\"/programs/8\">Church Planting</a>\r\n</li>\r\n			<li><a href=\"/about-cam/biblical-stewardship-services\">Biblical Stewardship Services</a>\r\n</li>\r\n		</ul>',0,'2011-08-11 19:30:57','2011-09-29 17:02:14'),
	(79,'Footer Column 3 (do not remove)','		<h4>Latest News</h4>\r\n		<ul class=\"menufooter\">\r\n<li>                   <a href=\"/news/light-and-truth-in-monrovia%E2%80%99s-prison-halls\">Light and Truth in Prison Halls</a>\r\n</li>\r\n			<li><a href=\"/news/a-ray-of-hope-in-their-final-years\">A Ray of Hope in Their Final Years</a>\r\n</li>\r\n			<li><a href=\"/news/from-starving-to-satisfied\">From Starving to Satisfied</a>\r\n</li>\r\n			<li><a href=\"/news/my-mother-does-not-know\">My Mother Does Not Know</a>\r\n</li>		\r\n\r\n</ul>',0,'2011-08-11 19:30:57','2011-09-29 17:08:35'),
	(80,'Footer Column 4 (do not remove)','		<h4>Christian Aid Ministries</h4>\n		<p>PO BOX 360<br />\n			Berlin, OH  44610\n		</p>\n		<br />\n		<p>\n		T: 330.893.2428<br />\n		F: 330.893.2305 <br />\n		E: <a href=\"mailto:&#x63;&#x61;&#x6D;&#x40;&#x63;&#x61;&#x6D;&#x6F;&#x68;&#x2E;&#x6F;&#x72;&#x67;\">cam@camoh.org</a><br />\n		</p>',0,'2011-08-11 19:30:57','2011-08-11 19:35:49'),
	(81,'Contact Us Message ( do not remove )','<h1>Send us a Message!</h1>\r\n<p>Hello friends!&#160; Using this form, you can submit inquiries, feedback, questions, or ask for prayer.&#160; We look forward to hearing from you!</p>',6,'2011-08-26 15:05:50','2011-09-30 13:28:02'),
	(82,'Image Banner top right','<p><a href=\"/programs/38\" title=\"Favorite Bible Stories\"><img rel=\"225x255\" alt=\"101 Favorite Bible Stories\" title=\"101 Favorite Bible Stories\" src=\"/system/images/BAhbBlsHOgZmSSI7MjAxMS8wOS8wMi8xNl8wMF8yM18yMjFfMTAxX0Zhdm9yaXRlX0JpYmxlX1N0b3JpZXMuanBnBjoGRVQ/101_Favorite_Bible_Stories.jpg\" height=\"215\" width=\"290\" /></a>\r\n</p>',7,'2011-08-26 19:25:25','2011-09-02 20:03:10'),
	(83,'Homepage Slider','<p>\r\n<img src=\"/system/images/BAhbBlsHOgZmSSImMjAxMS8wOC8yNi8xNV80MV8xNF8xMjZfc2FsYWQuanBnBjoGRVQ/salad.jpg\" height=\"204\" width=\"613\" />\r\n<a href=\"/programs/13\" title=\"Gifts-That-Grow\"><img src=\"/system/images/BAhbBlsHOgZmSSIqMjAxMS8wOS8wNy8xNV8zNV81M181MDNfU2xpZGVzaG93LmpwZwY6BkVU/Slideshow.jpg\" height=\"204\" width=\"613\" /></a>\r\n<a href=\"/programs/1\" title=\"Sponsor-An-Orphan\"><img src=\"/system/images/BAhbBlsHOgZmSSIuMjAxMS8wOS8wNy8xNV8zN18zMF83ODJfc2FvX3NsaWRlc2hvdy5qcGcGOgZFVA/sao_slideshow.jpg\" height=\"204\" width=\"613\" /></a>\r\n<a href=\"/programs/32\" title=\"Haiti-Sponsor-A-Child\"><img src=\"/system/images/BAhbBlsHOgZmSSIuMjAxMS8wOS8wOC8xM18xNF80MV85N19oc2FjX3NsaWRlc2hvdy5qcGcGOgZFVA/hsac_slideshow.jpg\" height=\"204\" width=\"613\" /></a>\r\n</p>',8,'2011-08-26 19:41:38','2011-09-19 19:29:47'),
	(84,'Open House gfx','<p><img alt=\"Open House\" title=\"Open House\" src=\"/system/images/BAhbBlsHOgZmSSIrMjAxMS8wOS8wNy8wOV8zM18wNV84NDFfb3Blbl9ob3VzZS5qcGcGOgZFVA/open_house.jpg\" height=\"357\" width=\"290\" /></p>',9,'2011-09-07 13:33:28','2011-09-07 13:33:28'),
	(85,'CAM slides & update','<div class=\"boxnav\">\r\n<h3>CAM slides &amp; update</h3>\r\n<p style=\"font-style: italic;\">The following meetings will include slides on the work of CAM and an update shared by staff member Jon Stoltzfus.</p>\r\n<p><strong>September 28</strong>Bastrop, TX - <strong>7:00 p.m.</strong> <br /><em>Grace Mennonite Fellowship</em> - Phone: 512-332-6260<br /><strong>September 30</strong>Lott, TX - <strong>7:00 p.m.</strong> <br /><em>Faith Mennonite Fellowship</em> - Phone: 254-709-3326<br /><strong>October 1</strong>Perkins, OK - <strong>7:00 p.m. </strong>\r\n<br /><em>Oak Park Retreat Center</em> - Phone: 405-743-9312<br /><strong>October 2</strong>Seminole, TX - <strong>7:00 p.m.</strong> <br /><em>Faith Christian Fellowship</em> - Phone: 432-209-5782<br /><strong>October 3</strong>Paden, OK - <strong>7:30 p.m.</strong> <br /><em>First Baptist Church</em> - Phone: 405-659-7230<br /><strong>October 4</strong>Clarksville, AR - <strong>7:00 p.m.</strong> <br /><em>Harmony Amish Mennonite Church</em> - Phone: 479-518-8724<br /><strong>October 5</strong>Nashville, AR - <strong>7:00 p.m.</strong> <br /><em>Nashville Christian Day School</em> - Phone: 870-845-5816<br /><strong>October 6</strong>Fairland, OK - <strong>7:30 p.m.</strong>\r\n<br /><em>Grand Lake Mennonite</em> - Phone: 918-232-2586</p>\r\n</div>',10,'2011-09-07 17:13:53','2011-09-07 17:21:14'),
	(86,'entire_sidebar','<p>&#160; {{ content_holder_82 }}{{ content_holder_6 }}{{ content_holder_84 }}{{ content_holder_85 }}</p>',11,'2011-09-07 17:15:30','2011-09-23 15:22:09'),
	(87,'Biblical Stewardship','<div class=\"boxnav\">\r\n<h3>Biblical Stewardship Seminars</h3>\r\n<p style=\"font-style: italic;\">\r\nSpeaker: Jon Stoltzfus</p>\r\n<p><strong>September 23</strong>Quarryville, PA <br /><em>Solanco Fairgrounds Senior Center Building </em>\r\n<br /><strong>8:00 a.m.</strong> - Phone: 717-354-8508<br /><strong>September 29</strong>Osceola, TX  <br /><em>Osceola Christian Fellowship</em> <br /><strong>6:30 p.m.</strong> - Phone: 254-337-0234<br /><em>There will be thirty minutes of CAM slides before the seminar begins. Slides start at 6:30 p.m.</em>\r\n<br /><strong>October 1</strong>Lott, TX <br /><em>Faith Mennonite Fellowship </em>\r\n<br /><strong>8:00 a.m.</strong> - Phone: 254-709-3326<br /><strong>October 3</strong>Paden, OK<br /><em>First Baptist Church  </em>\r\n<br /><strong>4:00 p.m.</strong> - Phone: 405-659-7230<br /><strong>October 5</strong>Nashville, AR <br /><em>Nashville Christian Day School</em>\r\n<br /><strong>3:00 p.m.</strong> - Phone 870-845-5816</p>\r\n</div>',12,'2011-09-07 17:30:13','2011-09-07 17:30:13');

/*!40000 ALTER TABLE `content_holders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_countries_on_country_code` (`country_code`),
  KEY `index_countries_on_country_name` (`country_name`),
  KEY `index_countries_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`, `position`)
VALUES
	(1,'AE','United Arab Emirates',NULL,NULL,0),
	(3,'AG','Antigua and Barbuda',NULL,NULL,0),
	(4,'AI','Anguilla',NULL,NULL,0),
	(5,'AL','Albania',NULL,NULL,0),
	(6,'AM','Armenia',NULL,NULL,0),
	(7,'AO','Angola',NULL,NULL,0),
	(8,'AQ','Antarctica',NULL,NULL,0),
	(9,'AR','Argentina',NULL,NULL,0),
	(10,'AS','American Samoa',NULL,NULL,0),
	(11,'AT','Austria',NULL,NULL,0),
	(12,'AU','Australia',NULL,NULL,0),
	(13,'AW','Aruba',NULL,NULL,0),
	(14,'AX','Aland Islands',NULL,NULL,0),
	(15,'AZ','Azerbaijan',NULL,NULL,0),
	(16,'BA','Bosnia and Herzegovina',NULL,NULL,0),
	(17,'BB','Barbados',NULL,NULL,0),
	(18,'BD','Bangladesh',NULL,NULL,0),
	(19,'BE','Belgium',NULL,NULL,0),
	(20,'BF','Burkina Faso',NULL,NULL,0),
	(21,'BG','Bulgaria',NULL,NULL,0),
	(22,'BH','Bahrain',NULL,NULL,0),
	(23,'BI','Burundi',NULL,NULL,0),
	(24,'BJ','Benin',NULL,NULL,0),
	(25,'BL','Saint Barth?emy',NULL,NULL,0),
	(26,'BM','Bermuda',NULL,NULL,0),
	(27,'BN','Brunei Darussalam',NULL,NULL,0),
	(28,'BO','Bolivia, Plurinational State of',NULL,NULL,0),
	(29,'BQ','Bonaire, Sint Eustatius and Saba',NULL,NULL,0),
	(30,'BR','Brazil',NULL,NULL,0),
	(31,'BS','Bahamas',NULL,NULL,0),
	(32,'BT','Bhutan',NULL,NULL,0),
	(33,'BV','Bouvet Island',NULL,NULL,0),
	(34,'BW','Botswana',NULL,NULL,0),
	(35,'BY','Belarus',NULL,NULL,0),
	(36,'BZ','Belize',NULL,NULL,0),
	(37,'CA','Canada',NULL,NULL,0),
	(38,'CC','Cocos (Keeling) Islands',NULL,NULL,0),
	(39,'CD','Congo, the Democratic Republic of the',NULL,NULL,0),
	(40,'CF','Central African Republic',NULL,NULL,0),
	(41,'CG','Congo',NULL,NULL,0),
	(42,'CH','Switzerland',NULL,NULL,0),
	(43,'CI','C?e d\'Ivoire',NULL,NULL,0),
	(44,'CK','Cook Islands',NULL,NULL,0),
	(45,'CL','Chile',NULL,NULL,0),
	(46,'CM','Cameroon',NULL,NULL,0),
	(47,'CN','China',NULL,NULL,0),
	(48,'CO','Colombia',NULL,NULL,0),
	(49,'CR','Costa Rica',NULL,NULL,0),
	(50,'CU','Cuba',NULL,NULL,0),
	(51,'CV','Cape Verde',NULL,NULL,0),
	(52,'CW','Cura?o',NULL,NULL,0),
	(53,'CX','Christmas Island',NULL,NULL,0),
	(54,'CY','Cyprus',NULL,NULL,0),
	(55,'CZ','Czech Republic',NULL,NULL,0),
	(56,'DE','Germany',NULL,NULL,0),
	(57,'DJ','Djibouti',NULL,NULL,0),
	(58,'DK','Denmark',NULL,NULL,0),
	(59,'DM','Dominica',NULL,NULL,0),
	(60,'DO','Dominican Republic',NULL,NULL,0),
	(62,'EC','Ecuador',NULL,NULL,0),
	(63,'EE','Estonia',NULL,NULL,0),
	(64,'EG','Egypt',NULL,NULL,0),
	(65,'EH','Western Sahara',NULL,NULL,0),
	(66,'ER','Eritrea',NULL,NULL,0),
	(67,'ES','Spain',NULL,NULL,0),
	(68,'ET','Ethiopia',NULL,NULL,0),
	(69,'FI','Finland',NULL,NULL,0),
	(70,'FJ','Fiji',NULL,NULL,0),
	(71,'FK','Falkland Islands (Malvinas)',NULL,NULL,0),
	(72,'FM','Micronesia, Federated States of',NULL,NULL,0),
	(73,'FO','Faroe Islands',NULL,NULL,0),
	(74,'FR','France',NULL,NULL,0),
	(75,'GA','Gabon',NULL,NULL,0),
	(76,'GB','United Kingdom',NULL,NULL,0),
	(77,'GD','Grenada',NULL,NULL,0),
	(78,'GE','Georgia',NULL,NULL,0),
	(79,'GF','French Guiana',NULL,NULL,0),
	(80,'GG','Guernsey',NULL,NULL,0),
	(81,'GH','Ghana',NULL,NULL,0),
	(82,'GI','Gibraltar',NULL,NULL,0),
	(83,'GL','Greenland',NULL,NULL,0),
	(84,'GM','Gambia',NULL,NULL,0),
	(85,'GN','Guinea',NULL,NULL,0),
	(86,'GP','Guadeloupe',NULL,NULL,0),
	(87,'GQ','Equatorial Guinea',NULL,NULL,0),
	(88,'GR','Greece',NULL,NULL,0),
	(89,'GS','South Georgia and the South Sandwich Islands',NULL,NULL,0),
	(90,'GT','Guatemala',NULL,NULL,0),
	(91,'GU','Guam',NULL,NULL,0),
	(92,'GW','Guinea-Bissau',NULL,NULL,0),
	(93,'GY','Guyana',NULL,NULL,0),
	(94,'HK','Hong Kong',NULL,NULL,0),
	(95,'HM','Heard Island and McDonald Islands',NULL,NULL,0),
	(96,'HN','Honduras',NULL,NULL,0),
	(97,'HR','Croatia',NULL,NULL,0),
	(98,'HT','Haiti',NULL,NULL,0),
	(99,'HU','Hungary',NULL,NULL,0),
	(100,'ID','Indonesia',NULL,NULL,0),
	(101,'IE','Ireland',NULL,NULL,0),
	(102,'IL','Israel',NULL,NULL,0),
	(103,'IM','Isle of Man',NULL,NULL,0),
	(104,'IN','India',NULL,NULL,0),
	(105,'IO','British Indian Ocean Territory',NULL,NULL,0),
	(106,'IQ','Iraq',NULL,NULL,0),
	(107,'IR','Iran, Islamic Republic of',NULL,NULL,0),
	(108,'IS','Iceland',NULL,NULL,0),
	(109,'IT','Italy',NULL,NULL,0),
	(110,'JE','Jersey',NULL,NULL,0),
	(111,'JM','Jamaica',NULL,NULL,0),
	(112,'JO','Jordan',NULL,NULL,0),
	(113,'JP','Japan',NULL,NULL,0),
	(114,'KE','Kenya',NULL,NULL,0),
	(115,'KG','Kyrgyzstan',NULL,NULL,0),
	(116,'KH','Cambodia',NULL,NULL,0),
	(117,'KI','Kiribati',NULL,NULL,0),
	(118,'KM','Comoros',NULL,NULL,0),
	(119,'KN','Saint Kitts and Nevis',NULL,NULL,0),
	(120,'KP','Korea, Democratic People\'s Republic of',NULL,NULL,0),
	(121,'KR','Korea, Republic of',NULL,NULL,0),
	(122,'KW','Kuwait',NULL,NULL,0),
	(123,'KY','Cayman Islands',NULL,NULL,0),
	(124,'KZ','Kazakhstan',NULL,NULL,0),
	(125,'LA','Lao People\'s Democratic Republic',NULL,NULL,0),
	(126,'LB','Lebanon',NULL,NULL,0),
	(127,'LC','Saint Lucia',NULL,NULL,0),
	(128,'LI','Liechtenstein',NULL,NULL,0),
	(129,'LK','Sri Lanka',NULL,NULL,0),
	(130,'LR','Liberia',NULL,NULL,0),
	(131,'LS','Lesotho',NULL,NULL,0),
	(132,'LT','Lithuania',NULL,NULL,0),
	(133,'LU','Luxembourg',NULL,NULL,0),
	(134,'LV','Latvia',NULL,NULL,0),
	(135,'LY','Libyan Arab Jamahiriya',NULL,NULL,0),
	(136,'MA','Morocco',NULL,NULL,0),
	(137,'MC','Monaco',NULL,NULL,0),
	(138,'MD','Moldova, Republic of',NULL,NULL,0),
	(139,'ME','Montenegro',NULL,NULL,0),
	(140,'MF','Saint Martin (French part)',NULL,NULL,0),
	(141,'MG','Madagascar',NULL,NULL,0),
	(142,'MH','Marshall Islands',NULL,NULL,0),
	(143,'MK','Macedonia, the former Yugoslav Republic of',NULL,NULL,0),
	(144,'ML','Mali',NULL,NULL,0),
	(145,'MM','Myanmar',NULL,NULL,0),
	(146,'MN','Mongolia',NULL,NULL,0),
	(147,'MO','Macao',NULL,NULL,0),
	(148,'MP','Northern Mariana Islands',NULL,NULL,0),
	(149,'MQ','Martinique',NULL,NULL,0),
	(150,'MR','Mauritania',NULL,NULL,0),
	(151,'MS','Montserrat',NULL,NULL,0),
	(152,'MT','Malta',NULL,NULL,0),
	(153,'MU','Mauritius',NULL,NULL,0),
	(154,'MV','Maldives',NULL,NULL,0),
	(155,'MW','Malawi',NULL,NULL,0),
	(156,'MX','Mexico',NULL,NULL,0),
	(157,'MY','Malaysia',NULL,NULL,0),
	(158,'MZ','Mozambique',NULL,NULL,0),
	(159,'NA','Namibia',NULL,NULL,0),
	(160,'NC','New Caledonia',NULL,NULL,0),
	(161,'NE','Niger',NULL,NULL,0),
	(162,'NF','Norfolk Island',NULL,NULL,0),
	(163,'NG','Nigeria',NULL,NULL,0),
	(164,'NI','Nicaragua',NULL,NULL,0),
	(165,'NL','Netherlands',NULL,NULL,0),
	(166,'NO','Norway',NULL,NULL,0),
	(167,'NP','Nepal',NULL,NULL,0),
	(168,'NR','Nauru',NULL,NULL,0),
	(169,'NU','Niue',NULL,NULL,0),
	(170,'NZ','New Zealand',NULL,NULL,0),
	(171,'OM','Oman',NULL,NULL,0),
	(172,'PA','Panama',NULL,NULL,0),
	(173,'PE','Peru',NULL,NULL,0),
	(174,'PF','French Polynesia',NULL,NULL,0),
	(175,'PG','Papua New Guinea',NULL,NULL,0),
	(176,'PH','Philippines',NULL,NULL,0),
	(177,'PK','Pakistan',NULL,NULL,0),
	(178,'PL','Poland',NULL,NULL,0),
	(179,'PM','Saint Pierre and Miquelon',NULL,NULL,0),
	(180,'PN','Pitcairn',NULL,NULL,0),
	(181,'PR','Puerto Rico',NULL,NULL,0),
	(182,'PS','Palestinian Territory, Occupied',NULL,NULL,0),
	(183,'PT','Portugal',NULL,NULL,0),
	(184,'PW','Palau',NULL,NULL,0),
	(185,'PY','Paraguay',NULL,NULL,0),
	(186,'QA','Qatar',NULL,NULL,0),
	(187,'RE','R?nion',NULL,NULL,0),
	(188,'RO','Romania',NULL,NULL,0),
	(189,'RS','Serbia',NULL,NULL,0),
	(190,'RU','Russian Federation',NULL,NULL,0),
	(191,'RW','Rwanda',NULL,NULL,0),
	(192,'SA','Saudi Arabia',NULL,NULL,0),
	(193,'SB','Solomon Islands',NULL,NULL,0),
	(194,'SC','Seychelles',NULL,NULL,0),
	(195,'SD','Sudan',NULL,NULL,0),
	(196,'SE','Sweden',NULL,NULL,0),
	(197,'SG','Singapore',NULL,NULL,0),
	(198,'SH','Saint Helena, Ascension and Tristan da Cunha',NULL,NULL,0),
	(199,'SI','Slovenia',NULL,NULL,0),
	(200,'SJ','Svalbard and Jan Mayen',NULL,NULL,0),
	(201,'SK','Slovakia',NULL,NULL,0),
	(202,'SL','Sierra Leone',NULL,NULL,0),
	(203,'SM','San Marino',NULL,NULL,0),
	(204,'SN','Senegal',NULL,NULL,0),
	(205,'SO','Somalia',NULL,NULL,0),
	(206,'SR','Suriname',NULL,NULL,0),
	(207,'SS','South Sudan',NULL,NULL,0),
	(208,'ST','Sao Tome and Principe',NULL,NULL,0),
	(209,'SV','El Salvador',NULL,NULL,0),
	(210,'SX','Sint Maarten (Dutch part)',NULL,NULL,0),
	(211,'SY','Syrian Arab Republic',NULL,NULL,0),
	(212,'SZ','Swaziland',NULL,NULL,0),
	(213,'TC','Turks and Caicos Islands',NULL,NULL,0),
	(214,'TD','Chad',NULL,NULL,0),
	(215,'TF','French Southern Territories',NULL,NULL,0),
	(216,'TG','Togo',NULL,NULL,0),
	(217,'TH','Thailand',NULL,NULL,0),
	(218,'TJ','Tajikistan',NULL,NULL,0),
	(219,'TK','Tokelau',NULL,NULL,0),
	(220,'TL','Timor-Leste',NULL,NULL,0),
	(221,'TM','Turkmenistan',NULL,NULL,0),
	(222,'TN','Tunisia',NULL,NULL,0),
	(223,'TO','Tonga',NULL,NULL,0),
	(224,'TR','Turkey',NULL,NULL,0),
	(225,'TT','Trinidad and Tobago',NULL,NULL,0),
	(226,'TV','Tuvalu',NULL,NULL,0),
	(227,'TW','Taiwan, Province of China',NULL,NULL,0),
	(228,'TZ','Tanzania, United Republic of',NULL,NULL,0),
	(229,'UA','Ukraine',NULL,NULL,0),
	(230,'UG','Uganda',NULL,NULL,0),
	(231,'UM','United States Minor Outlying Islands',NULL,NULL,1),
	(232,'US','United States',NULL,'2011-09-30 20:22:32',2),
	(233,'UY','Uruguay',NULL,NULL,0),
	(234,'UZ','Uzbekistan',NULL,NULL,0),
	(235,'VA','Holy See (Vatican City State)',NULL,NULL,0),
	(236,'VC','Saint Vincent and the Grenadines',NULL,NULL,0),
	(237,'VE','Venezuela, Bolivarian Republic of',NULL,NULL,0),
	(238,'VG','Virgin Islands, British',NULL,NULL,0),
	(239,'VI','Virgin Islands, U.S.',NULL,NULL,0),
	(240,'VN','Viet Nam',NULL,NULL,0),
	(241,'VU','Vanuatu',NULL,NULL,0),
	(242,'WF','Wallis and Futuna',NULL,NULL,0),
	(243,'WS','Samoa',NULL,NULL,0),
	(244,'YE','Yemen',NULL,NULL,0),
	(245,'YT','Mayotte',NULL,NULL,0),
	(246,'ZA','South Africa',NULL,NULL,0),
	(247,'ZM','Zambia',NULL,NULL,0),
	(248,'ZW','Zimbabwe',NULL,NULL,0),
	(250,'AF','Afghanistan','2011-09-30 20:29:32','2011-09-30 20:29:32',0);

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table donations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `donations`;

CREATE TABLE `donations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `donation_name` varchar(255) DEFAULT NULL,
  `donation_short_description` text,
  `donation_description` text,
  `donation_image_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `suggested_amounts` text,
  `subtitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_donations_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;

INSERT INTO `donations` (`id`, `donation_name`, `donation_short_description`, `donation_description`, `donation_image_id`, `position`, `created_at`, `updated_at`, `suggested_amounts`, `subtitle`)
VALUES
	(1,'Support An Orphan','<p>YES, I intend to give <strong>monthly</strong> donations for the Support-an-Orphan program as follows:</p>\r\n<p>\r\n<img src=\"http://tgsinternational.com/images/homepage_big_pic.jpg\" title=\"image\" />\r\n</p>\r\n<p>\r\n<img src=\"http://tgsinternational.com/images/about_cam.jpg\" title=\"newimage\" width=\"400px\" />\r\n</p>\r\n<iframe marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=harrisonburg,+VA&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=55.543096,79.013672&amp;ie=UTF8&amp;hq=&amp;hnear=Harrisonburg,+Virginia&amp;z=13&amp;ll=38.449569,-78.868916&amp;output=embed\" frameborder=\"0\" height=\"350\" scrolling=\"no\" width=\"425\"></iframe>\r\n<br /><small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=harrisonburg,+VA&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=55.543096,79.013672&amp;ie=UTF8&amp;hq=&amp;hnear=Harrisonburg,+Virginia&amp;z=13&amp;ll=38.449569,-78.868916\" style=\"color:#0000FF;text-align:left\">View Larger Map</a>\r\n</small>\r\n','<p>NOTE: The Support-an-Orphan program covers food, clothing, medicines, and schooling costs for the children at the Strong Tower Children\'s Home in El Salvador. &#160;You will receive a photo and information about the child you support.</p>',3,23,'2011-05-24 18:09:52','2011-08-12 17:31:45','250,500,1000,1600','El Salvador Children\'s Home'),
	(2,'International Feed A Family','<p>YES, I intend to sponsor poor families in Haiti, Liberia, and other countries. &#160;I understand that each <strong>monthly </strong>of $39 provides 35 pounds or more of food and healthcare items. &#160;In some countries, the dollar amount is higher than the weight.</p>','<p>NOTE: In some countries, the parcel weight and cost may vary from the indicated price.</p>',4,13,'2011-05-24 18:19:58','2011-08-12 17:31:20','39, 78,195','IFAF'),
	(3,'Christian Family Magazines','<p>YES, I would like to help share Biblical principles in countries where sound Bible teaching is scarce. &#160;<strong>Monthly</strong>&#160;gifts will help print, ship, and distribute the following magazines:</p>\r\n<ul><li><em>The Seed of Truth: </em>Printed in Romanian, Russian, Polish, and English. &#160;Compiled and edited by CAM.</li>\r\n<li><em>Antorcha de la Verdad </em>(Torch of Truth): Produced at Publicadora La Merced, a conservative Mennonite publishing house in Costa Rica. &#160;Printed in the Spanish, Mayangna, Quechua, and Haitian Creole languages.</li>\r\n</ul>','',NULL,2,'2011-05-24 18:24:31','2011-08-12 18:12:28','50, 100, 250','The Seed of Truth and Antorcha de la Verdad'),
	(4,'Haiti Sponsor-A-Child School Program','<p>Haiti?s government provides little free schooling, and many parents cannot afford sending their children to school. This program provides textbooks, school supplies, and a warm meal each school day for approximately 8,368 students at 46 schools in Haiti. For the teachers, it provides Biblical training and subsidized pay. $55 per month supports five students.</p>','<p>If you would visit a school in Haiti, you would find a classroom crowded to the seams and children noisily reciting their lessons. Their desks are rough, wooden benches with a narrow board for a desktop. Around midmorning, smoke rises from the cook shack where the cooks prepare rice and beans over an open fire. Some children have had little or nothing to eat before school and try to study on an empty stomach. Those who have a long walk to school might stay with relatives or a family near school, and then walk home for the weekend.</p>\r\n<p>CAM?s Haiti-Sponsor-A-Child School Program (HSAC), financed by caring donors, makes an important difference in the lives of Haitian children. The program provides a nutritious meal each school day as well as textbooks, tablets, pencils, chalk, and other school supplies. Teachers receive Bible-based training and subsidized pay. Upon completing third grade, each student receives a treasured copy of 101 Favorite Stories from the Bible, and sixth graders get a New Testament. </p>\r\n<p>Thousands not in school<br />In the Port-au-Prince area, many children faced displacement after the January 12, 2010, earthquake when they had to relocate to areas where schools had not been damaged. Going to a new school in the middle of a term can be very challenging?parents have to pay tuition all over again. Many children never finished the term and had to repeat the grade next year.</p>\r\n<p>Hundreds of other children in Haiti are unable to attend school. For some, their parents cannot afford to pay for the schooling. Others are orphaned with nobody to care for them or send them to school. Since the earthquake, Haiti has even more orphans. You may find these children on the street begging to wash your car or windshield or looking for any little job they can find to survive.</p>\r\n<p>Training teachers in Haiti<br />A large percentage of Haitian teachers receive almost no training. To help solve this problem, CAM holds annual Teachers Training Retreats. This provides a wonderful opportunity to teach academic and spiritual lessons urgently needed in Haiti?s society awash in spiritual darkness and moral weakness. </p>\r\n<p>Are these seminars making a difference for the teachers? Yes, says James Miller, HSAC administrator in Haiti. One of our national school inspectors told us those who come to the seminars are much sought-after teachers because of the training they receive. Some teachers who were not saved have become believers because of the retreats.</p>\r\n<p>Through the grace of God and the generous giving of His children, CAM is currently sponsoring 46 schools with approximately 8,000 students. Thank you, supporters, for sharing with the children in Haiti!</p>\r\n<p>Thousands of children are waiting to get on the HSAC program. Would you like to give them an opportunity in life by helping them go to school? </p>\r\n<p>If so, here are two ways you can be involved:</p>\r\n<p>Become a monthly sponsor</p>\r\n<p>Give a one-time donation by filling out the donation form below</p>',20,10,'2011-08-10 20:17:15','2011-08-11 17:17:18','$55,$110','Making a difference for 8,000 children in Haiti'),
	(5,'Bibles-for-the-World','<p>CAM?s main goal is to provide as many people as possible with the Word of God. The Bibles-for-the-World program translates, prints, and distributes Bibles, Bible story books, inspirational/teaching books, Christian family magazines, and Bible correspondence courses. The literature is distributed throughout China, Eastern Europe, Central America, Liberia, Haiti, the Middle East, and other parts of the world.</p>\r\n<h3>Bible story books needed around the world</h3>\r\n<p>Children in Myanmar (formerly Burma) intent on their 25 Favorite Stories from the Bible</p>\r\n<p>Our contact in Myanmar wrote, We have distributed Bible story books in children?s homes, education centers, and to various churches in Myanmar... The people are very happy to receive the books, because they need children and adult Sunday school materials in their churches. They want to receive more, but we don?t have enough copies . . . The field is ripe for harvest in Myanmar and we are ready to do the work and witness for Christ. </p>\r\n<p>CAM has translated, printed, and distributed 25 Favorite Stories from the Bible in approximately forty-four languages. This is possible through supporters? generous gifts to the Bibles-for-the-World program. Besides teaching children about God and the Bible, 25 Favorite Stories from the Bible also creates an interest in adults to read God?s Word. For those not literate enough to read the Bible, the book?s basic language and beautiful pictures help them comprehend the Biblical message.</p>\r\n<p>Would you like to help provide Bible story books, Bibles, and other Christian literature to people around the world?</p>\r\n<p>Here are two ways you can participate: </p>\r\n<p>Become a monthly sponsor</p>\r\n<p>Give a one-time donation by filling out the donation form below.</p>','',22,0,'2011-08-11 14:20:50','2011-08-11 15:11:57','20,40,60,80,100','Bringing God\'s word to the masses'),
	(6,'Billboard Evangelism','<p>CAM?s Billboard Evangelism (BBE) program helps point America to Christ by posting clear Gospel messages along interstates and major highways. &#160;It is estimated more than three million people drive past these messages each day.</p>','<p>This program uses billboards to point our own nation, America, to Christ. &#160;As of May 2011, CAM has a total of 105 Gospel messages in all 50 states. &#160;An estimated three million people view these boards every day. &#160;Each billboard has a toll-free number to give people an opportunity to talk with one of our six tele-counselors. &#160;The tele-counselors receive an average of 37 calls daily.</p>\r\n<p>Many people across America are confused about God and life; they don?t know what to believe or where to find help. Churches throughout our nation are rejecting the absolute authority of the Bible, and some Bible colleges teach students they can believe in evolution AND God. No wonder so many are confused. Where can these people turn for sound Biblical answers? </p>\r\n<p>CAM?s Billboard Evangelism (BBE) program helps point America to Christ by posting clear Gospel messages along interstates and major highways. Messages include: In the beginning, God created; After you die, you will meet God; Where are you going? Heaven or Hell?; The Holy Bible?Inspired. Absolute. Final., and others. Each billboard includes a toll-free number, which people can call 24 hours a day to speak with one of our tele-counselors (pastors/teachers who answer the calls). Thanks to your support, as of May 2011, Billboard Evangelism has a total of 105 Gospel messages in all 50 states. It is estimated more than three million people drive past these messages each day.</p>',23,1,'2011-08-11 14:44:04','2011-08-11 15:11:57','20,40,60,80,100','A Clear Gospel Message to America'),
	(7,'Christian Martyrs Fund','<p>The Christian Martyrs Fund sponsors approximately 629 pastors and Christian workers (and/or their families) who were crippled or disabled by their persecution experiences. This program provides funds for recipients to buy food, clothing, and other necessities.</p>','<p>Over the years, pastors and other Christian workers in China, the former Soviet Union, and the Middle East have faced tremendous persecution and strain. Some were martyred and others beaten to the point of physical and mental disabilities. Still others suffer poor health from the strain of secret Bible printing and other ?underground? work. Today these Christians find it extremely difficult to make a living.</p>\r\n<p>A letter from Grigorij and Sinaida Kostenko, Christian-Martyrs-Fund recipients in the Soviet Union</p>\r\n<p><em>Dear Friends,</em>\r\n</p><p><em>From our hearts, we greet you in the name of Jesus Christ! </em>\r\n</p><p><em>I was pleasantly surprised that you thought of me and this gift of love has been given to me. I am not worthy of such attention, but our communion through the blood of Jesus Christ which is more than physical has made you remember such a brother. Praise God, who has given us such love for each other. How can we repay? The Lord requires of us an honest service and a clean heart. May the Lord bless your efforts and reward you!</em>\r\n</p><p><em>In 2001 my wife died. For three years, I lived by myself. Then the Lord gave me a wife, Sinaida Tarasova (now she is Kostenko). She was in prison twice for the sake of Christ, because she worked with printing Christian literature.<br />Please take from us these words of thanks for your care and attention to our needs. ?The Lord bless thee and keep thee: The Lord make his face shine upon thee, and be gracious unto thee: The Lord lift up his countenance upon thee, and give thee peace.? Numbers 6: 24-26.</em>\r\n</p><p>~Grigorij and Sinaida Kostenko</p>\r\n<p><strong>Do you want to help encourage needy, disabled Christian workers and their families?</strong>\r\n</p>',NULL,3,'2011-08-11 15:00:12','2011-08-11 15:11:58','20,40,60,80,100','Helping those injured in the service of God'),
	(8,'Church Planning Projects','<p>When CAM establishes bases in other countries, we feel the need to have a church nearby that is in accordance with our beliefs and convictions. It benefits our field staff and opens spiritual opportunities in the community.</p>','		<p>\r\n			When CAM establishes bases in other countries, we feel the need to have a church nearby that is in accordance with our beliefs and convictions. It benefits our field staff and opens spiritual opportunities in the community. CAM financially supports these church-planting projects:\r\n		</p>\r\n<br />\r\n<hr />\r\n		<h3>La Source, Haiti</h3>\r\n		<table>\r\n			<tbody><tr>\r\n				<td><iframe width=\"300\" height=\"250\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=La+Source,+Haiti&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=67.169322,67.412109&amp;ie=UTF8&amp;hq=&amp;hnear=La+Source,+Nord-Ouest,+Haiti&amp;t=h&amp;z=14&amp;ll=19.876852,-73.187324&amp;output=embed\"></iframe>\r\n<br />\r\n				<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=La+Source,+Haiti&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=67.169322,67.412109&amp;ie=UTF8&amp;hq=&amp;hnear=La+Source,+Nord-Ouest,+Haiti&amp;t=h&amp;z=14&amp;ll=19.876852,-73.187324\" style=\"color:#0000FF;text-align:left\">View Larger Map</a>\r\n</small>\r\n</td>\r\n				<td><p>The church at La Source was officially established in January 1997. Salem Amish Mennonite church in Bakersville, Ohio, oversees this work. Matthew Morhart pastors the church, which now has 33 national members.</p>\r\n</td>\r\n			</tr>\r\n		</tbody>\r\n</table>\r\n		<hr />\r\n		<h3>Suceava, Romania</h3>\r\n		<table>\r\n			<tbody><tr>\r\n				<td><p>Established on CAM?s orphanage compound in August 1996, the Nathaniel Christian church has 42 members (including CAM?s American staff). The church reaches out to the community through summer Bible school and home Bible studies, disciples new converts, translates Sunday school materials, packages and mails Seed of Truth magazines, and other projects. David Raber is the bishop.</p>\r\n</td>\r\n				<td><iframe width=\"300\" height=\"250\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Suceava,+Romania&amp;aq=&amp;sll=19.876852,-73.187324&amp;sspn=0.079749,0.065832&amp;ie=UTF8&amp;hq=&amp;hnear=Suceava,+Romania&amp;t=h&amp;z=13&amp;ll=47.651389,26.255556&amp;output=embed\"></iframe>\r\n<br /><small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Suceava,+Romania&amp;aq=&amp;sll=19.876852,-73.187324&amp;sspn=0.079749,0.065832&amp;ie=UTF8&amp;hq=&amp;hnear=Suceava,+Romania&amp;t=h&amp;z=13&amp;ll=47.651389,26.255556\" style=\"color:#0000FF;text-align:left\">View Larger Map</a>\r\n</small>\r\n</td>\r\n			</tr>\r\n		</tbody>\r\n</table>\r\n		<hr />\r\n		<h3>Monrovia, Liberia</h3>\r\n		<table>\r\n			<tbody><tr>\r\n				<td><iframe width=\"300\" height=\"250\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Monrovia,+Liberia&amp;aq=&amp;sll=47.651389,26.255556&amp;sspn=0.11425,0.131664&amp;ie=UTF8&amp;hq=&amp;hnear=Monrovia,+Greater+Monrovia,+Montserrado,+Liberia&amp;t=h&amp;z=13&amp;ll=6.300774,-10.79716&amp;output=embed\"></iframe>\r\n<br /><small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Monrovia,+Liberia&amp;aq=&amp;sll=47.651389,26.255556&amp;sspn=0.11425,0.131664&amp;ie=UTF8&amp;hq=&amp;hnear=Monrovia,+Greater+Monrovia,+Montserrado,+Liberia&amp;t=h&amp;z=13&amp;ll=6.300774,-10.79716\" style=\"color:#0000FF;text-align:left\">View Larger Map</a>\r\n</small>\r\n</td>\r\n				<td><p>In March 2000, Faith Mennonite Church in Lott, Texas, started a church planting effort near CAM?s base in Liberia, West Africa. Ray Yoder from Bastrop, Texas, pastors the Light Mennonite church. The church?s first national pastor Kollie Juku passed away on December 10, 2010. Recently the church started an outreach, Hope Mennonite Church, which is pastored by Nelson Gartor, a national. Membership at Light Mennonite is 95 and Hope Mennonite has 16 members.</p>\r\n</td>\r\n			</tr>\r\n		</tbody>\r\n</table>\r\n<hr />\r\n	<strong>Will you help our cause?  Every contribution from loving people like you helps us to establish bases of love, care, and spirituality that is only accomplished by the presence of a church that believes in our convictions.</strong>\r\n	\r\n\r\n',25,4,'2011-08-11 15:05:27','2011-08-11 21:24:19','20,40,60,80,100','sample subtitle!'),
	(9,'Clothing Bundle Project','<p>Donated clothing, footwear, and comforters bring relief and joy to needy people who wondered how they will clothe their families another year. In 2010, sponsors provided funds to ship over two million pounds of clothing, bedding, and footwear and 30,738 comforters. The items went to Romania, Ukraine, Azerbaijan, Belarus, Haiti, Liberia, Nicaragua, Latria, and other countries. Every gift of $69 processes, ships, and distributes approximately 160 pounds of clothing.</p>','<p>Bags of clothing bring comfort and cheer to cancer victims in Moldova</p>\r\n<p>Cancer victims from Valea Prejei, one of the poorest villages in Moldova received clothing from CAM through one of our partners, TABEA.</p>\r\n<p>This CAM clothing distribution in Moldova, is only one of the many distributions that take place around the world.</p>\r\n<p><strong>Here is a note from a grateful recipient in Ukraine:&#160;</strong>\r\n</p><p><em>We thank you for the help you sent us. It is a big encouragement . . . we pray to God that you and your service could prosper . . . When we will meet each other in heaven, we will be glad that we could work together for the Lord. Matthew 25:34-40</em> ?Dima Myndru</p>\r\n<p>CAM receives hundreds of tons of donated clothing at our drop-off points across the United States. We rely on donated funds to move the clothing from our warehouses to the many needy people overseas who can make good use of it.</p>\r\n<p><strong>Would you like to help provide clothing for the needy?</strong>\r\n</p>',26,5,'2011-08-11 15:10:54','2011-08-11 15:11:58','20,40,60,80,100','sample subtitle!'),
	(10,'Conservative Anabaptist Service Program (CASP)','<p>This program?s purpose is to provide a SSS (Selective Service System) approved place of employment for conscientious objectors to serve, should the draft be activated by the United States government.</p>','<p>Our goal is to provide alternate places of employment that have an ethical and moral environment. Such projects would also benefit our country?s health, safety, and other interests. Several CASP projects are in place to evaluate this program.</p>\r\n<p>In 2010, CASP had 125 young men serve a total of approximately 20,800 hours in ten different projects.</p>\r\n<p>For more information on the CASP program, call Eli Weaver at <strong>330-893-2428.</strong>\r\n</p><p><strong>Would you like to donate to the CASP program?</strong>\r\n</p>',27,6,'2011-08-11 15:17:29','2011-08-11 17:17:17','20,40,60,80,100','subtitles are great'),
	(11,'Disaster Response Services / Rapid Response Team','<p>DRS (Disaster Response Services) coordinates volunteers to rebuild in natural disaster areas in the USA. Hundreds of volunteers have donated thousands of hours serving in communities crippled by floods, hurricanes, and tornadoes.</p>','<p>These projects provide excellent opportunities to share the love of Christ with those suffering devastation and loss. &#160;A total of 2,100 DRS volunteers donated approximately 52,330 hours in 2010.</p>\r\n<p><strong>Do you want to help join the effort to cleanup and rebuild for disaster victims in the USA?</strong>\r\n</p>',28,7,'2011-08-11 15:23:23','2011-08-11 17:17:17','20,40,60,80,100',''),
	(12,'Family Self-Support','<p>Helping selected Christian families support themselves, rather than depend on material aid, is an important goal to CAM. The Family-Self-Support (FSS) program provides funds for families to buy a plot of land, horse and wagon, cow, greenhouse, tools and equipment, or other resources to help them make a living. The program operates in Romania, Moldova, Ukraine, Israel, Haiti, Liberia, and Kenya.</p>','<p>Before receiving Family-Self-Support funds, Grigory Prymakhad had to hire equipment to farm his twenty-two acres. But as the economy in Ukraine regressed, his landlord was no longer willing to wait until after harvest for Grigory to pay the rental bill. Through FSS, Grigory can harvest sunflowers and other crops with his own equipment and says the program ?saved his family.?</p>\r\n<p>We want to work with our hands. We want opportunities for our children. We want to live at home with our families instead of working in the city or out of the country. These cries come from all across Ukraine, from families willing to work hard but who don?t have the funds to improve their situation. Hundreds of Ukrainians lost their jobs during 2010 when the economy took yet another drop. Men from the villages often have to leave home to find work in the larger cities or outside the country. These families dream of starting a business at home or improving the one they already have. But without funds, how will their dreams come true?</p>\r\n<p>For some, CAM?s Family-Self-Support program is their hope for change. The program gives families up to $3,500 USD to buy tools, land, equipment, animals, or other resources to make a living. Vasily Vasilchuk used to leave his young family to find work, but after receiving FSS funds, the family bought a potato planter, sprayer, strawberry plants, and other resources and can now work together in their potato and strawberry fields. Their produce business gives them enough income to provide for the family, make much-needed repairs to their house, and bless others. Vasily?s wife Svitlana said, it?s a dream come true.</p>\r\n<p>Besides funds, Family-Self-Support provides business advice, follow-up consultations, and teaching seminars. We are blessed to have a Ukrainian agronomist on staff to advise families in greenhouse and farming projects. Occasional seminars give FSS recipients the opportunity to share their experiences with others wanting to start a home business.</p>\r\n<p><strong>Would you like to help provide resources for needy families?</strong>\r\n</p>',29,8,'2011-08-11 15:25:25','2011-08-11 17:17:17','20,40,60,80,100','subtitles are great'),
	(13,'Gifts That Grow','<p>Millions of dollars? worth of free medicines, food, liquid nutrition, and other valuable items are available to CAM each year. Though companies and individuals donate the items, CAM has procurement fees and shipping costs to bring them to our warehouse in Pennsylvania. Each $1 given to the Gifts-That-Grow program brings in $200 worth of donated products for the poor.</p>','<p>Junior Backohm was working in his cassava field in Rivercess County, Liberia, when a small snake bit his left foot. By the following day, he could no longer work. Unfortunately, Junior received no hospital care and within one week he was paralyzed and unable to even feed himself. His wife left him, taking their only child and leaving Junior at the mercy of others.</p>\r\n<p>For the next year and a half, Junior was pushed around in an old wheelbarrow. When CAM came to distribute aid in Rivercess, Junior was brought to them in an old wheelbarrow. But, praise God, he left in a treasured new wheelchair! ?T?ank God, O!? were the words of thanks Junior managed to eke out.</p>\r\n<p>Elizabeth Maneh, another recipient in Rivercess, had been crossing a log over a creek when, halfway across, the log broke and Elizabeth fell. The heavy bundle of wood she was carrying on her head landed on her right leg and broke it. The accident happened during wartime with no way for her to get medical treatment. Her leg did not heal properly, and Elizabeth was never able to walk again. Thirteen years later, her brother Edwin, a sixty-eight-year-old pastor, was resting in his chair after church when he suddenly suffered a stroke that paralyzed the left side of his body. In 2010, these siblings were thrilled to each receive a wheelchair through CAM?s Gifts-That-Grow program. Elizabeth said, ?God?s eyes are on us today and brought us wheelchairs.?</p>\r\n<p>Each year, CAM receives millions of dollars? worth of free medicines, wheelchairs, and other medical supplies, as well as liquid nutrition, shoes, soap, and much more. Corporations give these products when the items are overstocked, nearing expiration, being discontinued, or for humanitarian reasons.</p>\r\n<p>To bring the products to our Pennsylvania warehouse, CAM needs to pay procurement fees and freight costs. Funds specified for the Gifts-That-Grow program help cover these costs and help ship the items overseas. Every $1 donated to this program procures and ships $200 worth of products.</p>\r\n<p>?We never expected to receive anything like this, ever!? was the response of Action Glay?s family when Action received a wheelchair. Seventeen-year-old Action was born mute and crippled. This family in Liberia was very happy for the gift they received.</p>\r\n<p>Thank you, supporters, for making it possible to provide wheelchairs and other aid to needy, crippled people. Your generosity shows the love of Christ, helps ease suffering, and encourages hearts around the world.</p>\r\n<p><strong>Would you like to help procure and ship free products urgently needed for the poor?</strong>\r\n</p>',30,9,'2011-08-11 15:28:12','2011-08-11 17:17:18','20,40,60,80,100','woo!  subtitles!'),
	(14,'Help for the Elderly','<p>This program meets one of the most desperate needs in Haiti, Liberia, Romania, Moldova, and Nicaragua.. Thousands of elderly people in these countries are left alone, unable to work and provide for themselves. Each month, Help-for-the-Elderly sponsors provide more than 9,000 parcels of food, vitamins, hygiene items, and medicines, Christian literature, and some cash for elderly people. In some cases, the parcels keep recipients alive. &#160;A donation of $45 provides a 25-pound or larger food parcel, $10 cash, and The Seed of Truth or Antorcha de la Verdad for a needy elderly person. The cash is often used for medical bills and other expenses.</p>','<p>Mr. and Mrs. Monétoile Civil live in a crude, mud-plastered house in poverty-stricken Haiti. Both have poor eyesight and Mr. Civil struggles with stiff, arthritic legs. He assembles brooms and sells approximately ten each month for twenty-five cents apiece. This is their only income.</p>\r\n<p>The Help-for-the-Elderly (HFTE) food parcels, made possible by sponsors, is what keeps Mr. and Mrs. Civil alive. The Civils say it would be difficult to survive without the $10 cash that also comes with the parcel.</p>\r\n<p>Many elderly in Haiti have known little but hardship all their lives. They did not have the opportunity to save money for their sunset years. It is difficult for a feeble person who can hardly see or walk to try to work and find food each day.</p>\r\n<p>The needs are endless, says Jeriah Mast, CAM staff member in Haiti. But receiving a HFTE parcel brings hope to an elderly person?s life.</p>\r\n<p>Sentali Chal, a Haitian widow, has poor eyesight and extremely bad hearing. She is so grateful for the HFTE parcel she receives. Sentali cannot read or write, but this is what she says: ?I am very dependent on this box each month. If it wouldn?t be for the box, I would be in big trouble. But the foremost thing I say is a big thank you for sending this to me so faithfully!?</p>\r\n<p>When Sentali was asked what she buys with the $10 cash that comes with the parcel, she said, ?<em>Sometimes I buy more food and clothes, but sometimes I save it. I have been able to buy a small goat and pig with this money. It is so helpful!</em>?</p>\r\n<p>Since Liberia?s savage civil war ended in 2003, many elderly Liberians find themselves alone. Some had moved to the capital Monrovia during the war and now do not have the resources or strength to return to their homes in the bush. Some suffer bullet, shrapnel, or grenade wounds and few have children with the means to care for them.</p>\r\n<p>The elderly badly need assistance, states Seth Martin, CAM?s field director in Liberia. It is hard to know who to help; there are so many pressing needs. We try to decide based on the degree of helplessness.</p>\r\n<p>John Paul suffered a stroke that basically paralyzed his left side. He lives in a house constructed of sticks and rusty tin. This poor man?s only income is begging. John Paul receives monthly HFTE parcels. His happy smile shows how thankful he is.</p>\r\n<p>According to our field staff, literally thousands of old people are in great need of help. It is CAM?s goal to continue to increase the size of this program as funds become available..</p>\r\n<p>Thank you, supporters, for sharing! God bless you for bringing hope to struggling elderly people.</p>\r\n<p><strong>Would you like to help bless needy elderly people in Haiti, Liberia, and other countries?</strong>\r\n</p>',31,11,'2011-08-11 15:32:30','2011-08-11 17:17:19','20,40,60,80,100','subtitles are great'),
	(15,'International Crisis','<p>This program helps victims of war, famine, and natural disasters around the world. Supporters? donations provide emergency food, medicines, clothing, shelter, or other aid, and sometimes rebuilding. CAM?s main priority in all International Crisis projects is to distribute Christian literature and share the love of Christ, sometimes in closed and dark places of the world. &#160;Some countries CAM worked in during 2010 were Haiti, Pakistan, Chile, and India.</p>','<p>The 9.0 earthquake, which struck Japan at 2:46 p.m. on March 11, 2011, was the fifth largest earthquake ever recorded and the biggest in Japan?s history. Minutes later, a tsunami-triggered wall of water up to thirty feet high slammed Japan?s eastern coast. To compound problems, the cooling systems at six of Japan?s nuclear reactors were knocked out causing a serious nuclear emergency, second only to that of Chernobyl twenty-five years ago.</p>\r\n<p>Thousands of bodies have washed ashore. At this writing, 25,104 people have died or are unaccounted for. Millions struggled for days with inadequate food, heat, and water, while temperatures hovered in the mid-thirties with biting winds and snow flurries. Hundreds of thousands stayed in temporary shelters.</p>\r\n<p>?<em>We are struggling desperately to recover</em>,? said Yoshihiro, governor of the worst affected region of Miyagi. ?<em>I am afraid it?s going to take a few years to revive. The disaster was far bigger than we prepared for</em>.?</p>\r\n<p>CAM dispatched several team members to Japan who are coordinating our relief efforts. As with all our International Crisis projects, we are giving priority to sharing the Gospel of Jesus Christ through Christian literature.</p>\r\n<p>Japan has a population of 127 million, with less than two percent calling themselves Christian. Most Japanese follow Shintoism or Buddhism. The regions hardest hit by the earthquake and subsequent tsunami are considered the ?darkest? spiritually by most missionaries. A contact in Japan shared there are about 4.9 million people in these regions, with a mere 9,000 active Christians. How sad that in this great national calamity when many have lost loved ones and all their earthly possessions, most Japanese do not have God to cling to!</p>\r\n<p>A visitor to the town of Kesennuma wrote: The tsunami swept up homes and cars and then churned them into pieces like a giant sheet of sandpaper scrubbing everything in its wake. The town?s hospital still stands, but with its doors and windows blown out by the water. A small boat is perched on what was once a third-story balcony.</p>\r\n<p>The humanitarian needs in the quake/tsunami area are serious, but the psychological effect is nationwide. The disaster has left the normally self-reliant Japanese feeling very vulnerable. Please pray that through this tragedy many would open their hearts to the Word of God and prepare themselves for eternity! Pray also for our IC team members in Japan and at the home office in Ohio.</p>\r\n<p><em>?Be merciful unto me, O God . . . in the shadow of thy wings will I make my refuge, until these calamities be overpast.? Psalm 57:1</em>\r\n</p><p><strong>Would you like to help victims of war, famine, and natural disasters around the world?</strong>\r\n</p>',NULL,12,'2011-08-11 15:54:34','2011-08-11 17:17:19','20,40,60,80,100','subtitles are great'),
	(17,'International Sponsor-A-Student','<p>The International-Sponsor-A-Student program was started to help support Christian day schools in Liberia, Romania, and other needy countries. $50 per month supports one student.</p>','<p>Few schools in Liberia have sufficient materials or Christian-based education. The International-Sponsor-A-Student program supports Light Mennonite School in Liberia, providing a Christian education for children whose parents cannot afford tuition.</p>\r\n<p>In Romania, this program supports the Nathaniel Christian School. The school, located on the orphanage compound, was established to provide a Christian education for the orphanage children. Today most of the orphanage children have graduated, but a total of 89 students from the community attend the school. Grades one through eight are taught by 16 teachers. At the technical school, students can take woodworking, mechanics, baking, or sewing classes that will help them gain skills for life. After three years, they earn diplomas that can help them secure jobs in the future.</p>\r\n<p><strong>Would you like to help provide a Christian education for children in Liberia, Romania, or other needy countries?</strong>\r\n</p>',NULL,14,'2011-08-11 18:50:15','2011-08-11 19:23:18','50,100,150','subtitle'),
	(18,'Jericho Road Ministries','<p>Jericho Road Ministries (JRM) in Suceava, Romania, reaches out to street children, widows, aged people, and school children who have been ?left by the wayside??mostly Gypsy people.</p>','<p>Some way this program reaches out:<br />? Provides self-help aid (seeds, chain saws, land to plant crops, etc.) to needy Gypsy families<br />? Supports three remedial schools for Gypsies who fall behind in their lessons or drop out of school <br />? Translates Sunday school materials in the Romanian language and distributes Christian literature<br />? Holds home Bible studies<br />? Mails Bible correspondence courses and The Seed of Truth magazines</p>\r\n<p>More than a hundred Gypsy children attended the Jericho Road Ministries (JRM) summer Bible school held at the Nathaniel Christian Church. For some, it was their first time to hear about Jesus.</p>\r\n<p>Many of these children don?t have the opportunity to go to Sunday school or hear about God at home. They live in the ghettos and face rejection from society. Sometimes they are forced to drop out of school to help their families beg for (or steal) food and clothes. Bible school is a wonderful opportunity to show these children they are precious in God?s sight.</p>\r\n<p>CAM?s Jericho Road Ministries program in Suceava, Romania, operates three remedial schools to help teach struggling Gypsy children how to read and write. The staff also distributes Bible story books and other Christian literature and translates Christian Light Publications? Sunday school materials into the Romanian language. JRM offers self-help aid and assists widows, elderly people, and orphans?mostly Gypsies. Their goal is to minister to the unfortunate, underprivileged, and outcasts of society.</p>\r\n<p>Please pray for the Gypsy people of Romania. Though they have generations of sin and darkness behind them, there is hope for these needy families! They are precious in God?s sight.</p>\r\n<p><strong>Will you help the Gypsy children in Romania?</strong>\r\n</p>',33,15,'2011-08-11 18:52:08','2011-08-11 19:23:19','20,40,60,80,100','subtitles go here'),
	(19,'Medicines for Multitudes','<p>With funds from supporters, CAM distributes medicines and supplies to over 400 medical outlets in Eastern Europe, Liberia, Haiti, Nicaragua, El Salvador, and other parts of the world. The outlets include clinics, hospitals, church pharmacies, orphanages, and prisons that pass on the free medicines to suffering, needy people.</p>','<p>Because generous pharmaceutical companies donate the medicines, we can ship and distribute $75 worth of medicines for every dollar given to this program. &#160;&#160;In 2010, CAM shipped an estimated wholesale value of $106 million of medicines, vitamins, liquid nutrition, and medical supplies. </p>\r\n<p><strong>Clinic at La Source, Haiti:</strong> Very little medical care is available in the La Source area. God has made it possible for CAM?s Joshua Memorial Clinic to provide medicines and medical care greatly needed in this remote, area of Haiti. Generous companies donate medicines and supplies, and supporters? funds help us ship and distribute it. During 2010, clinic staff saw more than 9,000 patients.</p>\r\n<p><strong>Clinic at Waslala, Nicaragua:</strong> CAM?s Balm of Gilead Clinic at Waslala, Nicaragua, opened in February 1997. The free medicines, donated by generous companies, are a great blessing to the suffering people who come to the clinic for help. Last year, an estimated 9,475 persons received consultations from the Waslala clinic staff. The work of the clinic was an important factor in helping the conservative Mennonite churches in Costa Rica start outreaches in the Waslala area.</p>\r\n<p>Every winter, cold and flu cases mount. Little ones struggle with sniffles, coughs, sore throat, and fever. Adults fight viruses and infections. In the United States, we simply go to the medicine cabinet or local pharmacy for Tylenol, Vitamin C, or Vicks, and we soon feel better. </p>\r\n<p>In places like Romania, however, it is not nearly so simple. Many people cannot afford to buy medicines. For poor families in the villages, some medicines cost more than the income they receive in a month. Keeping medicines in the cabinet is not an option for most Romanians.</p>\r\n<p>Through the Medicines-for-Multitudes program, CAM sends approximately $70 million worth of donated medicines to Romania each year. Hospitals, Christian doctors, church pharmacies, and other medical outlets dispense the free medicines to their patients. Many people can hardly believe they are receiving free medicine and consider it ?manna from heaven.?</p>\r\n<p>Dr. Aurora Galchis in Romania wrote, ?The Casero Vapor Cream (from CAM) is very much appreciated by the mothers, especially during cold and flu season. It is one of the most asked-for medicines.? Casero Vapor Cream helps treat respiratory infections and is just one of the many precious, donated medicines that can help people who might otherwise have to buy expensive medicines from the doctor. Thanks to supporters who care, thousands of Romanians and people in many other parts of the world will have a few medicines in their cabinet this coming winter.</p>\r\n<p>Each $1 donated to the Medicines-for-Multitudes program helps supply $75 worth of medicines for the poor. The medicines and medical supplies go to over 400 medical outlets in Romania, El Salvador, Liberia, Nicaragua, Haiti, and other countries.</p>\r\n<p>Would you like to help provide free medicines for the needy and sick? </p>',34,16,'2011-08-11 18:56:52','2011-08-11 19:23:19','20,40,60,80,100','Providing Healthcare for the Masses'),
	(20,'Milk for Many Mouths','<p>The Nathaniel Farm in Suceava, Romania, provides free quality milk to needy families, orphanages, and hospitals. Each $2 designated for this program helps produce, process, and distribute one gallon of milk. The farm donates fresh milk to 20 orphanages, 4 churches, and 7 hospitals on a weekly basis.</p>','<p>Since 1993, CAM?s Nathaniel Farm has provided fresh, free milk to needy people in northeast Romania. Good quality milk is scarce in Romania. It is often poorly refrigerated and sanitization is a problem. Many families cannot afford to keep a cow; they lack the money to buy feed or run equipment to produce feed. </p>\r\n<p>Milk costs about $3.15 (USD) per gallon in Romania. This price is extremely high when compared with the average Romanian wage of $2.50 per day. We can imagine how this affects struggling families? budgets.</p>\r\n<p>Most orphanages and hospitals in Romania suffer food shortages. A supply of good quality milk boosts the health of the patients and children, and is highly appreciated. One orphanage wrote, The committee from ?Casa Ioana? thanks you for your help in giving us milk. You made it easier for us to provide for the children . . .  Our organization is small and funds are limited, but God has been very good to us and we want to trust Him with our future . . . may He be the one to bless you . . .\"</p>\r\n<p>Thank you, supporters, for providing cups of cold milk to needy orphans, families, and those who are suffering.</p>\r\n<p><em>?And whosoever shall give to drink unto one of these little ones a cup of cold [milk] only in the name of a disciple, verily I say unto you, he shall in no wise lose his reward.? Mt 10:42</em>\r\n</p><p>Would you like to help provide cups of cold milk to needy orphans?</p>',35,17,'2011-08-11 19:00:09','2011-08-11 19:23:20','20,40,60,80,100','subtitles go here'),
	(21,'Nicaragua-Adopt-A-Family','<p>Nicaragua is the second poorest country in the western hemisphere. Eighty percent of the population earns only $3-$4 a day. The Nicaragua-Adopt-A-Family program helps 750 Christian families each month by providing parcels of food, medicines, healthcare items, and some Christian literature. A $50 donation provides a 45-pound or larger parcel. </p>','<p>Jose Antonio Maldonado listens to the rain as it falls softly, thoroughly watering the dry, thirsty ground. It is rainy season in Nicaragua, and the daily afternoon rains have turned the countryside to a lush, tropical green. Jose, his wife Nelys, and their three boys live in an adobe house in the mountains of Nueva Segovia. In this mountainous region north of Managua, the country?s capital, work is hard to find. Jose is thankful for the forty dollars a month he earns by planting, weeding, or harvesting for local farmers.</p>\r\n<p>Jose and his family have approximately half an acre of land where they grow red beans, corn, and bananas. They depend on a Nicaragua-Adopt-A-Family (NAAF) food parcel for basics such as cooking oil, sugar, and rice. The cooking oil is very valuable to Jose?s family, as it would cost Jose four days? worth of wages to buy a gallon of oil. Jose and Nelys?s youngest son suffers from anemia and should have vitamins and iron supplements, but they have no money to purchase them. The vitamins they sometimes receive in the parcels are a tremendous blessing.</p>\r\n<p><strong>Nourishing 800 families each month:</strong>\r\n</p><p>The Nicaragua-Adopt-A-Family program helps 750 families each month. To select recipients, CAM staff visits the pastor of a poor community and requests a list of their most needy members. Two of the staff then visits the families to see whether they qualify for the program. When a family meets our qualifications, which include low income, no television, and active church membership, they are signed up to receive a parcel. CAM trucks spend three weeks each month delivering food parcels to various parts of the country, up to two hundred miles from our warehouse in Managua.</p>\r\n<p>In a country of six million people where eighty percent of the population earns only $3-$4 a day, the NAAF parcels help bring hope and nourishment. Each $45 from sponsors provides a 45-pound or larger parcel of food (rice, beans, cooking oil, canned chicken, and more), medicines, healthcare items, and an Antorcha de la Verdad (Torch of Truth) magazine.</p>\r\n<p><strong>Would you like to help provide nourishment for needy Nicaraguan families?</strong>\r\n</p>',NULL,18,'2011-08-11 19:02:19','2011-08-11 19:23:20','20,40,60,80,100','subtitle'),
	(22,'SALT Microfinance Program','<p>People in needy countries usually want to work and provide for themselves instead of depending on foreign aid, but don?t have resources to get started. This program provides small loans for needy people to start their own businesses. As clients repay their loans, they are eligible for larger loans to expand their businesses. The core of this program is teaching, both spiritual and business. Our goal is to first introduce men and women to Jesus Christ and then walk with them as they transition from poverty to providing for themsleves.</p>','<h3>?Is there hope for Haiti??&#160;</h3>\r\n<p>Many of us have asked this question over the years as we have watched aid pour into this little country with few visible results. We long to see physical and spiritual change in Haiti. But is there really hope for long-term sustainable change?</p>\r\n<p>Forest Cormelle, a young Haitian mother, would love to share her opinion on the program. Forest lives in the mountains of southern Haiti and was trapped in the cycle of poverty and despair for years. She knows how it feels to send children to bed without food, have no money for shoes, and be unable to afford school tuition. But for the past two years, Forest has been part of CAM?s new microfinance program and is excited about the changes taking place in her family.</p>\r\n<p>A small loan from CAM?s SALT microfinance program enabled Forest to expand her little business of selling rice, oil, and flour in the local markets. As a result of the loan and teaching she received through SALT, the profit from her small business increased four hundred percent!<br />?For the first time,? Forest says, ?we can buy shoes for the children, send them to school, and save a little each month for emergencies.?<br />Forest leaves her home at 5:00 a.m. to hike several hours over rugged mountain paths to the markets, while her husband tries to farm the steep hillside behind their small house. Making a living is extremely difficult, but Forest is excited and loves to share how SALT has blessed her family. ?This is so much better for us than people giving us food,? she said enthusiastically. ?When the food is gone, this help keeps on going!?</p>\r\n<h3>What can $150 do in Haiti?</h3>\r\n<p>The first loans we give to SALT clients in Haiti are very small, $150 or less. While this may seem like an insignificant amount, it is amazing what these people can do when the loans are accompanied with business and spiritual teaching. People who become too dependent on foreign aid sometimes have good business ideas, but often lack the training and resources to get started. Currently more than two hundred families in Haiti benefit from the SALT program, and the results have been exciting. In 2010, the loan repayment rate was ninety-eight percent!</p>\r\n<p>CAM?s SALT program is also being administered in Nicaragua, and this year we are starting the program in Ghana. SALT clients attend regular meetings where they receive business and spiritual teaching. We have found a tremendous need for the spiritual teaching in these countries and are enthused about this aspect of the SALT program. One client recently exclaimed, ?I am hearing Biblical teaching regarding daily life that I never heard before!?</p>\r\n<p>Individuals are required to save some money each week. Our goal is to see them eventually graduate from the program. As more funds become available, we hope to expand this program in Haiti and other countries to help many more families become self-sufficient.<br />Sustainability is the goal of the SALT program. While visiting in Forest?s home, we asked her to tell us what her family likes most about the microfinance program. She replied with a grateful smile, ?Full plates of food.?</p>\r\n<p><strong>Would you like to help families in Haiti, Nicaragua, and Ghana with the resources and training to become self-sufficient while also learning Biblical principles?</strong>\r\n</p>',36,19,'2011-08-11 19:05:45','2011-08-11 19:23:20','20,40,60,80,100','subtitle'),
	(23,'Save-A-Life!','<p>Save-A-Life! was started out of a growing concern for the number of children suffering and dying daily from malnutrition. The program provides liquid nutrition, infant formula, special medicines, and other products that can help save lives. Generous companies usually donate the products, and sponsors help cover procurement, shipping, and distribution costs. Sometimes the products arrive too late?disease and malnutrition have already claimed a life, but for hundreds of others, the nutrients give them a chance to live and become healthy children.</p>','<p>To support her family, Jennah buys produce from farmers in the bush near her Kpeneji, Liberia, home and then travels 60 miles to the capital city Monrovia to sell it. One day while Jennah was sitting at her little market stand selling cassava, she noticed a closed box on the ground nearby. Occasionally she would hear noises coming from inside the box.</p>\r\n<p>Unable to contain her curiosity any longer, she rose and opened the box. To her surprise a wee baby boy peered up at her! He was obviously unwanted and abandoned by his mother. Jennah, with her compassionate heart, took the child and named him Hamza Shariff.</p>\r\n<p>A week later Jennah returned to her home in Kpeneji with the sick little baby boy. Immediately, she took Hamza to the local CAM-supported clinic where Dr. Foday Watson diagnosed him with pneumonia, skin infection, and malnutrition. He treated Hamza with Omnicef and Herbalife, a nutritional drink mix provided by CAM. Later Hamza also received Isomil Plus, a baby formula CAM sent to Liberia.</p>\r\n<p>Today Hamza is a healthy six-month-old baby. Thanks to God, the care of Jennah, and donated medicine and nutritional items, little Hamza has another chance at life.</p>\r\n<p>But Jesus called them unto him, and said, Suffer little children to come unto me, and forbid them not: for of such is the kingdom of God. ?Luke 18:16</p>\r\n<p><strong>Would you like to join the effort to save malnourished babies and children in Liberia, Haiti, Nicaragua, and other countries? </strong>\r\n</p>',37,20,'2011-08-11 19:12:23','2011-08-11 19:23:21','20,40,60,80,100','subtitle'),
	(24,'Seed Project','<p>Each year, this project provides tons of quality seeds to needy people in Eastern Europe, Haiti, Nicaragua, and Africa. Planting their own gardens is a joy to the thousands of needy families who can raise produce for their tables and for an income. Thousands of recipients hear the Gospel at distribution meetings and through Christian literature given with the seeds.</p>','<p>When we enter the local supermarket, we don?t have to look far or long to find the perfect red pepper or crisp green lettuce. The produce sections in American stores are usually stocked full of healthy, fresh vegetables and fruit?all at our fingertips. Many of us also plant gardens in the springtime and by mid-summer we are picking plump, red tomatoes from the vines and sinking our teeth into buttery corn-on-the-cob. We have the blessing of living in a country where good quality produce is reasonably priced and quality seeds are accessible, affordable, and easy to grow.</p>\r\n<p>The picture changes radically in many other parts of the world. Come with us to Nicaragua to visit the Miskitos and Moravians, a native people living along the Atlantic coastal section of Nicaragua and Honduras. These people depend heavily on fishing and lobster diving for their income but also raise and sell their own food. In the good years, yucca, rice, coconuts, bananas, and root crops do well, but when hurricanes or tropical bag of rice seed is projected to yield approximately 1,200 pounds of rice at harvest time. This will be a tremendous blessing to a people who depend on the outcome of their crops to determine their future. Thanks to each of you supporters who played a part in providing rice seed to these needy people. While they may not be selecting peppers from the produce section or picking tomatoes from the vine, you have made it possible for them to savor steaming bowls of rice at dinnertime and an income to rebuild their lives.</p>\r\n<p>Each year, CAM provides tons of quality seeds to needy people in Nicaragua, Ukraine, Romania, Moldova, Haiti and Liberia. The seeds meet the climate requirements of the countries they are sent to.</p>\r\n<p>Seeds sent to Romania and Ukraine include corn, tomatoes, cabbage, carrot, red beet, parsley, onion, and cucumber. In Romania, volunteers distribute some seeds door-to-door but most go to pastors who distribute the seeds at evangelistic meetings. Seed distribution provides many opportunities to witness and offer Bibles, Bible story books, and other Christian literature. In Ukraine, CAM partners with Master?s International Ministries (MIM) for the Seed Project. CAM supplies the seeds and MIM coordinates volunteers from America and local Ukrainian churches to package the bulk seeds into individual packets and then family seed parcels. Thousands of recipients hear the Gospel at the distribution meetings and through tracts given with the seeds.</p>',38,21,'2011-08-11 19:18:26','2011-08-11 19:23:21','20,40,60,80,100','subtitle'),
	(25,'Sewing Center','<p>At CAM sewing centers in Romania, Moldova, and Ukraine, needy women make clothing for their own families and other needy people. The fabric, sewing machines, notions, and funds to administrate the centers come from generous donors in America. The ladies at the centers are required to give away three out of every four items they make. </p>\r\n<p>In 2010, approximately 35,366 items were made at the Romania centers alone.</p>','<p>In Liberia, CAM distributes sewing machines and fabric to orphanages to help them provide clothing for the children. We also send fabric and supplies to nine centers in Nicaragua and one in Haiti. For families who cannot afford to buy clothing, these sewing centers are a tremendous blessing.</p>\r\n<p>Items needed for sewing centers in Romania, Moldova, and Ukraine</p>\r\n<ul><li>Sergers (overlock sewing machines) must be 110 or 220 volts</li>\r\n<li>Electric sewing machines (must be 220 volts with 50 Hz motor or have a transformer)</li>\r\n<li>Quilt batting</li>\r\n<li>Fabric (all sorts, lengths of one yard or more)</li>\r\n<li>Good scissors</li>\r\n<li>Good, useable thread (not weak thread)</li>\r\n<li>Straight pins</li>\r\n<li>Yarn</li>\r\n<li>Thimbles</li>\r\n<li>Zippers (17\" and 21\"?all colors)</li>\r\n<li>Serger thread (Maxi-Lock; especially white and black, but can also use some rose, blue, cream,&#160;</li>\r\n<li>and gray)</li>\r\n<li>Elastic (½\" wide, white and black)</li>\r\n<li>Elastic (1\" wide, white and black)</li>\r\n<li>Buttons (½\" and ¾\", white, black, gray, and navy)&#160;</li>\r\n<li>Big buttons of all colors (for jackets and coats; 1\" in diameter)</li>\r\n<li>Needles for regular sewing machines (especially sizes 75, 80, 85, 90, 100, and 110)</li>\r\n<li>Needles for triploc machines (size 100 and especially need sizes 80 and 90 in the style CANU:6:60EBI)</li>\r\n<li>Tape measures</li>\r\n<li>Lace (elastic lace used for lingerie, various widths and colors)</li>\r\n<li>Seam rippers</li>\r\n<li>Bulbs (push-in kind?110v 15w and 220v 15w) (screw-in kind?120v 15w and 220v 15w)</li>\r\n<li>Sewing machine belts (all sizes, lengths, and widths)</li>\r\n</ul><p>If donating more than one kind of item, please keep each kind separate and label the packages accordingly. When sending sewing items, label the boxes or bags ?for Sewing Centers? and ship or deliver them to: </p>\r\n<p><strong>Christian Aid Ministries<br />Attn: Shipping Department<br />2412 Division Highway<br />Ephrata, PA 17522-9310</strong>\r\n</p><p>Funds are needed to ship sewing items and cover operating expenses for CAM?s 28 sewing centers in Romania, Moldova, and Ukraine. These centers are a tremendous blessing for the ladies who come sew for their families and other needy people. </p>',39,22,'2011-08-11 19:22:48','2011-08-11 19:23:22','20,40,60,80,100','subtitle'),
	(26,'Special Needs Fund','<p>This fund helps needy people with crises such as a house fire, surgery, or funeral expenses. Poverty-stricken people often cannot save up for such emergencies. The Special-Needs-Fund is used only in countries where CAM has ongoing projects and field staff.</p>','<p>Financially, some poor families in Eastern Europe get along reasonably well, that is until they face an unexpected illness, job loss, or other crisis. Then CAM?s Special-Needs-Fund (SNF) can play an important role in helping needy families. To decide who qualifies for aid, CAM staff members work with local pastors and visit the homes of people to verify their requests firsthand. Sadly, the funds do not reach all the needs. </p>\r\n<p><strong>Medical expenses and loss of job</strong>\r\n</p><p>Viorel Dombrovoschi lost his job when numerous factories in Romania closed down. He and his wife Anisoara struggle to keep food on the table for their nine children. Recently when two of their children became sick, the SNF helped them with medical expenses. </p>\r\n<p><strong>Prepayment for surgery</strong>\r\n</p><p>Most doctors in Romania and Ukraine require payment from a patient before they offer their services. Catalina Juganara in Romania needed a C-section due to complications. However, the doctors and nurse made it clear that she was&#160;to bring the money prior to surgery. Catalina asked CAM for help, and we were able to assist her with funds for the operation.  </p>\r\n<p><strong>Care for the crippled</strong>\r\n</p><p>Crippled with cerebral palsy, Maksim Ablezgo in Ukraine lives with his 65-year-old mother in an apartment building. Up until several months ago, they had to descend two flights of stairs whenever they wanted to go outside. The SNF provided $1,000 to install a door and a wheelchair ramp so Maksim can go outside and get much-needed fresh air more freely. He and his mother responded with this letter of gratitude: </p>\r\n<p><em>Dear brothers and sisters,</em>\r\n</p><p><em>We thank you from the bottom of our hearts for your material aid so we could build a ramp. We had been praying about this need for a long time. Now I can easily go outside in my wheelchair. Earlier my mother had to go out to the street and ask somebody to help carry me outside so I could enjoy the beautiful outdoors. It rarely happened. May the Lord richly bless you and give you success in your labor here on earth and a reward in heaven.</em>\r\n</p><p>The Special-Needs-Fund is used for difficult situations often related to medical cases but sometimes for those who suffered a house fire or have other special needs.</p>',40,24,'2011-08-11 19:26:35','2011-08-11 19:26:35','20,40,60,80,100','subtitle'),
	(27,'Strong Tower Children\'s Home','<p>The Support-an-Orphan program covers food, clothing, medicines, and schooling costs for the children at the Strong Tower Children?s Home in El Salvador. You will receive a photo and information about the child you support.</p>','<h3>Nathaniel Christian orphanage </h3>\r\n<p>Phase II: CAM built the Nathaniel Christian Orphanage in Suceava, Romania, in 1991 to provide a loving Christian environment for orphans and very needy children. A total of fifty-seven children came to live at the orphanage. Today the remaining two girls and four boys are in Phase II homes under the direction of house parents. With funds from sponsors, these youth receive food, clothing, medical and dental care, vocational training, and Christian teaching.</p>\r\n<h3>Strong tower children?s home</h3>\r\n<p>Strong Tower Children?s Home in El Salvador provides a place of refuge, love, and security for 23 abandoned or orphaned children. CAM provides the finances to support the home, but it is administrated under a board and executive committee from the conservative Mennonite churches in El Salvador. The home?s vision is to raise the children in such a way that, when they are grown, they can be a blessing to the Salvadoran church and society.</p>',NULL,25,'2011-08-11 19:29:17','2011-08-11 19:29:17','20,40,60,80,100','subtitle'),
	(28,'Support A Widow','<p>A donation of $55 provides a 35-pound or larger parcel of food and healthcare items and $10 cash for needy widows, widowers, and abandoned wives. In 2010, supporters provided a total of 11,255 parcels for recipients in Liberia, Haiti, Nicaragua, Romania, Moldova, Ukraine, and Israel.</p>','<p>Madam Silpa from Kenya, Africa, lives with her three young children in a small, 8\' x 12\' hut. This 25-year-old widow earns approximately $1 a week weaving sisal leaves into ropes. The packages of food delivered to her door will make her load lighter this month.</p>\r\n<p>The Support-A-Widow program provides food parcels for needy widows, widowers, and abandoned wives in Kenya, Liberia, Haiti, Nicaragua, Romania, Moldova, Ukraine, and Israel. These parcels contain food, healthcare items, a copy of The Seed of Truth magazine, and $10 cash. Through your support, this program brings new hope and encouragement to neglected, discouraged people.</p>\r\n<p><em>\"Pure religion and undefiled before God and the Father is this, To visit the fatherless and widows in their affliction? \" James 1:27</em>\r\n</p><p><strong>Would you like to help provide food and other aid to needy widows, widowers, and abandoned wives?</strong>\r\n</p>',41,26,'2011-08-11 19:34:07','2011-08-11 19:34:07','20,40,60,80,100','subtitle'),
	(29,'Warm a Family','<p>eedy people in Romania, Moldova, and Ukraine struggle to pay their heating bills or buy fuel to heat their houses during the cold winter months. The Warm-A-Family program provides stoves and/or funds to buy firewood and pay heating bills, usually for large families and some small or isolated churches that lack funds to heat their meeting place.</p>','<p>With the harsh, Romanian winter just around the corner, Costache Popisticha purchased firewood to heat his house, but he was unable to pay it in full. He works whenever he can find a job?hoeing corn, harvesting potatoes, or hauling miscellaneous items with his horse and wagon. Sometimes he receives produce as payment instead of money. </p>\r\n<p>Costache and his wife, Lacramioara, have eight children. With six of them in school, they incur a lot of expenses. Their mud brick house maxes out their two small wood stoves. Costache and his family received $94 (USD) from the Warm-A-Family program; with this, they can finish paying for the wood. They praise the Lord for how He has blessed them. </p>\r\n<p>One of the greatest expenses for families in Eastern Europe is heating their houses during the long, cold winters. Parents often sacrifice their own needs to provide warmth and comfort for their families. For a family living in an apartment it costs an average of $125 a month for central heating. If the father has a decent paying job, he might make $250?$375 (USD) a month. Because of their low income, families often wait to buy firewood until winter is upon them. They buy some on credit, hoping that God will provide the funds to pay for it. <br />Each winter, the Warm-A-Family program assists approximately 900 families and 25 churches in Romania, Moldova, and Ukraine. Supporters? donations help families buy firewood or pay their heating expenses. The families are extremely grateful for this aid.</p>\r\n<p><strong>Would you like to help make the cold winter more bearable for poor people in Romania, Moldova, and Ukraine?</strong>\r\n</p>',NULL,27,'2011-08-11 19:35:58','2011-08-11 19:35:58','20,40,60,80,100','subtitle'),
	(30,'Water for the World','<p>In countries such as Kenya and Haiti, the average household does not have water flowing freely from a spigot. Many settle for river water or stagnant pond water, which can result in life-threatening diseases. CAM provides funds to dig wells in countries where people lack fresh, clean water. People in Kenya, El Salvador, Haiti, and Liberia have benefited from this program.</p>','<p>The Jorim Juma family in Kenya, Africa, is happy about their new well. Jorim had dug this well but was unable to line it with cement or buy a pump for it. CAM?s Water-for-the-World program provided funds to dig the well deeper, line it with cement rings, and install the pump. The Juma family and their neighbors now enjoy safe, clean water.</p>\r\n<p><strong>Would you like to help provide a family with clean, healthy water?</strong>\r\n</p>',42,28,'2011-08-11 19:41:42','2011-08-11 19:41:42','20,40,60,80,100','subtitle');

/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_uid` varchar(255) DEFAULT NULL,
  `image_ext` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;

INSERT INTO `images` (`id`, `image_mime_type`, `image_name`, `image_size`, `image_width`, `image_height`, `created_at`, `updated_at`, `image_uid`, `image_ext`)
VALUES
	(1,'image/png','labors_of_love---special.png',41461,144,157,'2011-05-23 17:03:53','2011-05-23 17:03:53','2011/05/23/13_03_53_974_labors_of_love_special.png','png'),
	(2,'image/png','Jeremy_s-Garden.png',42810,139,200,'2011-05-23 17:11:37','2011-05-23 17:11:37','2011/05/23/13_11_37_393_Jeremy_s_Garden.png','png'),
	(3,'image/jpeg','Sponsorship form-1.jpeg',34650,222,240,'2011-05-24 18:09:42','2011-05-24 18:09:42','2011/05/24/14_09_42_759_Sponsorship_form_1.jpeg','jpeg'),
	(4,'image/jpeg','ifaf.JPG',446469,550,733,'2011-05-24 18:19:50','2011-09-07 18:12:41','2011/09/07/14_12_41_179_ifaf.JPG','JPG'),
	(5,'image/png','whoweare.png',260418,437,320,'2011-08-10 16:37:43','2011-08-10 16:37:43','2011/08/10/12_37_43_318_whoweare.png','png'),
	(6,'image/png','parking_lot.png',354094,827,273,'2011-08-10 17:09:00','2011-08-10 17:09:00','2011/08/10/13_09_00_836_parking_lot.png','png'),
	(7,'image/png','parking_lot.png',354094,827,273,'2011-08-10 17:10:39','2011-08-10 17:10:39','2011/08/10/13_10_39_210_parking_lot.png','png'),
	(8,'image/png','building.png',1109396,802,602,'2011-08-10 17:10:55','2011-08-10 17:10:55','2011/08/10/13_10_55_893_building.png','png'),
	(9,'image/png','romanian_orphanage.png',266256,602,233,'2011-08-10 17:15:31','2011-08-10 17:15:31','2011/08/10/13_15_31_134_romanian_orphanage.png','png'),
	(10,'image/png','a_boat.png',281672,454,302,'2011-08-10 17:33:42','2011-08-10 17:33:42','2011/08/10/13_33_42_843_a_boat.png','png'),
	(11,'image/png','book_1.png',126095,216,302,'2011-08-10 17:45:09','2011-08-10 17:45:09','2011/08/10/13_45_09_507_book_1.png','png'),
	(12,'image/png','book_1.png',126095,216,302,'2011-08-10 17:45:11','2011-08-10 17:45:11','2011/08/10/13_45_11_355_book_1.png','png'),
	(13,'image/png','book_1.png',126095,216,302,'2011-08-10 17:45:12','2011-08-10 17:45:12','2011/08/10/13_45_12_367_book_1.png','png'),
	(14,'image/png','book_1.png',126095,216,302,'2011-08-10 17:45:14','2011-08-10 17:45:14','2011/08/10/13_45_14_235_book_1.png','png'),
	(15,'image/png','book_2.png',121117,195,302,'2011-08-10 17:45:51','2011-08-10 17:45:51','2011/08/10/13_45_51_257_book_2.png','png'),
	(16,'image/png','book_3.png',114996,202,302,'2011-08-10 17:46:13','2011-08-10 17:46:13','2011/08/10/13_46_13_878_book_3.png','png'),
	(17,'image/png','book_4.png',81085,201,201,'2011-08-10 17:46:34','2011-08-10 17:46:34','2011/08/10/13_46_34_829_book_4.png','png'),
	(18,'image/png','gold_dome.png',255581,375,302,'2011-08-10 17:52:07','2011-08-10 17:52:07','2011/08/10/13_52_07_224_gold_dome.png','png'),
	(19,'image/png','farmers.png',299865,439,302,'2011-08-10 17:52:18','2011-08-10 17:52:18','2011/08/10/13_52_18_87_farmers.png','png'),
	(20,'image/png','hsac.png',552406,601,450,'2011-08-10 20:16:07','2011-08-10 20:16:07','2011/08/10/16_16_07_724_hsac.png','png'),
	(21,'image/png','hsac.png',552406,601,450,'2011-08-10 20:16:28','2011-08-11 14:06:06','2011/08/11/10_06_06_915_hsac.png','png'),
	(22,'image/jpeg','bfw.JPG',188514,450,338,'2011-08-11 14:20:22','2011-09-19 16:52:05','2011/09/19/12_52_05_646_bfw.JPG','JPG'),
	(23,'image/jpeg','bbe_program.jpg',162912,550,260,'2011-08-11 14:45:28','2011-09-07 20:21:50','2011/09/07/16_21_50_360_bbe_program.jpg','jpg'),
	(24,'image/gif','Christian Family Magazines_htm_m10a3689a.gif',64979,377,289,'2011-08-11 14:55:56','2011-08-11 14:55:56','2011/08/11/10_55_56_865_Christian_Family_Magazines_htm_m10a3689a.gif','gif'),
	(25,'image/jpeg','cp_program.jpg',181335,550,379,'2011-08-11 15:05:21','2011-09-08 13:14:38','2011/09/08/09_14_38_288_cp_program.jpg','jpg'),
	(26,'image/jpeg','Child with new Clothes',199951,550,460,'2011-08-11 15:10:42','2011-09-15 19:47:17','2011/09/08/09_21_00_606_cbp_program.jpg','jpg'),
	(27,'image/jpeg','casp_program.jpg',282381,550,398,'2011-08-11 15:17:23','2011-09-08 14:44:34','2011/09/08/10_44_34_370_casp_program.jpg','jpg'),
	(28,'image/jpeg','drs_program.JPG',363798,550,413,'2011-08-11 15:22:16','2011-09-08 14:48:18','2011/09/08/10_48_18_830_drs_program.JPG','JPG'),
	(29,'image/jpeg','fss_program.JPG',364318,550,413,'2011-08-11 15:25:17','2011-09-08 16:43:24','2011/09/08/12_43_24_103_fss_program.JPG','JPG'),
	(30,'image/jpeg','Junior Bakohm.JPG',496341,550,635,'2011-08-11 15:27:24','2011-09-07 18:21:10','2011/09/07/14_21_10_618_Junior_Bakohm.JPG','JPG'),
	(31,'image/jpeg','hfte_program.jpg',129985,454,550,'2011-08-11 15:31:29','2011-09-09 15:56:55','2011/09/09/11_56_55_113_hfte_program.jpg','jpg'),
	(32,'image/jpeg','A typical Liberian school with students at crude desks, doing all their lessons on a single notebook.',188008,450,299,'2011-08-11 18:49:19','2011-09-19 17:12:43','2011/09/19/13_11_57_139_isas.jpg','jpg'),
	(33,'image/jpeg','jrm_program.jpg',207440,450,396,'2011-08-11 18:52:01','2011-09-09 18:16:24','2011/09/09/14_16_24_928_jrm_program.jpg','jpg'),
	(35,'image/jpeg','DSCN5664.JPG',363274,450,624,'2011-08-11 18:59:12','2011-09-07 18:08:50','2011/09/07/14_08_50_278_DSCN5664.JPG','JPG'),
	(37,'image/gif','Save A Life!_htm_m4246e491.gif',23237,217,272,'2011-08-11 19:08:29','2011-08-11 19:08:29','2011/08/11/15_08_29_158_Save_A_Life__htm_m4246e491.gif','gif'),
	(38,'image/gif','Seed Project_htm_m7985c533.gif',42894,289,217,'2011-08-11 19:18:18','2011-08-11 19:18:18','2011/08/11/15_18_18_561_Seed_Project_htm_m7985c533.gif','gif'),
	(39,'image/gif','Sewing Center_htm_m1c3ab677.gif',44455,289,217,'2011-08-11 19:22:42','2011-08-11 19:22:42','2011/08/11/15_22_42_734_Sewing_Center_htm_m1c3ab677.gif','gif'),
	(40,'image/gif','Special Needs Fund_htm_3cf998b7.gif',38041,289,217,'2011-08-11 19:26:29','2011-08-11 19:26:29','2011/08/11/15_26_29_499_Special_Needs_Fund_htm_3cf998b7.gif','gif'),
	(42,'image/gif','Water for the World_htm_m56cfa47c.gif',43332,289,217,'2011-08-11 19:41:28','2011-08-11 19:41:28','2011/08/11/15_41_28_437_Water_for_the_World_htm_m56cfa47c.gif','gif'),
	(43,'image/png','Screen shot 2011-08-12 at 10.06.22 AM.png',202816,601,245,'2011-08-12 14:08:21','2011-08-12 14:08:21','2011/08/12/10_08_21_183_Screen_shot_2011_08_12_at_10.06.22_AM.png','png'),
	(44,'image/png','Screen shot 2011-08-12 at 10.23.40 AM.png',34321,197,199,'2011-08-12 14:24:08','2011-08-12 14:24:08','2011/08/12/10_24_08_919_Screen_shot_2011_08_12_at_10.23.40_AM.png','png'),
	(45,'image/jpeg','Teching Ministries Program_htm_m18fef29d.jpg',2316740,1984,1488,'2011-08-22 14:52:06','2011-08-22 14:52:06','2011/08/22/10_52_06_820_Teching_Ministries_Program_htm_m18fef29d.jpg','jpg'),
	(46,'image/jpeg','Sponsor a Bible Lesson_htm_m5f00cc0d.jpg',278300,1173,880,'2011-08-22 14:58:26','2011-08-22 14:58:26','2011/08/22/10_58_26_137_Sponsor_a_Bible_Lesson_htm_m5f00cc0d.jpg','jpg'),
	(47,'image/jpeg','Dorcas Suku',126976,730,930,'2011-08-22 15:04:38','2011-09-27 14:35:16','2011/08/22/11_04_38_245_Help_for_Orphans_htm_m6d40c91.jpg','jpg'),
	(48,'image/jpeg','Help for Orphans_htm_m55e01f78.jpg',208896,809,607,'2011-08-22 15:06:10','2011-08-22 15:06:10','2011/08/22/11_06_10_567_Help_for_Orphans_htm_m55e01f78.jpg','jpg'),
	(49,'image/jpeg','Help for Orphans_htm_b86a90b.jpg',176637,807,605,'2011-08-22 15:06:24','2011-08-22 15:06:24','2011/08/22/11_06_24_819_Help_for_Orphans_htm_b86a90b.jpg','jpg'),
	(50,'image/jpeg','Favorite Stories from the Bible_htm_44b80eec.jpg',53060,388,425,'2011-08-22 15:12:13','2011-08-22 15:12:13','2011/08/22/11_12_13_633_Favorite_Stories_from_the_Bible_htm_44b80eec.jpg','jpg'),
	(51,'image/jpeg','aaf_program.JPG',152676,367,550,'2011-08-22 15:18:34','2011-09-08 15:57:24','2011/09/08/11_57_24_505_aaf_program.JPG','JPG'),
	(52,'image/gif','Family Food Parcels for Romania, Moldova, and Ukraine',30437,197,216,'2011-08-22 15:19:06','2011-09-14 21:01:42','2011/08/22/11_19_06_657_Family_Food_Parcels_for_Romania_Moldova_and_Ukraine_htm_54bd5ac6.gif','gif'),
	(53,'image/jpeg','Family Food Parcels for Nicaragua_htm_m101be8c5.jpg',2637824,2000,1500,'2011-08-22 15:23:15','2011-08-22 15:23:15','2011/08/22/11_23_15_30_Family_Food_Parcels_for_Nicaragua_htm_m101be8c5.jpg','jpg'),
	(54,'image/jpeg','Nueva Segovia, a very mountainous region, is home to the Maldonado family. No tractors are used in these mountains! All fieldwork is done by hand or with oxen and horses.',233573,880,660,'2011-08-22 15:25:24','2011-09-22 18:23:53','2011/08/22/11_25_24_416_Family_Food_Parcels_for_Nicaragua_htm_m3a6ad5fc.jpg','jpg'),
	(56,'image/jpeg','cfm_program.JPG',208363,550,413,'2011-08-22 18:59:32','2011-09-07 20:28:09','2011/09/07/16_28_09_812_cfm_program.JPG','JPG'),
	(57,'image/jpeg','cfm_program.JPG',208363,550,413,'2011-08-23 16:50:22','2011-09-07 20:27:45','2011/09/07/16_27_45_769_cfm_program.JPG','JPG'),
	(58,'image/jpeg','Prison ministry.JPG',419692,1280,853,'2011-08-25 17:34:45','2011-08-25 17:34:45','2011/08/25/13_34_45_409_Prison_ministry.JPG','JPG'),
	(59,'image/jpeg','attention.jpg',7126,290,98,'2011-08-26 19:34:21','2011-08-26 19:34:21','2011/08/26/15_34_21_298_attention.jpg','jpg'),
	(60,'image/jpeg','japan.jpg',43476,613,204,'2011-08-26 19:40:55','2011-08-26 19:40:55','2011/08/26/15_40_55_582_japan.jpg','jpg'),
	(61,'image/jpeg','salad.jpg',21508,613,204,'2011-08-26 19:41:14','2011-08-26 19:41:14','2011/08/26/15_41_14_126_salad.jpg','jpg'),
	(62,'image/jpeg','storms.jpg',43570,613,204,'2011-08-26 19:41:27','2011-08-26 19:41:27','2011/08/26/15_41_27_179_storms.jpg','jpg'),
	(64,'image/jpeg','101_Favorite_Bible_Stories.jpg',110947,290,215,'2011-09-02 20:00:23','2011-09-02 20:00:23','2011/09/02/16_00_23_221_101_Favorite_Bible_Stories.jpg','jpg'),
	(65,'image/jpeg','Madame Belia',90814,450,450,'2011-09-02 20:26:18','2011-09-19 15:45:46','2011/09/02/16_26_18_559_HFTE_photo_copy.jpg','jpg'),
	(66,'image/jpeg','Bibles_for_the_bush.jpg',59980,302,450,'2011-09-06 12:30:03','2011-09-19 16:03:21','2011/09/19/12_03_21_55_Bibles_for_the_bush.jpg','jpg'),
	(68,'image/jpeg','Liberian villagers carry boxes of Bibles and Christian literature',159635,450,338,'2011-09-06 12:34:33','2011-09-19 15:59:05','2011/09/06/08_34_33_494_Liberia_Literature_50_.JPG','JPG'),
	(69,'image/jpeg','Rose',206156,450,450,'2011-09-07 13:18:29','2011-09-19 15:55:32','2011/09/07/09_18_29_851_children_s_story..Rose.JPG','JPG'),
	(70,'image/jpeg','open house.jpg',140299,290,357,'2011-09-07 13:33:05','2011-09-07 13:33:05','2011/09/07/09_33_05_841_open_house.jpg','jpg'),
	(71,'image/jpeg','Baby Tee, after infant formula',159246,450,299,'2011-09-07 13:56:12','2011-09-19 15:52:54','2011/09/07/09_56_12_425_Baby_Tee_After.JPG','JPG'),
	(72,'image/jpeg','Baby Tee, before infant formula',216759,450,300,'2011-09-07 13:56:12','2011-09-19 15:53:10','2011/09/07/09_56_12_548_Baby_Tee_Before.JPG','JPG'),
	(73,'image/jpeg','Slideshow.jpg',149938,613,205,'2011-09-07 19:06:47','2011-09-07 19:35:53','2011/09/07/15_35_53_503_Slideshow.jpg','jpg'),
	(74,'image/jpeg','sao_slideshow.jpg',146852,613,204,'2011-09-07 19:37:30','2011-09-07 19:37:30','2011/09/07/15_37_30_782_sao_slideshow.jpg','jpg'),
	(75,'image/jpeg','ic-program.JPG',341740,550,497,'2011-09-07 20:08:42','2011-09-07 20:08:42','2011/09/07/16_08_42_406_ic_program.JPG','JPG'),
	(76,'image/jpeg','ic-japan tsuanmi.JPG',225541,450,338,'2011-09-07 20:14:18','2011-09-07 20:14:18','2011/09/07/16_14_18_348_ic_japan_tsuanmi.JPG','JPG'),
	(78,'image/jpeg','rr_program.jpg',90850,500,282,'2011-09-08 15:27:37','2011-09-08 15:28:57','2011/09/08/11_28_57_468_rr_program.jpg','jpg'),
	(79,'image/jpeg','hsac_program.JPG',205676,550,400,'2011-09-08 17:01:49','2011-09-08 17:01:49','2011/09/08/13_01_49_236_hsac_program.JPG','JPG'),
	(80,'image/jpeg','hsac_article.jpg',130677,450,244,'2011-09-08 17:08:19','2011-09-08 17:08:19','2011/09/08/13_08_19_187_hsac_article.jpg','jpg'),
	(81,'image/jpeg','hsac_slideshow.jpg',136554,613,205,'2011-09-08 17:09:27','2011-09-08 17:09:27','2011/09/08/13_09_27_574_hsac_slideshow.jpg','jpg'),
	(82,'image/jpeg','hsac_slideshow.jpg',142238,613,204,'2011-09-08 17:14:41','2011-09-08 17:14:41','2011/09/08/13_14_41_97_hsac_slideshow.jpg','jpg'),
	(83,'image/jpeg','Yamah with her young children',236303,450,473,'2011-09-09 17:06:37','2011-09-22 18:05:29','2011/09/09/13_07_54_867_IFAF_program_2.jpg','jpg'),
	(84,'image/jpeg','rrt1.JPG',204963,450,338,'2011-09-09 17:36:46','2011-09-09 17:36:46','2011/09/09/13_36_46_337_rrt1.JPG','JPG'),
	(85,'image/jpeg','rrt2.JPG',217554,450,338,'2011-09-09 17:36:46','2011-09-09 17:36:46','2011/09/09/13_36_46_458_rrt2.JPG','JPG'),
	(86,'image/jpeg','rrt3.JPG',138689,450,338,'2011-09-09 17:36:46','2011-09-09 17:36:46','2011/09/09/13_36_46_649_rrt3.JPG','JPG'),
	(87,'image/jpeg','rrt4.jpg',227845,450,338,'2011-09-09 17:46:42','2011-09-09 17:46:42','2011/09/09/13_46_42_80_rrt4.jpg','jpg'),
	(88,'image/jpeg','rrt5.jpg',169052,450,338,'2011-09-09 17:46:42','2011-09-09 17:46:42','2011/09/09/13_46_42_217_rrt5.jpg','jpg'),
	(89,'image/jpeg','rrt6.JPG',160718,450,338,'2011-09-09 17:46:42','2011-09-09 17:46:42','2011/09/09/13_46_42_398_rrt6.JPG','JPG'),
	(90,'image/jpeg','where_needed_most.jpg',122808,300,300,'2011-09-13 20:19:01','2011-09-13 20:31:12','2011/09/13/16_31_12_249_where_needed_most.jpg','jpg'),
	(91,'image/jpeg','Bibles_for_the_bush.jpg',59980,302,450,'2011-09-19 16:04:36','2011-09-19 16:04:36','2011/09/19/12_04_36_541_Bibles_for_the_bush.jpg','jpg'),
	(92,'image/jpeg','isas.jpg',7773552,4288,2848,'2011-09-19 17:16:33','2011-09-19 17:16:33','2011/09/19/13_16_33_860_isas.jpg','jpg'),
	(95,'image/jpeg','mfm.jpg',643455,450,450,'2011-09-19 18:05:02','2011-09-19 18:05:02','2011/09/19/14_05_02_751_mfm.jpg','jpg'),
	(96,'image/jpeg','rr_program.jpg',78784,450,254,'2011-09-19 18:39:25','2011-09-19 18:39:25','2011/09/19/14_39_25_176_rr_program.jpg','jpg'),
	(97,'image/jpeg','rrt.jpg',78784,450,254,'2011-09-19 18:40:35','2011-09-19 18:40:35','2011/09/19/14_40_35_585_rrt.jpg','jpg'),
	(98,'image/jpeg','where_needed_most.jpg',135481,300,300,'2011-09-22 17:57:50','2011-09-22 18:00:41','2011/09/22/14_00_41_537_where_needed_most.jpg','jpg'),
	(99,'image/jpeg','SALT.JPG',149127,450,299,'2011-09-23 19:10:49','2011-09-23 19:10:49','2011/09/23/15_10_49_333_SALT.JPG','JPG'),
	(100,'image/jpeg','sal.jpg',155947,299,450,'2011-09-23 19:15:43','2011-09-23 19:15:43','2011/09/23/15_15_43_343_sal.jpg','jpg'),
	(101,'image/jpeg','sp.jpg',242137,450,338,'2011-09-23 19:20:48','2011-09-23 19:20:48','2011/09/23/15_20_48_150_sp.jpg','jpg'),
	(103,'image/jpeg','sc.JPG',200401,373,450,'2011-09-23 20:20:36','2011-09-23 20:20:36','2011/09/23/16_20_36_821_sc.JPG','JPG'),
	(104,'image/jpeg','esch.JPG',197415,450,338,'2011-09-27 14:19:41','2011-09-27 14:19:41','2011/09/27/10_19_41_519_esch.JPG','JPG'),
	(105,'image/jpeg','saw.JPG',226211,351,450,'2011-09-27 14:30:56','2011-09-27 14:30:56','2011/09/27/10_30_56_30_saw.JPG','JPG'),
	(106,'image/jpeg','waf.JPG',948023,450,338,'2011-09-27 15:09:27','2011-09-27 15:09:27','2011/09/27/11_09_27_77_waf.JPG','JPG'),
	(107,'image/jpeg','wfw.jpg',2489561,1280,960,'2011-09-27 15:26:20','2011-09-27 15:26:20','2011/09/27/11_26_20_405_wfw.jpg','jpg');

/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table invoices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `invoices`;

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `settled` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_profile_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_number` varchar(255) DEFAULT NULL,
  `exported` tinyint(1) DEFAULT '0',
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;

INSERT INTO `invoices` (`id`, `member_id`, `subscription_id`, `transaction_id`, `amount`, `number`, `settled`, `created_at`, `updated_at`, `order_id`, `payment_profile_id`, `payment_method`, `payment_number`, `exported`, `notes`)
VALUES
	(74,1,21,NULL,78,NULL,1,'2011-09-19 21:31:47','2011-09-19 21:31:49',473,NULL,'Credit Card','XXXX0027',0,NULL),
	(75,1,NULL,24,50,NULL,1,'2011-09-19 21:31:49','2011-09-19 21:31:50',473,NULL,'Credit Card','XXXX0027',0,NULL),
	(76,5,22,NULL,50,NULL,1,'2011-09-22 15:42:20','2011-09-22 15:42:22',498,NULL,'Credit Card','XXXX1111',0,NULL),
	(77,5,NULL,25,50,NULL,1,'2011-09-22 15:42:22','2011-09-22 15:42:23',498,NULL,'Credit Card','XXXX1111',0,NULL);

/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table line_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `line_items`;

CREATE TABLE `line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `recurring` tinyint(1) DEFAULT '0',
  `invoice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_line_items_on_id` (`id`),
  KEY `index_line_items_on_order_id` (`order_id`),
  KEY `index_line_items_on_donation_id` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `line_items` WRITE;
/*!40000 ALTER TABLE `line_items` DISABLE KEYS */;

INSERT INTO `line_items` (`id`, `order_id`, `program_id`, `quantity`, `price`, `created_at`, `updated_at`, `recurring`, `invoice_id`)
VALUES
	(121,473,13,1,50.00,'2011-09-19 21:31:22','2011-09-19 21:31:50',0,75),
	(122,473,2,1,78.00,'2011-09-19 21:31:28','2011-09-19 21:31:49',1,74),
	(123,480,33,1,20.00,'2011-09-20 16:34:26','2011-09-20 16:34:26',0,NULL),
	(124,481,33,1,50.00,'2011-09-20 16:35:52','2011-09-20 16:35:52',0,NULL),
	(125,483,33,1,10.00,'2011-09-20 18:25:34','2011-09-20 18:25:34',0,NULL),
	(126,483,13,1,10.00,'2011-09-20 18:26:22','2011-09-20 18:26:22',0,NULL),
	(127,483,33,1,20.00,'2011-09-20 18:26:48','2011-09-20 18:26:48',0,NULL),
	(128,484,33,1,10.00,'2011-09-20 18:33:54','2011-09-20 18:33:54',0,NULL),
	(130,498,13,1,10.00,'2011-09-22 15:41:44','2011-09-22 15:42:23',0,77),
	(131,498,39,1,50.00,'2011-09-22 15:41:52','2011-09-22 15:42:22',1,76),
	(132,498,33,1,40.00,'2011-09-22 15:41:56','2011-09-22 15:42:23',0,77),
	(135,536,13,1,30.00,'2011-09-27 17:32:48','2011-09-27 17:32:48',0,NULL),
	(136,527,20,1,30.00,'2011-09-27 19:42:41','2011-09-27 19:42:41',0,NULL),
	(144,604,6,1,20.00,'2011-10-03 16:10:52','2011-10-03 16:10:52',1,NULL);

/*!40000 ALTER TABLE `line_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `persistence_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `perishable_token` varchar(255) DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `member_until` datetime DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `customer_cim_id` varchar(255) DEFAULT NULL,
  `donor_number` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;

INSERT INTO `members` (`id`, `email`, `encrypted_password`, `persistence_token`, `created_at`, `updated_at`, `perishable_token`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `sign_in_count`, `remember_token`, `reset_password_token`, `remember_created_at`, `first_name`, `last_name`, `title`, `phone`, `fax`, `website`, `organization`, `member_until`, `username`, `customer_cim_id`, `donor_number`, `verified`)
VALUES
	(1,'khopkins218@gmail.com','$2a$10$DOSnadBFYf1iJv7lsbJUOuwAwfSxFmWcFpRTUcK.lNCIRuHllNLlu',NULL,'2011-05-25 16:30:08','2011-09-23 14:33:40',NULL,'2011-09-23 14:33:39','2011-09-19 21:05:30','127.0.0.1','192.168.0.198',43,NULL,NULL,NULL,'Kevin','Hopkins','Developer','','','','',NULL,'khopkins218@gmail.com','3688071',NULL,0),
	(2,'donor@donor.com','$2a$10$KlmMnY6hB0LV.gO.LuQy9uWOlEj.xE9uOAfZeHrKIpTRmtY5Pnm7C',NULL,'2011-05-25 16:35:39','2011-05-25 16:40:09',NULL,'2011-05-25 16:35:41','2011-05-25 16:35:41','127.0.0.1','127.0.0.1',1,NULL,NULL,NULL,'Donor','Donor','Tester','555-555-5555','555-555-5555','','',NULL,'donor@donor.com','3688091',NULL,0),
	(3,'kevin@h-pk-ns.com','$2a$10$l9O7mhSlWWsYYlW3pomN6.Khfw2iScMx6OAnVVnyBUE7xv49FW8RK',NULL,'2011-06-02 18:05:20','2011-06-02 18:05:22',NULL,'2011-06-02 18:05:22','2011-06-02 18:05:22','127.0.0.1','127.0.0.1',1,NULL,NULL,NULL,'Kevin','Hopkins','Developer','5403311772','','kevin.h-pk-ns.com','Found',NULL,'kevin@h-pk-ns.com','3765067',NULL,0),
	(4,'girardpt@gmail.com','$2a$10$wuiwafZVaL7Rc5i610Tns.Uckkw69Ud5p3TWesNkpTjgiR4hgdOAC',NULL,'2011-08-19 18:37:50','2011-09-09 17:31:54',NULL,'2011-09-09 17:31:54','2011-08-19 18:37:53','192.168.0.199','192.168.0.197',2,NULL,NULL,NULL,'Parker','Girard','Esq.','919-9911','919-9911','www.thingsinc.com','Things, Inc.',NULL,'girardpt@gmail.com','4393973',NULL,0),
	(5,'sakpase16@gmail.com','$2a$10$uEPWzZubGxvtC/PX36AFh.ZrQTbiM8tjW7Eps74fuiXgf8pgLMpBC',NULL,'2011-08-23 17:41:49','2011-09-29 18:56:53',NULL,'2011-09-29 18:56:52','2011-09-29 18:54:59','208.100.40.45','208.100.40.45',14,NULL,NULL,NULL,'Wendell','Sommers','','330-440-2412','','','',NULL,'sakpase16@gmail.com','4423913','63856',0),
	(6,'test@test.com','$2a$10$d0RT0JRhGb3yBO.1eyAKMOuqZxKJKP6UZetG24U2UhaNZLEEAPfXK',NULL,'2011-08-23 18:02:30','2011-08-23 19:07:57',NULL,'2011-08-23 19:07:57','2011-08-23 18:17:51','192.168.0.193','127.0.0.1',3,NULL,NULL,NULL,'test','User','','','','','',NULL,'test@test.com','4424098',NULL,0),
	(8,'timmy@jhnsn.org','$2a$10$HqXFe7KCf5iLXt86KvSLb.tIKAlSiHJJukUhLprtNsHAbXRvNAm4q',NULL,'2011-08-26 18:12:00','2011-09-05 19:40:13',NULL,'2011-09-05 19:40:12','2011-09-02 17:56:20','192.168.0.193','192.168.0.193',4,NULL,NULL,NULL,'Timothy','Johnson',NULL,NULL,NULL,NULL,NULL,NULL,'timmy@jhnsn.org','4460116',NULL,0),
	(9,'jared@camoh.org','$2a$10$4rZwRmvS69eLrHRwQVJRCeo.VIRzHwNpv20aLrxvFizukgAnB48vi',NULL,'2011-08-26 19:25:41','2011-08-30 18:45:14',NULL,'2011-08-30 18:45:14','2011-08-26 19:33:01','12.36.191.18','12.36.191.18',4,NULL,NULL,NULL,'Jared','Mullet',NULL,NULL,NULL,NULL,NULL,NULL,'jared@camoh.org','4460625',NULL,0),
	(10,'stephensheryl@embarqmail.com','$2a$10$qsYOAdCSKXW7PYB1hAj1YuETscioz4oWMDViyVPXl8.IrLlugHuhC',NULL,'2011-08-30 19:37:06','2011-08-30 19:37:09',NULL,'2011-08-30 19:37:09','2011-08-30 19:37:09','209.51.184.13','209.51.184.13',1,NULL,NULL,NULL,'Stephen & Sheryl','Martin',NULL,NULL,NULL,NULL,NULL,NULL,'stephensheryl@embarqmail.com','4487928',NULL,0),
	(11,'bbeachy@camoh.org','$2a$10$o7gxYYg1sKNWN8t3uLDRsusPgp6rEwXixsCcLBd57jAZHabDYE3hG',NULL,'2011-09-02 18:34:42','2011-09-02 18:34:51',NULL,'2011-09-02 18:34:51','2011-09-02 18:34:51','209.51.184.13','209.51.184.13',1,NULL,NULL,NULL,'Benjamin','Beachy',NULL,NULL,NULL,NULL,NULL,NULL,'bbeachy@camoh.org','4525114',NULL,0),
	(12,'girardpt@dukes.jmu.edu','$2a$10$sl4qoRlZpp1xNUeShgSn8.mFBXE1aptMcPfv19nBYREa07sl7wvC2',NULL,'2011-09-09 17:35:12','2011-09-09 18:07:29',NULL,'2011-09-09 18:07:29','2011-09-09 17:54:42','192.168.0.199','192.168.0.199',4,NULL,NULL,NULL,'Parker','Girard',NULL,'434.981.0333',NULL,NULL,NULL,NULL,'girardpt@dukes.jmu.edu','4574402',NULL,0),
	(13,'kevin@wearefound.com','$2a$10$eYVk7q8WSHt.Oq6yJ9cnGePB7X1b1CyNiCfjSAZpUfYTE8zQiXpc6',NULL,'2011-09-14 21:22:07','2011-09-27 13:31:08',NULL,'2011-09-27 13:31:05','2011-09-23 14:10:53','192.168.0.194','192.168.0.196',3,NULL,NULL,NULL,'Kevin','Hopkins',NULL,'',NULL,NULL,NULL,NULL,'kevin@wearefound.com','4637939','',0),
	(14,'test@testme.com','$2a$10$OMHhqXqYypUmAOVu3L3dfOpoi6fJNtyTQ.wzwzonuCG6d2Y0xJ6.y',NULL,'2011-09-27 17:26:21','2011-09-27 17:26:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Test','Test',NULL,'',NULL,NULL,NULL,NULL,'test@testme.com','4778463','',0);

/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table news_item_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news_item_translations`;

CREATE TABLE `news_item_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_item_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `external_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_news_item_translations_on_news_item_id` (`news_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `news_item_translations` WRITE;
/*!40000 ALTER TABLE `news_item_translations` DISABLE KEYS */;

INSERT INTO `news_item_translations` (`id`, `news_item_id`, `locale`, `title`, `body`, `external_url`, `created_at`, `updated_at`)
VALUES
	(4,4,'en','Japan Earthquake & Tsunami','<p>The 9.0 earthquake, which struck Japan at 2:46 p.m. on March 11 was the fifth largest earthquake ever recorded and the biggest in Japan\'s history. &#160;Minutes later, a tsunami-triggered wall of water up to thirty feet high slammed Japan\'s eastern coast. &#160;To compound problems, the cooling systems at six of Japan\'s nuclear reactors were knocked out causing a serious nuclear emergency, second only to that of Chernobyl twenty-five years ago.</p>','','2011-08-12 14:20:33','2011-08-12 14:20:33'),
	(7,7,'en','Hurricane Irene','<p>Even though Hurricane Irene didn\'t cause as much damage as weather forecasters predicted, it did cause widespread damage. Thirty-two people lost their lives, and millions of people are still without electricity.\r\n</p>','','2011-08-16 17:06:47','2011-09-07 12:54:17'),
	(8,8,'en','A Ray of Hope in Their Final Years','<p>Juan and Cruz live with their crippled son Isidro in a small house beside the church where they are members. In exchange for rent, they clean the church and maintain its premises. Their only income is the $25 their children give them each month and the $10 cash they receive with their food parcel from CAM. They use the cash to buy medicines for Isidro and more food. <br />Life is difficult for elderly people in Nicaragua. Healthcare for the elderly is free, but the hospitals are unsanitary and usually do not have the proper equipment or medicines. When older people develop major health problems they often die for lack of quality treatment. These people depend on their children or extended family to survive. <br />Their helplessness and dependence on others are the biggest things that stand out to me, says Andy Yoder, CAM\'s distribution director in Nicaragua. Some die simply for lack of basic necessities.</p>\r\n<h2>Hope in Haiti</h2>\r\n<p>Madam Belia sits on the steps of her hurricane-damaged, tarp-covered house. Sunshine and strong winds have weathered the tarp. When it rains at night, she covers herself with a piece of plastic to stay dry. Nevertheless she pleasantly states, God is good to me. Everything in the box is so helpful. I keep you on my mind in prayer. Thank you, thank you for the food.</p>\r\n\r\n<p>Madam Belia is another recipient of CAM\'s <strong><a title=\"http://camdon.railsplayground.net/programs/14\" href=\"http://camdon.railsplayground.net/programs/14\">Help-for-the-Elderly (HFTE)</a> </strong>program. These older people suffer so much yet deeply appreciate the help they receive from sponsors.\r\n</p>\r\n<p><strong><a title=\"http://camdon.railsplayground.net/programs/14\" href=\"http://camdon.railsplayground.net/programs/14\">HFTE</a>\r\n</strong> recipients receive a parcel every month. Pastors from evangelical churches give us names of the poorest in their churches. CAM staff visits these families, and if they are within CAM\'s policy to receive a parcel, we add them to the program. After they are added to the list, they receive a monthly parcel until their situation improves and someone poorer needs a parcel.</p>\r\n<p>Many older people who are Christians portray a strong faith in God that He will provide for them. Many times they view the help they receive from CAM as a direct answer to their prayer for help.</p>\r\n<p>For Juan and his family, Madam Belia, and hundreds more elderly people, a monthly food parcel is a bright ray of hope in their life and more times than not, the only way they survive.</p>\r\n<h3><a title=\"http://camdon.railsplayground.net/programs/14\" href=\"http://camdon.railsplayground.net/programs/14\">Find out more about the Help-for-the-Elderly program.</a>\r\n</h3>',NULL,'2011-09-02 20:27:40','2011-09-19 16:45:58'),
	(9,9,'en','Light and Truth in Monrovia\'s prison halls','<p>Bright sunlight filters through the iron bars of the cell window, offering a false hope to the detainees inside. Cold and dark, the cell seems to snatch away any glimmer of hope and replace it with depression and stress.  Not knowing when or if they will return to civilization, the inmates have little left to live for. Unfortunately, this is life for most prisoners in Liberia.</p>\r\n<p>But some of the inmates in Monrovia, Liberia, experience something different. The cold, iron bars no longer discourage them.  Stress and depression no longer reign in the prison halls. These men have found faith in Jesus Christ, the Light and Truth of all!</p>\r\n<p>Several years ago, Light Mennonite Church in Liberia began to distribute Bible correspondence courses in prisons throughout Monrovia. These courses are published by Lamp and Light and funded by CAM\'s <strong><a title=\"News\" href=\"/programs/35\">Sponsor-A-Bible-Lesson</a>\r\n</strong> program. Inmates declare the courses to be the liberator of their lost souls. Brother Sayon, Lamp and Light office assistant, reports, The courses have trained up pastors, evangelists, and praying brethren within the prison . . . </p>\r\n<p>He went on to say how new believers testify the courses strengthen their faith in God. They are thankful for the knowledge they gain from their studies, and that they <em>no longer need to be among the ignorant ones who are being destroyed</em> (Hosea 4:6). Their daily prayer is that they will not stray from the Truth they have received.</p>\r\n<p>Thank you, supporters, for making it possible to provide Bible lessons for lost and struggling inmates in Liberia! Please pray the inmates in the dreaded prisons of Monrovia would continue walking in Truth even after they are released from prison.</p>\r\n<p><a title=\"http://camdon.railsplayground.net/donate#35\" href=\"http://camdon.railsplayground.net/donate#35\">Find out more about the Sponsor-A-Bible-Lesson program.</a>\r\n</p>',NULL,'2011-09-02 20:41:49','2011-09-19 16:46:15'),
	(10,10,'en','Bibles to the Bush','<p>Liberia is a land of darkness, but many people also have a real hunger for the Word of God. This year again, God led a small team from America to bring several thousand Bibles and Christian literature to the bush parts of Liberia where some people had never owned a Bible. Pray the Gospel message will take root in these villages where spiritual darkness and superstition abound.</p>\r\n\r\n\r\n<p><a title=\"http://camdon.railsplayground.net/programs/5\" href=\"http://camdon.railsplayground.net/programs/5\">Find out more about the Bibles-for-the-World (BFTW) program.</a>\r\n</p>',NULL,'2011-09-06 12:33:13','2011-09-30 13:43:53'),
	(11,11,'en','My Mother Does Not Know','<p style=\"font-style: italic;\"><strong>Children\'s Corner</strong> - the true story of Rose Toe, a sponsored girl at the Peter Sayklon orphanage in Kakata, Liberia.</p>\r\n\r\n<p>\"My mother does not know,<br />My mother does not know,<br />My mother does not know,<br />I will let her know.</p>\r\n<p>I just learned this song. I learned it in February when I came to live at the Peter Sayklon orphanage in Kakata. The song means my mother does not know about Jesus. There are more verses . . . My father does not know, my brother does not know, my sister does not know, my people do not know.</p>\r\n<p>It used to be true of me. I didn\'t know about Jesus. But now I am learning about Him, and I love Him. I know He is coming again to take us home to heaven. We sing more verses to the song:&#160;</p>\r\n<p>Yes, I love the Lord,       <br />Yes, I love the Lord,<br />Yes, I love the Lord,<br />Down in my heart.</p>\r\n<p>\"He is coming again,<br />He is coming again,<br />He is coming again, <br />On judgment day. </p>\r\n<p>I learn many other songs at my new home. I love to sing the song, When We All Get to Heaven. After we sing this song, my orphanage mother says to us children, I always ask you one question, and every day I will ask you that question. You can sing so much. But are you going to sing in heaven? You sure you will be there? <br />We always answer, Yes! I make sure my voice is heard when I answer, Yes, I will be there in heaven! <br />Here at the orphanage, I have plenty of rice to eat and soon I will get my own notebook and pencil and go to school. My sponsor in America sends money to CAM every month and that pays for everything I need. I tell God and my sponsor, thank you!<br />I now know about Jesus. But my mother still does not know. And my people in River Gee do not know about Jesus. My orphanage mother prays with me that someday, someday soon, the people in my area will learn about Jesus. River Gee is far away, and we can\'t easily go there. But we pray someone will take them the message, and they can hear about Jesus. Just like I learned about Jesus at the orphanage.</p>\r\n<p style=\"font-style: italic;\">In southeastern Liberia, tradition has it that when a woman\'s husband dies, she is forced to marry his brother or another man within his family to carry on the family line. Sometimes the woman runs away to avoid marrying a man she does not love. After Rose\'s father died, her mother ran away so she would not be forced into marrying. Rose and her brothers Terry and David were left alone. <br />Martha Sayklon, director of the Peter Sayklon orphanage, heard of their sad story, had compassion on them, and brought them to her orphanage. Please pray for Rose and her brothers. At the orphanage, they receive love, care, and Bible teaching. Pray they will continue to feel God\'s love touch their hearts and stay safe and secure. <br />Pray also for the many people in River Gee and other parts of Africa who do not know about Jesus. Pray that someone would carry to them the message of God, His love, and His soon return.</p>',NULL,'2011-09-07 13:20:25','2011-09-19 15:56:01'),
	(12,12,'en','From Starving to Satisfied','<p>Baby Tee\'s face was once contorted by severe malnutrition and suffering. His mother was sick in the hospital, his father had abandoned him, and Baby Tee was left in the care of his grandmother. When his grandmother brought him to the CAM office in Liberia, our staff gave them two cans of infant formula. Two weeks later, when the staff visited them, Baby Tee was wearing an expression of utter contentment as he downed another bottle of the formula that helped save his life.</p>\r\n<p>Around the world, children suffer from neglect and undernourishment. Some make a full recovery, others do not. Thanks to God and faithful supporters, hundreds of cans of infant formula and nutritional drink mix find their way to remote corners of Liberia, Haiti, or Nicaragua where they help save other precious lives.</p>\r\n<p><img class=\"add-caption\" rel=\"450x450\" alt=\"Baby Tee, Before Infant Formula\" title=\"Baby Tee, Before Infant Formula\" src=\"/system/images/BAhbB1sHOgZmSSIwMjAxMS8wOS8wNy8wOV81Nl8xMl81NDhfQmFieV9UZWVfQmVmb3JlLkpQRwY6BkVUWwg6BnA6CnRodW1iSSINNDUweDQ1MD4GOwZU/Baby_Tee_Before.JPG\" height=\"300\" width=\"450\" /></p>\r\n<p><img class=\"add-caption\" rel=\"450x450\" alt=\"Baby Tee, After Infant Formula\" title=\"Baby Tee, After Infant Formula\" src=\"/system/images/BAhbB1sHOgZmSSIvMjAxMS8wOS8wNy8wOV81Nl8xMl80MjVfQmFieV9UZWVfQWZ0ZXIuSlBHBjoGRVRbCDoGcDoKdGh1bWJJIg00NTB4NDUwPgY7BlQ/Baby_Tee_After.JPG\" height=\"299\" width=\"450\" /></p>\r\n\r\n\r\n<h3><a title=\"http://camdon.railsplayground.net/programs/23\" href=\"http://camdon.railsplayground.net/programs/23\">Find out more about the Save-a-Life! (SAL!) program.</a>\r\n</h3>',NULL,'2011-09-07 13:56:53','2011-09-19 16:44:46');

/*!40000 ALTER TABLE `news_item_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table news_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news_items`;

CREATE TABLE `news_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `publish_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `external_url` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `news_type` varchar(255) DEFAULT 'CAM Newsletter',
  `image_caption` text,
  PRIMARY KEY (`id`),
  KEY `index_news_items_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `news_items` WRITE;
/*!40000 ALTER TABLE `news_items` DISABLE KEYS */;

INSERT INTO `news_items` (`id`, `title`, `body`, `publish_date`, `created_at`, `updated_at`, `external_url`, `image_id`, `news_type`, `image_caption`)
VALUES
	(4,'Japan Earthquake & Tsunami','<p>The 9.0 earthquake, which struck Japan at 2:46 p.m. on March 11 was the fifth largest earthquake ever recorded and the biggest in Japan\'s history. &#160;Minutes later, a tsunami-triggered wall of water up to thirty feet high slammed Japan\'s eastern coast. &#160;To compound problems, the cooling systems at six of Japan\'s nuclear reactors were knocked out causing a serious nuclear emergency, second only to that of Chernobyl twenty-five years ago.</p>','2011-08-12 14:18:00','2011-08-12 14:20:33','2011-09-19 16:43:42','',NULL,'News Release',''),
	(7,'Hurricane Irene','<p>Even though Hurricane Irene didn\'t cause as much damage as weather forecasters predicted, it did cause widespread damage. Thirty-two people lost their lives, and millions of people are still without electricity.\r\n</p>','2011-08-16 17:06:00','2011-08-16 17:06:47','2011-09-07 12:54:17','',NULL,'News Release',NULL),
	(8,'A Ray of Hope in Their Final Years','<p>Juan and Cruz live with their crippled son Isidro in a small house beside the church where they are members. In exchange for rent, they clean the church and maintain its premises. Their only income is the $25 their children give them each month and the $10 cash they receive with their food parcel from CAM. They use the cash to buy medicines for Isidro and more food. <br />Life is difficult for elderly people in Nicaragua. Healthcare for the elderly is free, but the hospitals are unsanitary and usually do not have the proper equipment or medicines. When older people develop major health problems they often die for lack of quality treatment. These people depend on their children or extended family to survive. <br />Their helplessness and dependence on others are the biggest things that stand out to me, says Andy Yoder, CAM\'s distribution director in Nicaragua. Some die simply for lack of basic necessities.</p>\r\n<h2>Hope in Haiti</h2>\r\n<p>Madam Belia sits on the steps of her hurricane-damaged, tarp-covered house. Sunshine and strong winds have weathered the tarp. When it rains at night, she covers herself with a piece of plastic to stay dry. Nevertheless she pleasantly states, God is good to me. Everything in the box is so helpful. I keep you on my mind in prayer. Thank you, thank you for the food.</p>\r\n\r\n<p>Madam Belia is another recipient of CAM\'s <strong><a title=\"http://camdon.railsplayground.net/programs/14\" href=\"http://camdon.railsplayground.net/programs/14\">Help-for-the-Elderly (HFTE)</a> </strong>program. These older people suffer so much yet deeply appreciate the help they receive from sponsors.\r\n</p>\r\n<p><strong><a title=\"http://camdon.railsplayground.net/programs/14\" href=\"http://camdon.railsplayground.net/programs/14\">HFTE</a>\r\n</strong> recipients receive a parcel every month. Pastors from evangelical churches give us names of the poorest in their churches. CAM staff visits these families, and if they are within CAM\'s policy to receive a parcel, we add them to the program. After they are added to the list, they receive a monthly parcel until their situation improves and someone poorer needs a parcel.</p>\r\n<p>Many older people who are Christians portray a strong faith in God that He will provide for them. Many times they view the help they receive from CAM as a direct answer to their prayer for help.</p>\r\n<p>For Juan and his family, Madam Belia, and hundreds more elderly people, a monthly food parcel is a bright ray of hope in their life and more times than not, the only way they survive.</p>\r\n<h3><a title=\"http://camdon.railsplayground.net/programs/14\" href=\"http://camdon.railsplayground.net/programs/14\">Find out more about the Help-for-the-Elderly program.</a>\r\n</h3>','2011-09-02 20:14:00','2011-09-02 20:27:40','2011-09-19 16:45:58',NULL,65,'News Release','Madam Belia in Haiti with her treasured Help-for-the-Elderly food parcel.'),
	(9,'Light and Truth in Monrovia\'s prison halls','<p>Bright sunlight filters through the iron bars of the cell window, offering a false hope to the detainees inside. Cold and dark, the cell seems to snatch away any glimmer of hope and replace it with depression and stress.  Not knowing when or if they will return to civilization, the inmates have little left to live for. Unfortunately, this is life for most prisoners in Liberia.</p>\r\n<p>But some of the inmates in Monrovia, Liberia, experience something different. The cold, iron bars no longer discourage them.  Stress and depression no longer reign in the prison halls. These men have found faith in Jesus Christ, the Light and Truth of all!</p>\r\n<p>Several years ago, Light Mennonite Church in Liberia began to distribute Bible correspondence courses in prisons throughout Monrovia. These courses are published by Lamp and Light and funded by CAM\'s <strong><a title=\"News\" href=\"/programs/35\">Sponsor-A-Bible-Lesson</a>\r\n</strong> program. Inmates declare the courses to be the liberator of their lost souls. Brother Sayon, Lamp and Light office assistant, reports, The courses have trained up pastors, evangelists, and praying brethren within the prison . . . </p>\r\n<p>He went on to say how new believers testify the courses strengthen their faith in God. They are thankful for the knowledge they gain from their studies, and that they <em>no longer need to be among the ignorant ones who are being destroyed</em> (Hosea 4:6). Their daily prayer is that they will not stray from the Truth they have received.</p>\r\n<p>Thank you, supporters, for making it possible to provide Bible lessons for lost and struggling inmates in Liberia! Please pray the inmates in the dreaded prisons of Monrovia would continue walking in Truth even after they are released from prison.</p>\r\n<p><a title=\"http://camdon.railsplayground.net/donate#35\" href=\"http://camdon.railsplayground.net/donate#35\">Find out more about the Sponsor-A-Bible-Lesson program.</a>\r\n</p>','2011-09-02 20:39:00','2011-09-02 20:41:49','2011-09-19 16:46:15',NULL,NULL,'News Release',''),
	(10,'Bibles to the Bush','<p>Liberia is a land of darkness, but many people also have a real hunger for the Word of God. This year again, God led a small team from America to bring several thousand Bibles and Christian literature to the bush parts of Liberia where some people had never owned a Bible. Pray the Gospel message will take root in these villages where spiritual darkness and superstition abound.</p>\r\n\r\n\r\n<p><a title=\"http://camdon.railsplayground.net/programs/5\" href=\"http://camdon.railsplayground.net/programs/5\">Find out more about the Bibles-for-the-World (BFTW) program.</a>\r\n</p>','2011-09-01 12:30:00','2011-09-06 12:33:13','2011-09-30 13:43:53',NULL,91,'CAM Newsletter','Young Liberian boy with his very own Bible'),
	(11,'My Mother Does Not Know','<p style=\"font-style: italic;\"><strong>Children\'s Corner</strong> - the true story of Rose Toe, a sponsored girl at the Peter Sayklon orphanage in Kakata, Liberia.</p>\r\n\r\n<p>\"My mother does not know,<br />My mother does not know,<br />My mother does not know,<br />I will let her know.</p>\r\n<p>I just learned this song. I learned it in February when I came to live at the Peter Sayklon orphanage in Kakata. The song means my mother does not know about Jesus. There are more verses . . . My father does not know, my brother does not know, my sister does not know, my people do not know.</p>\r\n<p>It used to be true of me. I didn\'t know about Jesus. But now I am learning about Him, and I love Him. I know He is coming again to take us home to heaven. We sing more verses to the song:&#160;</p>\r\n<p>Yes, I love the Lord,       <br />Yes, I love the Lord,<br />Yes, I love the Lord,<br />Down in my heart.</p>\r\n<p>\"He is coming again,<br />He is coming again,<br />He is coming again, <br />On judgment day. </p>\r\n<p>I learn many other songs at my new home. I love to sing the song, When We All Get to Heaven. After we sing this song, my orphanage mother says to us children, I always ask you one question, and every day I will ask you that question. You can sing so much. But are you going to sing in heaven? You sure you will be there? <br />We always answer, Yes! I make sure my voice is heard when I answer, Yes, I will be there in heaven! <br />Here at the orphanage, I have plenty of rice to eat and soon I will get my own notebook and pencil and go to school. My sponsor in America sends money to CAM every month and that pays for everything I need. I tell God and my sponsor, thank you!<br />I now know about Jesus. But my mother still does not know. And my people in River Gee do not know about Jesus. My orphanage mother prays with me that someday, someday soon, the people in my area will learn about Jesus. River Gee is far away, and we can\'t easily go there. But we pray someone will take them the message, and they can hear about Jesus. Just like I learned about Jesus at the orphanage.</p>\r\n<p style=\"font-style: italic;\">In southeastern Liberia, tradition has it that when a woman\'s husband dies, she is forced to marry his brother or another man within his family to carry on the family line. Sometimes the woman runs away to avoid marrying a man she does not love. After Rose\'s father died, her mother ran away so she would not be forced into marrying. Rose and her brothers Terry and David were left alone. <br />Martha Sayklon, director of the Peter Sayklon orphanage, heard of their sad story, had compassion on them, and brought them to her orphanage. Please pray for Rose and her brothers. At the orphanage, they receive love, care, and Bible teaching. Pray they will continue to feel God\'s love touch their hearts and stay safe and secure. <br />Pray also for the many people in River Gee and other parts of Africa who do not know about Jesus. Pray that someone would carry to them the message of God, His love, and His soon return.</p>','2011-08-30 13:08:00','2011-09-07 13:20:25','2011-09-19 16:44:02',NULL,69,'News Release','Rose'),
	(12,'From Starving to Satisfied','<p>Baby Tee\'s face was once contorted by severe malnutrition and suffering. His mother was sick in the hospital, his father had abandoned him, and Baby Tee was left in the care of his grandmother. When his grandmother brought him to the CAM office in Liberia, our staff gave them two cans of infant formula. Two weeks later, when the staff visited them, Baby Tee was wearing an expression of utter contentment as he downed another bottle of the formula that helped save his life.</p>\r\n<p>Around the world, children suffer from neglect and undernourishment. Some make a full recovery, others do not. Thanks to God and faithful supporters, hundreds of cans of infant formula and nutritional drink mix find their way to remote corners of Liberia, Haiti, or Nicaragua where they help save other precious lives.</p>\r\n<p><img class=\"add-caption\" rel=\"450x450\" alt=\"Baby Tee, Before Infant Formula\" title=\"Baby Tee, Before Infant Formula\" src=\"/system/images/BAhbB1sHOgZmSSIwMjAxMS8wOS8wNy8wOV81Nl8xMl81NDhfQmFieV9UZWVfQmVmb3JlLkpQRwY6BkVUWwg6BnA6CnRodW1iSSINNDUweDQ1MD4GOwZU/Baby_Tee_Before.JPG\" height=\"300\" width=\"450\" /></p>\r\n<p><img class=\"add-caption\" rel=\"450x450\" alt=\"Baby Tee, After Infant Formula\" title=\"Baby Tee, After Infant Formula\" src=\"/system/images/BAhbB1sHOgZmSSIvMjAxMS8wOS8wNy8wOV81Nl8xMl80MjVfQmFieV9UZWVfQWZ0ZXIuSlBHBjoGRVRbCDoGcDoKdGh1bWJJIg00NTB4NDUwPgY7BlQ/Baby_Tee_After.JPG\" height=\"299\" width=\"450\" /></p>\r\n\r\n\r\n<h3><a title=\"http://camdon.railsplayground.net/programs/23\" href=\"http://camdon.railsplayground.net/programs/23\">Find out more about the Save-a-Life! (SAL!) program.</a>\r\n</h3>','2011-08-31 13:54:00','2011-09-07 13:56:53','2011-09-19 16:44:46',NULL,72,'News Release','Baby Tee - Before');

/*!40000 ALTER TABLE `news_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order_states
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_states`;

CREATE TABLE `order_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_states_on_state` (`state`),
  KEY `index_order_states_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `order_states` WRITE;
/*!40000 ALTER TABLE `order_states` DISABLE KEYS */;

INSERT INTO `order_states` (`id`, `state`, `created_at`, `updated_at`)
VALUES
	(1,'cart',NULL,NULL),
	(2,'processing',NULL,NULL),
	(3,'complete',NULL,NULL),
	(4,'abandoned',NULL,NULL);

/*!40000 ALTER TABLE `order_states` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `item_total` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `order_state_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_orders_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `member_id`, `item_total`, `total`, `order_state_id`, `position`, `created_at`, `updated_at`)
VALUES
	(473,1,128,128.00,3,NULL,'2011-09-19 21:31:13','2011-09-19 21:31:50'),
	(480,NULL,20,20.00,1,NULL,'2011-09-20 16:31:41','2011-09-20 16:34:26'),
	(481,NULL,50,50.00,1,NULL,'2011-09-20 16:35:01','2011-09-20 16:35:52'),
	(483,1,40,40.00,1,NULL,'2011-09-20 18:22:55','2011-09-23 14:33:40'),
	(484,NULL,10,10.00,1,NULL,'2011-09-20 18:33:41','2011-09-20 18:33:54'),
	(490,NULL,0,0.00,1,NULL,'2011-09-21 12:26:38','2011-09-21 12:31:53'),
	(498,5,100,100.00,3,NULL,'2011-09-22 15:38:32','2011-09-22 15:42:23'),
	(502,NULL,0,0.00,1,NULL,'2011-09-22 17:40:44','2011-09-22 18:02:51'),
	(527,NULL,30,30.00,1,NULL,'2011-09-26 13:55:24','2011-09-27 19:42:41'),
	(536,NULL,30,30.00,1,NULL,'2011-09-27 13:37:07','2011-09-27 17:32:48'),
	(570,5,0,0.00,1,NULL,'2011-09-29 13:57:16','2011-09-29 18:55:00'),
	(584,5,0,0.00,1,NULL,'2011-09-29 18:55:52','2011-09-29 18:58:18'),
	(589,NULL,0,0.00,1,NULL,'2011-09-30 12:32:15','2011-09-30 13:45:46'),
	(590,NULL,NULL,NULL,1,NULL,'2011-09-30 12:40:15','2011-09-30 12:40:15'),
	(591,NULL,NULL,NULL,1,NULL,'2011-09-30 13:45:41','2011-09-30 13:45:41'),
	(592,NULL,NULL,NULL,1,NULL,'2011-09-30 13:46:09','2011-09-30 13:46:09'),
	(593,NULL,NULL,NULL,1,NULL,'2011-09-30 14:32:15','2011-09-30 14:32:15'),
	(594,NULL,NULL,NULL,1,NULL,'2011-09-30 15:22:53','2011-09-30 15:22:53'),
	(595,NULL,NULL,NULL,1,NULL,'2011-09-30 17:46:57','2011-09-30 17:46:57'),
	(596,NULL,NULL,NULL,1,NULL,'2011-09-30 17:57:17','2011-09-30 17:57:17'),
	(597,NULL,NULL,NULL,1,NULL,'2011-09-30 18:58:12','2011-09-30 18:58:12'),
	(598,NULL,NULL,NULL,1,NULL,'2011-09-30 19:26:47','2011-09-30 19:26:47'),
	(599,NULL,NULL,NULL,1,NULL,'2011-09-30 20:09:48','2011-09-30 20:09:48'),
	(600,NULL,NULL,NULL,1,NULL,'2011-10-03 13:01:43','2011-10-03 13:01:43'),
	(601,NULL,NULL,NULL,1,NULL,'2011-10-03 13:34:38','2011-10-03 13:34:38'),
	(602,NULL,NULL,NULL,1,NULL,'2011-10-03 14:56:31','2011-10-03 14:56:31'),
	(603,NULL,NULL,NULL,1,NULL,'2011-10-03 15:36:53','2011-10-03 15:36:53'),
	(604,NULL,20,20.00,1,NULL,'2011-10-03 15:59:06','2011-10-03 16:10:52'),
	(605,NULL,NULL,NULL,1,NULL,'2011-10-03 16:11:23','2011-10-03 16:11:23'),
	(606,NULL,NULL,NULL,1,NULL,'2011-10-03 16:20:47','2011-10-03 16:20:47'),
	(607,NULL,NULL,NULL,1,NULL,'2011-10-03 16:30:47','2011-10-03 16:30:47'),
	(608,NULL,NULL,NULL,1,NULL,'2011-10-03 17:57:30','2011-10-03 17:57:30');

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_part_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_part_translations`;

CREATE TABLE `page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_part_translations_on_page_part_id` (`page_part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `page_part_translations` WRITE;
/*!40000 ALTER TABLE `page_part_translations` DISABLE KEYS */;

INSERT INTO `page_part_translations` (`id`, `page_part_id`, `locale`, `body`, `created_at`, `updated_at`)
VALUES
	(1,1,'en','<div class=\"slider-wrapper them-default\">\r\n<div class=\"ribbon\"></div>\r\n<br />\r\n<div id=\"slider\" class=\"nivoSlider\">\r\n{{ content_holder_83 }}\r\n</div>\r\n</div>\r\n<br />\r\n<h1>Welcome to Christian Aid Ministries</h1>\r\n<p><strong>Thank you for joining</strong> us here at our new website! We\'ll try to keep you updated on what activities we\'re involved in. Every two weeks there should be updates posted online for your benefit. Feel free to browse around and enjoy yourself! And most of all, please pray for the work of Christian Aid Ministries! We could not continue on without your prayer support. Thank you and may God bless you. </p>\r\n					<hr />','2011-05-20 17:07:58','2011-09-19 19:33:02'),
	(2,2,'en','<p>{{ content_holder_8 }}</p>','2011-05-20 17:07:58','2011-08-26 19:16:41'),
	(3,3,'en','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>','2011-05-20 17:07:58','2011-05-20 17:07:58'),
	(4,4,'en','','2011-05-20 17:07:58','2011-08-11 20:36:35'),
	(5,5,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>','2011-05-20 17:07:58','2011-05-20 17:07:58'),
	(8,8,'en','<br />\r\n<h1><strong>Who We Are</strong>\r\n</h1>\r\n<p>Christian Aid Ministries\' primary purpose is to be a trustworthy and efficient channel for Amish, Mennonite, and other conservative Anabaptist groups and individuals to minister to physical and spiritual needs around the world. This is in response to the command \". . . do good unto all men, especially unto them who are of the household of faith\" (Gal. 6:10). CAM is a non-profit, tax-exempt 501(c)(3) organization.</p>\r\n<br />\r\n<h2><strong>Reaching around the world:</strong>\r\n</h2>\r\n<p>Each year, CAM supporters provide approximately 15 million pounds of food, clothing, medicines, seeds, Bibles, Bible story books, and other Christian literature for needy people. Most of the aid goes to orphans and Christian families. &#160;Supporters? funds also help put up Gospel billboards, clean up and rebuild for natural disaster victims, support several church-planting efforts, operate two CAM medical clinics, and provide resources for needy families to make their own living &#160;.Our main purposes for providing aid are to help and encourage God?s people and bring the Gospel to a lost and dying world.&#160;</p>\r\n<br />\r\n<h2>How we operate:</h2>\r\n<p>CAM is controlled by a thirteen-member Board of Directors and operated by a six-member Executive Committee. The organizational structure includes an Audit Review Committee, Executive Council, Ministerial Committee; various support committees, and a number of department managers.</p>\r\n<br />\r\n<div><img src=\"/system/images/BAhbB1sHOgZmSSIpMjAxMS8wOC8xMC8xMl8zN180M18zMThfd2hvd2VhcmUucG5nBjoGRVRbCDoGcDoKdGh1bWJJIg00NTB4NDUwPgY7BlQ/whoweare.png\" title=\"Whoweare\" alt=\"Whoweare\" rel=\"450x450\" height=\"320\" width=\"437\" /></div>\r\n<br />\r\n<h2>Support:</h2>\r\n<p>CAM programs are supported entirely by contributions from concerned individuals and churches throughout the USA, Canada, Mexico, and a number of other countries. We believe donors? first responsibility is to their local church and would not want people neglecting their church offerings to give to CAM.</p>\r\n<br />\r\n<h2>A Volunteer Organization:</h2>\r\n<div><p>CAM is largely a volunteer organization aside from management, supervisory personnel, and bookkeeping operations. Each year, volunteers at our warehouse, field bases, Disaster Response Services, and other locations donate over 200,000 hours of work.</p>\r\n<br />\r\n<h2>Financial Statement</h2>\r\n</div>\r\n<p>An annual, audited financial statement is mailed to CAM\'s entire mailing list. Fundraising and non-aid administrative expenses are kept as low as possible. Usually these expenses are about one percent of income, which includes cash and donated products.</p>\r\n<br />\r\n<h2>Monthly newsletter</h2>\r\n<p>The CAM newsletter features specific needs in other countries, testimonies of people blessed by supporters\' gifts, updates, and more! If you would like to receive this free publication or add your friends or relatives to our mailing list, please call or write our Ohio office: P.O. Box 360, Berlin, Ohio, 44610; Phone: 330-893-2428.</p>\r\n<br />\r\n<h2>Presentations in your area</h2>\r\n<p>Representatives are available to show slides and share about CAM\'s overall programs or specific programs such as SALT Microfinance, Billboard Evangelism, and Biblical Stewardship Services. To arrange a meeting in your area, please write or call Jon Stoltzfus at our Pennsylvania office (717-354-2434). </p>\r\n<br />\r\n<h2>Ultimate Purpose:</h2>\r\n<p>Glorify God and help enlarge His kingdom. \". . . whatsoever ye do, do all to the glory of God.\" (I Cor. 10:31)</p>\r\n','2011-05-23 15:09:40','2011-09-13 16:57:45'),
	(9,9,'en','<p>{{ content_holder_86 }}</p>','2011-05-23 15:09:40','2011-09-07 17:16:59'),
	(10,10,'en','<h1>CAM Locations:</h1>\r\n<p>At CAM\'s home office in Berlin, Ohio, staff members do behind the scenes work such as processing donations, accounting, fundraising, procuring GIK products, making decisions, and directing the various CAM state-side operations and field bases. </p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSIsMjAxMS8wOC8xMC8xM18xMF8zOV8yMTBfcGFya2luZ19sb3QucG5nBjoGRVRbCDoGcDoKdGh1bWJJIg00NTB4NDUwPgY7BlQ/parking_lot.png\" title=\"Parking Lot\" alt=\"Parking Lot\" rel=\"450x450\" height=\"149\" width=\"450\" /></p>\r\n<p>We have a 55,000 sq. ft. distribution center in Ephrata, Pennsylvania, where food parcels are packed and other relief shipments organized. Next to the distribution center is our meat canning facility.</p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSIpMjAxMS8wOC8xMC8xM18xMF81NV84OTNfYnVpbGRpbmcucG5nBjoGRVRbCDoGcDoKdGh1bWJJIg00NTB4NDUwPgY7BlQ/building.png\" title=\"Building\" alt=\"Building\" rel=\"450x450\" height=\"338\" width=\"450\" /></p>\r\n<p>CAM also operates five clothing centers where clothing, footwear, comforters, and fabric are received, sorted, and prepared for shipment overseas. </p>\r\n<h1><strong>this is a part of the page where a 2 by 3 matrix of images go, so we need to build some html for this.</strong>\r\n</h1>\r\n<p>CAM has staff and distribution networks in Romania, Moldova, Ukraine, Haiti, Nicaragua, Liberia, and Israel.</p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSIzMjAxMS8wOC8xMC8xM18xNV8zMV8xMzRfcm9tYW5pYW5fb3JwaGFuYWdlLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINNDUweDQ1MD4GOwZU/romanian_orphanage.png\" title=\"Romanian Orphanage\" alt=\"Romanian Orphanage\" rel=\"450x450\" height=\"174\" width=\"450\" /></p>\r\n<h1>this is another matrix of images, this time 9 images in a 2 by 5 style. &#160;these will include the name and locations of these images.</h1>\r\n<h1>POSSIBLE JAVASCRIPT POP UP PAGE WITH IMAGES... WE\'LL THINK ABOUT THIS AS THE PROCESS DEVELOPS</h1>\r\n','2011-05-23 15:10:04','2011-09-02 19:18:10'),
	(11,11,'en','<p>{{ content_holder_86 }}</p>','2011-05-23 15:10:04','2011-09-07 17:22:09'),
	(12,12,'en','<p class=\"text-align-center\"><span class=\"text-align-left\"></span>\r\n</p>\r\n<h2 class=\"text-align-left\"><span class=\"text-align-left\">It is the calling and desire of Christian Aid Ministries to be faithful stewards in the trust that has been placed upon us in using the funds and materials that are donated to help those that are needy.</span>\r\n</h2>\r\n<h3 style=\"font-weight: normal; font-style: italic;\"></h3>\r\n<h3 style=\"font-weight: bold; font-style: italic;\">We at Christian Aid Ministries make ourselves accountable first of all to </h3>\r\n<h1>God</h1>\r\n<p>Moreover it is required in stewards, that a man be found faithful. 1 Corinthians 4:2 (KJV)</p>\r\n<p>As stewards of the resources that have been entrusted to us, it is our great desire that we be found faithful.</p>\r\n<h3 style=\"font-style: italic; font-weight: bold;\"></h3>\r\n<h3 style=\"font-style: italic; font-weight: bold;\">We are also accountable to</h3>\r\n<h1>Our fellow man (donors)</h1>\r\n<p>Avoiding this, that no man should blame us in this abundance which is administered by us: providing for honest things, not only in the&#160;sight of the Lord, but also in the sight of men. II Corinthians 8:20-21 (KJV)</p>\r\n<h3 style=\"font-weight: normal; font-style: italic;\"></h3>\r\n<h3 style=\"font-weight: bold; font-style: italic;\">We are also accountable to</h3>\r\n<h1>The government</h1>\r\n<p>Let every soul be subject unto the higher powers. For there is no power but of God: the powers that be are ordained of God.&#160;Romans13:1 (KJV)\r\n</p>\r\n<h3 class=\"text-align-center\">Christian Aid Ministries strives to obey the US nonprofit organization laws that may or may not contain the following:</h3>\r\n<ol><li>Annual financial statements are prepared in accordance to Generally Accepted Accounting Principles. <a target=\"_blank\" title=\"2010 Financial Statement\" href=\"/system/resources/2011/09/02/15_18_49_856_2010_Financial_Statement.pdf?iframe=true&amp;width=1000&amp;height=1200\">View the latest financial statement &gt;&gt;</a>\r\n</li>\r\n<br />\r\n<li>An Annual Independent audit is done by Byerley, Payne &amp; Whitean independent accounting firm.</li>\r\n<br />\r\n<li>Christian Aid Ministries is controlled by a Board of Directors that does not have any full time paid staff.</li>\r\n<br />\r\n<li>Christian Aid Ministries has a Conflict of Interest policy and seeks to avoid conflicts of interest.</li>\r\n<br />\r\n<li><a target=\"_blank\" title=\"http://www.ecfa.org/MemberProfile.aspx?ID=11586\" href=\"http://www.ecfa.org/MemberProfile.aspx?ID=11586\">Christian Aid Ministries is a member of ECFA</a> (Evangelical Council for Financial Accountability). Where we annually submit a renewal document which includes the most recent copy of the audited financial statement and answers to a number of questions related to the membership standards of ECFA.</li>\r\n<br />\r\n<li>Christian Aid Ministries has a Donor confidentiality policy that forbids trading donor information to any group or individual.</li>\r\n<br />\r\n<li>Annual budgets are prepared and approved by the Board of Directors.</li>\r\n<br />\r\n<li>Annual Reports are prepared to insure clarity with supporters where their money went. <a target=\"_blank\" title=\"2010 Annual Report\" href=\"/system/resources/2011/09/29/11_28_08_653_2010_AR_sm.pdf?iframe=true&amp;width=1000&amp;height=1200\">View the latest Annual Report &gt;&gt;</a>\r\n</li>\r\n</ol>\r\n','2011-05-23 15:10:29','2011-09-29 15:34:00'),
	(13,13,'en','<p>{{ content_holder_86 }}</p>','2011-05-23 15:10:29','2011-09-07 17:22:51'),
	(14,14,'en','<h1>Christian Aid Ministries </h1>\r\n<h2 style=\"font-weight: normal;\">likes to maintain transparent in terms of financial matters. </h2>\r\n<h3 style=\"font-weight: normal;\">Below are links to download our financial statements as they\'ve been released:</h3>\r\n<p><a target=\"_blank\" title=\"2010 Financial Statement\" href=\"/system/resources/2011/09/02/15_18_49_856_2010_Financial_Statement.pdf?iframe=true&amp;amp;width=1000&amp;amp;height=1200\">2010 Financial Statements</a>\r\n</p>','2011-05-23 15:10:50','2011-09-29 15:32:23'),
	(15,15,'en','<p>{{ content_holder_86 }}</p>','2011-05-23 15:10:50','2011-09-07 17:23:17'),
	(16,16,'en','<h1><strong>Statement of Faith:</strong>\r\n</h1>\r\n<p><strong>1. We believe</strong> in one God, eternally existing as Father, Son, and Holy Spirit. Matthew 28:19; Galatians 4:4-6; Ephesians 2:6, 13-18; 1st John 5:1-13This is my statement.</p>\r\n\r\n<p><strong>2. We believe</strong> that Jesus Christ is the Son of God, and that He was conceived of the Holy Spirit and born of the virgin Mary. Luke 1:35; Matthew 1:20-25</p>\r\n\r\n<p><strong>3. We believe</strong> that the Holy Spirit convicts of sin, effects the New Birth, gives guidance in life, empowers for service, and enables perseverance in faith and holiness. John 16:7-11,13</p>\r\n\r\n<p><strong>4. We believe</strong> that the Bible is the divinely inspired Word of God, revealing God and His will, both in the Old and New Testaments. Luke 1:70; 2nd Timothy 3:16; 2nd Peter 1:20, 21</p>\r\n\r\n<p><strong>5. We believe</strong> that in the beginning God created all things. He made man in His own image, with a free will, a moral character, and a spiritual nature. Colossians 1:16,17; 1st John 1:1-13</p>\r\n\r\n<p><strong>6. We believe</strong> that man, through unbelief and disobedience fell into sin, bringing depravity and death upon the human race; that man as a sinner is self-centered and self-willed, unable to redeem himself. Romans 3:10-18,23, 5:12</p>\r\n\r\n<p><strong>7. We believe</strong> that there is one Mediator between God and man, the Man Christ Jesus, Who shed His blood and died on Calvary to redeem us from sin, was resurrected from the dead, ascended to heaven, and is sitting at the right hand of the Father interceding for us. John 3:16; Hebrews 9:12-14, 10:12; Colossians 1:20-22</p>\r\n\r\n<p><strong>8. We believe</strong> that salvation is by grace through faith in Christ?a free gift bestowed by God on all who believe in Christ, repent of their sins, are born again, and walk in newness of life. Ephesians 2:8,9; John 3:3,5; Romans 6:1-7, 10:9, 10</p>\r\n\r\n<p><strong>9. We believe</strong> that the church is the body of Christ, and that all those who are born again and walk in obedience to the Word of God constitute the true church of which Christ is the head. Ephesians 1:22,23; Colossians 1:18; 1st John 1:7; 1st Timothy 3:15</p>\r\n\r\n<p><strong>10. We believe</strong> that God provides the church with the necessary leadership, such as bishops, ministers, evangelists, and deacons, to shepherd the flock, teach the Word, administer the ordinances, and lead the church in the exercise of discipline. Ephesians 4:11-16</p>\r\n\r\n<p><strong>11. We believe</strong> that Christ commissioned the church to: evangelize the world, make disciples of all men and teach them to follow Him in a Biblical walk of life, and to minister to the needs of all people. Mark 16:15; Matthew 28:19,20; 1st John 3:17</p>\r\n\r\n<p><strong>12. We believe</strong> that those who repent and believe should be baptized with water as a symbol of: new birth, baptism of the Spirit, cleansing from sin, commitment to Christ, and separation from evil. Matthew 28:19; Acts 2:38, 10:44-48; 1st Peter 3:21</p>\r\n\r\n<p><strong>13. We believe</strong> that the church should observe the communion of the Lord?s Supper as a symbol of His broken body and shed blood, in a common union of believers with Christ and one another. 1st Corinthians 10:16-21, 11:23-26</p>\r\n\r\n<p><strong>14. We believe</strong> that Christ taught both by example and by commandment that feet-washing is a symbol of brotherhood, service, and humility, and should be observed literally. John 13:3-17</p>\r\n\r\n<p><strong>15. We believe</strong> that the holy kiss should be practiced as a symbol of Christian love among the believers, brother with brother and sister with sister. Romans 16:16; 1st Peter 5:14</p>\r\n<p><strong>16. We believe</strong> that God has established unique roles of authority for man and woman. Therefore, a man?s head is to be uncovered in praying and prophesying, and the woman?s head is to be veiled, and her hair uncut, signifying their acceptance of God?s order. 1st Corinthians 11:1-16</p>\r\n\r\n<p><strong>17. We believe</strong> that the anointing with oil, accompanied by the prayer of faith, is honored by God in the restoration of physical health, in accordance to His will. James 5:14,15</p>\r\n\r\n<p><strong>18. We believe</strong> that marriage is intended by God to be the union of one man and one woman for life, and that the believer shall marry only in the Lord. Hebrews 13:4; Mark 10:6-9</p>\r\n\r\n<p><strong>19. We believe</strong> that the personal appearance and lifestyle of Christian men and women should be modest, free from worldly fashion and adornment, maintaining simplicity in all areas of life, living as strangers and pilgrims in this world, seeking a city not made with hands, eternal in the heavens. Romans 12:1,2; James 4:4; 1st John 2:15-17</p>\r\n\r\n<p><strong>20. We believe</strong> that Christians should not take part in any destruction of human life, nor in any acts of retaliation. Instead, they should live a nonresistant lifestyle, demonstrating the love of Christ in their daily walk. Matthew 5:39-46; John 18:36; Romans 12:19-21</p>\r\n\r\n<p><strong>21. We believe</strong> that the church and state are ordained of God as separate entities in His divine plan, and that believers should honor rulers and be subject to their authority and pray for them. Romans 13:1-7; 1st Peter 2:13-17</p>\r\n\r\n<p><strong>22. We believe</strong> that the unrepentant, fallen brother or sister shall be excommunicated from the body of Christ in the spirit of love, and shall be received back into fellowship upon repentance and amendment of life. 1st Corinthians 5:1-13; 2nd Corinthians 6:14</p>\r\n<p><strong>23. We believe</strong> in the second coming of our Lord Jesus Christ, the blessed hope of believers, and that upon His return He will resurrect the righteous to eternal bliss in heaven, and the unrighteous to eternal damnation in hell. He will sit on the throne of His glory, judging all nations in the last day. 1st Thessalonians 4:16,17; Matthew 25:31-46</p>','2011-05-23 15:11:11','2011-09-02 19:17:17'),
	(17,17,'en','<p>{{ content_holder_86 }}</p>','2011-05-23 15:11:11','2011-09-07 17:23:45'),
	(18,18,'en','<h2>Foundation Services:</h2>\r\n<p>Christian Aid Ministries Foundation provides our supporters ways to direct various kinds of material resources to CAM and other charities of choice. Our Biblical Stewardship Services department provides estate planning literature, seminars, and personalized estate designs to our supporters free of charge. We believe God gives us stewardship of temporal assets to be managed by eternal values, and these services help us be Biblical stewards.</p>\r\n<h2>Donor Advised Fund</h2>\r\n<p>This is a way for you to make tax-deductable gifts to charities of your choice, while protecting your privacy and simplifying long-term giving. You may have highly appreciated real estate, securities, or other assets you wish to sell or give to a charity. An irrevocable contribution of all or a specified portion of the property enables you to minimize or avoid capital gains taxes and receive a tax deduction for the year in which you make a gift, even if not all the funds are disbursed to charities during that year. Christian Aid Ministries will place your gift in a Donor Advised Fund, where over time it may be used in various CAM programs and other charities of your choice. You may recommend when and to which charities funds are disbursed from your Donor Advised Fund, and will receive an annual report of fund activity. </p>\r\n<h2>Charitable Gift Annuities</h2>\r\n<p>This is a way for older supporters to generate income for the rest of their lives while making a charitable gift to Christian Aid Ministries. A Charitable Gift Annuity is an agreement between you and CAM. In exchange for your non-refundable gift of cash or other property, CAM will pay you a specified annuity for the rest of your life. The annual amount is fixed at the time you make the gift, and does not fluctuate with the economy, so you know how much income you will receive every year. The rate is determined by your age, as established by the American Council on Gift Annuities.   You will receive an income tax charitable deduction for the amount of your gift in the year it was given. Each year you will also receive a tax statement from CAM indicating the breakdown of your taxable and taxexempt annuity income for the previous year. Regular annuity payments will continue until your death, when the remaining balance of your original gift will be used in Christian Aid Ministries? programs.</p>\r\n<h2>Charitable Trusts</h2>\r\n<p>A trust is often the easiest means of making sure your wishes are carried out in the use and disposal of your property, during your lifetime or the lives of others. Effective use of trusts may also minimize or eliminate estate taxes. Basically, a trust is a form of property ownership. As the donor, you create the trust by transferring property to a trustee for the benefit of one or more beneficiaries. You prescribe exactly how you want the trustee to manage the trust property during your life and after your death.  Different trusts may be tailored to meet your unique needs. </p>\r\n<ul><li><strong>Charitable Remainder Trusts</strong>  can be established to provide lifetime income, minimize capital gains taxes, and avoid probate. After your death, the remainder of the assets pass  to charity to be used by Christian Aid Ministries and other charities of your choice.</li>\r\n<li><strong>Charitable Lead Trusts</strong> allow you to pass assets on to family members with little or no gift or estate tax payable, by first donating a portion of the trust?s income to charity and then, after a specified period of time, transferring the remainder of the trust to the beneficiaries. Your trust would make annual payments to Christian Aid Ministries and other charities of your choice  for a specified number of years, after which time the assets remaining in the trust would go to your beneficiaries.</li>\r\n</ul>\r\n<h2>Bequests</h2>\r\n<p>A bequest is a transfer of property to charity through your will. If your estate or assets are subject to a federal tax, a charitable bequest through your will may save you significant taxes.&#160;</p>\r\n<h3>Outright Bequest&#160;</h3>\r\n<p>You can specify an outright gift of cash, securities, real estate, or tangible personal property to go to charity. We recommend that for an outright bequest, you consider a percentage of your total estate rather than a fixed amount, since the value of the assets today may change by the time the bequest is disbursed.   </p>\r\n<h3>Residual Bequest</h3>\r\n<div><p>You can make specified bequests to your heirs, after which the residue, or balance remaining in the estate goes to charity, whatever amount that may be. Contingent BequestYou have a scriptural obligation to provide for dependant family members (I Tim 5:8), and you may wish to provide for others who are close to you. This enables you to make a bequest to charity, contingent providing first for those who depend upon you. For example, you could provide for a charity to receive a bequest from your estate only if your spouse does not survive you.   </p>\r\n<h2>Estate Planning Seminars</h2>Biblical Stewardship Services conducts estate planning seminars in churches and community meetings on:<br /><ul><li>Why it is important to have a will</li>\r\n<li>How to choose a guardian for minor children</li>\r\n<li>Biblical principles related to estate transfer</li>\r\n<li>How to handle household goods and effects</li>\r\n<li>The benefits of a revocable living trust</li>\r\n<li>How estate and capital gains taxes may be minimized or avoided</li>\r\n</ul>To schedule a Biblical Stewardship seminar, please call Paul A. Miller at 330-893-2428. <h2>Estate Design Services</h2>\r\n<p>Christian Aid Ministries offers personalized estate design planning services free of charge to our supporters. To schedule a private appointment, please call Paul A. Miller or Eli Weaver at 330-893-2428. All estate information shared with CAM will remain strictly confidential.</p>\r\n</div>','2011-05-23 15:11:41','2011-09-07 17:24:05'),
	(19,19,'en','<p>{{ content_holder_86 }}{{ content_holder_87 }}</p>','2011-05-23 15:11:41','2011-09-07 17:30:41'),
	(20,20,'en','<h1>TGS International</h1>\r\n<p>A subsidiary of Christian Aid Ministries</p>\r\n\r\n<p>TGS International was established in 1984 as a for-profit subsidiary of Christian Aid Ministries. Today TGS offers a variety of services and products to other missions, churches, and individuals. All TGS profits are used in CAM programs to benefit the needy around the world. </p>\r\n\r\n<h1><strong>TGS Services</strong>\r\n</h1>\r\n<strong>\r\n<p>Freight-forwarding and relief items</p>\r\n</strong>\r\n<p>	Freight-forwarding services for worldwide sea-container shipments&#160;</p>\r\n<p>	Freight shipments to countries where CAM has operations&#160;</p>\r\n<p>	Food commodities, canned chicken, vitamins, and other relief supplies\r\n</p>\r\n<p>\r\n<img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM18zM180Ml84NDNfYV9ib2F0LnBuZwY6BkVUWwg6BnA6CnRodW1iSSINNDUweDQ1MD4GOwZU/a_boat.png\" title=\"A Boat\" alt=\"A Boat\" rel=\"450x450\" height=\"299\" width=\"450\" /></p>\r\n<h2>Books and commercial printing</h2>\r\n<p>In 1995, TGS published its first book?101 Favorite Stories from the Bible. Today we offer many more books, CDs, study helps, and other items. Please write or call for a free catalog, or visit us online at www.tgsinternational.com. </p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM180NV8xNF8yMzVfYm9va18xLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/book_1.png\" title=\"Book 1\" alt=\"Book 1\" rel=\"225x255\" height=\"255\" width=\"182\" />&#160;&#160;<img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM180NV81MV8yNTdfYm9va18yLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/book_2.png\" title=\"Book 2\" alt=\"Book 2\" rel=\"225x255\" height=\"255\" width=\"165\" />&#160; &#160;<img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM180Nl8xM184NzhfYm9va18zLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/book_3.png\" title=\"Book 3\" alt=\"Book 3\" rel=\"225x255\" height=\"255\" width=\"171\" />&#160; &#160;<img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM180Nl8zNF84MjlfYm9va180LnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/book_4.png\" title=\"Book 4\" alt=\"Book 4\" rel=\"225x255\" height=\"201\" width=\"201\" /></p>\r\n<p>TGS also has worldwide sources for commercial printing. If you want to print books, Bibles, periodicals, or other materials, we can help you find the best value and possibly reduce your printing costs. Besides using printers in the USA, we print and bind in Belarus, Japan, China, and Singapore and arrange for door-to-door delivery.</p>\r\n<h2>Tours and airline ticketing</h2>\r\n<p>Good Samaritan Travel &amp; Tours is organized under TGS International. We offer tours to Israel, Egypt, Biblical Turkey, Anabaptist Europe, and some CAM overseas locations. These tours were developed to give people the opportunity to:</p>\r\n<p>? learn more about Bible lands and walk where Jesus walked<br />? develop greater appreciation for our Anabaptist heritage<br />? learn more about the cultures, beliefs, and conditions of people in other countries</p>\r\n<p>Good Samaritan Travel &amp; Tours also books airline tickets for mission trips or other travel. If you would like help with ticketing for your next trip, please call our travel department at <strong>330-893-2428</strong> or email them at <a href=\"mailto:travel@camoh.org\" title=\"travel@camoh.org\">travel@camoh.org</a>\r\n</p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM181Ml8xOF84N19mYXJtZXJzLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/farmers.png\" title=\"Farmers\" alt=\"Farmers\" rel=\"225x255\" height=\"155\" width=\"225\" />&#160; &#160;<img src=\"/system/images/BAhbB1sHOgZmSSIqMjAxMS8wOC8xMC8xM181Ml8wN18yMjRfZ29sZF9kb21lLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/gold_dome.png\" title=\"Gold Dome\" alt=\"Gold Dome\" rel=\"225x255\" height=\"181\" width=\"225\" /></p>\r\n<p>For more information on TGS, please write or call:</p>\r\n<p><br />TGS International<br />P.O. Box 355 · Berlin, Ohio 44610<br />Phone: 330-893-4828<br />Email: <a href=\"mailto:tgsbooks@camoh.org\" title=\"tgsbooks@camoh.org\">tgsbooks@camoh.org</a>\r\n<br /><a href=\"http://www.tgsinternational.com\" title=\"http://www.tgsinternational.com\">www.tgsinternational.com</a> </p>\r\n','2011-05-23 15:12:04','2011-09-07 17:24:25'),
	(21,21,'en','<p>{{ content_holder_86 }}</p>','2011-05-23 15:12:04','2011-09-07 17:24:25'),
	(22,22,'en','','2011-05-23 15:12:43','2011-08-16 18:49:56'),
	(23,23,'en','<p>{{ content_holder_11 }}</p>\r\n<br />','2011-05-23 15:12:43','2011-08-16 18:49:38'),
	(24,24,'en',NULL,'2011-05-23 15:37:47','2011-05-23 15:37:47'),
	(25,25,'en',NULL,'2011-05-23 15:37:47','2011-05-23 15:37:47'),
	(26,26,'en',NULL,'2011-05-23 15:39:14','2011-05-23 15:39:14'),
	(27,27,'en',NULL,'2011-05-23 15:39:14','2011-05-23 15:39:14'),
	(28,28,'en',NULL,'2011-05-23 15:43:25','2011-05-23 15:43:25'),
	(29,29,'en',NULL,'2011-05-23 15:43:25','2011-05-23 15:43:25'),
	(30,30,'en','','2011-05-23 15:50:18','2011-05-25 14:56:06'),
	(31,31,'en','','2011-05-23 15:50:18','2011-05-25 14:56:06'),
	(32,32,'en','','2011-05-23 16:18:50','2011-06-03 17:20:49'),
	(33,33,'en','','2011-05-23 16:18:50','2011-06-03 17:20:49'),
	(34,34,'en','<p>{{ content_holder_8 }}</p>','2011-05-24 17:39:45','2011-08-25 20:40:48'),
	(35,35,'en','','2011-05-24 17:39:45','2011-08-25 20:40:48'),
	(36,36,'en','','2011-05-24 17:50:32','2011-08-11 21:28:28'),
	(37,37,'en','<p>{{ content_holder_11 }}</p>','2011-05-24 17:50:32','2011-08-11 21:37:51'),
	(38,38,'en','','2011-05-26 14:15:37','2011-05-26 14:16:11'),
	(39,39,'en','','2011-05-26 14:15:37','2011-05-26 14:16:11'),
	(42,42,'en','','2011-06-21 15:23:51','2011-06-21 16:57:00'),
	(43,43,'en','','2011-06-21 15:23:51','2011-06-21 16:57:00'),
	(46,46,'en','<h1>CAM Training Videos</h1>\r\n<p>In the scrollable window below are training videos that I\'m producing for CAM internal usage.<br />\r\nThese videos will be used to train and cover 99% of the questions on how to administer the system\r\nsuch as content manged pages, news items, programs, articles, memberships, orders, files, images, et cetera. <br />\r\n<br />\r\nStreaming of the videos is available for modern browsers (Firefox 4+, Safari, IE8+, Chrome) but may be slow depending on internet connection.  If you cannot adequately stream the video, a link is available below the video to download the file.  Most videos are in either .MOV or .M4V file formats.  These can be viewed in Windows Media Player natively on some versions and with a plugin on others.  As well, iTunes or Quicktime will play these videos as they\'re its native format.<br />\r\n<br />\r\nI recommend downloading the videos to your local computer and putting them in a folder if your job is administration of the system or content editing as they will serve as a continued resource in its management.\r\n\r\nIf there is a topic that needs to be covered more in-depth, send an email to rachel@wearefound.com or kevin@wearefound.com and we\'ll put it on the screencasting schedule.<br /><br />\r\nI hope these videos are a beneficial resource in better understanding the system and making staff training much easier and more thorough.  They sure are fun to produce.\r\n<br /><br />\r\n~Kevin Hopkins <br />\r\n<a title=\"kevin@wearefound.com?subject=[CAM] Donation System Screencasts\" href=\"mailto:kevin@wearefound.com?subject=[CAM]%20Donation%20System%20Screencasts\">kevin@wearefound.com </a>\r\n<br />\r\nLead Developer @ Found\r\n</p>\r\n\r\n<iframe src=\"/jwplayer/training_videos.html\" height=\"1200px\" width=\"100%\"></iframe>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','2011-08-22 16:38:31','2011-08-25 20:53:45'),
	(47,47,'en','<div id=\"boxnav\">\r\n<h3>Training Videos</h3>\r\n<p>To the left are some training videos to show you how to manage, administer, and manipulate the system for content.  Continue to check this page often for new videos.</p>\r\n</div>','2011-08-22 16:38:31','2011-08-22 16:38:31'),
	(48,48,'en','','2011-08-25 20:38:53','2011-08-25 20:38:53'),
	(49,49,'en','','2011-08-25 20:38:53','2011-08-25 20:38:53'),
	(50,50,'en','','2011-08-25 20:41:52','2011-08-25 20:41:52'),
	(51,51,'en','','2011-08-25 20:41:52','2011-08-25 20:41:52'),
	(52,52,'en',NULL,'2011-08-26 15:08:02','2011-08-26 15:08:02'),
	(53,53,'en',NULL,'2011-08-26 15:08:02','2011-08-26 15:08:02');

/*!40000 ALTER TABLE `page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_parts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_parts`;

CREATE TABLE `page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_parts_on_id` (`id`),
  KEY `index_page_parts_on_page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;

INSERT INTO `page_parts` (`id`, `page_id`, `title`, `body`, `position`, `created_at`, `updated_at`)
VALUES
	(1,1,'Body','<div class=\"slider-wrapper them-default\">\r\n<div class=\"ribbon\"></div>\r\n<br />\r\n<div id=\"slider\" class=\"nivoSlider\">\r\n{{ content_holder_83 }}\r\n</div>\r\n</div>\r\n<br />\r\n<h1>Welcome to Christian Aid Ministries</h1>\r\n<p><strong>Thank you for joining</strong> us here at our new website! We\'ll try to keep you updated on what activities we\'re involved in. Every two weeks there should be updates posted online for your benefit. Feel free to browse around and enjoy yourself! And most of all, please pray for the work of Christian Aid Ministries! We could not continue on without your prayer support. Thank you and may God bless you. </p>\r\n					<hr />',0,'2011-05-20 17:07:58','2011-09-19 19:33:02'),
	(2,1,'Side Body','<p>{{ content_holder_8 }}</p>',1,'2011-05-20 17:07:58','2011-09-19 19:33:02'),
	(3,2,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2011-05-20 17:07:58','2011-05-20 17:07:58'),
	(4,3,'Body','',0,'2011-05-20 17:07:58','2011-08-11 20:36:35'),
	(5,3,'Side Body','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>',1,'2011-05-20 17:07:58','2011-08-11 20:36:35'),
	(8,5,'Body','<br />\r\n<h1><strong>Who We Are</strong>\r\n</h1>\r\n<p>Christian Aid Ministries\' primary purpose is to be a trustworthy and efficient channel for Amish, Mennonite, and other conservative Anabaptist groups and individuals to minister to physical and spiritual needs around the world. This is in response to the command \". . . do good unto all men, especially unto them who are of the household of faith\" (Gal. 6:10). CAM is a non-profit, tax-exempt 501(c)(3) organization.</p>\r\n<br />\r\n<h2><strong>Reaching around the world:</strong>\r\n</h2>\r\n<p>Each year, CAM supporters provide approximately 15 million pounds of food, clothing, medicines, seeds, Bibles, Bible story books, and other Christian literature for needy people. Most of the aid goes to orphans and Christian families. &#160;Supporters? funds also help put up Gospel billboards, clean up and rebuild for natural disaster victims, support several church-planting efforts, operate two CAM medical clinics, and provide resources for needy families to make their own living &#160;.Our main purposes for providing aid are to help and encourage God?s people and bring the Gospel to a lost and dying world.&#160;</p>\r\n<br />\r\n<h2>How we operate:</h2>\r\n<p>CAM is controlled by a thirteen-member Board of Directors and operated by a six-member Executive Committee. The organizational structure includes an Audit Review Committee, Executive Council, Ministerial Committee; various support committees, and a number of department managers.</p>\r\n<br />\r\n<div><img src=\"/system/images/BAhbB1sHOgZmSSIpMjAxMS8wOC8xMC8xMl8zN180M18zMThfd2hvd2VhcmUucG5nBjoGRVRbCDoGcDoKdGh1bWJJIg00NTB4NDUwPgY7BlQ/whoweare.png\" title=\"Whoweare\" alt=\"Whoweare\" rel=\"450x450\" height=\"320\" width=\"437\" /></div>\r\n<br />\r\n<h2>Support:</h2>\r\n<p>CAM programs are supported entirely by contributions from concerned individuals and churches throughout the USA, Canada, Mexico, and a number of other countries. We believe donors? first responsibility is to their local church and would not want people neglecting their church offerings to give to CAM.</p>\r\n<br />\r\n<h2>A Volunteer Organization:</h2>\r\n<div><p>CAM is largely a volunteer organization aside from management, supervisory personnel, and bookkeeping operations. Each year, volunteers at our warehouse, field bases, Disaster Response Services, and other locations donate over 200,000 hours of work.</p>\r\n<br />\r\n<h2>Financial Statement</h2>\r\n</div>\r\n<p>An annual, audited financial statement is mailed to CAM\'s entire mailing list. Fundraising and non-aid administrative expenses are kept as low as possible. Usually these expenses are about one percent of income, which includes cash and donated products.</p>\r\n<br />\r\n<h2>Monthly newsletter</h2>\r\n<p>The CAM newsletter features specific needs in other countries, testimonies of people blessed by supporters\' gifts, updates, and more! If you would like to receive this free publication or add your friends or relatives to our mailing list, please call or write our Ohio office: P.O. Box 360, Berlin, Ohio, 44610; Phone: 330-893-2428.</p>\r\n<br />\r\n<h2>Presentations in your area</h2>\r\n<p>Representatives are available to show slides and share about CAM\'s overall programs or specific programs such as SALT Microfinance, Billboard Evangelism, and Biblical Stewardship Services. To arrange a meeting in your area, please write or call Jon Stoltzfus at our Pennsylvania office (717-354-2434). </p>\r\n<br />\r\n<h2>Ultimate Purpose:</h2>\r\n<p>Glorify God and help enlarge His kingdom. \". . . whatsoever ye do, do all to the glory of God.\" (I Cor. 10:31)</p>\r\n',0,'2011-05-23 15:09:40','2011-09-13 16:57:45'),
	(9,5,'Side Body','<p>{{ content_holder_86 }}</p>',1,'2011-05-23 15:09:40','2011-09-13 16:57:45'),
	(10,6,'Body','<h1>CAM Locations:</h1>\r\n<p>At CAM\'s home office in Berlin, Ohio, staff members do behind the scenes work such as processing donations, accounting, fundraising, procuring GIK products, making decisions, and directing the various CAM state-side operations and field bases. </p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSIsMjAxMS8wOC8xMC8xM18xMF8zOV8yMTBfcGFya2luZ19sb3QucG5nBjoGRVRbCDoGcDoKdGh1bWJJIg00NTB4NDUwPgY7BlQ/parking_lot.png\" title=\"Parking Lot\" alt=\"Parking Lot\" rel=\"450x450\" height=\"149\" width=\"450\" /></p>\r\n<p>We have a 55,000 sq. ft. distribution center in Ephrata, Pennsylvania, where food parcels are packed and other relief shipments organized. Next to the distribution center is our meat canning facility.</p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSIpMjAxMS8wOC8xMC8xM18xMF81NV84OTNfYnVpbGRpbmcucG5nBjoGRVRbCDoGcDoKdGh1bWJJIg00NTB4NDUwPgY7BlQ/building.png\" title=\"Building\" alt=\"Building\" rel=\"450x450\" height=\"338\" width=\"450\" /></p>\r\n<p>CAM also operates five clothing centers where clothing, footwear, comforters, and fabric are received, sorted, and prepared for shipment overseas. </p>\r\n<h1><strong>this is a part of the page where a 2 by 3 matrix of images go, so we need to build some html for this.</strong>\r\n</h1>\r\n<p>CAM has staff and distribution networks in Romania, Moldova, Ukraine, Haiti, Nicaragua, Liberia, and Israel.</p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSIzMjAxMS8wOC8xMC8xM18xNV8zMV8xMzRfcm9tYW5pYW5fb3JwaGFuYWdlLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINNDUweDQ1MD4GOwZU/romanian_orphanage.png\" title=\"Romanian Orphanage\" alt=\"Romanian Orphanage\" rel=\"450x450\" height=\"174\" width=\"450\" /></p>\r\n<h1>this is another matrix of images, this time 9 images in a 2 by 5 style. &#160;these will include the name and locations of these images.</h1>\r\n<h1>POSSIBLE JAVASCRIPT POP UP PAGE WITH IMAGES... WE\'LL THINK ABOUT THIS AS THE PROCESS DEVELOPS</h1>\r\n',0,'2011-05-23 15:10:04','2011-09-07 17:22:18'),
	(11,6,'Side Body','<p>{{ content_holder_86 }}</p>',1,'2011-05-23 15:10:04','2011-09-07 17:22:18'),
	(12,7,'Body','<p class=\"text-align-center\"><span class=\"text-align-left\"></span>\r\n</p>\r\n<h2 class=\"text-align-left\"><span class=\"text-align-left\">It is the calling and desire of Christian Aid Ministries to be faithful stewards in the trust that has been placed upon us in using the funds and materials that are donated to help those that are needy.</span>\r\n</h2>\r\n<h3 style=\"font-weight: normal; font-style: italic;\"></h3>\r\n<h3 style=\"font-weight: bold; font-style: italic;\">We at Christian Aid Ministries make ourselves accountable first of all to </h3>\r\n<h1>God</h1>\r\n<p>Moreover it is required in stewards, that a man be found faithful. 1 Corinthians 4:2 (KJV)</p>\r\n<p>As stewards of the resources that have been entrusted to us, it is our great desire that we be found faithful.</p>\r\n<h3 style=\"font-style: italic; font-weight: bold;\"></h3>\r\n<h3 style=\"font-style: italic; font-weight: bold;\">We are also accountable to</h3>\r\n<h1>Our fellow man (donors)</h1>\r\n<p>Avoiding this, that no man should blame us in this abundance which is administered by us: providing for honest things, not only in the&#160;sight of the Lord, but also in the sight of men. II Corinthians 8:20-21 (KJV)</p>\r\n<h3 style=\"font-weight: normal; font-style: italic;\"></h3>\r\n<h3 style=\"font-weight: bold; font-style: italic;\">We are also accountable to</h3>\r\n<h1>The government</h1>\r\n<p>Let every soul be subject unto the higher powers. For there is no power but of God: the powers that be are ordained of God.&#160;Romans13:1 (KJV)\r\n</p>\r\n<h3 class=\"text-align-center\">Christian Aid Ministries strives to obey the US nonprofit organization laws that may or may not contain the following:</h3>\r\n<ol><li>Annual financial statements are prepared in accordance to Generally Accepted Accounting Principles. <a target=\"_blank\" title=\"2010 Financial Statement\" href=\"/system/resources/2011/09/02/15_18_49_856_2010_Financial_Statement.pdf?iframe=true&amp;width=1000&amp;height=1200\">View the latest financial statement &gt;&gt;</a>\r\n</li>\r\n<br />\r\n<li>An Annual Independent audit is done by Byerley, Payne &amp; Whitean independent accounting firm.</li>\r\n<br />\r\n<li>Christian Aid Ministries is controlled by a Board of Directors that does not have any full time paid staff.</li>\r\n<br />\r\n<li>Christian Aid Ministries has a Conflict of Interest policy and seeks to avoid conflicts of interest.</li>\r\n<br />\r\n<li><a target=\"_blank\" title=\"http://www.ecfa.org/MemberProfile.aspx?ID=11586\" href=\"http://www.ecfa.org/MemberProfile.aspx?ID=11586\">Christian Aid Ministries is a member of ECFA</a> (Evangelical Council for Financial Accountability). Where we annually submit a renewal document which includes the most recent copy of the audited financial statement and answers to a number of questions related to the membership standards of ECFA.</li>\r\n<br />\r\n<li>Christian Aid Ministries has a Donor confidentiality policy that forbids trading donor information to any group or individual.</li>\r\n<br />\r\n<li>Annual budgets are prepared and approved by the Board of Directors.</li>\r\n<br />\r\n<li>Annual Reports are prepared to insure clarity with supporters where their money went. <a target=\"_blank\" title=\"2010 Annual Report\" href=\"/system/resources/2011/09/29/11_28_08_653_2010_AR_sm.pdf?iframe=true&amp;width=1000&amp;height=1200\">View the latest Annual Report &gt;&gt;</a>\r\n</li>\r\n</ol>\r\n',0,'2011-05-23 15:10:29','2011-09-29 15:34:00'),
	(13,7,'Side Body','<p>{{ content_holder_86 }}</p>',1,'2011-05-23 15:10:29','2011-09-29 15:34:00'),
	(14,8,'Body','<h1>Christian Aid Ministries </h1>\r\n<h2 style=\"font-weight: normal;\">likes to maintain transparent in terms of financial matters. </h2>\r\n<h3 style=\"font-weight: normal;\">Below are links to download our financial statements as they\'ve been released:</h3>\r\n<p><a target=\"_blank\" title=\"2010 Financial Statement\" href=\"/system/resources/2011/09/02/15_18_49_856_2010_Financial_Statement.pdf?iframe=true&amp;amp;width=1000&amp;amp;height=1200\">2010 Financial Statements</a>\r\n</p>',0,'2011-05-23 15:10:50','2011-09-29 15:32:23'),
	(15,8,'Side Body','<p>{{ content_holder_86 }}</p>',1,'2011-05-23 15:10:50','2011-09-29 15:32:23'),
	(16,9,'Body','<h1><strong>Statement of Faith:</strong>\r\n</h1>\r\n<p><strong>1. We believe</strong> in one God, eternally existing as Father, Son, and Holy Spirit. Matthew 28:19; Galatians 4:4-6; Ephesians 2:6, 13-18; 1st John 5:1-13This is my statement.</p>\r\n\r\n<p><strong>2. We believe</strong> that Jesus Christ is the Son of God, and that He was conceived of the Holy Spirit and born of the virgin Mary. Luke 1:35; Matthew 1:20-25</p>\r\n\r\n<p><strong>3. We believe</strong> that the Holy Spirit convicts of sin, effects the New Birth, gives guidance in life, empowers for service, and enables perseverance in faith and holiness. John 16:7-11,13</p>\r\n\r\n<p><strong>4. We believe</strong> that the Bible is the divinely inspired Word of God, revealing God and His will, both in the Old and New Testaments. Luke 1:70; 2nd Timothy 3:16; 2nd Peter 1:20, 21</p>\r\n\r\n<p><strong>5. We believe</strong> that in the beginning God created all things. He made man in His own image, with a free will, a moral character, and a spiritual nature. Colossians 1:16,17; 1st John 1:1-13</p>\r\n\r\n<p><strong>6. We believe</strong> that man, through unbelief and disobedience fell into sin, bringing depravity and death upon the human race; that man as a sinner is self-centered and self-willed, unable to redeem himself. Romans 3:10-18,23, 5:12</p>\r\n\r\n<p><strong>7. We believe</strong> that there is one Mediator between God and man, the Man Christ Jesus, Who shed His blood and died on Calvary to redeem us from sin, was resurrected from the dead, ascended to heaven, and is sitting at the right hand of the Father interceding for us. John 3:16; Hebrews 9:12-14, 10:12; Colossians 1:20-22</p>\r\n\r\n<p><strong>8. We believe</strong> that salvation is by grace through faith in Christ?a free gift bestowed by God on all who believe in Christ, repent of their sins, are born again, and walk in newness of life. Ephesians 2:8,9; John 3:3,5; Romans 6:1-7, 10:9, 10</p>\r\n\r\n<p><strong>9. We believe</strong> that the church is the body of Christ, and that all those who are born again and walk in obedience to the Word of God constitute the true church of which Christ is the head. Ephesians 1:22,23; Colossians 1:18; 1st John 1:7; 1st Timothy 3:15</p>\r\n\r\n<p><strong>10. We believe</strong> that God provides the church with the necessary leadership, such as bishops, ministers, evangelists, and deacons, to shepherd the flock, teach the Word, administer the ordinances, and lead the church in the exercise of discipline. Ephesians 4:11-16</p>\r\n\r\n<p><strong>11. We believe</strong> that Christ commissioned the church to: evangelize the world, make disciples of all men and teach them to follow Him in a Biblical walk of life, and to minister to the needs of all people. Mark 16:15; Matthew 28:19,20; 1st John 3:17</p>\r\n\r\n<p><strong>12. We believe</strong> that those who repent and believe should be baptized with water as a symbol of: new birth, baptism of the Spirit, cleansing from sin, commitment to Christ, and separation from evil. Matthew 28:19; Acts 2:38, 10:44-48; 1st Peter 3:21</p>\r\n\r\n<p><strong>13. We believe</strong> that the church should observe the communion of the Lord?s Supper as a symbol of His broken body and shed blood, in a common union of believers with Christ and one another. 1st Corinthians 10:16-21, 11:23-26</p>\r\n\r\n<p><strong>14. We believe</strong> that Christ taught both by example and by commandment that feet-washing is a symbol of brotherhood, service, and humility, and should be observed literally. John 13:3-17</p>\r\n\r\n<p><strong>15. We believe</strong> that the holy kiss should be practiced as a symbol of Christian love among the believers, brother with brother and sister with sister. Romans 16:16; 1st Peter 5:14</p>\r\n<p><strong>16. We believe</strong> that God has established unique roles of authority for man and woman. Therefore, a man?s head is to be uncovered in praying and prophesying, and the woman?s head is to be veiled, and her hair uncut, signifying their acceptance of God?s order. 1st Corinthians 11:1-16</p>\r\n\r\n<p><strong>17. We believe</strong> that the anointing with oil, accompanied by the prayer of faith, is honored by God in the restoration of physical health, in accordance to His will. James 5:14,15</p>\r\n\r\n<p><strong>18. We believe</strong> that marriage is intended by God to be the union of one man and one woman for life, and that the believer shall marry only in the Lord. Hebrews 13:4; Mark 10:6-9</p>\r\n\r\n<p><strong>19. We believe</strong> that the personal appearance and lifestyle of Christian men and women should be modest, free from worldly fashion and adornment, maintaining simplicity in all areas of life, living as strangers and pilgrims in this world, seeking a city not made with hands, eternal in the heavens. Romans 12:1,2; James 4:4; 1st John 2:15-17</p>\r\n\r\n<p><strong>20. We believe</strong> that Christians should not take part in any destruction of human life, nor in any acts of retaliation. Instead, they should live a nonresistant lifestyle, demonstrating the love of Christ in their daily walk. Matthew 5:39-46; John 18:36; Romans 12:19-21</p>\r\n\r\n<p><strong>21. We believe</strong> that the church and state are ordained of God as separate entities in His divine plan, and that believers should honor rulers and be subject to their authority and pray for them. Romans 13:1-7; 1st Peter 2:13-17</p>\r\n\r\n<p><strong>22. We believe</strong> that the unrepentant, fallen brother or sister shall be excommunicated from the body of Christ in the spirit of love, and shall be received back into fellowship upon repentance and amendment of life. 1st Corinthians 5:1-13; 2nd Corinthians 6:14</p>\r\n<p><strong>23. We believe</strong> in the second coming of our Lord Jesus Christ, the blessed hope of believers, and that upon His return He will resurrect the righteous to eternal bliss in heaven, and the unrighteous to eternal damnation in hell. He will sit on the throne of His glory, judging all nations in the last day. 1st Thessalonians 4:16,17; Matthew 25:31-46</p>',0,'2011-05-23 15:11:11','2011-09-07 17:23:45'),
	(17,9,'Side Body','<p>{{ content_holder_86 }}</p>',1,'2011-05-23 15:11:11','2011-09-07 17:23:45'),
	(18,10,'Body','<h2>Foundation Services:</h2>\r\n<p>Christian Aid Ministries Foundation provides our supporters ways to direct various kinds of material resources to CAM and other charities of choice. Our Biblical Stewardship Services department provides estate planning literature, seminars, and personalized estate designs to our supporters free of charge. We believe God gives us stewardship of temporal assets to be managed by eternal values, and these services help us be Biblical stewards.</p>\r\n<h2>Donor Advised Fund</h2>\r\n<p>This is a way for you to make tax-deductable gifts to charities of your choice, while protecting your privacy and simplifying long-term giving. You may have highly appreciated real estate, securities, or other assets you wish to sell or give to a charity. An irrevocable contribution of all or a specified portion of the property enables you to minimize or avoid capital gains taxes and receive a tax deduction for the year in which you make a gift, even if not all the funds are disbursed to charities during that year. Christian Aid Ministries will place your gift in a Donor Advised Fund, where over time it may be used in various CAM programs and other charities of your choice. You may recommend when and to which charities funds are disbursed from your Donor Advised Fund, and will receive an annual report of fund activity. </p>\r\n<h2>Charitable Gift Annuities</h2>\r\n<p>This is a way for older supporters to generate income for the rest of their lives while making a charitable gift to Christian Aid Ministries. A Charitable Gift Annuity is an agreement between you and CAM. In exchange for your non-refundable gift of cash or other property, CAM will pay you a specified annuity for the rest of your life. The annual amount is fixed at the time you make the gift, and does not fluctuate with the economy, so you know how much income you will receive every year. The rate is determined by your age, as established by the American Council on Gift Annuities.   You will receive an income tax charitable deduction for the amount of your gift in the year it was given. Each year you will also receive a tax statement from CAM indicating the breakdown of your taxable and taxexempt annuity income for the previous year. Regular annuity payments will continue until your death, when the remaining balance of your original gift will be used in Christian Aid Ministries? programs.</p>\r\n<h2>Charitable Trusts</h2>\r\n<p>A trust is often the easiest means of making sure your wishes are carried out in the use and disposal of your property, during your lifetime or the lives of others. Effective use of trusts may also minimize or eliminate estate taxes. Basically, a trust is a form of property ownership. As the donor, you create the trust by transferring property to a trustee for the benefit of one or more beneficiaries. You prescribe exactly how you want the trustee to manage the trust property during your life and after your death.  Different trusts may be tailored to meet your unique needs. </p>\r\n<ul><li><strong>Charitable Remainder Trusts</strong>  can be established to provide lifetime income, minimize capital gains taxes, and avoid probate. After your death, the remainder of the assets pass  to charity to be used by Christian Aid Ministries and other charities of your choice.</li>\r\n<li><strong>Charitable Lead Trusts</strong> allow you to pass assets on to family members with little or no gift or estate tax payable, by first donating a portion of the trust?s income to charity and then, after a specified period of time, transferring the remainder of the trust to the beneficiaries. Your trust would make annual payments to Christian Aid Ministries and other charities of your choice  for a specified number of years, after which time the assets remaining in the trust would go to your beneficiaries.</li>\r\n</ul>\r\n<h2>Bequests</h2>\r\n<p>A bequest is a transfer of property to charity through your will. If your estate or assets are subject to a federal tax, a charitable bequest through your will may save you significant taxes.&#160;</p>\r\n<h3>Outright Bequest&#160;</h3>\r\n<p>You can specify an outright gift of cash, securities, real estate, or tangible personal property to go to charity. We recommend that for an outright bequest, you consider a percentage of your total estate rather than a fixed amount, since the value of the assets today may change by the time the bequest is disbursed.   </p>\r\n<h3>Residual Bequest</h3>\r\n<div><p>You can make specified bequests to your heirs, after which the residue, or balance remaining in the estate goes to charity, whatever amount that may be. Contingent BequestYou have a scriptural obligation to provide for dependant family members (I Tim 5:8), and you may wish to provide for others who are close to you. This enables you to make a bequest to charity, contingent providing first for those who depend upon you. For example, you could provide for a charity to receive a bequest from your estate only if your spouse does not survive you.   </p>\r\n<h2>Estate Planning Seminars</h2>Biblical Stewardship Services conducts estate planning seminars in churches and community meetings on:<br /><ul><li>Why it is important to have a will</li>\r\n<li>How to choose a guardian for minor children</li>\r\n<li>Biblical principles related to estate transfer</li>\r\n<li>How to handle household goods and effects</li>\r\n<li>The benefits of a revocable living trust</li>\r\n<li>How estate and capital gains taxes may be minimized or avoided</li>\r\n</ul>To schedule a Biblical Stewardship seminar, please call Paul A. Miller at 330-893-2428. <h2>Estate Design Services</h2>\r\n<p>Christian Aid Ministries offers personalized estate design planning services free of charge to our supporters. To schedule a private appointment, please call Paul A. Miller or Eli Weaver at 330-893-2428. All estate information shared with CAM will remain strictly confidential.</p>\r\n</div>',0,'2011-05-23 15:11:41','2011-09-07 17:30:41'),
	(19,10,'Side Body','<p>{{ content_holder_86 }}{{ content_holder_87 }}</p>',1,'2011-05-23 15:11:41','2011-09-07 17:30:41'),
	(20,11,'Body','<h1>TGS International</h1>\r\n<p>A subsidiary of Christian Aid Ministries</p>\r\n\r\n<p>TGS International was established in 1984 as a for-profit subsidiary of Christian Aid Ministries. Today TGS offers a variety of services and products to other missions, churches, and individuals. All TGS profits are used in CAM programs to benefit the needy around the world. </p>\r\n\r\n<h1><strong>TGS Services</strong>\r\n</h1>\r\n<strong>\r\n<p>Freight-forwarding and relief items</p>\r\n</strong>\r\n<p>	Freight-forwarding services for worldwide sea-container shipments&#160;</p>\r\n<p>	Freight shipments to countries where CAM has operations&#160;</p>\r\n<p>	Food commodities, canned chicken, vitamins, and other relief supplies\r\n</p>\r\n<p>\r\n<img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM18zM180Ml84NDNfYV9ib2F0LnBuZwY6BkVUWwg6BnA6CnRodW1iSSINNDUweDQ1MD4GOwZU/a_boat.png\" title=\"A Boat\" alt=\"A Boat\" rel=\"450x450\" height=\"299\" width=\"450\" /></p>\r\n<h2>Books and commercial printing</h2>\r\n<p>In 1995, TGS published its first book?101 Favorite Stories from the Bible. Today we offer many more books, CDs, study helps, and other items. Please write or call for a free catalog, or visit us online at www.tgsinternational.com. </p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM180NV8xNF8yMzVfYm9va18xLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/book_1.png\" title=\"Book 1\" alt=\"Book 1\" rel=\"225x255\" height=\"255\" width=\"182\" />&#160;&#160;<img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM180NV81MV8yNTdfYm9va18yLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/book_2.png\" title=\"Book 2\" alt=\"Book 2\" rel=\"225x255\" height=\"255\" width=\"165\" />&#160; &#160;<img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM180Nl8xM184NzhfYm9va18zLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/book_3.png\" title=\"Book 3\" alt=\"Book 3\" rel=\"225x255\" height=\"255\" width=\"171\" />&#160; &#160;<img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM180Nl8zNF84MjlfYm9va180LnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/book_4.png\" title=\"Book 4\" alt=\"Book 4\" rel=\"225x255\" height=\"201\" width=\"201\" /></p>\r\n<p>TGS also has worldwide sources for commercial printing. If you want to print books, Bibles, periodicals, or other materials, we can help you find the best value and possibly reduce your printing costs. Besides using printers in the USA, we print and bind in Belarus, Japan, China, and Singapore and arrange for door-to-door delivery.</p>\r\n<h2>Tours and airline ticketing</h2>\r\n<p>Good Samaritan Travel &amp; Tours is organized under TGS International. We offer tours to Israel, Egypt, Biblical Turkey, Anabaptist Europe, and some CAM overseas locations. These tours were developed to give people the opportunity to:</p>\r\n<p>? learn more about Bible lands and walk where Jesus walked<br />? develop greater appreciation for our Anabaptist heritage<br />? learn more about the cultures, beliefs, and conditions of people in other countries</p>\r\n<p>Good Samaritan Travel &amp; Tours also books airline tickets for mission trips or other travel. If you would like help with ticketing for your next trip, please call our travel department at <strong>330-893-2428</strong> or email them at <a href=\"mailto:travel@camoh.org\" title=\"travel@camoh.org\">travel@camoh.org</a>\r\n</p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSInMjAxMS8wOC8xMC8xM181Ml8xOF84N19mYXJtZXJzLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/farmers.png\" title=\"Farmers\" alt=\"Farmers\" rel=\"225x255\" height=\"155\" width=\"225\" />&#160; &#160;<img src=\"/system/images/BAhbB1sHOgZmSSIqMjAxMS8wOC8xMC8xM181Ml8wN18yMjRfZ29sZF9kb21lLnBuZwY6BkVUWwg6BnA6CnRodW1iSSINMjI1eDI1NT4GOwZU/gold_dome.png\" title=\"Gold Dome\" alt=\"Gold Dome\" rel=\"225x255\" height=\"181\" width=\"225\" /></p>\r\n<p>For more information on TGS, please write or call:</p>\r\n<p><br />TGS International<br />P.O. Box 355 · Berlin, Ohio 44610<br />Phone: 330-893-4828<br />Email: <a href=\"mailto:tgsbooks@camoh.org\" title=\"tgsbooks@camoh.org\">tgsbooks@camoh.org</a>\r\n<br /><a href=\"http://www.tgsinternational.com\" title=\"http://www.tgsinternational.com\">www.tgsinternational.com</a> </p>\r\n',0,'2011-05-23 15:12:04','2011-09-07 17:24:25'),
	(21,11,'Side Body','<p>{{ content_holder_86 }}</p>',1,'2011-05-23 15:12:04','2011-09-07 17:24:25'),
	(22,12,'Body','',0,'2011-05-23 15:12:43','2011-08-16 18:50:23'),
	(23,12,'Side Body','<p>{{ content_holder_11 }}</p>\r\n<br />',1,'2011-05-23 15:12:43','2011-08-16 18:50:23'),
	(24,13,'Body',NULL,NULL,'2011-05-23 15:37:47','2011-05-23 15:37:47'),
	(25,13,'Side Body',NULL,NULL,'2011-05-23 15:37:47','2011-05-23 15:37:47'),
	(26,14,'Body',NULL,NULL,'2011-05-23 15:39:14','2011-05-23 15:39:14'),
	(27,14,'Side Body',NULL,NULL,'2011-05-23 15:39:14','2011-05-23 15:39:14'),
	(28,15,'Body',NULL,NULL,'2011-05-23 15:43:25','2011-05-23 15:43:25'),
	(29,15,'Side Body',NULL,NULL,'2011-05-23 15:43:25','2011-05-23 15:43:25'),
	(30,16,'Body','',0,'2011-05-23 15:50:18','2011-06-20 19:49:08'),
	(31,16,'Side Body','',1,'2011-05-23 15:50:18','2011-06-20 19:49:08'),
	(32,17,'Body','',0,'2011-05-23 16:18:50','2011-06-17 20:29:12'),
	(33,17,'Side Body','',1,'2011-05-23 16:18:50','2011-06-17 20:29:12'),
	(34,18,'Body','<p>{{ content_holder_8 }}</p>',0,'2011-05-24 17:39:45','2011-08-25 20:40:48'),
	(35,18,'Side Body','',1,'2011-05-24 17:39:45','2011-08-25 20:40:48'),
	(36,19,'Body','',0,'2011-05-24 17:50:32','2011-08-11 21:37:51'),
	(37,19,'Side Body','<p>{{ content_holder_11 }}</p>',1,'2011-05-24 17:50:32','2011-08-11 21:37:51'),
	(38,20,'Body','',0,'2011-05-26 14:15:37','2011-05-26 14:16:11'),
	(39,20,'Side Body','',1,'2011-05-26 14:15:37','2011-05-26 14:16:11'),
	(42,22,'Body','',0,'2011-06-21 15:23:51','2011-06-21 16:57:00'),
	(43,22,'Side Body','',1,'2011-06-21 15:23:51','2011-06-21 16:57:00'),
	(46,24,'Body','<h1>CAM Training Videos</h1>\r\n<p>In the scrollable window below are training videos that I\'m producing for CAM internal usage.<br />\r\nThese videos will be used to train and cover 99% of the questions on how to administer the system\r\nsuch as content manged pages, news items, programs, articles, memberships, orders, files, images, et cetera. <br />\r\n<br />\r\nStreaming of the videos is available for modern browsers (Firefox 4+, Safari, IE8+, Chrome) but may be slow depending on internet connection.  If you cannot adequately stream the video, a link is available below the video to download the file.  Most videos are in either .MOV or .M4V file formats.  These can be viewed in Windows Media Player natively on some versions and with a plugin on others.  As well, iTunes or Quicktime will play these videos as they\'re its native format.<br />\r\n<br />\r\nI recommend downloading the videos to your local computer and putting them in a folder if your job is administration of the system or content editing as they will serve as a continued resource in its management.\r\n\r\nIf there is a topic that needs to be covered more in-depth, send an email to rachel@wearefound.com or kevin@wearefound.com and we\'ll put it on the screencasting schedule.<br /><br />\r\nI hope these videos are a beneficial resource in better understanding the system and making staff training much easier and more thorough.  They sure are fun to produce.\r\n<br /><br />\r\n~Kevin Hopkins <br />\r\n<a title=\"kevin@wearefound.com?subject=[CAM] Donation System Screencasts\" href=\"mailto:kevin@wearefound.com?subject=[CAM]%20Donation%20System%20Screencasts\">kevin@wearefound.com </a>\r\n<br />\r\nLead Developer @ Found\r\n</p>\r\n\r\n<iframe src=\"/jwplayer/training_videos.html\" height=\"1200px\" width=\"100%\"></iframe>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n',0,'2011-08-22 16:38:31','2011-08-25 20:53:45'),
	(47,24,'Side Body','<div id=\"boxnav\">\r\n<h3>Training Videos</h3>\r\n<p>To the left are some training videos to show you how to manage, administer, and manipulate the system for content.  Continue to check this page often for new videos.</p>\r\n</div>',1,'2011-08-22 16:38:31','2011-08-25 20:53:45'),
	(48,25,'Body','',0,'2011-08-25 20:38:53','2011-08-25 20:38:53'),
	(49,25,'Side Body','',1,'2011-08-25 20:38:53','2011-08-25 20:38:53'),
	(50,26,'Body','',0,'2011-08-25 20:41:52','2011-08-25 20:41:52'),
	(51,26,'Side Body','',1,'2011-08-25 20:41:52','2011-08-25 20:41:52'),
	(52,27,'Body',NULL,NULL,'2011-08-26 15:08:02','2011-08-26 15:08:02'),
	(53,27,'Side Body',NULL,NULL,'2011-08-26 15:08:02','2011-08-26 15:08:02');

/*!40000 ALTER TABLE `page_parts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_translations`;

CREATE TABLE `page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `custom_title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_translations_on_page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `page_translations` WRITE;
/*!40000 ALTER TABLE `page_translations` DISABLE KEYS */;

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `custom_title`, `created_at`, `updated_at`)
VALUES
	(1,1,'en','Home','','2011-05-20 17:07:58','2011-05-23 13:54:55'),
	(2,2,'en','Page not found',NULL,'2011-05-20 17:07:58','2011-05-20 17:07:58'),
	(3,3,'en','About CAM','','2011-05-20 17:07:58','2011-05-23 15:12:17'),
	(5,5,'en','Who We Are','','2011-05-23 15:09:40','2011-05-23 15:09:40'),
	(6,6,'en','Locations','','2011-05-23 15:10:04','2011-05-23 15:10:04'),
	(7,7,'en','Financial Accountability','','2011-05-23 15:10:29','2011-05-23 15:10:29'),
	(8,8,'en','Financial Statements','','2011-05-23 15:10:50','2011-05-23 15:10:50'),
	(9,9,'en','Statement of Faith','','2011-05-23 15:11:11','2011-05-23 15:11:11'),
	(10,10,'en','Biblical Stewardship Services','','2011-05-23 15:11:41','2011-05-23 15:11:41'),
	(11,11,'en','TGS International','','2011-05-23 15:12:04','2011-05-23 15:12:04'),
	(16,16,'en','Categories','','2011-05-23 15:50:18','2011-06-20 19:49:08'),
	(18,18,'en','News','','2011-05-24 17:39:44','2011-08-25 20:40:48'),
	(19,19,'en','Donations','','2011-05-24 17:50:31','2011-08-10 20:05:56'),
	(24,24,'en','Training','','2011-08-22 16:38:31','2011-08-22 16:38:31'),
	(25,24,'en',NULL,NULL,'2011-08-22 16:38:31','2011-08-22 16:38:31'),
	(26,25,'en','Programs','','2011-08-25 20:38:53','2011-08-25 20:38:53'),
	(27,25,'en',NULL,NULL,'2011-08-25 20:38:53','2011-08-25 20:38:53'),
	(28,26,'en','News','','2011-08-25 20:41:52','2011-08-25 20:41:52'),
	(29,26,'en',NULL,NULL,'2011-08-25 20:41:52','2011-08-25 20:41:52'),
	(30,27,'en','Contacts',NULL,'2011-08-26 15:08:02','2011-08-26 15:08:02');

/*!40000 ALTER TABLE `page_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) DEFAULT NULL,
  `menu_match` varchar(255) DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `custom_title_type` varchar(255) DEFAULT 'none',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_depth` (`depth`),
  KEY `index_pages_on_id` (`id`),
  KEY `index_pages_on_lft` (`lft`),
  KEY `index_pages_on_parent_id` (`parent_id`),
  KEY `index_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `parent_id`, `position`, `path`, `created_at`, `updated_at`, `show_in_menu`, `link_url`, `menu_match`, `deletable`, `custom_title_type`, `draft`, `skip_to_first_child`, `lft`, `rgt`, `depth`)
VALUES
	(1,NULL,0,NULL,'2011-05-20 17:07:58','2011-09-19 19:33:02',1,'/','^/$',0,'none',0,0,1,4,0),
	(2,1,0,NULL,'2011-05-20 17:07:58','2011-05-20 17:07:58',0,NULL,'^/404$',0,'none',0,0,2,3,1),
	(3,NULL,1,NULL,'2011-05-20 17:07:58','2011-08-11 20:36:35',1,'',NULL,1,'none',0,1,5,20,0),
	(5,3,3,NULL,'2011-05-23 15:09:40','2011-09-13 16:57:45',1,'',NULL,1,'none',0,0,6,7,1),
	(6,3,4,NULL,'2011-05-23 15:10:04','2011-09-07 17:22:18',1,'',NULL,1,'none',0,0,8,9,1),
	(7,3,5,NULL,'2011-05-23 15:10:29','2011-09-29 15:34:00',1,'',NULL,1,'none',0,0,10,13,1),
	(8,7,6,NULL,'2011-05-23 15:10:50','2011-09-29 15:32:23',1,'',NULL,1,'none',0,0,11,12,2),
	(9,3,7,NULL,'2011-05-23 15:11:11','2011-09-07 17:23:45',1,'',NULL,1,'none',0,0,14,15,1),
	(10,3,8,NULL,'2011-05-23 15:11:41','2011-09-07 17:30:41',1,'',NULL,1,'none',0,0,16,17,1),
	(11,3,9,NULL,'2011-05-23 15:12:04','2011-09-07 17:24:25',1,'',NULL,1,'none',0,0,18,19,1),
	(16,NULL,11,NULL,'2011-05-23 15:50:18','2011-06-20 19:49:08',1,'/categories','^/categories(\\/|\\/.+?|)$',0,'none',0,0,21,22,0),
	(24,NULL,18,NULL,'2011-08-22 16:38:31','2011-08-26 14:33:36',1,'',NULL,1,'none',0,0,23,24,0),
	(25,NULL,19,NULL,'2011-08-25 20:38:53','2011-08-26 14:33:36',1,'/programs',NULL,0,'none',0,0,25,26,0),
	(26,NULL,20,NULL,'2011-08-25 20:41:52','2011-08-26 14:33:37',1,'/news',NULL,0,'none',0,0,27,28,0),
	(27,NULL,21,NULL,'2011-08-26 15:08:02','2011-08-26 15:08:02',1,'/contacts','^/contacts(\\/|\\/.+?|)$',0,'none',0,0,29,30,NULL);

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages_roles`;

CREATE TABLE `pages_roles` (
  `page_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table payment_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment_profiles`;

CREATE TABLE `payment_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `payment_cim_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `credit_card_number` varchar(255) DEFAULT NULL,
  `bank_routing_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `payment_profiles` WRITE;
/*!40000 ALTER TABLE `payment_profiles` DISABLE KEYS */;

INSERT INTO `payment_profiles` (`id`, `member_id`, `payment_cim_id`, `created_at`, `updated_at`, `payment_type`, `credit_card_number`, `bank_routing_number`)
VALUES
	(87,1,'3342359','2011-06-03 15:49:03','2011-08-17 20:12:45','Checking','','XXXX1294'),
	(88,1,'3342630','2011-06-03 17:01:08','2011-08-17 20:12:15','Credit Card','XXXX0012',NULL),
	(96,1,'3342708','2011-06-03 17:14:17','2011-08-17 20:12:47','Checking',NULL,'XXXX1296');

/*!40000 ALTER TABLE `payment_profiles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `product_description` text,
  `product_image_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_image_id`, `category_id`, `position`, `created_at`, `updated_at`, `price`)
VALUES
	(1,'Relief 1','<p>This is an example product.</p>',1,1,1,'2011-05-23 17:04:05','2011-05-24 17:23:00',10.00),
	(2,'Relief 2','<p>This is relief 2</p>',1,1,0,'2011-05-23 17:08:29','2011-05-24 17:23:00',15.00),
	(3,'Orphans 1','<p>This is a test product</p>',2,2,2,'2011-05-23 17:11:43','2011-05-23 17:11:43',24.99),
	(4,'Orphans 2','<p>This is another test product!</p>',2,2,3,'2011-05-23 17:12:04','2011-05-23 17:12:04',34.99),
	(5,'First Aid Kit +20hp','',NULL,8,4,'2011-05-24 17:27:21','2011-05-24 17:27:21',20.00),
	(6,'First Aid Kit +50hp','',NULL,8,5,'2011-05-24 17:27:42','2011-05-24 17:27:51',50.25);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table programs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `programs`;

CREATE TABLE `programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_name` varchar(255) DEFAULT NULL,
  `program_short_description` text,
  `program_description` text,
  `program_image_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `monthly_suggested_amounts` text,
  `subtitle` varchar(255) DEFAULT NULL,
  `monthly_enabled` tinyint(1) DEFAULT '1',
  `one_time_enabled` tinyint(1) DEFAULT '1',
  `one_time_suggested_amounts` text,
  `default_donation_type` varchar(255) DEFAULT 'monthly',
  `image_caption` text,
  `abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_donations_on_id` (`id`),
  KEY `index_programs_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;

INSERT INTO `programs` (`id`, `program_name`, `program_short_description`, `program_description`, `program_image_id`, `position`, `created_at`, `updated_at`, `monthly_suggested_amounts`, `subtitle`, `monthly_enabled`, `one_time_enabled`, `one_time_suggested_amounts`, `default_donation_type`, `image_caption`, `abbreviation`)
VALUES
	(1,'Sponsor-an-Orphan','<p>This program provides food, clothing, medicines, and Christian literature (and covers some schooling costs) for orphaned, destitute, or abandoned children mostly in Liberia and Kenya, but also to some in India and Haiti.</p>','<p>In Liberia, the program supports approximately 1,900 children at 42 orphanages and 745 children in 15 churches. The program also supports 1,500 orphans in Kenya, Africa, who live in homes with relatives or AMA (Amish Mennonite Aid) national church families. The support helps relieve the caretakers who already struggle to provide for their own families. Some funds go to a small orphanage in Haiti and two orphanages in India.</p>\r\n<p><img class=\"add-caption\" rel=\"225x255\" alt=\"Dorcas Suku\" title=\"Dorcas Suku\" src=\"/system/images/BAhbB1sHOgZmSSI+MjAxMS8wOC8yMi8xMV8wNF8zOF8yNDVfSGVscF9mb3JfT3JwaGFuc19odG1fbTZkNDBjOTEuanBnBjoGRVRbCDoGcDoKdGh1bWJJIg0yMjV4MjU1PgY7BlQ/Help_for_Orphans_htm_m6d40c91.jpg\" height=\"255\" width=\"200\" /></p>\r\n<p>This is Dorcas Suku. Her mentally ill mother tried to kill her by throwing her in to the ocean when she was 1 month old. A Liberian soldier rescued her from death, and took her to a CAM-sponsored orphanage. </p>\r\n<p>There at the CAM orphanage Dorcus will receive care and schooling till she\'s 19 years old. Every year, while she\'s at the orphanage, she will attend a seminar at the CAM base to teach her spiritual truths from God\'s Word to help guide her through life. When she leaves the orphanage she will be given the necessary tools for survival on her own.</p>\r\n<p>There are also other activities that keep the orphans busy. They work on the farm, harvesting, pounding and sifting the rice - which is then sold for seed. Others feed the chickens, and gather, clean and package the eggs. There is lots of work to do. </p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSI9MjAxMS8wOC8yMi8xMV8wNl8yNF84MTlfSGVscF9mb3JfT3JwaGFuc19odG1fYjg2YTkwYi5qcGcGOgZFVFsIOgZwOgp0aHVtYkkiDTIyNXgyNTU+BjsGVA/Help_for_Orphans_htm_b86a90b.jpg\" title=\"Help For Orphans Htm B86a90b\" alt=\"Help For Orphans Htm B86a90b\" rel=\"225x255\" height=\"169\" width=\"225\" /></p>\r\n<p>Thank you letter from an orphanage in Liberia:</p>\r\n<p><em>\"We at the RJPCH Orphanage highly appreciate the enormous help you give us. Were it not for the aid you began giving us, we would have closed down. I praise God He sent CAM to our rescue in time. Our children now have more than enough food, clothing, medicine, and a very happy, healthy life. Thank you to all who make the work of CAM possible in Liberia.\"&#160; </em>Liberia </p>\r\n<p><strong>Would you like to help support orphaned, abandoned, or destitute children in Liberia, Kenya, or other needy countries?</strong>\r\n</p>',48,27,'2011-05-24 18:09:52','2011-09-27 14:37:20','250,500,1000,1600','',1,0,'10,30,50,70,90','monthly','','SAOA'),
	(2,'International-Feed-A-Family','<p>A $39 donation provides a 35-pound or larger parcel containing food, healthcare items, and some Christian literature for families and individuals in desperate need. In 2010 CAM provided 12,480 International-Feed-A-Family parcels for recipients in Haiti, Liberia, and Israel.</p>','<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<p>Yamah  a poor widow from Liberia has no source of income, and no source of food. Yamah hardly knew what to do; she had four hungry children and didn\'t have any food. Through miraculous circumstances she received an International-Feed-A-Family food parcel. Yamah said, please tell the sponsors thank you.</p>\r\n<p><img class=\"add-caption\" rel=\"225x255\" alt=\"Yamah With Her Young Children\" title=\"Yamah With Her Young Children\" src=\"/system/images/BAhbB1sHOgZmSSIvMjAxMS8wOS8wOS8xM18wN181NF84NjdfSUZBRl9wcm9ncmFtXzIuanBnBjoGRVRbCDoGcDoKdGh1bWJJIg0yMjV4MjU1PgY7BlQ/IFAF_program_2.jpg\" height=\"237\" width=\"225\" /></p>\r\n\r\n<p>Thanks to your generosity, this young African widow and her children will not go hungry.</p>\r\n<h3>Would you like to help others like Yamah receive a food parcel? <br />   </h3>',4,21,'2011-05-24 18:19:58','2011-09-22 18:07:34','39,78,195','',1,1,'10,30,50,70,90','one-time','','IFAF'),
	(3,'Christian Family Magazines','<p>This program translates, prints, and distributes <em>The Seed of Truth</em> and <em>Antorcha de la Verdad</em> (Torch of Truth) Christian family magazines.</p>','<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<h2>The Seed of Truth: </h2>\r\n<ul><li>A total of 126,550 monthly copies of The Seed of Truth magazine are printed in the Romanian, Russian, and English languages.&#160;</li>\r\n<li>In 2010, CAM also printed a total of 30,000 Polish copies.&#160;</li>\r\n<li>This Christian family magazine consists largely of translated articles and stories from Christian Light Publications, Rod &amp; Staff, Pathway Publishers, and others. The magazines are distributed in Romania, Moldova, Ukraine, Siberia, Liberia, Poland, and other countries.</li>\r\n</ul>\r\n<h2>Antorcha de la Verdad (Torch of Truth):&#160;</h2>\r\n<div><p>Publicadora La Merced (PLM), a conservative Mennonite publishing house in Costa Rica, prints and distributes Spanish Christian literature, with their main project being the magazine, Antorcha de la Verdad (Torch of Truth). Most of their funding to print this magazine comes from CAM?s Christian Family Magazines program. </p>\r\n<ul><li>PLM now prints more than 219,000 bi-monthly copies of the Antorcha and distributes them to 45 countries.</li>\r\n<li>PLM also prints 22,500 Creole versions for CAM to distribute in Haiti.</li>\r\n</ul>\r\n<h3>Sorin\'s Story:</h3>\r\n<p>Young, intelligent Sorin was attending seminary to become an Orthodox priest. But through a series of wrong choices, this Romanian man became a mock health inspector. With official-looking documents, he frequented churches and stores, giving fines, collecting money, or writing up warnings. Six months later, the law caught up with him. Sorin was imprisoned and waited nearly a year and a half before being sentenced. The prison sentence he received overwhelmed him. He hit an emotional bottom. </p>\r\n<p>One day while Sorin lay on his prison cot, he noticed a magazine lying on the windowsill. It was a three year-old copy of The Seed of Truth. He opened the magazine and found an application for CAM\'s correspondence courses. Out of curiosity, Sorin decided to send in his application and enroll in the courses. As he studied, God touched his heart, and Sorin found Jesus as his Savior. </p>\r\n<p>Sorin longed to use the Bible correspondence courses to witness to the other inmates. He received permission from the director of psychology and coordinated weekly studies with the inmates. Each week they discussed a different subject. For half an hour a day, the inmates could ask questions pertaining to that week?s subject. Sorin had requested a Bible and Doctrines of the Bible from CAM and was able to use these materials to find the answers they needed. </p>\r\n<p>In the summer of 2010, Sorin was summoned to appear in court to review his case. While reading through the book of Esther, he read that Esther had prayed and fasted for three days. Although he had never heard what it meant to pray and fast, he decided to spend three days in fasting and prayer to God. He prayed, <em>\"God, if you take just one month off my sentence, I\'ll know it was you who worked.\" </em>\r\n</p>\r\n<p>Upon entering the courtroom, Sorin observed that the head judge was the very one who had condemned him. Sorin felt all hope was gone. But, when asked if he had anything to say, he told the judge, <em>\"This is in your hands and in the hands of God. I was wrong, and I deserve my punishment.\"</em> He went back to prison.</p>\r\n<p>Two weeks later, Sorin received a notice. With a heavy heart, he opened the envelope. He was shocked. His prison sentence had been reduced by 60 percent! He said, <em>\"Who else could have done it but God?\"</em>\r\n</p>\r\n<p><strong>Would you like to help print the The Seed of Truth and Antorcha de la Verdad (Torch of Truth) Christian family magazines?</strong>\r\n</p>\r\n</div>',56,11,'2011-05-24 18:24:31','2011-09-19 16:57:56','50,100,250 ','\"The Seed of Truth\" and \"Antorcha de la Verdad\"',1,1,'10,30,50,70,90','monthly','','CFM'),
	(5,'Bibles-for-the-World','<p>CAM\'s main goal is to provide as many people as possible with the Word of God. The Bibles-for-the-World (BFTW) program translates, prints, and distributes Bibles, Bible story books, inspirational/teaching books, Christian family magazines, and Bible correspondence courses. The literature is distributed throughout China, Eastern Europe, Central America, Liberia, Haiti, the Middle East, and other parts of the world.</p>\r\n<h3>Bible story books needed around the world</h3>\r\n<p>Children in Myanmar (formerly Burma) intent on their 25 Favorite Stories from the Bible</p>\r\n<p>Our contact in Myanmar wrote, We have distributed Bible story books in children?s homes, education centers, and to various churches in Myanmar... The people are very happy to receive the books, because they need children and adult Sunday school materials in their churches. They want to receive more, but we don?t have enough copies . . . The field is ripe for harvest in Myanmar and we are ready to do the work and witness for Christ. </p>\r\n<p>CAM has translated, printed, and distributed 25 Favorite Stories from the Bible in approximately forty-four languages. This is possible through supporters\' generous gifts to the Bibles-for-the-World program. Besides teaching children about God and the Bible, 25 Favorite Stories from the Bible also creates an interest in adults to read God?s Word. For those not literate enough to read the Bible, the book?s basic language and beautiful pictures help them comprehend the Biblical message.</p>\r\n<p>Would you like to help provide Bible story books, Bibles, and other Christian literature to people around the world?</p>','',22,9,'2011-08-11 14:20:50','2011-09-19 16:50:44','20,40,60,80,100','Bringing God\'s word to the masses',1,1,'10,30,50,70,90','monthly','','BFW'),
	(6,'Billboard Evangelism','<p>CAM\'s Billboard Evangelism (BBE) program helps point America to Christ by posting clear Gospel messages along interstates and major highways. &#160;It is estimated more than three million people drive past these messages each day.</p>','<p>This program uses billboards to point our own nation, America, to Christ. As of May 2011, CAM has a total of 105 Gospel messages in all 50 states. An estimated three million people view these boards every day. Each billboard has a toll-free number to give people an opportunity to talk with one of our six tele-counselors. The tele-counselors receive an average of 37 calls daily.</p>\r\n<p>Many people across America are confused about God and life; they don\'t know what to believe or where to find help. Churches throughout our nation are rejecting the absolute authority of the Bible, and some Bible colleges teach students they can believe in evolution AND God. No wonder so many are confused. Where can these people turn for sound Biblical answers? </p>\r\n<p>CAM\'s Billboard Evangelism (BBE) program helps point America to Christ by posting clear Gospel messages along interstates and major highways. Messages include: In the beginning, God created; After you die, you will meet God; Where are you going? Heaven or Hell?; The Holy Bible Inspired. Absolute. Final., and others. Each billboard includes a toll-free number, which people can call 24 hours a day to speak with one of our tele-counselors (pastors/teachers who answer the calls). Thanks to your support, as of May 2011, Billboard Evangelism has a total of 105 Gospel messages in all 50 states. It is estimated more than three million people drive past these messages each day.</p>\r\n<p><a target=\"_blank\" title=\"http://gospelbillboards.com/\" href=\"http://gospelbillboards.com/\">Click here to find out more about the Billboard Evangelism program.</a>\r\n</p>',23,10,'2011-08-11 14:44:04','2011-09-19 16:55:51','20,40,60,80,100','A Clear Gospel Message to America',1,1,'10,30,50,70,90','monthly','','BBE'),
	(7,'Christian Martyrs Fund','<p>The Christian Martyrs Fund sponsors approximately 629 pastors and Christian workers (and/or their families) who were crippled or disabled by their persecution experiences. This program provides funds for recipients to buy food, clothing, and other necessities.</p>','<p>Over the years, pastors and other Christian workers in China, the former Soviet Union, and the Middle East have faced tremendous persecution and strain. Some were martyred and others beaten to the point of physical and mental disabilities. Still others suffer poor health from the strain of secret Bible printing and other \"underground\" work. Today these Christians find it extremely difficult to make a living.</p>\r\n<p>A letter from Grigorij and Sinaida Kostenko, Christian-Martyrs-Fund recipients in the Soviet Union</p>\r\n<p><em>Dear Friends,</em>\r\n</p>\r\n<p><em>From our hearts, we greet you in the name of Jesus Christ! </em>\r\n</p>\r\n<p><em>I was pleasantly surprised that you thought of me and this gift of love has been given to me. I am not worthy of such attention, but our communion through the blood of Jesus Christ which is more than physical has made you remember such a brother. Praise God, who has given us such love for each other. How can we repay? The Lord requires of us an honest service and a clean heart. May the Lord bless your efforts and reward you!</em>\r\n</p>\r\n<p><em>In 2001 my wife died. For three years, I lived by myself. Then the Lord gave me a wife, Sinaida Tarasova (now she is Kostenko). She was in prison twice for the sake of Christ, because she worked with printing Christian literature.<br />Please take from us these words of thanks for your care and attention to our needs. \"The Lord bless thee and keep thee: The Lord make his face shine upon thee, and be gracious unto thee: The Lord lift up his countenance upon thee, and give thee peace.\" Numbers 6: 24-26.</em>\r\n</p>\r\n<p>~Grigorij and Sinaida Kostenko</p>\r\n<p><strong>Do you want to help encourage needy, disabled Christian workers and their families?</strong>\r\n</p>',NULL,12,'2011-08-11 15:00:12','2011-09-30 13:12:07','20,40,60,80,100','Helping those injured in the service of God',1,1,'10,30,50,70,90','monthly','','CMF'),
	(8,'Church Planting Projects','<p>When CAM establishes bases in other countries, we feel the need to have a church nearby that is in accordance with our beliefs and convictions. It benefits our field staff and opens spiritual opportunities in the community.</p>','		<p>\r\n			When CAM establishes bases in other countries, we feel the need to have a church nearby that is in accordance with our beliefs and convictions. It benefits our field staff and opens spiritual opportunities in the community. CAM financially supports these church-planting projects:\r\n		</p>\r\n<br />\r\n<hr />\r\n		<h3>La Source, Haiti</h3>\r\n		<table>\r\n			<tbody><tr>\r\n				<td><iframe marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps/ms?msa=0&amp;msid=206646033770182178102.0004ac6db12cab58ae66f&amp;ie=UTF8&amp;t=h&amp;vpsrc=0&amp;ll=19.730402,-73.160019&amp;spn=0.002525,0.003208&amp;z=17&amp;output=embed\" frameborder=\"0\" height=\"250\" scrolling=\"no\" width=\"300\"></iframe>\r\n<br /><small>View <a href=\"http://maps.google.com/maps/ms?msa=0&amp;msid=206646033770182178102.0004ac6db12cab58ae66f&amp;ie=UTF8&amp;t=h&amp;vpsrc=0&amp;ll=19.730402,-73.160019&amp;spn=0.002525,0.003208&amp;z=17&amp;source=embed\" style=\"color:#0000FF;text-align:left\">19.730400, -73.160020</a> in a larger map</small>\r\n</td>\r\n				<td><p>The church at La Source was officially established in January 1997. Salem Amish Mennonite church in Bakersville, Ohio, oversees this work. Matthew Morhart pastors the church, which now has 33 national members.</p>\r\n</td>\r\n			</tr>\r\n		</tbody>\r\n</table>\r\n		<hr />\r\n		<h3>Suceava, Romania</h3>\r\n		<table>\r\n			<tbody><tr>\r\n				<td><p>Established on CAM?s orphanage compound in August 1996, the Nathaniel Christian church has 42 members (including CAM?s American staff). The church reaches out to the community through summer Bible school and home Bible studies, disciples new converts, translates Sunday school materials, packages and mails Seed of Truth magazines, and other projects. David Raber is the bishop.</p>\r\n</td>\r\n				<td><iframe marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Suceava,+Romania&amp;aq=&amp;sll=19.876852,-73.187324&amp;sspn=0.079749,0.065832&amp;ie=UTF8&amp;hq=&amp;hnear=Suceava,+Romania&amp;t=h&amp;z=13&amp;ll=47.651389,26.255556&amp;output=embed\" frameborder=\"0\" height=\"250\" scrolling=\"no\" width=\"300\"></iframe>\r\n<br /><small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Suceava,+Romania&amp;aq=&amp;sll=19.876852,-73.187324&amp;sspn=0.079749,0.065832&amp;ie=UTF8&amp;hq=&amp;hnear=Suceava,+Romania&amp;t=h&amp;z=13&amp;ll=47.651389,26.255556\" style=\"color:#0000FF;text-align:left\">View Larger Map</a>\r\n</small>\r\n</td>\r\n			</tr>\r\n		</tbody>\r\n</table>\r\n		<hr />\r\n		<h3>Monrovia, Liberia</h3>\r\n		<table>\r\n			<tbody><tr>\r\n				<td><iframe marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Monrovia,+Liberia&amp;aq=&amp;sll=47.651389,26.255556&amp;sspn=0.11425,0.131664&amp;ie=UTF8&amp;hq=&amp;hnear=Monrovia,+Greater+Monrovia,+Montserrado,+Liberia&amp;t=h&amp;z=13&amp;ll=6.300774,-10.79716&amp;output=embed\" frameborder=\"0\" height=\"250\" scrolling=\"no\" width=\"300\"></iframe>\r\n<br /><small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Monrovia,+Liberia&amp;aq=&amp;sll=47.651389,26.255556&amp;sspn=0.11425,0.131664&amp;ie=UTF8&amp;hq=&amp;hnear=Monrovia,+Greater+Monrovia,+Montserrado,+Liberia&amp;t=h&amp;z=13&amp;ll=6.300774,-10.79716\" style=\"color:#0000FF;text-align:left\">View Larger Map</a>\r\n</small>\r\n</td>\r\n				<td><p>In March 2000, Faith Mennonite Church in Lott, Texas, started a church planting effort near CAM?s base in Liberia, West Africa. Ray Yoder from Bastrop, Texas, pastors the Light Mennonite church. The church?s first national pastor Kollie Juku passed away on December 10, 2010. Recently the church started an outreach, Hope Mennonite Church, which is pastored by Nelson Gartor, a national. Membership at Light Mennonite is 95 and Hope Mennonite has 16 members.</p>\r\n</td>\r\n			</tr>\r\n		</tbody>\r\n</table>\r\n<hr />\r\n	<strong>Will you help our cause?  Every contribution from loving people like you helps us to establish bases of love, care, and spirituality that is only accomplished by the presence of a church that believes in our convictions.</strong>\r\n	\r\n\r\n',25,13,'2011-08-11 15:05:27','2011-09-29 18:50:16','20,40,60,80,100','sample subtitle!',0,1,'25,50,100,250,500,1000','one-time','','CPP'),
	(9,'Clothing Bundle Project','<p>Donated clothing, footwear, and comforters bring relief and joy to needy people who wondered how they will clothe their families another year. In 2010, sponsors provided funds to ship over two million pounds of clothing, bedding, and footwear and 30,738 comforters. The items went to Romania, Ukraine, Azerbaijan, Belarus, Haiti, Liberia, Nicaragua, Latria, and other countries. Every gift of $69 processes, ships, and distributes approximately 160 pounds of clothing.</p>','<p>Bags of clothing bring comfort and cheer to cancer victims in Moldova.</p>\r\n<p>Cancer victims from Valea Prejei, one of the poorest villages in Moldova received clothing from CAM through one of our partners, TABEA.</p>\r\n<p>This CAM clothing distribution in Moldova, is only one of the many distributions that take place around the world.</p>\r\n<p><strong>Here is a note from a grateful recipient in Ukraine:&#160;</strong>\r\n</p>\r\n<p><em>We thank you for the help you sent us. It is a big encouragement . . . we pray to God that you and your service could prosper . . . When we will meet each other in heaven, we will be glad that we could work together for the Lord. Matthew 25:34-40</em> Dima Myndru</p>\r\n<p>CAM receives hundreds of tons of donated clothing at our drop-off points across the United States. We rely on donated funds to move the clothing from our warehouses to the many needy people overseas who can make good use of it.</p>\r\n<p><strong>Would you like to help provide clothing for the needy?</strong>\r\n</p>',26,14,'2011-08-11 15:10:54','2011-09-19 17:07:25','20,40,60,80,100','',1,1,'10,30,50,70,90','monthly','','CBP'),
	(10,'Conservative Anabaptist Service Program','<p>This program\'s purpose is to provide a SSS (Selective Service System) approved place of employment for conscientious objectors to serve, should the draft be activated by the United States government.</p>','<p>Our goal is to provide alternate places of employment that have an ethical and moral environment. Such projects would also benefit our country\'s health, safety, and other interests. Several CASP projects are in place to evaluate this program.</p>\r\n<p>In 2010, CASP had 125 young men serve a total of approximately 20,800 hours in ten different projects.</p>\r\n<p>For more information on the CASP program, call Eli Weaver at <strong>330-893-2428.</strong>\r\n</p>\r\n<p><strong>Would you like to donate to the CASP program?</strong>\r\n</p>',27,15,'2011-08-11 15:17:29','2011-09-29 15:45:24','20,40,60,80,100','',1,0,'10,30,50,70,90','monthly','CASP volunteers helping to erect the walls of a house.','CASP'),
	(11,'Disaster Response Services','<p>DRS (Disaster Response Services) coordinates volunteers to rebuild in natural disaster areas in the USA. Hundreds of volunteers have donated thousands of hours serving in communities crippled by floods, hurricanes, and tornadoes.</p>','<p>These projects provide excellent opportunities to share the love of Christ with those suffering devastation and loss. &#160;A total of 2,100 DRS volunteers donated approximately 52,330 hours in 2010.</p>\r\n<p><strong>Do you want to help join the effort to cleanup and rebuild for disaster victims in the USA?</strong>\r\n</p>',28,16,'2011-08-11 15:23:23','2011-09-19 17:07:46','20,40,60,80,100','',1,1,'10,30,50,70,90','monthly','','DRS'),
	(12,'Family Self Support','<p>Helping selected Christian families support themselves, rather than depend on material aid, is an important goal to CAM. The Family-Self-Support (FSS) program provides funds for families to buy a plot of land, horse and wagon, cow, greenhouse, tools and equipment, or other resources to help them make a living. The program operates in Romania, Moldova, Ukraine, Israel, Haiti, Liberia, and Kenya.</p>','<p>Before receiving Family-Self-Support funds, Grigory Prymakhad had to hire equipment to farm his twenty-two acres. But as the economy in Ukraine regressed, his landlord was no longer willing to wait until after harvest for Grigory to pay the rental bill. Through FSS, Grigory can harvest sunflowers and other crops with his own equipment and says the program \"saved his family\".</p>\r\n<p>We want to work with our hands. We want opportunities for our children. We want to live at home with our families instead of working in the city or out of the country. These cries come from all across Ukraine, from families willing to work hard but who don\'t have the funds to improve their situation. Hundreds of Ukrainians lost their jobs during 2010 when the economy took yet another drop. Men from the villages often have to leave home to find work in the larger cities or outside the country. These families dream of starting a business at home or improving the one they already have. But without funds, how will their dreams come true?</p>\r\n<p>For some, CAM\'s Family-Self-Support program is their hope for change. The program gives families up to $3,500 USD to buy tools, land, equipment, animals, or other resources to make a living. Vasily Vasilchuk used to leave his young family to find work, but after receiving FSS funds, the family bought a potato planter, sprayer, strawberry plants, and other resources and can now work together in their potato and strawberry fields. Their produce business gives them enough income to provide for the family, make much-needed repairs to their house, and bless others. Vasily\'s wife Svitlana said, it\'s a dream come true.</p>\r\n<p>Besides funds, Family-Self-Support provides business advice, follow-up consultations, and teaching seminars. We are blessed to have a Ukrainian agronomist on staff to advise families in greenhouse and farming projects. Occasional seminars give FSS recipients the opportunity to share their experiences with others wanting to start a home business.</p>\r\n<p><strong>Would you like to help provide resources for needy families?</strong>\r\n</p>',29,17,'2011-08-11 15:25:25','2011-09-19 17:07:57','20,40,60,80,100','subtitles are great',1,1,'10,30,50,70,90','monthly','','FSS'),
	(13,'Gifts-That-Grow','<p>Millions of dollars worth of free medicines, food, liquid nutrition, and other valuable items are available to CAM each year. Though companies and individuals donate the items, CAM has procurement fees and shipping costs to bring them to our warehouse in Pennsylvania. Each $1 given to the <strong>Gifts-That-Grow (GTG)</strong> program brings in $200 worth of donated products for the poor.</p>','<p>Junior Backohm was working in his cassava field in Rivercess County, Liberia, when a small snake bit his left foot. By the following day, he could no longer work. Unfortunately, Junior received no hospital care and within one week he was paralyzed and unable to even feed himself. His wife left him, taking their only child and leaving Junior at the mercy of others.</p>\r\n<p>For the next year and a half, Junior was pushed around in an old wheelbarrow. When CAM came to distribute aid in Rivercess, Junior was brought to them in an old wheelbarrow. But, praise God, he left in a treasured new wheelchair! \"T\'ank God, O!\" were the words of thanks Junior managed to eke out.</p>\r\n<p>Elizabeth Maneh, another recipient in Rivercess, had been crossing a log over a creek when, halfway across, the log broke and Elizabeth fell. The heavy bundle of wood she was carrying on her head landed on her right leg and broke it. The accident happened during wartime with no way for her to get medical treatment. Her leg did not heal properly, and Elizabeth was never able to walk again. Thirteen years later, her brother Edwin, a sixty-eight-year-old pastor, was resting in his chair after church when he suddenly suffered a stroke that paralyzed the left side of his body. In 2010, these siblings were thrilled to each receive a wheelchair through CAM\'s <strong>Gifts-That-Grow (GTG)</strong> program. Elizabeth said, \"God\'s eyes are on us today and brought us wheelchairs.\"</p>\r\n<p>Each year, CAM receives millions of dollars worth of free medicines, wheelchairs, and other medical supplies, as well as liquid nutrition, shoes, soap, and much more. Corporations give these products when the items are overstocked, nearing expiration, being discontinued, or for humanitarian reasons.</p>\r\n<p>To bring the products to our Pennsylvania warehouse, CAM needs to pay procurement fees and freight costs. Funds specified for the Gifts-That-Grow program help cover these costs and help ship the items overseas. Every $1 donated to this program procures and ships $200 worth of products.</p>\r\n<p>\"We never expected to receive anything like this, ever!\" was the response of Action Glay\'s family when Action received a wheelchair. Seventeen-year-old Action was born mute and crippled. This family in Liberia was very happy for the gift they received.</p>\r\n<p>Thank you, supporters, for making it possible to provide wheelchairs and other aid to needy, crippled people. Your generosity shows the love of Christ, helps ease suffering, and encourages hearts around the world.</p>\r\n<p><strong>Would you like to help procure and ship free products urgently needed for the poor?</strong>\r\n</p>',30,18,'2011-08-11 15:28:12','2011-09-19 17:08:25','20,40,60,80,100','',0,1,'10,30,50,70,90','one-time','','GTG'),
	(14,'Help-for-the-Elderly','<p>This program meets one of the most desperate needs in Haiti, Liberia, Romania, Moldova, and Nicaragua.. Thousands of elderly people in these countries are left alone, unable to work and provide for themselves. Each month, Help-for-the-Elderly sponsors provide more than 9,000 parcels of food, vitamins, hygiene items, and medicines, Christian literature, and some cash for elderly people. In some cases, the parcels keep recipients alive. &#160;A donation of $45 provides a 25-pound or larger food parcel, $10 cash, and The Seed of Truth or Antorcha de la Verdad for a needy elderly person. The cash is often used for medical bills and other expenses.</p>','<p>Mr. and Mrs. Monétoile Civil live in a crude, mud-plastered house in poverty-stricken Haiti. Both have poor eyesight and Mr. Civil struggles with stiff, arthritic legs. He assembles brooms and sells approximately ten each month for twenty-five cents apiece. This is their only income.</p>\r\n<p>The Help-for-the-Elderly (HFTE) food parcels, made possible by sponsors, is what keeps Mr. and Mrs. Civil alive. The Civils say it would be difficult to survive without the $10 cash that also comes with the parcel.</p>\r\n<p>Many elderly in Haiti have known little but hardship all their lives. They did not have the opportunity to save money for their sunset years. It is difficult for a feeble person who can hardly see or walk to try to work and find food each day.</p>\r\n<p>The needs are endless, says Jeriah Mast, CAM staff member in Haiti. But receiving a HFTE parcel brings hope to an elderly person\'s life.</p>\r\n<p>Sentali Chal, a Haitian widow, has poor eyesight and extremely bad hearing. She is so grateful for the HFTE parcel she receives. Sentali cannot read or write, but this is what she says: \"I am very dependent on this box each month. If it wouldn\'t be for the box, I would be in big trouble. But the foremost thing I say is a big thank you for sending this to me so faithfully!\"</p>\r\n<p>When Sentali was asked what she buys with the $10 cash that comes with the parcel, she said, \"<em>Sometimes I buy more food and clothes, but sometimes I save it. I have been able to buy a small goat and pig with this money. It is so helpful!</em>\"</p>\r\n<p>Since Liberia\'s savage civil war ended in 2003, many elderly Liberians find themselves alone. Some had moved to the capital Monrovia during the war and now do not have the resources or strength to return to their homes in the bush. Some suffer bullet, shrapnel, or grenade wounds and few have children with the means to care for them.</p>\r\n<p>The elderly badly need assistance, states Seth Martin, CAM\'s field director in Liberia. It is hard to know who to help; there are so many pressing needs. We try to decide based on the degree of helplessness.</p>\r\n<p>John Paul suffered a stroke that basically paralyzed his left side. He lives in a house constructed of sticks and rusty tin. This poor man\'s only income is begging. John Paul receives monthly HFTE parcels. His happy smile shows how thankful he is.</p>\r\n<p>According to our field staff, literally thousands of old people are in great need of help. It is CAM\'s goal to continue to increase the size of this program as funds become available..</p>\r\n<p>Thank you, supporters, for sharing! God bless you for bringing hope to struggling elderly people.</p>\r\n<p><strong>Would you like to help bless needy elderly people in Haiti, Liberia, and other countries?</strong>\r\n</p>',31,19,'2011-08-11 15:32:30','2011-09-19 17:41:41','20,40,60,80,100','',1,1,'10,30,50,70,90','monthly','','HFTE'),
	(15,'International Crisis','<p>This program helps victims of war, famine, and natural disasters around the world. Supporters\' donations provide emergency food, medicines, clothing, shelter, or other aid, and sometimes rebuilding. CAM\'s main priority in all International Crisis projects is to distribute Christian literature and share the love of Christ, sometimes in closed and dark places of the world. Some countries CAM worked in during 2010 were Haiti, Pakistan, Chile, and India.</p>','<br />\r\n<br />\r\n<p>The 9.0 earthquake, which struck Japan at 2:46 p.m. on March 11, 2011, was the fifth largest earthquake ever recorded and the biggest in Japan\'s history. Minutes later, a tsunami-triggered wall of water up to thirty feet high slammed Japan?s eastern coast. To compound problems, the cooling systems at six of Japan?s nuclear reactors were knocked out causing a serious nuclear emergency, second only to that of Chernobyl twenty-five years ago.</p>\r\n<p><img alt=\"Ic Japan Tsuanmi\" title=\"Ic Japan Tsuanmi\" src=\"/system/images/BAhbBlsHOgZmSSIxMjAxMS8wOS8wNy8xNl8xNF8xOF8zNDhfaWNfamFwYW5fdHN1YW5taS5KUEcGOgZFVA/ic_japan_tsuanmi.JPG\" height=\"338\" width=\"450\" /></p>\r\n<p>Thousands of bodies have washed ashore. At this writing, 25,104 people have died or are unaccounted for. Millions struggled for days with inadequate food, heat, and water, while temperatures hovered in the mid-thirties with biting winds and snow flurries. Hundreds of thousands stayed in temporary shelters.</p>\r\n<p>\"<em>We are struggling desperately to recover</em>,\" said Yoshihiro, governor of the worst affected region of Miyagi. <em>\"I am afraid it\'s going to take a few years to revive. The disaster was far bigger than we prepared for</em>.\"</p>\r\n<p>CAM dispatched several team members to Japan who are coordinating our relief efforts. As with all our International Crisis projects, we are giving priority to sharing the Gospel of Jesus Christ through Christian literature.</p>\r\n<p>Japan has a population of 127 million, with less than two percent calling themselves Christian. Most Japanese follow Shintoism or Buddhism. The regions hardest hit by the earthquake and subsequent tsunami are considered the \"darkest\" spiritually by most missionaries. A contact in Japan shared there are about 4.9 million people in these regions, with a mere 9,000 active Christians. How sad that in this great national calamity when many have lost loved ones and all their earthly possessions, most Japanese do not have God to cling to!</p>\r\n<p>A visitor to the town of Kesennuma wrote: <em>The tsunami swept up homes and cars and then churned them into pieces like a giant sheet of sandpaper scrubbing everything in its wake. The town\'s hospital still stands, but with its doors and windows blown out by the water. A small boat is perched on what was once a third-story balcony.</em>\r\n</p>\r\n<p>The humanitarian needs in the quake/tsunami area are serious, but the psychological effect is nationwide. The disaster has left the normally self-reliant Japanese feeling very vulnerable. Please pray that through this tragedy many would open their hearts to the Word of God and prepare themselves for eternity! Pray also for our IC team members in Japan and at the home office in Ohio.</p>\r\n<p><em>?Be merciful unto me, O God . . . in the shadow of thy wings will I make my refuge, until these calamities be overpast.? Psalm 57:1</em>\r\n</p>\r\n<p><strong>Would you like to help victims of war, famine, and natural disasters around the world?</strong>\r\n</p>',75,20,'2011-08-11 15:54:34','2011-09-19 17:41:54','20,40,60,80,100','subtitles are great',1,1,'10,30,50,70,90','monthly','','IC'),
	(17,'International Sponsor-A-Student','<p>The International-Sponsor-A-Student program was started to help support Christian day schools in Liberia, Romania, and other needy countries. $50 per month supports one student.</p>','<p>Few schools in Liberia have sufficient materials or Christian-based education. The International-Sponsor-A-Student program supports Light Mennonite School in Liberia, providing a Christian education for children whose parents cannot afford tuition.</p>\r\n<p>In Romania, this program supports the Nathaniel Christian School. The school, located on the orphanage compound, was established to provide a Christian education for the orphanage children. Today most of the orphanage children have graduated, but a total of 89 students from the community attend the school. Grades one through eight are taught by 16 teachers. At the technical school, students can take woodworking, mechanics, baking, or sewing classes that will help them gain skills for life. After three years, they earn diplomas that can help them secure jobs in the future.</p>\r\n<p><strong>Would you like to help provide a Christian education for children in Liberia, Romania, or other needy countries?</strong>\r\n</p>',92,22,'2011-08-11 18:50:15','2011-09-19 17:17:36','50,100,150','',1,1,'10,30,50,70,90','monthly','A typical Liberian school with students at crude desks, doing all their lessons on a single notebook.','ISAS'),
	(18,'Jericho Road Ministries','<p><strong>Jericho Road Ministries (JRM)</strong> in Suceava, Romania, reaches out to street children, widows, aged people, and school children who have been \"left by the wayside.\" mostly Gypsy people.</p>','<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\nSome way this program reaches out:<br /><ul><li>Provides self-help aid (seeds, chain saws, land to plant crops, etc.) to needy Gypsy families</li>\r\n<li>Supports three remedial schools for Gypsies who fall behind in their lessons or drop out of school&#160;</li>\r\n<li>Translates Sunday school materials in the Romanian language and distributes Christian literature</li>\r\n<li>Holds home Bible studies</li>\r\n<li>Mails Bible correspondence courses and The Seed of Truth magazines</li>\r\n</ul>\r\n<p>More than a hundred Gypsy children attended the Jericho Road Ministries (JRM) summer Bible school held at the Nathaniel Christian Church. For some, it was their first time to hear about Jesus.</p>\r\n<p>Many of these children don\'t have the opportunity to go to Sunday school or hear about God at home. They live in the ghettos and face rejection from society. Sometimes they are forced to drop out of school to help their families beg for (or steal) food and clothes. Bible school is a wonderful opportunity to show these children they are precious in God\'s sight.</p>\r\n<p>CAM\'s Jericho Road Ministries program in Suceava, Romania, operates three remedial schools to help teach struggling Gypsy children how to read and write. The staff also distributes Bible story books and other Christian literature and translates Christian Light Publication\'s Sunday school materials into the Romanian language. JRM offers self-help aid and assists widows, elderly people, and orphans, mostly Gypsies. Their goal is to minister to the unfortunate, underprivileged, and outcasts of society.</p>\r\n<p>Please pray for the Gypsy people of Romania. Though they have generations of sin and darkness behind them, there is hope for these needy families! They are precious in God\'s sight.</p>\r\n<p><strong>Will you help the Gypsy children in Romania?</strong>\r\n</p>',33,23,'2011-08-11 18:52:08','2011-09-19 17:48:22','20,40,60,80,100','',1,1,'10,30,50,70,90','monthly','','JRM'),
	(19,'Medicines for Multitudes','<p>With funds from supporters, CAM distributes medicines and supplies to over 400 medical outlets in Eastern Europe, Liberia, Haiti, Nicaragua, El Salvador, and other parts of the world. The outlets include clinics, hospitals, church pharmacies, orphanages, and prisons that pass on the free medicines to suffering, needy people.</p>','<p>Because generous pharmaceutical companies donate the medicines, we can ship and distribute $75 worth of medicines for every dollar given to this program. In 2010, CAM shipped an estimated wholesale value of $106 million of medicines, vitamins, liquid nutrition, and medical supplies. </p>\r\n<p><strong>Clinic at La Source, Haiti:</strong> Very little medical care is available in the La Source area. God has made it possible for CAM?s Joshua Memorial Clinic to provide medicines and medical care greatly needed in this remote, area of Haiti. Generous companies donate medicines and supplies, and supporters? funds help us ship and distribute it. During 2010, clinic staff saw more than 9,000 patients.</p>\r\n<p><strong>Clinic at Waslala, Nicaragua:</strong> CAM\'s Balm of Gilead Clinic at Waslala, Nicaragua, opened in February 1997. The free medicines, donated by generous companies, are a great blessing to the suffering people who come to the clinic for help. Last year, an estimated 9,475 persons received consultations from the Waslala clinic staff. The work of the clinic was an important factor in helping the conservative Mennonite churches in Costa Rica start outreaches in the Waslala area.</p>\r\n<p>Every winter, cold and flu cases mount. Little ones struggle with sniffles, coughs, sore throat, and fever. Adults fight viruses and infections. In the United States, we simply go to the medicine cabinet or local pharmacy for Tylenol, Vitamin C, or Vicks, and we soon feel better. </p>\r\n<p>In places like Romania, however, it is not nearly so simple. Many people cannot afford to buy medicines. For poor families in the villages, some medicines cost more than the income they receive in a month. Keeping medicines in the cabinet is not an option for most Romanians.</p>\r\n<p>Through the Medicines-for-Multitudes program, CAM sends approximately $70 million worth of donated medicines to Romania each year. Hospitals, Christian doctors, church pharmacies, and other medical outlets dispense the free medicines to their patients. Many people can hardly believe they are receiving free medicine and consider it \"manna from heaven.\"</p>\r\n<p>Dr. Aurora Galchis in Romania wrote, \"The Casero Vapor Cream (from CAM) is very much appreciated by the mothers, especially during cold and flu season. It is one of the most asked-for medicines.\" Casero Vapor Cream helps treat respiratory infections and is just one of the many precious, donated medicines that can help people who might otherwise have to buy expensive medicines from the doctor. Thanks to supporters who care, thousands of Romanians and people in many other parts of the world will have a few medicines in their cabinet this coming winter.</p>\r\n<p>Each $1 donated to the Medicines-for-Multitudes program helps supply $75 worth of medicines for the poor. The medicines and medical supplies go to over 400 medical outlets in Romania, El Salvador, Liberia, Nicaragua, Haiti, and other countries.</p>\r\n<p><strong>Would you like to help provide free medicines for the needy and sick?</strong> </p>',95,24,'2011-08-11 18:56:52','2011-09-22 18:11:02','20,40,60,80,100','Providing Healthcare for the Masses',1,1,'10,30,50,70,90','monthly','Patients experience a touch of God\'s kindness at Good News Clinic in El Savador','MFM'),
	(20,'Milk for Many Mouths','<p>The Nathaniel Farm in Suceava, Romania, provides free quality milk to needy families, orphanages, and hospitals. Each $2 designated for this program helps produce, process, and distribute one gallon of milk. The farm donates fresh milk to 20 orphanages, 4 churches, and 7 hospitals on a weekly basis.\r\n</p>\r\n<iframe marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps?q=map+romania&amp;oe=utf-8&amp;client=firefox-a&amp;ie=UTF8&amp;hq=&amp;hnear=Romania&amp;gl=us&amp;z=6&amp;vpsrc=0&amp;ll=45.943161,24.96676&amp;output=embed\" frameborder=\"0\" height=\"350\" scrolling=\"no\" width=\"425\"></iframe>\r\n<br /><small><a href=\"http://maps.google.com/maps?q=map+romania&amp;oe=utf-8&amp;client=firefox-a&amp;ie=UTF8&amp;hq=&amp;hnear=Romania&amp;gl=us&amp;z=6&amp;vpsrc=0&amp;ll=45.943161,24.96676&amp;source=embed\" style=\"color:#0000FF;text-align:left\">View Larger Map</a>\r\n</small>','<p>Picture the gallon of milk you have in your refrigerator. Now try to imagine two million of those gallon milk jugs. If you would empty those jugs into a football field, you would be wading in about four and a half inches of milk! If you loaded them onto trucks, they would fill 381 semi-trailers! Through the <strong>Milk-for-Many-Mouths</strong> program, struggling people in Romania have been blessed with over two million gallons of fresh milk since 1993!</p>\r\n<p>Dennis Swartzentruber, manager of the CAM farm in Suceava, Romania, reports there is still a great demand for fresh milk in Romania, especially for orphanages, hospitals, and poor church families. Some Romanians own cows, but usually the farmers cannot provide the cows with quality feed that promotes sufficient production.</p>\r\n<p>CAM initiated the <strong>Milk-for-Many-Mouths</strong> program to help meet the need for good quality milk essential for children to grow strong, healthy bones. With God-blessed donations from supporters, needy people receive fresh milk from CAM\'s Nathaniel Farm.</p>\r\n<p>  The farm produces approximately 2,000 gallons of milk per week. CAM distributes a total of 850 gallons to twenty orphanages, seven hospitals, and four churches; the rest is sold at the CAM store in Suceava and helps cover operating costs of the farm. A total of 1,700 people are being blessed each week with the gift of fresh, nutritious milk!</p>\r\n<p>One grateful Romanian pastor writes: <em>We are very glad that even in these days of crisis God uses you all to be channels through which He can bless us and fulfill His plans. Your support is another way of God showing us He cares, and we have another reason to thank Him.</em> </p>\r\n<p>May the Lord reward you for touching the lives of many needy people in Romania!</p>\r\n<p><strong>Would you like to help provide fresh milk for orphans, elderly people, and needy families?</strong> </p>',35,25,'2011-08-11 19:00:09','2011-09-22 18:19:09','20,40,60,80,100','subtitles go here',1,1,'10,30,50,70,90','one-time','Many children are blessed through the Milk-for-Many-Mouths program','MFMM'),
	(22,'SALT Microfinance Program','<p>People in needy countries usually want to work and provide for themselves instead of depending on foreign aid, but don\'t have resources to get started. This program provides small loans for needy people to start their own businesses. As clients repay their loans, they are eligible for larger loans to expand their businesses. The core of this program is teaching, both spiritual and business. Our goal is to first introduce men and women to Jesus Christ and then walk with them as they transition from poverty to providing for themselves.</p>','<h3>\"Is there hope for Haiti?\"</h3>\r\n<p>Many of us have asked this question over the years as we have watched aid pour into this little country with few visible results. We long to see physical and spiritual change in Haiti. But is there really hope for long-term sustainable change?</p>\r\n<p>Forest Cormelle, a young Haitian mother, would love to share her opinion on the program. Forest lives in the mountains of southern Haiti and was trapped in the cycle of poverty and despair for years. She knows how it feels to send children to bed without food, have no money for shoes, and be unable to afford school tuition. But for the past two years, Forest has been part of CAM\'s new microfinance program and is excited about the changes taking place in her family.</p>\r\n<p>A small loan from CAM\'s SALT microfinance program enabled Forest to expand her little business of selling rice, oil, and flour in the local markets. As a result of the loan and teaching she received through SALT, the profit from her small business increased four hundred percent!<br />\"For the first time,\" Forest says, \"we can buy shoes for the children, send them to school, and save a little each month for emergencies.\"<br />Forest leaves her home at 5:00 a.m. to hike several hours over rugged mountain paths to the markets, while her husband tries to farm the steep hillside behind their small house. Making a living is extremely difficult, but Forest is excited and loves to share how SALT has blessed her family. \"This is so much better for us than people giving us food,\" she said enthusiastically. \"When the food is gone, this help keeps on going!\"</p>\r\n<h3>What can $150 do in Haiti?</h3>\r\n<p>The first loans we give to SALT clients in Haiti are very small, $150 or less. While this may seem like an insignificant amount, it is amazing what these people can do when the loans are accompanied with business and spiritual teaching. People who become too dependent on foreign aid sometimes have good business ideas, but often lack the training and resources to get started. Currently more than two hundred families in Haiti benefit from the SALT program, and the results have been exciting. In 2010, the loan repayment rate was ninety-eight percent!</p>\r\n<p>CAM\'s SALT program is also being administered in Nicaragua, and this year we are starting the program in Ghana. SALT clients attend regular meetings where they receive business and spiritual teaching. We have found a tremendous need for the spiritual teaching in these countries and are enthused about this aspect of the SALT program. One client recently exclaimed, \"I am hearing Biblical teaching regarding daily life that I never heard before!\"</p>\r\n<p>Individuals are required to save some money each week. Our goal is to see them eventually graduate from the program. As more funds become available, we hope to expand this program in Haiti and other countries to help many more families become self-sufficient.<br />Sustainability is the goal of the SALT program. While visiting in Forest\'s home, we asked her to tell us what her family likes most about the microfinance program. She replied with a grateful smile, \"Full plates of food.\"</p>\r\n<p><strong>Would you like to help families in Haiti, Nicaragua, and Ghana with the resources and training to become self-sufficient while also learning Biblical principles?</strong>\r\n</p>',99,26,'2011-08-11 19:05:45','2011-09-23 19:11:10','20,40,60,80,100','subtitle',1,1,'10,30,50,70,90','monthly','','SALT'),
	(23,'Save-A-Life!','<p>Save-A-Life! was started out of a growing concern for the number of children suffering and dying daily from malnutrition. The program provides liquid nutrition, infant formula, special medicines, and other products that can help save lives. Generous companies usually donate the products, and sponsors help cover procurement, shipping, and distribution costs. Sometimes the products arrive too late and disease and malnutrition have already claimed a life, but for hundreds of others, the nutrients give them a chance to live and become healthy children.</p>','<p>To support her family, Jennah buys produce from farmers in the bush near her Kpeneji, Liberia, home and then travels 60 miles to the capital city Monrovia to sell it. One day while Jennah was sitting at her little market stand selling cassava, she noticed a closed box on the ground nearby. Occasionally she would hear noises coming from inside the box.</p>\r\n<p>Unable to contain her curiosity any longer, she rose and opened the box. To her surprise a wee baby boy peered up at her! He was obviously unwanted and abandoned by his mother. Jennah, with her compassionate heart, took the child and named him Hamza Shariff.</p>\r\n<p>A week later Jennah returned to her home in Kpeneji with the sick little baby boy. Immediately, she took Hamza to the local CAM-supported clinic where Dr. Foday Watson diagnosed him with pneumonia, skin infection, and malnutrition. He treated Hamza with Omnicef and Herbalife, a nutritional drink mix provided by CAM. Later Hamza also received Isomil Plus, a baby formula CAM sent to Liberia.</p>\r\n<p>Today Hamza is a healthy six-month-old baby. Thanks to God, the care of Jennah, and donated medicine and nutritional items, little Hamza has another chance at life.</p>\r\n<p>But Jesus called them unto him, and said, \"Suffer little children to come unto me, and forbid them not: for of such is the kingdom of God.\" Luke 18:16</p>\r\n<p><strong>Would you like to join the effort to save malnourished babies and children in Liberia, Haiti, Nicaragua, and other countries? </strong>\r\n</p>',100,27,'2011-08-11 19:12:23','2011-09-23 19:19:55','20,40,60,80,100','subtitle',1,1,'10,30,50,70,90','monthly','Hamza Shariff','SAL!'),
	(24,'Seed Project','<p>Each year, this project provides tons of quality seeds to needy people in Eastern Europe, Haiti, Nicaragua, and Africa. Planting their own gardens is a joy to the thousands of needy families who can raise produce for their tables and for an income. Thousands of recipients hear the Gospel at distribution meetings and through Christian literature given with the seeds.</p>','<p>When we enter the local supermarket, we don\'t have to look far or long to find the perfect red pepper or crisp green lettuce. The produce sections in American stores are usually stocked full of healthy, fresh vegetables and fruit-all at our fingertips. Many of us also plant gardens in the springtime and by mid-summer we are picking plump, red tomatoes from the vines and sinking our teeth into buttery corn-on-the-cob. We have the blessing of living in a country where good quality produce is reasonably priced and quality seeds are accessible, affordable, and easy to grow.</p>\r\n<p>The picture changes radically in many other parts of the world. Come with us to Nicaragua to visit the Miskitos and Moravians, a native people living along the Atlantic coastal section of Nicaragua and Honduras. These people depend heavily on fishing and lobster diving for their income but also raise and sell their own food. In the good years, yucca, rice, coconuts, bananas, and root crops do well, but when hurricanes or tropical storms hit, these crops are often wiped out, plunging the people into desperate straits.</p>\r\n<p>In the fall of 2007, Hurricane Felix wiped out large stands of timber, coconuts, and bananas in the Atlantic coastal section, and many people lost their houses. It would take years to recover from this loss. The people concentrated on raising rice and root crops, so they would have something to eat. And then another tragedy struck. Hurricane Ida tore through the area in the fall of 2010 and destroyed the people\'s crops. Only a few had enough crop seed to replant.  The only thing left to do was ride the bus eight to ten hours to buy more seeds. But another predicament arose. Most of the people could not afford bus fare or seeds, and as a result were left without a source of income.</p>\r\n<p>To help this dilemma, CAM agreed to provide rice seed to the Miskito and Moravian people, using <strong>Seed Project</strong> funds. Through this project, 500 delighted families and 150 single mothers with children received 25 pounds of greatly needed rice seed. Each 25-pound bag of rice seed is projected to yield approximately 1,200 pounds of rice at harvest time. This will be a tremendous blessing to a people who depend on the outcome of their crops to determine their future. Thanks to each of you supporters who played a part in providing rice seed to these needy people. While they may not be selecting peppers from the produce section or picking tomatoes from the vine, you have made it possible for them to savor steaming bowls of rice at dinnertime and an income to rebuild - their lives. </p>\r\n<p> bag of rice seed is projected to yield approximately 1,200 pounds of rice at harvest time. This will be a tremendous blessing to a people who depend on the outcome of their crops to determine their future. Thanks to each of you supporters who played a part in providing rice seed to these needy people. While they may not be selecting peppers from the produce section or picking tomatoes from the vine, you have made it possible for them to savor steaming bowls of rice at dinnertime and an income to rebuild their lives.</p>\r\n<p>Each year, CAM provides tons of quality seeds to needy people in Nicaragua, Ukraine, Romania, Moldova, Haiti and Liberia. The seeds meet the climate requirements of the countries they are sent to.</p>\r\n<p>Seeds sent to Romania and Ukraine include corn, tomatoes, cabbage, carrot, red beet, parsley, onion, and cucumber. In Romania, volunteers distribute some seeds door-to-door but most go to pastors who distribute the seeds at evangelistic meetings. Seed distribution provides many opportunities to witness and offer Bibles, Bible story books, and other Christian literature. In Ukraine, CAM partners with Master?s International Ministries (MIM) for the Seed Project. CAM supplies the seeds and MIM coordinates volunteers from America and local Ukrainian churches to package the bulk seeds into individual packets and then family seed parcels. Thousands of recipients hear the Gospel at the distribution meetings and through tracts given with the seeds.</p>\r\n<p><strong>Would you like to support us in helping needy people receive the seeds they need to grow food for themselves and their families?</strong>\r\n</p>',101,28,'2011-08-11 19:18:26','2011-09-29 18:51:13','20,40,60,80,100','subtitle',0,1,'10,30,50,70,90','one-time','CAM provided rice seed to the Miskito and Moravian people after Hurricane Ida destroyed their crops. This grateful recipient poses in his lush, green rice field.','SP'),
	(25,'Sewing Center','<p>At CAM sewing centers in Romania, Moldova, and Ukraine, needy women make clothing for their own families and other needy people. The fabric, sewing machines, notions, and funds to administrate the centers come from generous donors in America. The ladies at the centers are required to give away three out of every four items they make. </p>\r\n<p>In 2010, approximately 35,366 items were made at the Romania centers alone.</p>','<br />\r\n<br />\r\n<br />\r\n<p>In Liberia, CAM distributes sewing machines and fabric to orphanages to help them provide clothing for the children. We also send fabric and supplies to nine centers in Nicaragua and one in Haiti. For families who cannot afford to buy clothing, these sewing centers are a tremendous blessing.</p>\r\n<p>Items needed for sewing centers in Romania, Moldova, and Ukraine</p>\r\n<ul><li>Sergers (overlock sewing machines) must be 110 or 220 volts</li>\r\n<li>Electric sewing machines (must be 220 volts with 50 Hz motor or have a transformer)</li>\r\n<li>Quilt batting</li>\r\n<li>Fabric (all sorts, lengths of one yard or more)</li>\r\n<li>Good scissors</li>\r\n<li>Good, useable thread (not weak thread)</li>\r\n<li>Straight pins</li>\r\n<li>Yarn</li>\r\n<li>Thimbles</li>\r\n<li>Zippers (17\" and 21\" - all colors)</li>\r\n<li>Serger thread (Maxi-Lock; especially white and black, but can also use some rose, blue, cream,&#160;</li>\r\n<li>and gray)</li>\r\n<li>Elastic (½\" wide, white and black)</li>\r\n<li>Elastic (1\" wide, white and black)</li>\r\n<li>Buttons (½\" and ¾\", white, black, gray, and navy)&#160;</li>\r\n<li>Big buttons of all colors (for jackets and coats; 1\" in diameter)</li>\r\n<li>Needles for regular sewing machines (especially sizes 75, 80, 85, 90, 100, and 110)</li>\r\n<li>Needles for triploc machines (size 100 and especially need sizes 80 and 90 in the style CANU:6:60EBI)</li>\r\n<li>Tape measures</li>\r\n<li>Lace (elastic lace used for lingerie, various widths and colors)</li>\r\n<li>Seam rippers</li>\r\n<li>Bulbs (push-in kind - 110v 15w and 220v 15w) (screw-in kind - 120v 15w and 220v 15w)</li>\r\n<li>Sewing machine belts (all sizes, lengths, and widths)</li>\r\n</ul>\r\n<p>If donating more than one kind of item, please keep each kind separate and label the packages accordingly. When sending sewing items, label the boxes or bags \"for Sewing Centers\" and ship or deliver them to: </p>\r\n<p><strong>Christian Aid Ministries<br />Attn: Shipping Department<br />2412 Division Highway<br />Ephrata, PA 17522-9310</strong>\r\n</p>\r\n<p>Funds are needed to ship sewing items and cover operating expenses for CAM\'s 28 sewing centers in Romania, Moldova, and Ukraine. These centers are a tremendous blessing for the ladies who come sew for their families and other needy people. </p>',103,29,'2011-08-11 19:22:48','2011-09-23 20:22:28','20,40,60,80,100','subtitle',1,1,'10,30,50,70,90','monthly','','SC'),
	(26,'Special Needs Fund','<p>This fund helps needy people with crises such as a house fire, surgery, or funeral expenses. Poverty-stricken people often cannot save up for such emergencies. The Special-Needs-Fund is used only in countries where CAM has ongoing projects and field staff.</p>','<p>Financially, some poor families in Eastern Europe get along reasonably well, that is until they face an unexpected illness, job loss, or other crisis. Then CAM\'s <strong>Special-Needs-Fund (SNF)</strong> can play an important role in helping needy families. To decide who qualifies for aid, CAM staff members work with local pastors and visit the homes of people to verify their requests firsthand. Sadly, the funds do not reach all the needs. </p>\r\n<p><strong>Medical expenses and loss of job</strong>\r\n</p>\r\n<p>Viorel Dombrovoschi lost his job when numerous factories in Romania closed down. He and his wife Anisoara struggle to keep food on the table for their nine children. Recently when two of their children became sick, the SNF helped them with medical expenses. </p>\r\n<p><strong>Prepayment for surgery</strong>\r\n</p>\r\n<p>Most doctors in Romania and Ukraine require payment from a patient before they offer their services. Catalina Juganara in Romania needed a C-section due to complications. However, the doctors and nurse made it clear that she was&#160;to bring the money prior to surgery. Catalina asked CAM for help, and we were able to assist her with funds for the operation.  </p>\r\n<p><strong>Care for the crippled</strong>\r\n</p>\r\n<p>Crippled with cerebral palsy, Maksim Ablezgo in Ukraine lives with his 65-year-old mother in an apartment building. Up until several months ago, they had to descend two flights of stairs whenever they wanted to go outside. The SNF provided $1,000 to install a door and a wheelchair ramp so Maksim can go outside and get much-needed fresh air more freely. He and his mother responded with this letter of gratitude: </p>\r\n<p><em>Dear brothers and sisters,</em>\r\n</p>\r\n<p><em>We thank you from the bottom of our hearts for your material aid so we could build a ramp. We had been praying about this need for a long time. Now I can easily go outside in my wheelchair. Earlier my mother had to go out to the street and ask somebody to help carry me outside so I could enjoy the beautiful outdoors. It rarely happened. May the Lord richly bless you and give you success in your labor here on earth and a reward in heaven.</em>\r\n</p>\r\n<p>The Special-Needs-Fund is used for difficult situations often related to medical cases but sometimes for those who suffered a house fire or have other special needs. </p>',40,28,'2011-08-11 19:26:35','2011-09-27 13:48:31','20,40,60,80,100','subtitle',1,1,'10,30,50,70,90','monthly','','SNF'),
	(27,'Strong Tower Children\'s Home','<p>Orphaned and abandoned children find a place of refuge and security at Strong Tower Children\'s Home in El Salvador. </p>','<p>The staff at Strong Tower Children\'s Home strives to meet the children\'s emotional, physical, and spiritual needs, and the twenty-one children have the opportunity to study school lessons, feed their animals, play together, and help harvest fruits, vegetables, and coffee beans. We pray these precious children will learn to know and love their heavenly Father and become godly men and women.&#160;\r\n</p>\r\n<p>With supporters\' donations, CAM provides the finances to operate Strong Tower Children\'s Home, but the home is administrated under a board and executive committee from the conservative Mennonite churches in El Salvador. </p>\r\n<p><strong>If you feel led to help support the children at Strong Tower, there are two ways you can be involved:</strong>\r\n</p>',104,29,'2011-08-11 19:29:17','2011-09-27 14:20:48','250, 500, 1000','A Place of Refuge and Security',1,1,'25, 50, 100, 250, 500, 1000','monthly','','ESCH'),
	(28,'Support-A-Widow','<p>A donation of $55 provides a 35-pound or larger parcel of food and healthcare items and $10 cash for needy widows, widowers, and abandoned wives. In 2010, supporters provided a total of 11,255 parcels for recipients in Liberia, Haiti, Nicaragua, Romania, Moldova, Ukraine, and Israel.</p>','<p>Madam Silpa from Kenya, Africa, lives with her three young children in a small, 8\' x 12\' hut. This 25-year-old widow earns approximately $1 a week weaving sisal leaves into ropes. The packages of food delivered to her door will make her load lighter this month.</p>\r\n<p>The <strong>Support-A-Widow</strong> <strong>(SAW)</strong> program provides food parcels for needy widows, widowers, and abandoned wives in Kenya, Liberia, Haiti, Nicaragua, Romania, Moldova, Ukraine, and Israel. These parcels contain food, healthcare items, a copy of The Seed of Truth magazine, and $10 cash. Through your support, this program brings new hope and encouragement to neglected, discouraged people.</p>\r\n<p><em>\"Pure religion and undefiled before God and the Father is this, To visit the fatherless and widows in their affliction?\" James 1:27</em>\r\n</p>\r\n<p><strong>Would you like to help provide food and other aid to needy widows, widowers, and abandoned wives?</strong>\r\n</p>',105,26,'2011-08-11 19:34:07','2011-09-27 14:31:14','20,40,60,80,100','subtitle',1,1,'10,30,50,70,90','monthly','','SAW'),
	(29,'Warm-A-Family','<p>Needy people in Romania, Moldova, and Ukraine struggle to pay their heating bills or buy fuel to heat their houses during the cold winter months. The <strong>Warm-A-Family</strong> <strong>(WAF)</strong> program provides stoves and/or funds to buy firewood and pay heating bills, usually for large families and some small or isolated churches that lack funds to heat their meeting place.</p>','<p>With the harsh, Romanian winter just around the corner, Costache Popisticha purchased firewood to heat his house, but he was unable to pay it in full. He works whenever he can find a job - hoeing corn, harvesting potatoes, or hauling miscellaneous items with his horse and wagon. Sometimes he receives produce as payment instead of money. </p>\r\n<p>Costache and his wife, Lacramioara, have eight children. With six of them in school, they incur a lot of expenses. Their mud brick house maxes out their two small wood stoves. Costache and his family received $94 (USD) from the Warm-A-Family program; with this, they can finish paying for the wood. They praise the Lord for how He has blessed them. </p>\r\n<p>One of the greatest expenses for families in Eastern Europe is heating their houses during the long, cold winters. Parents often sacrifice their own needs to provide warmth and comfort for their families. For a family living in an apartment it costs an average of $125 a month for central heating. If the father has a decent paying job, he might make $250 - $375 (USD) a month. Because of their low income, families often wait to buy firewood until winter is upon them. They buy some on credit, hoping that God will provide the funds to pay for it.&#160;</p>\r\n<p>Each winter, the Warm-A-Family program assists approximately 900 families and 25 churches in Romania, Moldova, and Ukraine. Supporters\' donations help families buy firewood or pay their heating expenses. The families are extremely grateful for this aid.</p>\r\n<p><strong>Would you like to help make the cold winter more bearable for poor people in Romania, Moldova, and Ukraine?</strong>\r\n</p>',106,27,'2011-08-11 19:35:58','2011-09-27 15:20:51','20,40,60,80,100','subtitle',1,1,'10,30,50,70,90','monthly','Costache and Lacramioara Popisticha bought some of this firewood with money they earned during the summer; the rest they bought on credit. This wood will not last them the entire winter, and they will have to buy more later on.','WAF'),
	(30,'Water-for-the-World','<p>In countries such as Kenya and Haiti, the average household does not have water flowing freely from a spigot. Many settle for river water or stagnant pond water, which can result in life-threatening diseases. CAM provides funds to dig wells in countries where people lack fresh, clean water. People in Kenya, El Salvador, Haiti, and Liberia have benefited from this program.</p>','<p>The Jorim Juma family in Kenya, Africa, is happy about their new well. Jorim had dug this well but was unable to line it with cement or buy a pump for it. CAM\'s <strong>Water-for-the-World (WFW)</strong> program provided funds to dig the well deeper, line it with cement rings, and install the pump. The Juma family and their neighbors now enjoy safe, clean water.</p>\r\n<p><strong>Would you like to help provide a family with clean, healthy water?</strong>\r\n</p>',107,28,'2011-08-11 19:41:42','2011-09-27 15:26:57','20,40,60,80,100','subtitle',1,1,'10,30,50,70,90','monthly','Jorim Juma family from Kenya, Africa','WFW'),
	(32,'Haiti-Sponsor-A-Child School Program','<p>Haiti\'s government provides little free schooling, and many parents cannot afford sending their children to school. The <strong>Haiti-Sponsor-A-Child (HSAC)</strong> program provides textbooks, school supplies, and a warm meal each school day for approximately 8,368 students at 46 schools in Haiti. For the teachers, it provides Biblical training and subsidized pay. $55 per month supports five students.</p>','<p>It\'s the time of year when parents across North America prepare to send their children back to school. New pencils, tablets, clothes, and book bags are only the beginning of their list of necessities. In Haiti, however, about half of the population will not be sending their children to school. For some, no school is available in their area. For many others, there is no money for tuition and school supplies, no matter how near or far away the school.</p>\r\n<p>The Haiti-Sponsor-A-Child School Program, financed by caring sponsors, makes a difference for at least some children. The program provides a nutritious meal each school day, textbooks, and school supplies. Teachers receive Bible-based training and subsidized pay. <br />Through the blessing of God and the generosity of His people, HSAC will help 47 schools and up to 9,500 students this coming school year. Many thousands more children will have to wait for another year.</p>\r\n<p> Besides helping children learn to read and write, it\'s exciting to see the spiritual benefits of this program. Some students who attended CAM-sponsored schools in years past are now church leaders and schoolteachers. The Christophe Colomb School said, <em>Thank you for the great ministry you have done in our school. Many people have been converted and witness for Jesus now. We are very happy that today there are former students who teach in the school.</em> The devotional time held at the schools has inspired students to respect God and be willing to serve Him in spite of opposition from family or peers.</p>\r\n<p>Students starting third grade receive a <em>101 Favorite Stories from the Bible</em> book, and sixth graders receive a New Testament. One young boy said, <em>The pictures in the Bible story book help me understand what the stories are saying.</em> Even parents have come to know God through the Bible story books. Areas steeped in voodoo practices in years gone by have changed in a positive way. We praise God for this miracle, which in part can be attributed to the exposure of Christian literature through HSAC.</p>\r\n<p>The majority of teachers in Haiti receive no training. CAM hosts annual Teacher Training Retreats for teachers on the HSAC program. Along with academic training, we take this wonderful opportunity to teach Biblical lessons in a society of spiritual darkness.</p>\r\n<p><img rel=\"225x255\" alt=\"Hsac Article\" title=\"Hsac Article\" src=\"/system/images/BAhbBlsHOgZmSSItMjAxMS8wOS8wOC8xM18wOF8xOV8xODdfaHNhY19hcnRpY2xlLmpwZwY6BkVU/hsac_article.jpg\" height=\"244\" width=\"450\" /> </p>\r\n<h3>Thank you, sponsors!</h3>\r\n<p><em>If it wouldn\'t be for your support, our school wouldn\'t have a chance.</em> Oeuvre Humanitaire school<br /><em>Your support has helped me improve my spiritual life and helped us improve the administration at our school. </em>\r\n<br />Nouvelle Jérusalem Belle-Eau school administrator<br /><em>You help us with evangelization, especially by giving the 101 Favorite Stories from the Bible. The pictures with the stories are interesting and help convince people about the Bible.</em> Evangélique de Jamais-vu school</p>\r\n<iframe marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=haiti&amp;sll=38.40499,-78.872234&amp;sspn=0.266081,0.528374&amp;vpsrc=0&amp;ie=UTF8&amp;hq=&amp;hnear=Haiti&amp;z=8&amp;ll=18.971187,-72.285215&amp;output=embed\" frameborder=\"0\" height=\"350\" scrolling=\"no\" width=\"425\"></iframe>\r\n<small><a target=\"_blank\" title=\"http://maps.google.com/\" href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=haiti&amp;sll=38.40499,-78.872234&amp;sspn=0.266081,0.528374&amp;vpsrc=0&amp;ie=UTF8&amp;hq=&amp;hnear=Haiti&amp;z=8&amp;ll=18.971187,-72.285215\" style=\"color:#0000FF;text-align:left\">View Larger Map</a>\r\n</small>',79,4,'2011-08-18 19:41:23','2011-09-19 17:19:52','55,110','',1,1,'25,50,100,250,500,1000','monthly','Young Haitian boys work together on their lessons. In Haiti, going to school is a privilege not to be taken for granted.','HSAC'),
	(33,'Where-Needed-Most','<p>The <strong>Where-Needed-Most (WNM)</strong> program is our general support Category. &#160;When you donate this money, it is given to the fund that needs the most financial support. &#160;This is a great category for those who wish to give and spread the word of God, but are not sure which programs to support.</p>','<p>Where-Needed-Most (or non-specified) funds are used for aid programs that did not receive enough specified funds, and for general administration and fund-raising expenses. We want to be good stewards of all gifts from supporters and need your prayers for wisdom and direction from God. May He be glorified as we labor together to further His kingdom on earth!</p>',NULL,5,'2011-08-22 14:44:36','2011-09-27 15:59:53','50,100,250','subtitle',1,1,'25,50,100,250,500,1000','monthly','','WNM'),
	(34,'Teaching Ministries Program','<p>In North America we often take for granted having access to plenty of good Biblical teaching. In many countries, Christians don\'t have this opportunity. Nicaragua is one such place.</p>','<p>In response, CAM established a <strong>Teaching Ministries (TMP)</strong> program where native pastors from various parts of Nicaragua can attend yearly seminars. These seminars focus on practical, Bible principles that challenge churches toward holy living. Pastors from conservative Anabaptist congregations in Central America teach on subjects such as Biblical doctrine, discipleship, and practical teaching on the home. A study on Matthew 5, taught by Pablo Yoder at the November 2010 seminar, prompted this response from Pastor Marvin Garcia:&#160;</p>\r\n<p><em>\"The Sermon on the Mount study has been a great blessing and confirmation of God\'s word. We hope we will have opportunity to attend more of these seminars.\"</em>\r\n</p>\r\n<p>Pray that the seed planted at the Teaching Ministries seminars would bring forth much fruit for God\'s kingdom!</p>\r\n<p><strong>Would you like to help provide practical Bible teaching in Nicaragua and other countries?</strong>\r\n</p>',45,6,'2011-08-22 14:52:17','2011-09-27 14:45:11','50,100,250','\"Give instruction to a wise man, and he will be yet wiser...\" Proverbs 9:9',1,1,'25,50,100,250,500,1000','monthly','','TMP'),
	(35,'Sponsor-A-Bible-Lesson','<p>In countries where sound Bible teaching is scarce, Bible correspondence lessons on salvation, holy living, Christian ordinances, and other topics meet an important need for searching souls. This program mails Lamp &amp; Light Bible correspondence courses in Liberia and Romania. In Liberia, more than 33,600 students are enrolled in the courses and in Romania, 800 are actively enrolled. </p>','<p>From the CAM office in Liberia, West Africa, Lamp &amp; Light\'s Bible correspondence courses go out to almost every corner of this muggy, tropical country. About 7,000 students are enrolled in the courses, including prisoners, UN soldiers, embassy workers, and pastors. </p>\r\n<p>Since Liberia has no working mail system, the courses are sent into the countryside through contacts who act as a \"post office.\" In a recent update,&#160;Tom Wagler, who directs the correspondence work, shared how amazed and blessed he is at the effort these contacts put into distributing the courses and collecting tests. &#160;</p>\r\n<p><em>\"I\'ve gone out to meet these  people, and I come back awed and encouraged by their determination. Some walk for miles through rain, mud, and heat to deliver the Bible courses to students.\"</em>\r\n</p>\r\n<p>Tom also shared about the positive feedback he gets from students. I meet people locally and out in the jungle who tell me they\'ve been blessed by the courses, he says. A few comments he recently heard are, <em>\"The courses empowered me for service; I love the courses so much; and You are helping us know God better than before.\"</em>\r\n</p>\r\n<h2>Reaching out in Romania</h2>\r\n<p>In Romania, the Bible correspondence program is an important arm of the Nathaniel Christian Church to reach people searching for truth. People interested in the courses send in a registration form, after which they receive their first booklet accompanied by a letter explaining the program. Each booklet has Bible lessons and one to three tests. Students complete the tests, send them back to our office for grading, and then receive a new booklet to work on. The courses, also from Lamp &amp; Light, are translated into the Romanian language.&#160;</p>\r\n<p>One of the things we focus on, shares CAM Romania staff member Titus Miller, is personal interaction, or corresponding with our students through additional letters. This has opened doors to minister to the deeper needs of people when they realize it\'s not just a computer processing their work. </p>\r\n<p>Most of the students are from an evangelical background, although a number of Orthodox, Catholic, Jehovah\'s Witnesses, and Adventists are also enrolled in the program.  Titus reported the church has recently increased their efforts to reach people in prison. Extensive correspondence is maintained with these individuals to help develop their spiritual man and prepare them for life outside of prison. </p>\r\n<p><strong>Join us in prayer that, as God\'s Word goes forth through Bible correspondence courses, it might fall on fertile soil and bear much fruit!</strong>\r\n</p>\r\n<p>Sponsor-A-Bible-Lesson had a $100,000 deficit in 2010, which limits our ability to expand the program although we consider it an important one. If you would like to help this deficit and provide Bible correspondence courses for people in Liberia, Romania, and other countries, below are two ways you can help.</p>',46,7,'2011-08-22 14:58:39','2011-09-27 13:56:48','50,100,250','subtitle',1,1,'25,50,100,250,500,1000','monthly','','SABL'),
	(36,'Middle East Ministries','<p>This program helps to provide aid for those in the Middle East, who need your help.</p>','<p>Two years ago Marlyn\'s husband passed away suddenly and left her with the sole responsibility of caring for her six children. Marlyn, a young Israeli woman, decided to try baking in her parents\' downstairs living room; her hard work made the business prosper and after a short time her primitive setup needed to be upgraded.</p>\r\n<p>CAM staff in Israel, with supporters\' donations, helped Marlyn retrofit a small bakery shop and move out of her parents\' living room. Marlyn is very grateful for the assistance that enables her to support her children.</p>',NULL,8,'2011-08-22 15:01:15','2011-09-19 18:27:46','50,100,250','',1,1,'25,50,100,250,500,1000','monthly','','MEM'),
	(38,'Favorite Stories from the Bible','<p>The <strong>Favorite Stories from the Bible</strong> program makes it possible for thousands of people to read the Gospel message through Bible story books. <br />In 2010, supporters provided the funds to print and distribute over 800,000 copies of the <em>101 Favorite Stories from the Bible</em> and the condensed version, <em>25 Favorite Stories from the Bible</em>. The needs are endless.   </p>','<p>Across the globe there are men, women, and children who don\'t know about Jesus. They don\'t know about His love for them and that He died on the cross to save them from their sins. How will these people learn about Jesus?</p>\r\n<p>A tool numerous missions are using to introduce people to Jesus is CAM\'s Bible story books. Printed in more than forty languages, the simple stories and colorful illustrations spark interest in both children and adults. The books, <em>101 Favorite Stories from the Bible</em> and the condensed version <em>25 Favorite Stories from the Bible,</em> are being distributed in many parts of the world, including some very restricted Muslim and communist countries. Our goal for these books is to whet people?s appetites for the Bible and reach hearts that might otherwise not be open to the Gospel.</p>\r\n<h2>A million copies in Chinese</h2>\r\n<p><em>\"Our hearts leaped for joy when we received these precious Bible story books,\"</em> says Sichuan, a mission worker in China. \"<em>Our children\'s ministry workers were so excited to have this tool since it is difficult for us to get Christian children\'s literature. The children take the books home and ask their parents to read to them, which has created a tremendous amount of interest from the parents. Many parents are coming to the Lord. Thank you for blessing us and partnering with our ministry.\"</em>\r\n</p>\r\n<p>Essai, a nine-year-old Chinese boy from the Ban Lung village, was especially impressed with two of the stories. He wrote, <em>\"The story of creation is amazing because God created everything just by speaking. I also like the story of baby Jesus in the manger because the angel told the shepherds the good news, but they didn\'t believe it. They had to go see for themselves.\"</em>\r\n</p>\r\n<p>With God\'s blessing and funds from generous supporters, CAM has printed and distributed more than one million <em>25 Favorite Stories from the Bible</em> books in China.</p>\r\n<h2>God\'s salvation plan in Creole</h2>\r\n<p><em>\"I cannot thank you enough for the Bible story books in Creole, writes a missionary teacher in Haiti. The students at our school will use them this school year for their religion curriculum. What an awesome experience it will be for them to read about God\'s salvation plan in their own language! Thank you so much for helping us to share Christ\'s love with these children.\"</em>\r\n</p>\r\n<p>In Haiti, China, and many other parts of the world, Bible story books are telling men, women, and children about Jesus. In their own language, they are hearing God\'s salvation plan and how much He loves each person. There is a huge demand for many more copies of <em>101 Favorite Stories from the Bible</em> and <em>25 Favorite Stories from the Bible</em>, and a number more are in the translation process. Please pray with us that the message of Jesus would go forth freely and God?s name be honored.</p>\r\n<p><strong>Would you like to help us translate, print, and distribute the <em>101 Favorite Stories from the Bible</em> and <em>25 Favorite Stories from the Bible </em>for children all over the world?</strong>\r\n</p>',50,1,'2011-08-22 15:12:22','2011-09-19 17:08:12','50,100,250','Telling the stories of Jesus in their language',1,1,'25,50,100,250,500,1000','monthly','','FSFB'),
	(39,'Adopt-A-Family','<p>While the economy in Eastern Europe is improving, families still suffer from extremely low incomes and rising inflation. Those in the villages especially struggle to provide for their families. The Adopt-A-Family program provides food parcels for selected Christian families in Romania, Moldova, and Ukraine. &#160;Each $69 donation supplies a 50-pound or larger parcel containing basic food and healthcare items and some Christian literature.</p>','<h2>A Helping Hand to Needy Families</h2>\r\n<p>With six children and no job, Virgil and Lucica Stoian in Mileanca, Romania, struggle to put food on the table. Their only steady income is the monthly child allocation they receive from the state approximately $12 per child per month. Their son Silviu has cancer and needs expensive medication, adding to the family\'s struggles. An <strong>Adopt-A-Family (AAF)</strong> food parcel enhances their table and encourages their hearts.</p>\r\n<p>Economic reform is slow in coming to Romania, and large, unemployed families find life especially hard. According to the World Bank, poverty has risen six-fold in Romania since 1989. About two-thirds of the population lives on less than $4 USD a day. </p>\r\n<p>The country never recovered after the value of Romanian currency collapsed during the 1990s while the prices of food and other items rose. Although malnutrition is rare in Romania, children and adults in poor families often suffer health problems from unbalanced diets, largely corn mush and potatoes. It\'s all they can afford. </p>\r\n<p>Since 1982, <strong>Adopt-A-Family (AAF)</strong> sponsors have provided food parcels for poor Christian families in Romania. Today families in Moldova and Ukraine also benefit from the program. The parcels contain such items as cooking oil, rice, canned meat, sugar, and flour, as well as healthcare items and spiritual food in the form of The Seed of Truth Christian family magazine. Each month, more than 3,000 families in Romania, Moldova, and Ukraine are blessed with a food parcel.</p>\r\n<p>The Simion Danalache family from Botosani, Romania wrote, \"<em>We thank God for putting it on your heart to help us with these wonderful gifts. We lift you up in prayer from our home. Thank you for each item we received from you. We greet you with Psalm 121, \"I will lift up mine eyes unto the hills, from whence cometh my help.\"</em>\r\n</p>\r\n<p><img src=\"/system/images/BAhbB1sHOgZmSSJhMjAxMS8wOC8yMi8xMV8xOV8wNl82NTdfRmFtaWx5X0Zvb2RfUGFyY2Vsc19mb3JfUm9tYW5pYV9Nb2xkb3ZhX2FuZF9Va3JhaW5lX2h0bV81NGJkNWFjNi5naWYGOgZFVFsIOgZwOgp0aHVtYkkiDTQ1MHg0NTA+BjsGVA/Family_Food_Parcels_for_Romania_Moldova_and_Ukraine_htm_54bd5ac6.gif\" title=\"Family Food Parcels For Romania, Moldova, And Ukraine\" alt=\"Family Food Parcels For Romania, Moldova, And Ukraine\" rel=\"450x450\" class=\"add-caption\" height=\"216\" width=\"197\" /></p>\r\n<p>Alexei Romanchuck serves as a missionary pastor for two small churches in northeastern Ukraine. His summer salary is less than $100. An Adopt-A-Family parcel blessed the family\'s hearts and home.</p>\r\n<span class=\"text-align-right\"></span>\r\n<p><strong>Would you like to help provide food parcels for poor Christian families in Romania, Moldova, and Ukraine?</strong>\r\n</p>',51,2,'2011-08-22 15:19:52','2011-09-29 15:59:55','50,100,250','',1,1,'25,50,100,250,500,1000','monthly','This Eastern European family is very grateful for the help you have given them.','AAF'),
	(40,'Nicaragua-Adopt-A-Family','<p>Nicaragua is the second poorest country in the western hemisphere. Eighty percent of the population earns only $3-$4 a day. The Nicaragua-Adopt-A-Family program helps 750 Christian families each month by providing parcels of food, medicines, healthcare items, and some Christian literature. A $50 donation provides a 45-pound or larger parcel. </p>','<br />\r\n<br />\r\n<br />\r\n<br />\r\n<h2>Nourishment for needy families in Nicaragua</h2>\r\n<p><img class=\"add-caption\" rel=\"450x450\" alt=\"Nueva Segovia, A Very Mountainous Region, Is Home To The Maldonado Family. No Tractors Are Used In These Mountains! All Fieldwork Is Done By Hand Or With Oxen And Horses.\" title=\"Nueva Segovia, A Very Mountainous Region, Is Home To The Maldonado Family. No Tractors Are Used In These Mountains! All Fieldwork Is Done By Hand Or With Oxen And Horses.\" src=\"/system/images/BAhbB1sHOgZmSSJQMjAxMS8wOC8yMi8xMV8yNV8yNF80MTZfRmFtaWx5X0Zvb2RfUGFyY2Vsc19mb3JfTmljYXJhZ3VhX2h0bV9tM2E2YWQ1ZmMuanBnBjoGRVRbCDoGcDoKdGh1bWJJIg00NTB4NDUwPgY7BlQ/Family_Food_Parcels_for_Nicaragua_htm_m3a6ad5fc.jpg\" height=\"338\" width=\"450\" /></p>\r\n<p>Jose Antonio Maldonado listens to the rain as it falls softly, thoroughly watering the dry, thirsty ground. It is rainy season in Nicaragua, and the daily afternoon rains have turned the countryside to a lush, tropical green. Jose, his wife Nelys, and their three boys live in an adobe house in the mountains of Nueva Segovia. In this mountainous region north of Managua, the country\'s capital, work is hard to find.  Jose is thankful for the forty dollars a month he earns by planting, weeding, or harvesting for local farmers.  </p>\r\n<p>Jose and his family have approximately half an acre of land where they grow red beans, corn, and bananas. They depend on a <strong>Nicaragua-Adopt-A-Family (NAAF)</strong> food parcel for basics such as cooking oil, sugar, and rice. The cooking oil is very valuable to Jose\'s family, as it would cost Jose four days\' worth of wages to buy a gallon of oil. Jose and Nelys\'s youngest son suffers from anemia and should have vitamins and iron supplements, but they have no money to purchase them. The vitamins they sometimes receive in the parcels are a tremendous blessing.</p>\r\n<h2>Nourishing 800 families each month</h2>\r\n<p>The Nicaragua-Adopt-A-Family program helps 750 families each month. To select recipients, CAM staff visits the pastor of a poor community and requests a list of their most needy members. Two of the staff then visits the families to see whether they qualify for the program. When a family meets our qualifications, which include low income, no television, and active church membership, they are signed up to receive a parcel. CAM trucks spend three weeks each month delivering food parcels to various parts of the country, up to two hundred miles from our warehouse in Managua. </p>\r\n<p>In a country of six million people where eighty percent of the population earns only $3-$4 a day, the NAAF parcels help bring hope and nourishment. Each $45 from sponsors provides a 45-pound or larger parcel of food (rice, beans, cooking oil, canned chicken, and more), medicines, healthcare items, and an Antorcha de la Verdad (Torch of Truth) magazine.</p>\r\n<p><strong>Would you like to help provide nourishment for needy Nicaraguan families? </strong>\r\n</p>',53,3,'2011-08-22 15:25:42','2011-09-22 18:25:14','50,100,250','',1,1,'25,50,100,250,500,1000','monthly','While two of the Maldonado boys hold soap and canned chicken, the youngest son shows his affection for the food parcel.','NAAF'),
	(41,'Rapid Response Disaster Service','<p>After a disaster strikes in the USA, Rapid Response Teams are designed to move into a devastated community within 24 hours to investigate the damage. Rapid Response volunteers then start cleanup within 48 hours or less. Projects include general cleanup, cutting up fallen trees, building storage sheds, and installing tarps on damaged roofs.</p>\r\n<br />','<h2>Storms, storms and more storms!</h2>\r\n<h3>Hackleburg, Alabama</h3>\r\n<p>From April 29-30, 2010 a series of storms and tornadoes ripped through southern USA. Hackleburg, AL was one of those towns that got caught in the storms. Rapid Response Volunteers spent 4,151 hours cleaning up after the storm.</p>\r\n<p>Here are a few pictures of the damage in Hackleburg.</p>\r\n<p><img rel=\"225x255\" alt=\"Rrt2\" title=\"Rrt2\" src=\"/system/images/BAhbBlsHOgZmSSIlMjAxMS8wOS8wOS8xM18zNl80Nl80NThfcnJ0Mi5KUEcGOgZFVA/rrt2.JPG\" height=\"338\" width=\"450\" /><img rel=\"225x255\" alt=\"Rrt1\" title=\"Rrt1\" src=\"/system/images/BAhbBlsHOgZmSSIlMjAxMS8wOS8wOS8xM18zNl80Nl8zMzdfcnJ0MS5KUEcGOgZFVA/rrt1.JPG\" height=\"338\" width=\"450\" /></p>\r\n<p>Here are some pictures of the volunteers cleaning up debris.</p>\r\n<p><img rel=\"225x255\" alt=\"Rrt3\" title=\"Rrt3\" src=\"/system/images/BAhbBlsHOgZmSSIlMjAxMS8wOS8wOS8xM18zNl80Nl82NDlfcnJ0My5KUEcGOgZFVA/rrt3.JPG\" height=\"338\" width=\"450\" /></p>\r\n<h3>Joplin, Missouri</h3>\r\n<p>On May 22, 2011 a massive category 5 tornado ripped through Joplin, Missouri. The tornado cut a path of destruction 3/4 to a mile wide and nearly 7 miles long within the city limits. Nearly 8000 structures were estimated to be impacted by the tornado. Many homes, along with churches, schools, businesses and one hospital, were completely destroyed in the wake of the tornado.</p>\r\n<p>Rapid Response Volunteers spent a total of 1,532 hours cleaning up debris after the storm.</p>\r\n<p><img rel=\"225x255\" alt=\"Rrt6\" title=\"Rrt6\" src=\"/system/images/BAhbBlsHOgZmSSIlMjAxMS8wOS8wOS8xM180Nl80Ml8zOThfcnJ0Ni5KUEcGOgZFVA/rrt6.JPG\" height=\"338\" width=\"450\" /><img rel=\"225x255\" alt=\"Rrt4\" title=\"Rrt4\" src=\"/system/images/BAhbBlsHOgZmSSIkMjAxMS8wOS8wOS8xM180Nl80Ml84MF9ycnQ0LmpwZwY6BkVU/rrt4.jpg\" height=\"338\" width=\"450\" /><img rel=\"225x255\" alt=\"Rrt5\" title=\"Rrt5\" src=\"/system/images/BAhbBlsHOgZmSSIlMjAxMS8wOS8wOS8xM180Nl80Ml8yMTdfcnJ0NS5qcGcGOgZFVA/rrt5.jpg\" height=\"338\" width=\"450\" /></p>\r\n<h3>Hurricane Irene</h3>\r\n<p>Even though Hurricane Irene didn\'t cause as much damage as weather forecasters predicted, it did cause widespread damage. Thirty-two people lost their lives, and caused widespread flooding especially in New Jersey and Vermont. </p>\r\n\r\n<p>CAM\'s Rapid Response Teams helped victims of Manville, New Jersey, clean up from flood damage caused by the hurricane. Leroy Heatwole, a Rapid Response Team director, says, \"When we walked through Manville into the flood area with the homeowners who are just returning to their homes. There are a lot of homes flooded, from six inches to all the way to the roof. Plans are to do more investigating and then start mucking out homes as soon as the water level goes down. We will be needing lots of volunteers from the PA community.</p>\r\n<p>Please pray for the victims of this disaster and our cleanup teams as they minister to the hurting.</p>',97,NULL,'2011-09-08 15:24:04','2011-09-19 18:40:43','','',0,1,'20,40,60,100','one-time','','RRT');

/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_settings`;

CREATE TABLE `refinery_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  `destroyable` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `scoping` varchar(255) DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `callback_proc_as_string` varchar(255) DEFAULT NULL,
  `form_value_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_settings_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `refinery_settings` WRITE;
/*!40000 ALTER TABLE `refinery_settings` DISABLE KEYS */;

INSERT INTO `refinery_settings` (`id`, `name`, `value`, `destroyable`, `created_at`, `updated_at`, `scoping`, `restricted`, `callback_proc_as_string`, `form_value_type`)
VALUES
	(1,'use_marketable_urls','--- \"true\"\n',1,'2011-05-20 17:07:58','2011-05-20 17:07:58','pages',0,NULL,'text_area'),
	(2,'i18n_translation_enabled','--- \"true\"\n',1,'2011-05-20 17:07:58','2011-05-20 17:07:58','refinery',0,NULL,'text_area'),
	(3,'i18n_translation_default_frontend_locale','--- :en\n',1,'2011-05-20 17:07:58','2011-05-20 17:07:58','refinery',0,NULL,'text_area'),
	(4,'dragonfly_secret','--- 94fcee4788b21befd689bfe05be95524939d9ac6dae6fa79\n',1,'2011-05-20 17:08:21','2011-05-20 17:08:21',NULL,0,NULL,'text_area'),
	(5,'approximate_ascii','--- \"false\"\n',1,'2011-05-20 17:08:21','2011-05-20 17:08:21','pages',0,NULL,'text_area'),
	(6,'strip_non_ascii','--- \"false\"\n',1,'2011-05-20 17:08:21','2011-05-20 17:08:21','pages',0,NULL,'text_area'),
	(7,'i18n_translation_locales','--- \n:en: English\n:fr: \"Fran\\xC3\\xA7ais\"\n:nl: Nederlands\n:\"pt-BR\": \"Portugu\\xC3\\xAAs\"\n:da: Dansk\n:nb: \"Norsk Bokm\\xC3\\xA5l\"\n:sl: Slovenian\n:es: \"Espa\\xC3\\xB1ol\"\n:it: Italiano\n:de: Deutsch\n:lv: Latviski\n:ru: \"\\xD0\\xA0\\xD1\\x83\\xD1\\x81\\xD1\\x81\\xD0\\xBA\\xD0\\xB8\\xD0\\xB9\"\n:sv: Svenska\n:pl: Polski\n:\"zh-CN\": Simplified Chinese\n:\"zh-TW\": Traditional Chinese\n:el: \"\\xCE\\x95\\xCE\\xBB\\xCE\\xBB\\xCE\\xB7\\xCE\\xBD\\xCE\\xB9\\xCE\\xBA\\xCE\\xAC\"\n:rs: Srpski\n:cs: \"\\xC4\\x8Cesky\"\n:sk: \"Slovensk\\xC3\\xBD\"\n:jp: \"\\xE6\\x97\\xA5\\xE6\\x9C\\xAC\\xE8\\xAA\\x9E\"\n',1,'2011-05-20 17:08:27','2011-05-20 17:08:27','refinery',0,NULL,'text_area'),
	(8,'site_name','--- Christian Aid Ministries\n',1,'2011-05-20 17:08:28','2011-05-20 20:08:24',NULL,0,NULL,'text_area'),
	(9,'use_resource_caching','--- \"true\"\n',1,'2011-05-20 17:08:28','2011-05-20 17:08:28',NULL,0,NULL,'text_area'),
	(10,'use_google_ajax_libraries','--- \"false\"\n',1,'2011-05-20 17:08:28','2011-05-20 17:08:28',NULL,0,NULL,'text_area'),
	(11,'i18n_translation_default_locale','--- :en\n',1,'2011-05-20 20:08:09','2011-05-20 20:08:09','refinery',0,NULL,'text_area'),
	(12,'i18n_translation_current_locale','--- :en\n',1,'2011-05-20 20:08:09','2011-07-20 17:41:32','refinery',0,NULL,'text_area'),
	(13,'i18n_translation_frontend_locales','--- \n- :en\n',1,'2011-05-20 20:08:09','2011-05-20 20:08:09','refinery',0,NULL,'text_area'),
	(14,'activity_show_limit','--- 7\n',1,'2011-05-20 20:08:09','2011-05-20 20:08:09',NULL,0,NULL,'text_area'),
	(15,'page_title','--- \n:chain_page_title: false\n:ancestors: \n  :separator: \" | \"\n  :class: ancestors\n  :tag: span\n:page_title: \n  :class: \n  :tag: \n  :wrap_if_not_chained: false\n',1,'2011-05-20 20:08:35','2011-05-20 20:08:35',NULL,0,NULL,'text_area'),
	(16,'authenticity_token_on_frontend','--- \"true\"\n',1,'2011-05-20 20:08:35','2011-05-20 20:08:35',NULL,0,NULL,'text_area'),
	(17,'frontend_refinery_stylesheets_enabled','--- \"true\"\n',1,'2011-05-20 20:08:35','2011-05-20 20:08:35',NULL,0,NULL,'text_area'),
	(18,'cache_menu','--- \'true\'\n',1,'2011-05-20 20:08:35','2011-08-18 15:28:33',NULL,1,NULL,'text_area'),
	(19,'menu_hide_children','--- \"false\"\n',1,'2011-05-20 20:08:35','2011-05-23 21:28:47',NULL,0,NULL,'text_area'),
	(20,'image_views','--- \n- :grid\n- :list\n',1,'2011-05-20 20:08:43','2011-05-20 20:08:43',NULL,0,NULL,'text_area'),
	(21,'preferred_image_view','--- grid\n',1,'2011-05-20 20:08:43','2011-09-08 13:14:46',NULL,0,NULL,'text_area'),
	(22,'cache_pages_backend','--- \"false\"\n',1,'2011-05-20 20:08:44','2011-05-20 20:08:44',NULL,0,NULL,'text_area'),
	(23,'new_page_parts','--- \"false\"\n',1,'2011-05-23 13:54:35','2011-05-23 13:54:35',NULL,0,NULL,'text_area'),
	(24,'default_page_parts','--- \n- Body\n- Side Body\n',1,'2011-05-23 15:06:56','2011-05-23 15:06:56',NULL,0,NULL,'text_area'),
	(25,'user_image_sizes','--- \n:small: 110x110>\n:medium: 225x255>\n:large: 450x450>\n',0,'2011-05-23 17:03:54','2011-05-23 17:03:54',NULL,0,NULL,'text_area'),
	(26,'superuser_can_assign_roles','--- \"false\"\n',1,'2011-05-23 17:25:49','2011-05-23 17:25:49',NULL,0,NULL,'text_area'),
	(27,'page_title','--- Christian Aid Ministries\n',1,'2011-05-24 19:38:59','2011-05-24 19:38:59',NULL,0,NULL,'text_area'),
	(28,'logo_url','--- /images/found_logo.jpg\n',1,'2011-05-24 19:39:17','2011-05-24 19:39:17',NULL,0,NULL,'text_area'),
	(29,'logo_alt_text','--- Developed by Found\n',1,'2011-05-24 19:39:33','2011-05-24 19:39:33',NULL,0,NULL,'text_area'),
	(30,'analytics_page_code','--- UA-xxxxxx-x\n',1,'2011-08-19 14:37:38','2011-08-19 14:37:38',NULL,0,NULL,'text_area'),
	(31,'ie6_upgrade_message_enabled','--- \"true\"\n',1,'2011-08-22 15:31:34','2011-08-22 15:31:34',NULL,0,NULL,'text_area'),
	(32,'show_internet_explorer_upgrade_message','--- \"true\"\n',1,'2011-09-16 17:43:46','2011-09-16 17:43:46','refinery',0,NULL,'text_area');

/*!40000 ALTER TABLE `refinery_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file_uid` varchar(255) DEFAULT NULL,
  `file_ext` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;

INSERT INTO `resources` (`id`, `file_mime_type`, `file_name`, `file_size`, `created_at`, `updated_at`, `file_uid`, `file_ext`)
VALUES
	(2,'application/pdf','2010 Financial Statement.pdf',337273,'2011-09-02 19:18:49','2011-09-02 19:18:49','2011/09/02/15_18_49_856_2010_Financial_Statement.pdf','pdf'),
	(3,'application/pdf','2010 AR sm.pdf',4949606,'2011-09-29 15:28:08','2011-09-29 15:28:08','2011/09/29/11_28_08_653_2010_AR_sm.pdf','pdf');

/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `title`)
VALUES
	(1,'Refinery'),
	(2,'Superuser'),
	(3,'Donor');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles_users`;

CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;

INSERT INTO `roles_users` (`user_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(1,2);

/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	(''),
	('20110520165652'),
	('20110520165653'),
	('20110520165654'),
	('20110520165655'),
	('20110520165656'),
	('20110520165657'),
	('20110520165658'),
	('20110520165659'),
	('20110520165660'),
	('20110520165661'),
	('20110520165662'),
	('20110520165663'),
	('20110520165664'),
	('20110520165665'),
	('20110520165666'),
	('20110520165667'),
	('20110520165668'),
	('20110523155003'),
	('20110523161840'),
	('20110523173357'),
	('20110523173358'),
	('20110523194206'),
	('20110523195156'),
	('20110524135106'),
	('20110524173930'),
	('20110524173931'),
	('20110524173932'),
	('20110524173933'),
	('20110524175017'),
	('20110524175542'),
	('20110524180108'),
	('20110524203308'),
	('20110524203420'),
	('20110524203505'),
	('20110524203717'),
	('20110524203836'),
	('20110524203918'),
	('20110525164138'),
	('20110525164752'),
	('20110525164958'),
	('20110526141446'),
	('20110602200535'),
	('20110613170747'),
	('20110613173358'),
	('20110617191906'),
	('20110621151905'),
	('20110621162249'),
	('20110621163021'),
	('20110621163025'),
	('20110816182132'),
	('20110816182627'),
	('20110816192115'),
	('20110817145218'),
	('20110817184715'),
	('20110818162841'),
	('20110825151638'),
	('20110826134958'),
	('20110826140035'),
	('20110826165611'),
	('20110826173216'),
	('20110826201720'),
	('20110829191504'),
	('20110830172310'),
	('20110907170748'),
	('20110907200638'),
	('20110907202825'),
	('20110907203416'),
	('20110909144010'),
	('20110909152430'),
	('20110909155210'),
	('20110909175201'),
	('20110909183227'),
	('20110914200014'),
	('20110914203245'),
	('20110915202146'),
	('20110930192622'),
	('20110930193438'),
	('20110930194314'),
	('20110930203230'),
	('20111004172022');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table seo_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `seo_meta`;

CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) DEFAULT NULL,
  `browser_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;

INSERT INTO `seo_meta` (`id`, `seo_meta_id`, `seo_meta_type`, `browser_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`)
VALUES
	(1,1,'Page::Translation','','','','2011-05-20 17:08:00','2011-05-23 13:54:55'),
	(2,2,'Page::Translation',NULL,NULL,NULL,'2011-05-20 17:08:00','2011-05-20 17:08:00'),
	(3,3,'Page::Translation','','','','2011-05-20 17:08:00','2011-05-23 15:12:17'),
	(4,1,'Page::Translation',NULL,NULL,NULL,'2011-05-23 13:54:55','2011-05-23 13:54:55'),
	(5,1,'Page::Translation',NULL,NULL,NULL,'2011-05-23 13:55:10','2011-05-23 13:55:10'),
	(6,4,'Page::Translation','','','','2011-05-23 15:07:14','2011-05-23 15:07:14'),
	(7,4,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:07:14','2011-05-23 15:07:14'),
	(8,5,'Page::Translation','','','','2011-05-23 15:09:40','2011-05-23 15:09:40'),
	(9,5,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:09:40','2011-05-23 15:09:40'),
	(10,5,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:09:40','2011-05-23 15:09:40'),
	(11,6,'Page::Translation','','','','2011-05-23 15:10:04','2011-05-23 15:10:04'),
	(12,6,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:10:04','2011-05-23 15:10:04'),
	(13,6,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:10:04','2011-05-23 15:10:04'),
	(14,7,'Page::Translation','','','','2011-05-23 15:10:29','2011-05-23 15:10:29'),
	(15,7,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:10:29','2011-05-23 15:10:29'),
	(16,7,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:10:29','2011-05-23 15:10:29'),
	(17,8,'Page::Translation','','','','2011-05-23 15:10:50','2011-05-23 15:10:50'),
	(18,8,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:10:50','2011-05-23 15:10:50'),
	(19,8,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:10:50','2011-05-23 15:10:50'),
	(20,9,'Page::Translation','','','','2011-05-23 15:11:11','2011-05-23 15:11:11'),
	(21,9,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:11:11','2011-05-23 15:11:11'),
	(22,9,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:11:11','2011-05-23 15:11:11'),
	(23,10,'Page::Translation','','','','2011-05-23 15:11:41','2011-05-23 15:11:41'),
	(24,10,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:11:41','2011-05-23 15:11:41'),
	(25,10,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:11:41','2011-05-23 15:11:41'),
	(26,11,'Page::Translation','','','','2011-05-23 15:12:04','2011-05-23 15:12:04'),
	(27,11,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:12:04','2011-05-23 15:12:04'),
	(28,11,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:12:04','2011-05-23 15:12:04'),
	(29,3,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:12:17','2011-05-23 15:12:17'),
	(30,12,'Page::Translation','','','','2011-05-23 15:12:43','2011-05-23 15:12:43'),
	(31,12,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:12:43','2011-05-23 15:12:43'),
	(32,13,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:37:47','2011-05-23 15:37:47'),
	(33,13,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:37:47','2011-05-23 15:37:47'),
	(34,14,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:39:14','2011-05-23 15:39:14'),
	(35,14,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:39:14','2011-05-23 15:39:14'),
	(36,15,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:43:25','2011-05-23 15:43:25'),
	(37,15,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:43:25','2011-05-23 15:43:25'),
	(38,16,'Page::Translation','','','','2011-05-23 15:50:18','2011-05-25 14:56:06'),
	(39,16,'Page::Translation',NULL,NULL,NULL,'2011-05-23 15:50:18','2011-05-23 15:50:18'),
	(40,17,'Page::Translation','','','','2011-05-23 16:18:50','2011-06-03 17:20:49'),
	(41,17,'Page::Translation',NULL,NULL,NULL,'2011-05-23 16:18:50','2011-05-23 16:18:50'),
	(42,5,'Page::Translation',NULL,NULL,NULL,'2011-05-23 21:13:58','2011-05-23 21:13:58'),
	(43,5,'Page::Translation',NULL,NULL,NULL,'2011-05-23 21:19:58','2011-05-23 21:19:58'),
	(44,5,'Page::Translation',NULL,NULL,NULL,'2011-05-24 16:16:45','2011-05-24 16:16:45'),
	(45,6,'Page::Translation',NULL,NULL,NULL,'2011-05-24 16:16:45','2011-05-24 16:16:45'),
	(46,7,'Page::Translation',NULL,NULL,NULL,'2011-05-24 16:16:45','2011-05-24 16:16:45'),
	(47,9,'Page::Translation',NULL,NULL,NULL,'2011-05-24 16:16:45','2011-05-24 16:16:45'),
	(48,10,'Page::Translation',NULL,NULL,NULL,'2011-05-24 16:16:45','2011-05-24 16:16:45'),
	(49,11,'Page::Translation',NULL,NULL,NULL,'2011-05-24 16:16:45','2011-05-24 16:16:45'),
	(50,18,'Page::Translation','','','','2011-05-24 17:39:44','2011-08-25 20:40:48'),
	(51,18,'Page::Translation',NULL,NULL,NULL,'2011-05-24 17:39:44','2011-05-24 17:39:44'),
	(52,19,'Page::Translation','','','','2011-05-24 17:50:31','2011-08-10 20:05:56'),
	(53,19,'Page::Translation',NULL,NULL,NULL,'2011-05-24 17:50:31','2011-05-24 17:50:31'),
	(54,5,'Page::Translation',NULL,NULL,NULL,'2011-05-25 14:55:18','2011-05-25 14:55:18'),
	(55,6,'Page::Translation',NULL,NULL,NULL,'2011-05-25 14:55:18','2011-05-25 14:55:18'),
	(56,7,'Page::Translation',NULL,NULL,NULL,'2011-05-25 14:55:18','2011-05-25 14:55:18'),
	(57,9,'Page::Translation',NULL,NULL,NULL,'2011-05-25 14:55:18','2011-05-25 14:55:18'),
	(58,10,'Page::Translation',NULL,NULL,NULL,'2011-05-25 14:55:18','2011-05-25 14:55:18'),
	(59,11,'Page::Translation',NULL,NULL,NULL,'2011-05-25 14:55:18','2011-05-25 14:55:18'),
	(60,16,'Page::Translation',NULL,NULL,NULL,'2011-05-25 14:56:06','2011-05-25 14:56:06'),
	(61,16,'Page::Translation',NULL,NULL,NULL,'2011-05-25 14:56:43','2011-05-25 14:56:43'),
	(62,16,'Page::Translation',NULL,NULL,NULL,'2011-05-25 14:56:43','2011-05-25 14:56:43'),
	(63,20,'Page::Translation','','','','2011-05-26 14:15:37','2011-05-26 14:16:11'),
	(64,20,'Page::Translation',NULL,NULL,NULL,'2011-05-26 14:15:37','2011-05-26 14:15:37'),
	(65,20,'Page::Translation',NULL,NULL,NULL,'2011-05-26 14:16:11','2011-05-26 14:16:11'),
	(66,1,'Page::Translation',NULL,NULL,NULL,'2011-05-26 14:20:59','2011-05-26 14:20:59'),
	(67,1,'Page::Translation',NULL,NULL,NULL,'2011-05-26 14:21:23','2011-05-26 14:21:23'),
	(68,1,'Page::Translation',NULL,NULL,NULL,'2011-05-26 15:21:42','2011-05-26 15:21:42'),
	(69,1,'Page::Translation',NULL,NULL,NULL,'2011-05-26 15:24:21','2011-05-26 15:24:21'),
	(70,1,'Page::Translation',NULL,NULL,NULL,'2011-05-26 15:25:24','2011-05-26 15:25:24'),
	(71,1,'Page::Translation',NULL,NULL,NULL,'2011-05-26 15:25:39','2011-05-26 15:25:39'),
	(72,1,'Page::Translation',NULL,NULL,NULL,'2011-05-26 15:31:53','2011-05-26 15:31:53'),
	(73,1,'Page::Translation',NULL,NULL,NULL,'2011-05-26 15:32:09','2011-05-26 15:32:09'),
	(74,1,'Page::Translation',NULL,NULL,NULL,'2011-05-26 15:40:14','2011-05-26 15:40:14'),
	(75,17,'Page::Translation',NULL,NULL,NULL,'2011-06-03 17:20:49','2011-06-03 17:20:49'),
	(76,17,'Page::Translation',NULL,NULL,NULL,'2011-06-03 17:22:27','2011-06-03 17:22:27'),
	(77,17,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:26:28','2011-06-17 20:26:28'),
	(78,17,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:27:21','2011-06-17 20:27:21'),
	(79,17,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:27:44','2011-06-17 20:27:44'),
	(80,17,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:28:16','2011-06-17 20:28:16'),
	(81,17,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:28:16','2011-06-17 20:28:16'),
	(82,17,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:12','2011-06-17 20:29:12'),
	(83,17,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:12','2011-06-17 20:29:12'),
	(84,1,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:37','2011-06-17 20:29:37'),
	(85,3,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:39','2011-06-17 20:29:39'),
	(86,5,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:39','2011-06-17 20:29:39'),
	(87,6,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:40','2011-06-17 20:29:40'),
	(88,7,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:40','2011-06-17 20:29:40'),
	(89,9,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:41','2011-06-17 20:29:41'),
	(90,10,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:41','2011-06-17 20:29:41'),
	(91,11,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:41','2011-06-17 20:29:41'),
	(92,16,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:42','2011-06-17 20:29:42'),
	(93,12,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:42','2011-06-17 20:29:42'),
	(94,18,'Page::Translation',NULL,NULL,NULL,'2011-06-17 20:29:43','2011-06-17 20:29:43'),
	(95,21,'Page::Translation','','','','2011-06-20 19:48:37','2011-06-20 19:48:37'),
	(96,21,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:48:37','2011-06-20 19:48:37'),
	(97,21,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:48:37','2011-06-20 19:48:37'),
	(98,16,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:49:08','2011-06-20 19:49:08'),
	(99,16,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:49:08','2011-06-20 19:49:08'),
	(100,21,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:49:39','2011-06-20 19:49:39'),
	(101,1,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:49:57','2011-06-20 19:49:57'),
	(102,3,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:49:57','2011-06-20 19:49:57'),
	(103,5,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:49:58','2011-06-20 19:49:58'),
	(104,6,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:49:58','2011-06-20 19:49:58'),
	(105,7,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:49:58','2011-06-20 19:49:58'),
	(106,9,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:49:59','2011-06-20 19:49:59'),
	(107,10,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:50:00','2011-06-20 19:50:00'),
	(108,11,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:50:00','2011-06-20 19:50:00'),
	(109,12,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:50:00','2011-06-20 19:50:00'),
	(110,18,'Page::Translation',NULL,NULL,NULL,'2011-06-20 19:50:01','2011-06-20 19:50:01'),
	(111,22,'Page::Translation','','','','2011-06-21 15:23:51','2011-06-21 16:57:00'),
	(112,22,'Page::Translation',NULL,NULL,NULL,'2011-06-21 15:23:51','2011-06-21 15:23:51'),
	(113,22,'Page::Translation',NULL,NULL,NULL,'2011-06-21 16:56:59','2011-06-21 16:56:59'),
	(114,5,'Page::Translation',NULL,NULL,NULL,'2011-07-20 15:49:31','2011-07-20 15:49:31'),
	(115,5,'Page::Translation',NULL,NULL,NULL,'2011-07-20 15:49:32','2011-07-20 15:49:32'),
	(116,5,'Page::Translation',NULL,NULL,NULL,'2011-07-20 17:14:43','2011-07-20 17:14:43'),
	(117,6,'Page::Translation',NULL,NULL,NULL,'2011-07-20 17:14:44','2011-07-20 17:14:44'),
	(118,7,'Page::Translation',NULL,NULL,NULL,'2011-07-20 17:14:44','2011-07-20 17:14:44'),
	(119,9,'Page::Translation',NULL,NULL,NULL,'2011-07-20 17:14:45','2011-07-20 17:14:45'),
	(120,10,'Page::Translation',NULL,NULL,NULL,'2011-07-20 17:14:45','2011-07-20 17:14:45'),
	(121,11,'Page::Translation',NULL,NULL,NULL,'2011-07-20 17:14:46','2011-07-20 17:14:46'),
	(122,17,'Page::Translation',NULL,NULL,NULL,'2011-07-20 17:14:46','2011-07-20 17:14:46'),
	(123,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 15:36:06','2011-08-09 15:36:06'),
	(124,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 15:41:11','2011-08-09 15:41:11'),
	(125,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 15:41:51','2011-08-09 15:41:51'),
	(126,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 15:41:58','2011-08-09 15:41:58'),
	(127,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:02:33','2011-08-09 16:02:33'),
	(128,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:03:11','2011-08-09 16:03:11'),
	(129,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:03:32','2011-08-09 16:03:32'),
	(130,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:05:15','2011-08-09 16:05:15'),
	(131,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:05:21','2011-08-09 16:05:21'),
	(132,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:06:09','2011-08-09 16:06:09'),
	(133,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:10:08','2011-08-09 16:10:08'),
	(134,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:15:20','2011-08-09 16:15:20'),
	(135,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:15:30','2011-08-09 16:15:30'),
	(136,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:15:34','2011-08-09 16:15:34'),
	(137,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:15:39','2011-08-09 16:15:39'),
	(138,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:17:43','2011-08-09 16:17:43'),
	(139,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:24:11','2011-08-09 16:24:11'),
	(140,1,'Page::Translation',NULL,NULL,NULL,'2011-08-09 16:25:21','2011-08-09 16:25:21'),
	(141,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 16:33:35','2011-08-10 16:33:35'),
	(142,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 16:36:51','2011-08-10 16:36:51'),
	(143,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 16:37:55','2011-08-10 16:37:55'),
	(144,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 16:39:30','2011-08-10 16:39:30'),
	(145,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 16:40:07','2011-08-10 16:40:07'),
	(146,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 16:58:12','2011-08-10 16:58:12'),
	(147,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:01:10','2011-08-10 17:01:10'),
	(148,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:04:41','2011-08-10 17:04:41'),
	(149,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:04:43','2011-08-10 17:04:43'),
	(150,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:05:20','2011-08-10 17:05:20'),
	(151,6,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:16:59','2011-08-10 17:16:59'),
	(152,6,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:17:27','2011-08-10 17:17:27'),
	(153,9,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:21:39','2011-08-10 17:21:39'),
	(154,9,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:21:40','2011-08-10 17:21:40'),
	(155,9,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:23:07','2011-08-10 17:23:07'),
	(156,9,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:24:24','2011-08-10 17:24:24'),
	(157,9,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:25:20','2011-08-10 17:25:20'),
	(158,10,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:26:16','2011-08-10 17:26:16'),
	(159,10,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:26:17','2011-08-10 17:26:17'),
	(160,11,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:42:26','2011-08-10 17:42:26'),
	(161,11,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:46:50','2011-08-10 17:46:50'),
	(162,11,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:47:19','2011-08-10 17:47:19'),
	(163,11,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:53:31','2011-08-10 17:53:31'),
	(164,11,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:54:12','2011-08-10 17:54:12'),
	(165,10,'Page::Translation',NULL,NULL,NULL,'2011-08-10 17:59:47','2011-08-10 17:59:47'),
	(166,10,'Page::Translation',NULL,NULL,NULL,'2011-08-10 18:01:44','2011-08-10 18:01:44'),
	(167,10,'Page::Translation',NULL,NULL,NULL,'2011-08-10 18:05:42','2011-08-10 18:05:42'),
	(168,12,'Page::Translation',NULL,NULL,NULL,'2011-08-10 18:06:39','2011-08-10 18:06:39'),
	(169,10,'Page::Translation',NULL,NULL,NULL,'2011-08-10 18:08:50','2011-08-10 18:08:50'),
	(170,10,'Page::Translation',NULL,NULL,NULL,'2011-08-10 18:08:52','2011-08-10 18:08:52'),
	(171,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 18:12:08','2011-08-10 18:12:08'),
	(172,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 18:14:18','2011-08-10 18:14:18'),
	(173,6,'Page::Translation',NULL,NULL,NULL,'2011-08-10 18:21:27','2011-08-10 18:21:27'),
	(174,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 19:06:29','2011-08-10 19:06:29'),
	(175,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 19:28:41','2011-08-10 19:28:41'),
	(176,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 19:34:33','2011-08-10 19:34:33'),
	(177,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 19:48:05','2011-08-10 19:48:05'),
	(178,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 19:48:24','2011-08-10 19:48:24'),
	(179,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 19:51:12','2011-08-10 19:51:12'),
	(180,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 19:51:35','2011-08-10 19:51:35'),
	(181,5,'Page::Translation',NULL,NULL,NULL,'2011-08-10 19:51:52','2011-08-10 19:51:52'),
	(182,12,'Page::Translation',NULL,NULL,NULL,'2011-08-10 19:56:35','2011-08-10 19:56:35'),
	(183,12,'Page::Translation',NULL,NULL,NULL,'2011-08-10 19:59:04','2011-08-10 19:59:04'),
	(184,12,'Page::Translation',NULL,NULL,NULL,'2011-08-10 19:59:53','2011-08-10 19:59:53'),
	(185,19,'Page::Translation',NULL,NULL,NULL,'2011-08-10 20:05:56','2011-08-10 20:05:56'),
	(186,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 18:48:31','2011-08-11 18:48:31'),
	(187,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 18:51:41','2011-08-11 18:51:41'),
	(188,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 18:54:17','2011-08-11 18:54:17'),
	(189,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 18:55:38','2011-08-11 18:55:38'),
	(190,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 18:57:14','2011-08-11 18:57:14'),
	(191,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 19:00:33','2011-08-11 19:00:33'),
	(192,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 19:02:10','2011-08-11 19:02:10'),
	(193,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 19:02:23','2011-08-11 19:02:23'),
	(194,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 19:02:41','2011-08-11 19:02:41'),
	(195,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 19:03:12','2011-08-11 19:03:12'),
	(196,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 19:04:07','2011-08-11 19:04:07'),
	(197,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 19:16:45','2011-08-11 19:16:45'),
	(198,1,'Page::Translation',NULL,NULL,NULL,'2011-08-11 19:20:07','2011-08-11 19:20:07'),
	(199,3,'Page::Translation',NULL,NULL,NULL,'2011-08-11 20:36:35','2011-08-11 20:36:35'),
	(200,12,'Page::Translation',NULL,NULL,NULL,'2011-08-11 21:27:56','2011-08-11 21:27:56'),
	(201,19,'Page::Translation',NULL,NULL,NULL,'2011-08-11 21:28:28','2011-08-11 21:28:28'),
	(202,12,'Page::Translation',NULL,NULL,NULL,'2011-08-11 21:28:55','2011-08-11 21:28:55'),
	(203,19,'Page::Translation',NULL,NULL,NULL,'2011-08-11 21:30:49','2011-08-11 21:30:49'),
	(204,19,'Page::Translation',NULL,NULL,NULL,'2011-08-11 21:31:35','2011-08-11 21:31:35'),
	(205,19,'Page::Translation',NULL,NULL,NULL,'2011-08-11 21:31:44','2011-08-11 21:31:44'),
	(206,19,'Page::Translation',NULL,NULL,NULL,'2011-08-11 21:33:43','2011-08-11 21:33:43'),
	(207,19,'Page::Translation',NULL,NULL,NULL,'2011-08-11 21:34:14','2011-08-11 21:34:14'),
	(208,19,'Page::Translation',NULL,NULL,NULL,'2011-08-11 21:37:51','2011-08-11 21:37:51'),
	(209,1,'Page::Translation',NULL,NULL,NULL,'2011-08-12 14:10:03','2011-08-12 14:10:03'),
	(210,1,'Page::Translation',NULL,NULL,NULL,'2011-08-12 14:17:04','2011-08-12 14:17:04'),
	(211,1,'Page::Translation',NULL,NULL,NULL,'2011-08-12 14:22:02','2011-08-12 14:22:02'),
	(212,5,'Page::Translation',NULL,NULL,NULL,'2011-08-12 14:54:56','2011-08-12 14:54:56'),
	(213,5,'Page::Translation',NULL,NULL,NULL,'2011-08-12 14:58:55','2011-08-12 14:58:55'),
	(215,23,'Page::Translation',NULL,NULL,NULL,'2011-08-12 15:54:17','2011-08-12 15:54:17'),
	(216,23,'Page::Translation','','','','2011-08-16 17:11:07','2011-08-16 17:11:07'),
	(217,23,'Page::Translation',NULL,NULL,NULL,'2011-08-16 17:11:07','2011-08-16 17:11:07'),
	(218,23,'Page::Translation',NULL,NULL,NULL,'2011-08-16 17:11:48','2011-08-16 17:11:48'),
	(219,23,'Page::Translation',NULL,NULL,NULL,'2011-08-16 17:13:15','2011-08-16 17:13:15'),
	(220,12,'Page::Translation',NULL,NULL,NULL,'2011-08-16 18:49:38','2011-08-16 18:49:38'),
	(221,12,'Page::Translation',NULL,NULL,NULL,'2011-08-16 18:49:56','2011-08-16 18:49:56'),
	(222,12,'Page::Translation',NULL,NULL,NULL,'2011-08-16 18:50:23','2011-08-16 18:50:23'),
	(223,8,'Page::Translation',NULL,NULL,NULL,'2011-08-18 15:05:01','2011-08-18 15:05:01'),
	(224,8,'Page::Translation',NULL,NULL,NULL,'2011-08-18 15:06:25','2011-08-18 15:06:25'),
	(225,8,'Page::Translation',NULL,NULL,NULL,'2011-08-18 15:06:44','2011-08-18 15:06:44'),
	(226,24,'Page::Translation','','','','2011-08-22 16:38:31','2011-08-24 15:43:39'),
	(227,25,'Page::Translation','','','','2011-08-22 16:38:31','2011-08-22 16:38:31'),
	(228,24,'Page::Translation',NULL,NULL,NULL,'2011-08-22 16:38:31','2011-08-22 16:38:31'),
	(229,10,'Page::Translation',NULL,NULL,NULL,'2011-08-23 16:56:14','2011-08-23 16:56:14'),
	(230,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 15:43:39','2011-08-24 15:43:39'),
	(231,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 15:44:55','2011-08-24 15:44:55'),
	(232,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 15:46:34','2011-08-24 15:46:34'),
	(233,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 15:47:38','2011-08-24 15:47:38'),
	(234,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 15:51:03','2011-08-24 15:51:03'),
	(235,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 17:04:26','2011-08-24 17:04:26'),
	(236,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 18:14:07','2011-08-24 18:14:07'),
	(237,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 18:14:23','2011-08-24 18:14:23'),
	(238,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 18:18:55','2011-08-24 18:18:55'),
	(239,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 18:26:25','2011-08-24 18:26:25'),
	(240,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 18:28:56','2011-08-24 18:28:56'),
	(241,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 18:32:11','2011-08-24 18:32:11'),
	(242,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 18:32:32','2011-08-24 18:32:32'),
	(243,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 18:32:47','2011-08-24 18:32:47'),
	(244,24,'Page::Translation',NULL,NULL,NULL,'2011-08-24 18:38:33','2011-08-24 18:38:33'),
	(245,26,'Page::Translation',NULL,NULL,NULL,'2011-08-25 20:38:53','2011-08-25 20:38:53'),
	(246,27,'Page::Translation','','','','2011-08-25 20:38:53','2011-08-25 20:38:53'),
	(247,26,'Page::Translation',NULL,NULL,NULL,'2011-08-25 20:38:53','2011-08-25 20:38:53'),
	(248,18,'Page::Translation',NULL,NULL,NULL,'2011-08-25 20:40:48','2011-08-25 20:40:48'),
	(249,28,'Page::Translation',NULL,NULL,NULL,'2011-08-25 20:41:52','2011-08-25 20:41:52'),
	(250,29,'Page::Translation','','','','2011-08-25 20:41:52','2011-08-25 20:41:52'),
	(251,28,'Page::Translation',NULL,NULL,NULL,'2011-08-25 20:41:52','2011-08-25 20:41:52'),
	(252,24,'Page::Translation',NULL,NULL,NULL,'2011-08-25 20:52:27','2011-08-25 20:52:27'),
	(253,24,'Page::Translation',NULL,NULL,NULL,'2011-08-25 20:53:45','2011-08-25 20:53:45'),
	(254,5,'Page::Translation',NULL,NULL,NULL,'2011-08-26 14:33:30','2011-08-26 14:33:30'),
	(255,6,'Page::Translation',NULL,NULL,NULL,'2011-08-26 14:33:30','2011-08-26 14:33:30'),
	(256,7,'Page::Translation',NULL,NULL,NULL,'2011-08-26 14:33:31','2011-08-26 14:33:31'),
	(257,9,'Page::Translation',NULL,NULL,NULL,'2011-08-26 14:33:32','2011-08-26 14:33:32'),
	(258,10,'Page::Translation',NULL,NULL,NULL,'2011-08-26 14:33:33','2011-08-26 14:33:33'),
	(259,11,'Page::Translation',NULL,NULL,NULL,'2011-08-26 14:33:34','2011-08-26 14:33:34'),
	(260,16,'Page::Translation',NULL,NULL,NULL,'2011-08-26 14:33:34','2011-08-26 14:33:34'),
	(261,23,'Page::Translation',NULL,NULL,NULL,'2011-08-26 14:33:35','2011-08-26 14:33:35'),
	(262,24,'Page::Translation',NULL,NULL,NULL,'2011-08-26 14:33:36','2011-08-26 14:33:36'),
	(263,26,'Page::Translation',NULL,NULL,NULL,'2011-08-26 14:33:36','2011-08-26 14:33:36'),
	(264,28,'Page::Translation',NULL,NULL,NULL,'2011-08-26 14:33:37','2011-08-26 14:33:37'),
	(265,30,'Page::Translation',NULL,NULL,NULL,'2011-08-26 15:08:02','2011-08-26 15:08:02'),
	(266,30,'Page::Translation',NULL,NULL,NULL,'2011-08-26 15:08:02','2011-08-26 15:08:02'),
	(267,1,'Page::Translation',NULL,NULL,NULL,'2011-08-26 19:15:31','2011-08-26 19:15:31'),
	(268,1,'Page::Translation',NULL,NULL,NULL,'2011-08-26 19:16:20','2011-08-26 19:16:20'),
	(269,1,'Page::Translation',NULL,NULL,NULL,'2011-08-26 19:16:41','2011-08-26 19:16:41'),
	(270,1,'Page::Translation',NULL,NULL,NULL,'2011-08-26 19:42:08','2011-08-26 19:42:08'),
	(271,1,'Page::Translation',NULL,NULL,NULL,'2011-08-26 19:42:25','2011-08-26 19:42:25'),
	(272,1,'Page::Translation',NULL,NULL,NULL,'2011-08-26 20:18:31','2011-08-26 20:18:31'),
	(273,1,'Page::Translation',NULL,NULL,NULL,'2011-08-30 13:20:33','2011-08-30 13:20:33'),
	(274,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:06:12','2011-09-02 19:06:12'),
	(275,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:06:19','2011-09-02 19:06:19'),
	(276,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:07:10','2011-09-02 19:07:10'),
	(277,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:07:13','2011-09-02 19:07:13'),
	(278,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:07:43','2011-09-02 19:07:43'),
	(279,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:09:51','2011-09-02 19:09:51'),
	(280,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:10:42','2011-09-02 19:10:42'),
	(281,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:11:37','2011-09-02 19:11:37'),
	(282,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:11:57','2011-09-02 19:11:57'),
	(283,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:12:31','2011-09-02 19:12:31'),
	(284,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:13:42','2011-09-02 19:13:42'),
	(285,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:14:01','2011-09-02 19:14:01'),
	(286,7,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:14:36','2011-09-02 19:14:36'),
	(287,9,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:15:43','2011-09-02 19:15:43'),
	(288,9,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:16:00','2011-09-02 19:16:00'),
	(289,9,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:16:14','2011-09-02 19:16:14'),
	(290,9,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:16:39','2011-09-02 19:16:39'),
	(291,9,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:16:58','2011-09-02 19:16:58'),
	(292,9,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:17:17','2011-09-02 19:17:17'),
	(293,9,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:17:35','2011-09-02 19:17:35'),
	(294,6,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:18:10','2011-09-02 19:18:10'),
	(295,8,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:21:17','2011-09-02 19:21:17'),
	(296,8,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:22:43','2011-09-02 19:22:43'),
	(297,8,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:23:40','2011-09-02 19:23:40'),
	(298,8,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:24:03','2011-09-02 19:24:03'),
	(299,8,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:24:54','2011-09-02 19:24:54'),
	(300,8,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:25:54','2011-09-02 19:25:54'),
	(301,8,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:26:18','2011-09-02 19:26:18'),
	(302,8,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:27:48','2011-09-02 19:27:48'),
	(303,8,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:28:07','2011-09-02 19:28:07'),
	(304,1,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:34:36','2011-09-02 19:34:36'),
	(305,1,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:35:03','2011-09-02 19:35:03'),
	(306,1,'Page::Translation',NULL,NULL,NULL,'2011-09-02 19:35:05','2011-09-02 19:35:05'),
	(307,1,'Page::Translation',NULL,NULL,NULL,'2011-09-06 12:20:47','2011-09-06 12:20:47'),
	(308,1,'Page::Translation',NULL,NULL,NULL,'2011-09-06 12:21:02','2011-09-06 12:21:02'),
	(309,5,'Page::Translation',NULL,NULL,NULL,'2011-09-07 14:47:55','2011-09-07 14:47:55'),
	(310,6,'Page::Translation',NULL,NULL,NULL,'2011-09-07 17:06:29','2011-09-07 17:06:29'),
	(311,5,'Page::Translation',NULL,NULL,NULL,'2011-09-07 17:16:59','2011-09-07 17:16:59'),
	(312,6,'Page::Translation',NULL,NULL,NULL,'2011-09-07 17:22:09','2011-09-07 17:22:09'),
	(313,6,'Page::Translation',NULL,NULL,NULL,'2011-09-07 17:22:18','2011-09-07 17:22:18'),
	(314,7,'Page::Translation',NULL,NULL,NULL,'2011-09-07 17:22:51','2011-09-07 17:22:51'),
	(315,8,'Page::Translation',NULL,NULL,NULL,'2011-09-07 17:23:17','2011-09-07 17:23:17'),
	(316,9,'Page::Translation',NULL,NULL,NULL,'2011-09-07 17:23:45','2011-09-07 17:23:45'),
	(317,10,'Page::Translation',NULL,NULL,NULL,'2011-09-07 17:24:05','2011-09-07 17:24:05'),
	(318,11,'Page::Translation',NULL,NULL,NULL,'2011-09-07 17:24:25','2011-09-07 17:24:25'),
	(319,10,'Page::Translation',NULL,NULL,NULL,'2011-09-07 17:30:41','2011-09-07 17:30:41'),
	(320,7,'Page::Translation',NULL,NULL,NULL,'2011-09-09 19:10:06','2011-09-09 19:10:06'),
	(321,7,'Page::Translation',NULL,NULL,NULL,'2011-09-09 19:10:28','2011-09-09 19:10:28'),
	(322,1,'Page::Translation',NULL,NULL,NULL,'2011-09-12 15:28:17','2011-09-12 15:28:17'),
	(323,8,'Page::Translation',NULL,NULL,NULL,'2011-09-12 19:58:17','2011-09-12 19:58:17'),
	(324,5,'Page::Translation',NULL,NULL,NULL,'2011-09-13 16:57:45','2011-09-13 16:57:45'),
	(328,23,'Page::Translation',NULL,NULL,NULL,'2011-09-16 12:59:34','2011-09-16 12:59:34'),
	(329,1,'Page::Translation',NULL,NULL,NULL,'2011-09-19 19:33:02','2011-09-19 19:33:02'),
	(330,31,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:18:34','2011-09-29 15:18:34'),
	(332,31,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:18:34','2011-09-29 15:18:34'),
	(333,5,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:18:49','2011-09-29 15:18:49'),
	(334,6,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:18:50','2011-09-29 15:18:50'),
	(335,7,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:18:51','2011-09-29 15:18:51'),
	(336,31,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:18:52','2011-09-29 15:18:52'),
	(337,9,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:18:54','2011-09-29 15:18:54'),
	(338,10,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:18:55','2011-09-29 15:18:55'),
	(339,11,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:18:56','2011-09-29 15:18:56'),
	(340,31,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:20:01','2011-09-29 15:20:01'),
	(341,8,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:23:01','2011-09-29 15:23:01'),
	(342,7,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:26:57','2011-09-29 15:26:57'),
	(343,7,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:29:01','2011-09-29 15:29:01'),
	(344,7,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:31:13','2011-09-29 15:31:13'),
	(345,8,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:32:23','2011-09-29 15:32:23'),
	(346,7,'Page::Translation',NULL,NULL,NULL,'2011-09-29 15:34:00','2011-09-29 15:34:00');

/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table slugs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `slugs`;

CREATE TABLE `slugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sluggable_id` int(11) DEFAULT NULL,
  `sequence` int(11) NOT NULL DEFAULT '1',
  `sluggable_type` varchar(40) DEFAULT NULL,
  `scope` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_slugs_on_n_s_s_and_s` (`name`,`sluggable_type`,`scope`,`sequence`),
  KEY `index_slugs_on_sluggable_id` (`sluggable_id`),
  KEY `index_slugs_on_locale` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;

INSERT INTO `slugs` (`id`, `name`, `sluggable_id`, `sequence`, `sluggable_type`, `scope`, `created_at`, `locale`)
VALUES
	(1,'home',1,1,'Page',NULL,'2011-05-20 17:07:58','en'),
	(2,'page-not-found',2,1,'Page',NULL,'2011-05-20 17:07:58','en'),
	(3,'about',3,1,'Page',NULL,'2011-05-20 17:07:58','en'),
	(4,'admin',1,1,'User',NULL,'2011-05-20 20:08:09','en'),
	(6,'who-we-are',5,1,'Page',NULL,'2011-05-23 15:09:40','en'),
	(7,'locations',6,1,'Page',NULL,'2011-05-23 15:10:04','en'),
	(8,'financial-accountability',7,1,'Page',NULL,'2011-05-23 15:10:29','en'),
	(9,'financial-statements',8,1,'Page',NULL,'2011-05-23 15:10:50','en'),
	(10,'statement-of-faith',9,1,'Page',NULL,'2011-05-23 15:11:11','en'),
	(11,'biblical-stewardship-services',10,1,'Page',NULL,'2011-05-23 15:11:41','en'),
	(12,'tgs-international',11,1,'Page',NULL,'2011-05-23 15:12:04','en'),
	(13,'about-cam',3,1,'Page',NULL,'2011-05-23 15:12:17','en'),
	(14,'programs',12,1,'Page',NULL,'2011-05-23 15:12:43','en'),
	(15,'products-page',13,1,'Page',NULL,'2011-05-23 15:37:47','en'),
	(16,'products-page',14,2,'Page',NULL,'2011-05-23 15:39:14','en'),
	(17,'products-page',15,3,'Page',NULL,'2011-05-23 15:43:25','en'),
	(19,'products-page',17,4,'Page',NULL,'2011-05-23 16:18:50','en'),
	(20,'khopkins218gmailcom',2,1,'User',NULL,'2011-05-23 19:18:33','en'),
	(21,'khopkins218gmailcom',3,2,'User',NULL,'2011-05-23 19:19:35','en'),
	(22,'khopkins218gmailcom',4,3,'User',NULL,'2011-05-23 19:23:57','en'),
	(23,'admin',1,2,'User',NULL,'2011-05-23 19:55:36','en'),
	(24,'khopkins218gmailcom',2,4,'User',NULL,'2011-05-23 20:11:48','en'),
	(25,'khopkins218gmailcom',1,1,'Member',NULL,'2011-05-23 20:35:52','en'),
	(26,'news-page',18,1,'Page',NULL,'2011-05-24 17:39:45','en'),
	(33,'this-categories',16,1,'Page',NULL,'2011-05-25 14:56:06','en'),
	(34,'khopkins218gmailcom',4,2,'Member',NULL,'2011-05-25 15:37:45','en'),
	(35,'khopkins218gmailcom',1,3,'Member',NULL,'2011-05-25 16:30:08','en'),
	(36,'donordonorcom',2,1,'Member',NULL,'2011-05-25 16:35:39','en'),
	(37,'content-holders',20,1,'Page',NULL,'2011-05-26 14:15:37','en'),
	(38,'kevinh-pk-nscom',3,1,'Member',NULL,'2011-06-02 18:05:20','en'),
	(39,'products',17,1,'Page',NULL,'2011-06-03 17:20:49','en'),
	(40,'news',18,1,'Page',NULL,'2011-06-17 20:29:43','en'),
	(42,'categories',16,1,'Page',NULL,'2011-06-20 19:49:08','en'),
	(43,'orders-page',22,1,'Page',NULL,'2011-06-21 15:23:51','en'),
	(44,'orders',22,1,'Page',NULL,'2011-06-21 16:56:59','en'),
	(45,'timmy',2,1,'User',NULL,'2011-07-20 17:35:35','en'),
	(46,'donations',19,1,'Page',NULL,'2011-08-10 20:05:56','en'),
	(47,'parker',3,1,'User',NULL,'2011-08-11 17:15:36','en'),
	(48,'donations-page',19,1,'Page',NULL,'2011-08-11 21:28:28','en'),
	(50,'japan-earthquake-tsunami',4,1,'NewsItem',NULL,'2011-08-12 14:20:33','en'),
	(53,'rapid-response-team',7,1,'NewsItem',NULL,'2011-08-16 17:06:47','en'),
	(55,'girardptgmailcom',4,1,'Member',NULL,'2011-08-19 18:37:50','en'),
	(56,'wsommers',4,1,'User',NULL,'2011-08-22 15:15:07','en'),
	(57,'training',24,1,'Page',NULL,'2011-08-22 16:38:31','en'),
	(58,'sakpase16gmailcom',5,1,'Member',NULL,'2011-08-23 17:41:49','en'),
	(59,'testtestcom',6,1,'Member',NULL,'2011-08-23 18:02:30','en'),
	(62,'programs',25,2,'Page',NULL,'2011-08-25 20:38:53','en'),
	(63,'news',26,2,'Page',NULL,'2011-08-25 20:41:52','en'),
	(64,'categories-page',16,1,'Page',NULL,'2011-08-26 14:33:34','en'),
	(65,'programs-page',25,1,'Page',NULL,'2011-08-26 14:33:36','en'),
	(66,'news-page',26,2,'Page',NULL,'2011-08-26 14:33:37','en'),
	(68,'contacts-page',27,1,'Page',NULL,'2011-08-26 15:08:02','en'),
	(71,'timmyjhnsnorg',8,1,'Member',NULL,'2011-08-26 18:12:00','en'),
	(72,'jaredcamohorg',9,1,'Member',NULL,'2011-08-26 19:25:41','en'),
	(74,'stephensherylembarqmailcom',10,1,'Member',NULL,'2011-08-30 19:37:06','en'),
	(75,'bbeachycamohorg',11,1,'Member',NULL,'2011-09-02 18:34:42','en'),
	(76,'a-ray-of-hope-in-their-final-years',8,1,'NewsItem',NULL,'2011-09-02 20:27:40','en'),
	(77,'light-and-truth-in-monrovias-prison-halls',9,1,'NewsItem',NULL,'2011-09-02 20:41:49','en'),
	(78,'bibles-to-the-bush',10,1,'NewsItem',NULL,'2011-09-06 12:33:13','en'),
	(79,'bbeachy',5,1,'User',NULL,'2011-09-07 12:50:41','en'),
	(80,'hurricane-irene',7,1,'NewsItem',NULL,'2011-09-07 12:54:18','en'),
	(81,'my-mother-does-not-know',11,1,'NewsItem',NULL,'2011-09-07 13:20:25','en'),
	(82,'from-starving-to-satisfied',12,1,'NewsItem',NULL,'2011-09-07 13:56:53','en'),
	(83,'girardptdukesjmuedu',12,1,'Member',NULL,'2011-09-09 17:35:12','en'),
	(85,'kevinwearefoundcom',13,1,'Member',NULL,'2011-09-14 21:22:07','en'),
	(86,'smartin',6,1,'User',NULL,'2011-09-16 18:38:42','en'),
	(87,'testtestmecom',14,1,'Member',NULL,'2011-09-27 17:26:21','en'),
	(88,'jmullet',7,1,'User',NULL,'2011-09-27 20:15:07','en'),
	(89,'jpeachey',8,1,'User',NULL,'2011-09-27 20:15:37','en'),
	(90,'dmartin',9,1,'User',NULL,'2011-09-27 20:16:11','en');

/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table subscription_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subscription_types`;

CREATE TABLE `subscription_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `subscription_types` WRITE;
/*!40000 ALTER TABLE `subscription_types` DISABLE KEYS */;

INSERT INTO `subscription_types` (`id`, `title`, `created_at`, `updated_at`, `day`)
VALUES
	(1,'First of the Month','2011-06-13 17:25:53','2011-06-13 17:25:53',1),
	(2,'Fifteenth of the Month','2011-06-13 17:26:03','2011-06-13 17:26:03',15);

/*!40000 ALTER TABLE `subscription_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table subscriptions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subscriptions`;

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `subscription_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `arb_subscription_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_number` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;

INSERT INTO `subscriptions` (`id`, `member_id`, `subscription_type_id`, `created_at`, `updated_at`, `amount`, `arb_subscription_id`, `program_id`, `invoice_id`, `payment_method`, `payment_number`, `start_date`, `active`, `end_date`)
VALUES
	(21,1,2,'2011-09-19 21:31:47','2011-09-19 21:31:48',78,1161452,2,74,'Credit Card','XXXX0027','2011-10-15',1,NULL),
	(22,5,1,'2011-09-22 15:42:21','2011-09-22 15:49:46',50,1163827,39,76,'Credit Card','XXXX1111','2011-10-01',0,'2011-09-22 15:49:46');

/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table transactions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `confirmation_id` varchar(255) DEFAULT NULL,
  `error` tinyint(1) DEFAULT '0',
  `error_code` varchar(255) DEFAULT NULL,
  `error_message` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;

INSERT INTO `transactions` (`id`, `invoice_id`, `confirmation_id`, `error`, `error_code`, `error_message`, `created_at`, `updated_at`)
VALUES
	(24,75,'2163306092',0,NULL,NULL,'2011-09-19 21:31:49','2011-09-19 21:31:50'),
	(25,77,'2163496902',0,NULL,NULL,'2011-09-22 15:42:22','2011-09-22 15:42:23');

/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_plugins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_plugins`;

CREATE TABLE `user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_unique_user_plugins` (`user_id`,`name`),
  KEY `index_user_plugins_on_title` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_plugins` WRITE;
/*!40000 ALTER TABLE `user_plugins` DISABLE KEYS */;

INSERT INTO `user_plugins` (`id`, `user_id`, `name`, `position`)
VALUES
	(170,3,'categories',0),
	(171,3,'content_holders',1),
	(172,3,'refinery_dashboard',2),
	(173,3,'refinery_files',3),
	(174,3,'refinery_images',4),
	(175,3,'memberships',5),
	(176,3,'refinerycms_news',6),
	(177,3,'orders',7),
	(178,3,'refinery_pages',8),
	(179,3,'programs',9),
	(180,3,'refinery_settings',10),
	(181,3,'subscription_types',11),
	(182,3,'subscriptions',12),
	(183,3,'refinery_users',13),
	(184,4,'categories',0),
	(185,4,'content_holders',1),
	(186,4,'refinery_dashboard',2),
	(187,4,'refinery_files',3),
	(188,4,'refinery_images',4),
	(189,4,'memberships',5),
	(190,4,'refinerycms_news',6),
	(191,4,'orders',7),
	(192,4,'refinery_pages',8),
	(193,4,'programs',9),
	(194,4,'refinery_settings',10),
	(195,4,'subscription_types',11),
	(196,4,'subscriptions',12),
	(197,4,'refinery_users',13),
	(200,3,'contacts',14),
	(201,4,'contacts',14),
	(202,1,'refinery_dashboard',0),
	(203,1,'refinerycms_news',1),
	(204,1,'refinery_pages',2),
	(205,1,'programs',3),
	(206,1,'content_holders',4),
	(207,1,'memberships',5),
	(208,1,'categories',6),
	(209,1,'products',7),
	(210,1,'refinery_files',8),
	(211,1,'refinery_images',9),
	(212,1,'refinerycms_base',10),
	(213,1,'refinery_settings',11),
	(214,1,'refinery_users',12),
	(215,1,'subscriptions',13),
	(216,1,'subscription_types',14),
	(217,1,'refinery_core',15),
	(218,1,'refinery_dialogs',16),
	(219,1,'orders',17),
	(220,1,'donations',18),
	(221,1,'refinery_i18n',19),
	(222,1,'refinery_generators',20),
	(223,1,'contacts',21),
	(224,1,'refinerycms_search',22),
	(225,2,'categories',0),
	(226,2,'contacts',1),
	(227,2,'content_holders',2),
	(228,2,'refinery_dashboard',0),
	(229,2,'refinery_files',4),
	(230,2,'refinery_images',5),
	(231,2,'memberships',2),
	(232,2,'refinerycms_news',3),
	(233,2,'orders',4),
	(234,2,'refinery_pages',5),
	(235,2,'programs',6),
	(236,2,'refinery_settings',11),
	(237,2,'subscription_types',12),
	(238,2,'subscriptions',7),
	(239,2,'refinery_users',8),
	(240,5,'categories',0),
	(241,5,'contacts',1),
	(242,5,'content_holders',2),
	(243,5,'refinery_dashboard',3),
	(244,5,'refinery_files',4),
	(245,5,'refinery_images',5),
	(246,5,'memberships',6),
	(247,5,'refinerycms_news',7),
	(248,5,'orders',8),
	(249,5,'refinery_pages',9),
	(250,5,'programs',10),
	(251,5,'refinery_settings',11),
	(252,5,'subscription_types',12),
	(253,5,'subscriptions',13),
	(254,5,'refinery_users',14),
	(270,6,'categories',0),
	(271,6,'contacts',1),
	(272,6,'content_holders',2),
	(273,6,'refinery_dashboard',3),
	(274,6,'refinery_files',4),
	(275,6,'refinery_images',5),
	(276,6,'memberships',6),
	(277,6,'refinerycms_news',7),
	(278,6,'orders',8),
	(279,6,'refinery_pages',9),
	(280,6,'programs',10),
	(281,6,'refinery_settings',11),
	(282,6,'subscription_types',12),
	(283,6,'subscriptions',13),
	(284,6,'refinery_users',14),
	(300,8,'categories',0),
	(301,8,'contacts',1),
	(302,8,'content_holders',2),
	(303,8,'refinery_dashboard',3),
	(304,8,'refinery_files',4),
	(305,8,'refinery_images',5),
	(306,8,'memberships',6),
	(307,8,'refinerycms_news',7),
	(308,8,'orders',8),
	(309,8,'refinery_pages',9),
	(310,8,'programs',10),
	(311,8,'refinery_settings',11),
	(312,8,'subscription_types',12),
	(313,8,'subscriptions',13),
	(314,8,'refinery_users',14),
	(330,9,'categories',0),
	(331,9,'contacts',1),
	(332,9,'content_holders',2),
	(333,9,'refinery_dashboard',3),
	(334,9,'refinery_files',4),
	(335,9,'refinery_images',5),
	(336,9,'memberships',6),
	(337,9,'refinerycms_news',7),
	(338,9,'orders',8),
	(339,9,'refinery_pages',9),
	(340,9,'programs',10),
	(341,9,'refinery_settings',11),
	(342,9,'subscription_types',12),
	(343,9,'subscriptions',13),
	(344,9,'refinery_users',14),
	(345,7,'categories',0),
	(346,7,'contacts',1),
	(347,7,'content_holders',2),
	(348,7,'refinery_dashboard',3),
	(349,7,'refinery_files',4),
	(350,7,'refinery_images',5),
	(351,7,'memberships',6),
	(352,7,'refinerycms_news',7),
	(353,7,'orders',8),
	(354,7,'refinery_pages',9),
	(355,7,'programs',10),
	(356,7,'refinery_settings',11),
	(357,7,'subscription_types',12),
	(358,7,'subscriptions',13),
	(359,7,'refinery_users',14);

/*!40000 ALTER TABLE `user_plugins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `persistence_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `perishable_token` varchar(255) DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `member_until` datetime DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `email`, `encrypted_password`, `persistence_token`, `created_at`, `updated_at`, `perishable_token`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `sign_in_count`, `remember_token`, `reset_password_token`, `remember_created_at`, `first_name`, `last_name`, `title`, `phone`, `fax`, `website`, `organization`, `street_address`, `city`, `province`, `postal_code`, `member_until`, `role_id`)
VALUES
	(1,'admin','kevin@wearefound.com','$2a$10$q3gC5Mcla8NEOnmzW2CuY.f7YaF/sSBlROci7a0O756YZLzSi3nLq',NULL,'2011-05-23 19:55:36','2011-09-27 13:31:52',NULL,'2011-09-27 13:31:51','2011-09-26 14:02:17','192.168.0.194','127.0.0.1',99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'timmy','timothy@wearefound.com','$2a$10$CSqjdbVdsbOgwJCU1Be2ROtqw6YswHPzBU9tclJUDiBzaP42nYvKW',NULL,'2011-07-20 17:35:35','2011-09-02 18:06:18',NULL,'2011-09-02 18:06:18','2011-07-20 17:36:21','192.168.0.193','127.0.0.1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,'Parker','parker@wearefound.com','$2a$10$GARiWklCY/VkgA.SPV0gcuLnRDXy4wm31NcaTP/PN78fuRkHnLWHa',NULL,'2011-08-11 17:15:36','2011-08-23 14:16:20',NULL,'2011-08-23 14:16:20','2011-08-22 14:31:56','192.168.0.197','192.168.0.197',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,'wsommers','wsommers@camoh.org','$2a$10$3wpvCdGUQqYzFhTvNRuXAuOYD5MP.yY0Zu46D9z4kfSJRaontG5fa',NULL,'2011-08-22 15:15:07','2011-10-03 13:02:44',NULL,'2011-10-03 13:02:44','2011-09-30 12:32:51','209.51.184.13','208.100.40.45',52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,'bbeachy','bbeachy@camoh.org','$2a$10$xndxShW0HVo4KqqO/omud.z65YwYxgH4NibuvhB.NMf1f3eC3vjD6',NULL,'2011-09-07 12:50:41','2011-09-29 12:50:39',NULL,'2011-09-29 12:50:39','2011-09-16 17:43:44','208.100.40.45','209.51.184.13',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,'smartin','smartin@camoh.org','$2a$10$0QZh3/2GKhLTDHTUAE3aK.jeOP/UR9e/M0sbxjTQcZvXL47LTVLxW',NULL,'2011-09-16 18:38:42','2011-09-16 19:38:09',NULL,'2011-09-16 19:38:09','2011-09-16 19:36:27','209.51.184.13','209.51.184.13',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(7,'jmullet','jmullet@camoh.org','$2a$10$GfAAsY6J/.Ro/MBjqOxvFeh0rfyVShuzMuhOtkg4SSYQTjrVDLL7u',NULL,'2011-09-27 20:15:07','2011-10-03 15:37:24',NULL,'2011-10-03 15:37:24','2011-10-03 15:37:24','12.36.191.18','12.36.191.18',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(8,'jpeachey','jpeachey@camoh.org','$2a$10$UGtJYdXxf/uTRPm7GkO3yOj2nUT6nRAPCG/VUIodHJAUZIaTbfJlG',NULL,'2011-09-27 20:15:37','2011-09-27 20:28:00',NULL,'2011-09-27 20:28:00','2011-09-27 20:28:00','208.100.40.45','208.100.40.45',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,'dmartin','dmartin@camoh.org','$2a$10$ALiXmP5bq4lX6NkL2z6NIetFN6Ccfxk/Y1GaDeLfEYYMU3.o6A5ce',NULL,'2011-09-27 20:16:11','2011-09-27 20:30:47',NULL,'2011-09-27 20:30:47','2011-09-27 20:30:47','208.100.40.45','208.100.40.45',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

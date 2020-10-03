-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema poysakori
--

CREATE DATABASE IF NOT EXISTS poysakori;
USE poysakori;

--
-- Definition of table `creditor`
--

DROP TABLE IF EXISTS `creditor`;
CREATE TABLE `creditor` (
  `coustomar_id` int(10) unsigned default NULL,
  `coustomers_name` varchar(45) default NULL,
  `billing_number` int(10) unsigned default NULL,
  `bili_Amount` int(10) unsigned default NULL,
  `d_date` date default NULL,
  `payment_mode` varchar(45) default NULL,
  `paid_amount` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creditor`
--

/*!40000 ALTER TABLE `creditor` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditor` ENABLE KEYS */;


--
-- Definition of table `creditoradd`
--

DROP TABLE IF EXISTS `creditoradd`;
CREATE TABLE `creditoradd` (
  `id` varchar(45) NOT NULL,
  `cr_name` varchar(45) default NULL,
  `cr_phone` varchar(45) default NULL,
  `cr_nid` varchar(45) default NULL,
  `cr_email` varchar(45) default NULL,
  `cr_address` varchar(100) default NULL,
  `cr_company_name` varchar(100) default NULL,
  `cr_company_dis` varchar(100) default NULL,
  `cr_remark` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creditoradd`
--

/*!40000 ALTER TABLE `creditoradd` DISABLE KEYS */;
INSERT INTO `creditoradd` (`id`,`cr_name`,`cr_phone`,`cr_nid`,`cr_email`,`cr_address`,`cr_company_name`,`cr_company_dis`,`cr_remark`) VALUES 
 ('CRP001','Shariful Islam','01675972500','19910092345568','shariful_islam@gmail.com','56,Dhaka-1214','ABC Corporation','ABC Corporation 56,Dhaka-1214','ABC Corporation 56,Dhaka-1214\nThis is our boss Company'),
 ('CRP002','Shanur Nahid','01700023440','19920092234555','sharifulNahid@gmail.com','santinagor,34A, Dhaka-1214','Shanur software LTD','Shanur software LTD. Software company ','santinagor,34A, Dhaka-1214, Shanur software LTD. Software company'),
 ('CRP003','Abdullah-Al-Mamun','01937673465','199201937673465','mabdullah3465@gmail.com ','97,wapdaroad , west rampura Dhaka-1219 ','Abdullah-Al-Mamun Co.','Abdullah-Al-Mamun Co.97,wapdaroad , west rampura Dhaka-1219','Abdullah-Al-Mamun Co.97,wapdaroad , west rampura Dhaka-1219'),
 ('CRP004','Md. Shamim Hossain','01683392838 ','199201683392838 ',' istiakmahamud780@gmail.com','56 ,North mugda para dhaka-1214','Md. Shamim Hossain Co.','Md. Shamim Hossain Co. mugda para dhaka-1214','Md. Shamim Hossain Co. mugda para dhaka-1214,GOO'),
 ('CRP005','Komol Mridha','01927791626','199201927791626',' komolmridha100@gmail.com ','kajlar par,jatrabari,dhaka-1236 ','Komol Mridha Ltd.','Komol Mridha Ltd. Dhaka-1236 ','Komol Mridha Ltd. Dhaka-1236\nkajlar par,jatrabari,dhaka-1236 '),
 ('CRP006','Md. Iftarul Islam Rahat','01784405028','199201784405028','iftarulislamrahat@gmail.com ','Maniknagar, 57/1/B dhaka -1203','Md. Iftarul Islam Rahat Ltd.','Md. Iftarul Islam Rahat Ltd.Maniknagar, 57/1/B Dhaka -1203','Md. Iftarul Islam Rahat Ltd.Maniknagar, 57/1/B Dhaka -120'),
 ('CRP007','Md. Saju Ahmed','01816377758','199201816377758 ','sajuahmed1994@gmail.com ','Maniknagar, 57/1/B dhaka -1203','Md. Saju Ahmed Co','Md. Saju Ahmed Co Maniknagar, 57/1/B dhaka -1203','Md. Saju Ahmed Co Maniknagar, 57/1/B dhaka -1204'),
 ('CRP008','Nusrath Jahan','01878791594 ','199201878791594 ','nusrathjahan0204@gmail.com ','Bandar, Narayanganj','Nusrath Jahan Co.','Nusrath Jahan Co.Bandar, Narayanganj','Nusrath Jahan Co .Bandar, Narayanganj'),
 ('CRP009','Nasrin Nahar ','01878791457','199201878791457','nusrathjfahan0204@gmail.com ','81/1/C, North Jatfrabari, Dhaka-1204','Nusrath Jahafn 81/1/C, North Jatrabari, Dhaka-1204','Nusrath Jahan 81/1/C,  Dhaka-1204','Nusrath Jahafn 81/1/C, North Jatrabari, Dhaka-1204'),
 ('CRP010','Md. Ashraful Islam','01989390292 ','199201989390292 ','pavel.ashraf123@gmail.com','97,wapdaroad , west rampura Dhaka-121','Md. Ashraful Islam Co.','Md. Ashraful Islam Co.97,wapdaroad , west rampura Dhaka-121','aroad , west rampura Dhaka-121'),
 ('CRP011','Rokibul Islam','01765342228','199201765342228','rokibulislam@gmail.com','56,North Mdugdha Para Dhaka-1214','ABC Rokib Co.','ABC rokibul Korim 56,North Mdugdha Para Dhaka-1214','ABC rokibul Korim 56,North Mdugdha Para Dhaka-1214');
/*!40000 ALTER TABLE `creditoradd` ENABLE KEYS */;


--
-- Definition of table `creditors_sharif`
--

DROP TABLE IF EXISTS `creditors_sharif`;
CREATE TABLE `creditors_sharif` (
  `coustomar_id` int(10) unsigned default NULL,
  `coustomers_name` varchar(45) default NULL,
  `billing_number` int(10) unsigned default NULL,
  `bili_Amount` int(10) unsigned default NULL,
  `d_date` date default NULL,
  `payment_mode` varchar(45) default NULL,
  `paid_amount` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creditors_sharif`
--

/*!40000 ALTER TABLE `creditors_sharif` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditors_sharif` ENABLE KEYS */;


--
-- Definition of table `credtors`
--

DROP TABLE IF EXISTS `credtors`;
CREATE TABLE `credtors` (
  `coustomar_id` int(10) unsigned NOT NULL auto_increment,
  `coustomers_name` varchar(45) default NULL,
  `billing_number` int(10) unsigned default NULL,
  `bili_Amount` int(10) unsigned default NULL,
  `d_date` date default NULL,
  `payment_mode` varchar(45) default NULL,
  `paid_amount` varchar(45) default NULL,
  PRIMARY KEY  (`coustomar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credtors`
--

/*!40000 ALTER TABLE `credtors` DISABLE KEYS */;
INSERT INTO `credtors` (`coustomar_id`,`coustomers_name`,`billing_number`,`bili_Amount`,`d_date`,`payment_mode`,`paid_amount`) VALUES 
 (41,'Shanur Nahid',1205,2000,'2019-12-03','Cash','2000'),
 (42,'Md. Shamim Hossain',1206,4000,'2020-01-02','Cash','2000'),
 (43,'Masud Rana',1209,770000,'2019-12-04','Cash','7700'),
 (44,'Sakib Al Hasan',1201,20000,'2019-12-12','Cash','15000'),
 (45,'Shanur Nahid',1205,2000,'2019-12-03','Cash','2000'),
 (49,'Shariful Islam',1002,5000,'2020-01-02','Cash','4000'),
 (50,'Shariful Islam',1002,5000,'2020-01-02','Cash','4000'),
 (51,'Shariful Islam',1002,5000,'2020-01-01','Cash','0'),
 (52,'Shariful Islam',1002,0,'2020-01-03','Cash','5000'),
 (53,'Abdullah-Al-Mamun',12009,5000,'2020-01-08','Cash','0'),
 (54,'Abdullah-Al-Mamun',12009,0,'2020-01-11','Cash','2000'),
 (55,'Md. Shamim Hossain',1206,4000,'2020-01-02','Cash','2000'),
 (56,'Komol Mridha',1207,3000,'2020-01-28','Cash','1200'),
 (61,'Md. Shamim Hossain',12006,3500,'2020-01-02','Cash','2000'),
 (62,'Komol Mridha',12007,2900,'2020-01-28','Cash','1200'),
 (63,'Abdullah-Al-Mamun',1204,700,'2020-01-15','Cash','300'),
 (64,'Shariful Islam',1003,4500,'2020-01-02','Cash','4000'),
 (65,'Md. Iftarul Islam Rahat',1205,500,'2020-01-09','Cash','500'),
 (66,'Md. Iftarul Islam Rahat',1205,500,'2020-01-09','Cash','500'),
 (68,'Abdullah-Al-Mamun',1204,700,'2020-01-15','Cash','300');
/*!40000 ALTER TABLE `credtors` ENABLE KEYS */;


--
-- Definition of table `debtors`
--

DROP TABLE IF EXISTS `debtors`;
CREATE TABLE `debtors` (
  `debtors_id` int(10) unsigned NOT NULL auto_increment,
  `debtors_name` varchar(45) default NULL,
  `bill_number` int(10) unsigned default '0',
  `payment_type` varchar(45) default NULL,
  `d_date` date default NULL,
  `bill_amount` int(10) unsigned default NULL,
  `paid_amount` int(10) unsigned default NULL,
  PRIMARY KEY  (`debtors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debtors`
--

/*!40000 ALTER TABLE `debtors` DISABLE KEYS */;
INSERT INTO `debtors` (`debtors_id`,`debtors_name`,`bill_number`,`payment_type`,`d_date`,`bill_amount`,`paid_amount`) VALUES 
 (8,'Shanur Nahid ',4500,'Card','2019-12-05',5000,2000),
 (9,'Shajahan Khan',12005,'Cash','2019-12-10',50000,50000),
 (15,'Shanur Nahid ',4500,'Card','2019-12-05',5000,2000),
 (19,'Shanur Nahid ',4501,'Cheque','2020-01-03',0,5000),
 (20,'Shanur Nahid ',4501,'Cash','2019-12-04',500,3000),
 (22,'Komol Mridha',13005,'Cash','2020-01-01',4500,4000),
 (23,'Komol Mridha',4100,'Cash','2020-01-27',4500,4000),
 (24,'Shariful islam',1205,'Cash','2020-01-01',25000,20000),
 (25,'Shanur Nahid ',4502,'Cash','2019-12-01',5000,0),
 (26,' Md. Ashraful Islam',1207,'Cash','2020-01-02',4000,4000);
/*!40000 ALTER TABLE `debtors` ENABLE KEYS */;


--
-- Definition of table `debtors_list`
--

DROP TABLE IF EXISTS `debtors_list`;
CREATE TABLE `debtors_list` (
  `dr_id` varchar(45) NOT NULL default '',
  `dr_name` varchar(45) default NULL,
  `dr_phone` varchar(45) default '0',
  `dr_nid` varchar(45) NOT NULL,
  `dr_email` varchar(45) NOT NULL,
  `dr_address` varchar(100) NOT NULL,
  `dr_company_name` varchar(100) NOT NULL,
  `dr_company_dis` varchar(100) NOT NULL,
  `dr_remark` varchar(100) NOT NULL,
  PRIMARY KEY  (`dr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debtors_list`
--

/*!40000 ALTER TABLE `debtors_list` DISABLE KEYS */;
INSERT INTO `debtors_list` (`dr_id`,`dr_name`,`dr_phone`,`dr_nid`,`dr_email`,`dr_address`,`dr_company_name`,`dr_company_dis`,`dr_remark`) VALUES 
 ('DRP001','Shariful islam','01675972500','1990445738938','shariful_hridoy@gmail.com','56,Dhaka-1224','ABC Company ','ABC Company   ABC Company ','ABC Company   ABC Company '),
 ('DRP002','Shanur Nahid ','01675972500','199201675972500','shariful_heidoy@yahool.com','Dhaka,1214','Shanur Nahid  Co.','Shanur Nahid  Co.Dhaka,1214','Shanur Nahid  Co.Dhaka,1214'),
 ('DRP003',' Md. Ashraful Islam','01989390292 ','199201989390292 ','pavel.ashraf123@gmail.com','56 ,North mugda para Dhaka-1214',' Md. Ashraful Islam Co.',' Md. Ashraful Islam Co. 56 ,North mugda para Dhaka-1214',' Md. Ashraful Islam Co. 56 ,North mugda para Dhaka-1214'),
 ('DRP004','Ali Hosen','01764442136 ','199201764442136 ','aali.raz.myself@gmail.com ','97,wapdaroad , west rampura Dhaka-1219','Ali Hosen Co.','Ali Hosen Co.Rampura Dhaka-1219','Ali Hosen Co.Rampura Dhaka-1219'),
 ('DRP005','Komol Mridha','01927791626','199301927791626','komalmridha@gmail.com','Karani Gonj , Madaripur - Dhaka-1214','ABC Komol Mridha Co.Ltd','ABC Komol Mridha Co.Ltd Karani Gonj , Madaripur - Dhaka-1214','ABC Komol Mridha Co.Ltd Karani Gonj , Madaripur - Dhaka-1214'),
 ('DRP006','Sakib-Al-Hasan','017872344400','1992017872344400','sakibalhasan@gmail.com','karimbazar,56,Madaripur-Dhaka-1214','Sakib-Al-Hasan Company','ABC Sakib Co.','ABC Sakib Co. karimbazar,56,Madaripur-Dhaka-1214'),
 ('DRP007','Hasibul Islam','01918229834','201001918229834','hasibulhasal@gmail.com','Dhaka-1214','ABC Company Of  Hasibul','This  is Software Company','ABC Company Of  Hasibul This  is Software Company'),
 ('DRP008','Arif Khan','01925487621','199201925487621','shariful@gmail.com','Dhaka-1214','Arif Dhaka Co.','Arif Dhaka Co. Dhaka-1214','Arif Dhaka Co. Dhaka-1214'),
 ('DRP009','Karbir Khan ','01918899972','125401918899972','sohelkhan@gmail.com','Dhaka-1247','Karbir Khan Dhaka-1247','Karbir Khan Dhaka Co.','Karbir Khan Dhaka-1247'),
 ('DRP010','Hasibul islam','01987654322','122201987654322','sharifulk@gamil.com','Dhaka -1212','Hasibul islam CO','Hasibul islam CO ','Hasibul islam CO '),
 ('DRP011','Nojrul Islam','01909827365','199201909827365','shariufi@Gmail.com','Dhaka -1214','Nojrul Islam Co.','Nojrul Islam Co.','ABC Nojrul Islam Co.');
/*!40000 ALTER TABLE `debtors_list` ENABLE KEYS */;


--
-- Definition of table `debtors_view`
--

DROP TABLE IF EXISTS `debtors_view`;
CREATE TABLE `debtors_view` (
  `coustomar_id` int(10) unsigned default NULL,
  `coustomers_name` varchar(45) default NULL,
  `billing_number` int(10) unsigned default NULL,
  `bili_Amount` int(10) unsigned default NULL,
  `d_date` date default NULL,
  `payment_mode` varchar(45) default NULL,
  `paid_amount` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debtors_view`
--

/*!40000 ALTER TABLE `debtors_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtors_view` ENABLE KEYS */;


--
-- Definition of table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE `expense` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `ex_type` varchar(45) default NULL,
  `ex_mode` varchar(45) default NULL,
  `ex_description` varchar(45) default NULL,
  `ex_date` date default NULL,
  `amount` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` (`id`,`ex_type`,`ex_mode`,`ex_description`,`ex_date`,`amount`) VALUES 
 (1,'Food ','Cash','pizaa 2 pis','2019-12-05',7000),
 (2,'Transportation ','Cash','Dkaha to chatigong ','2019-12-06',1200),
 (3,'Bill ','Cheque','CTR Bill ABC Company ','2019-12-13',1500),
 (4,'Bill ','Card','Gas Bill ','2020-01-08',950),
 (5,'Bill ','Card','Currant Bill ','2020-01-01',3000),
 (6,'utilities','Cash','Utilities Bill ','2020-01-02',800),
 (7,'Internet ','Cash','ABC Internet ','2020-01-04',1600),
 (8,'Telephone ','Cash','Phone Card ','2020-01-02',500),
 (9,'Salary ','Cash','Employees Salary Given ','2020-01-09',12000),
 (10,'Food ','Cash','Birani for Boss','2020-01-01',120),
 (11,'Transportation ','Cash','Dhaka to Chatigong ','2020-01-01',1500),
 (12,'Food ','Cash','pizaa 2 pis','2019-12-01',7000),
 (13,'Food ','Cash','pizaa 2 pis','2019-12-26',400),
 (15,'Food ','Cash','Cake','2020-01-17',350);
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;


--
-- Definition of table `income`
--

DROP TABLE IF EXISTS `income`;
CREATE TABLE `income` (
  `id` int(45) NOT NULL auto_increment,
  `source_name` varchar(45) default NULL,
  `payment_mode` varchar(45) default '0',
  `income_description` varchar(100) default NULL,
  `i_date` date NOT NULL,
  `amount_price` int(45) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` (`id`,`source_name`,`payment_mode`,`income_description`,`i_date`,`amount_price`) VALUES 
 (2,'Rant ','Cash','ABC company','2019-12-12',30000),
 (3,'Rant ','Cash','Rant for Shop','2020-01-10',5000),
 (4,'Service ','Cash','service  Consultant ','2020-01-09',6000),
 (5,'Commission','Cash','Commission','2020-01-16',6700),
 (6,'Sales ','Cash','Product Fron Sales ','2020-01-09',4000),
 (7,'Sales ','Cash','Sales a Computer ','2020-01-08',7000),
 (8,'Commission','Cash','Service Commission ','2020-01-09',5000),
 (9,'Sales ','Card','Sales For Computer ','2020-01-07',30000),
 (10,'Service ','Cash','Home Service','2020-01-01',4500),
 (11,'Rant ','Cash','Car Rant ','2020-01-02',2500),
 (12,'Rant ','Cash','Car Rant ','2020-01-10',3000),
 (13,'Rant ','Cash','Car Rant ','2020-01-16',2000),
 (14,'Service ','Cash','Car Service ','2020-01-23',2500),
 (15,'Service ','Cash','Car Service ','2020-01-17',4000);
/*!40000 ALTER TABLE `income` ENABLE KEYS */;


--
-- Definition of table `ups_login`
--

DROP TABLE IF EXISTS `ups_login`;
CREATE TABLE `ups_login` (
  `sl_no` int(10) unsigned NOT NULL auto_increment,
  `user` varchar(45) NOT NULL,
  `password` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ups_login`
--

/*!40000 ALTER TABLE `ups_login` DISABLE KEYS */;
INSERT INTO `ups_login` (`sl_no`,`user`,`password`) VALUES 
 (1,'admin',123);
/*!40000 ALTER TABLE `ups_login` ENABLE KEYS */;


--
-- Definition of procedure `listCoustomers`
--

DROP PROCEDURE IF EXISTS `listCoustomers`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `listCoustomers`()
BEGIN
select coustomers_name from coustomers_record;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `save_coustomer`
--

DROP PROCEDURE IF EXISTS `save_coustomer`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `save_coustomer`(coustomername varchar(30))
BEGIN
insert into coustomers_record (coustomar_name) values(coustomername);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `save_coustomers_record`
--

DROP PROCEDURE IF EXISTS `save_coustomers_record`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `save_coustomers_record`(in coustomers_name varchar(45),in phone varchar(30),in address varchar(30),
in cdate date, in sale int,in recipient int,in closing_balance int)
BEGIN
insert into coustomers_record (coustomers_name, billing_number, bili_Amount, d_date, payment_mode, paid_amount)
values (coustomers_name,phone,address,cdate,sale,recipient,closing_balance);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

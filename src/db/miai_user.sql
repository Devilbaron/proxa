/*
SQLyog v10.2 
MySQL - 5.5.37 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `miai_user` (
	`id` int (64),
	`name` varchar (150),
	`sex` varchar (30),
	`age` int (3),
	`height` double ,
	`via` varchar (765),
	`wechat` varchar (90),
	`iphone` varchar (33),
	`city` varchar (300),
	`create_date` date ,
	`updata_date` date ,
	`remarks` varchar (765),
	`del_flag` tinyint (1)
); 
insert into `miai_user` (`id`, `name`, `sex`, `age`, `height`, `via`, `wechat`, `iphone`, `city`, `create_date`, `updata_date`, `remarks`, `del_flag`) values('6','吕丙章','男','18','185',NULL,'PBFD_DB','15831550587','北京市/东城区','2018-07-03','2018-07-03','测试','0');
insert into `miai_user` (`id`, `name`, `sex`, `age`, `height`, `via`, `wechat`, `iphone`, `city`, `create_date`, `updata_date`, `remarks`, `del_flag`) values('7','吕丙章','男','18','180',NULL,'PBFD_DB','15831550587','北京市/东城区','2018-07-03','2018-07-03','测试','0');
insert into `miai_user` (`id`, `name`, `sex`, `age`, `height`, `via`, `wechat`, `iphone`, `city`, `create_date`, `updata_date`, `remarks`, `del_flag`) values('8','吕丙章','男','18','800',NULL,'PBFD_DB','15831550587','北京市/东城区','2018-07-03','2018-07-03','测试','0');
insert into `miai_user` (`id`, `name`, `sex`, `age`, `height`, `via`, `wechat`, `iphone`, `city`, `create_date`, `updata_date`, `remarks`, `del_flag`) values('9','吕丙章','男','18','180',NULL,'PBFD_DB','15831550587','北京市/东城区','2018-07-03','2018-07-03','测试','0');

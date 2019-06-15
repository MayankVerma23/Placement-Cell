/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.24-log : Database - placementcell
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`placementcell` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `placementcell`;

/*Table structure for table `approved_comp` */

DROP TABLE IF EXISTS `approved_comp`;

CREATE TABLE `approved_comp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msg` varchar(100) NOT NULL,
  `companyid` varchar(10) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `approved_comp` */

insert  into `approved_comp`(`id`,`msg`,`companyid`,`date`) values (1,'IF YOU WANT TO VISIT ON THIS DATE','2','2019-05-25'),(2,'You can visit on this date','4','2019-05-15'),(3,'YOU CAN VISIT ON THIS DATE','1','2019-05-16'),(4,'YOU CAN VISIT ON THIS DATE','3','2019-05-14'),(5,'YOU CAN VISIT ON THIS DATE','5','2019-05-16'),(6,'YOU CAN VISIT ON THIS DATE','1','2019-05-16'),(7,'YOU CAN VISIT ON THIS DATE','7','2019-05-14'),(8,'YOU CAN VISIT ON THIS DATE','9','2019-05-16'),(9,'YOU CAN VISIT ON THIS DATE','6','2019-05-23'),(10,'YOU CAN VISIT ON THIS DATE','6','2019-05-22'),(11,'YOU CAN VISIT ON THIS DATE','10','2019-05-19');

/*Table structure for table `company_image` */

DROP TABLE IF EXISTS `company_image`;

CREATE TABLE `company_image` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(55) NOT NULL,
  `file_name` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `company_image` */

insert  into `company_image`(`id`,`email`,`file_name`) values (1,'nagaro@gmail.com','_20180214_112348.JPG');

/*Table structure for table `company_status` */

DROP TABLE IF EXISTS `company_status`;

CREATE TABLE `company_status` (
  `company_email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'arriving',
  PRIMARY KEY (`company_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `company_status` */

insert  into `company_status`(`company_email`,`status`) values ('Google@gmail.com','arriving'),('hcl@gmail.com','result_declared'),('infosys@gmail.com','result_published'),('mindtree@gmail.com','result_declared'),('nagaro@gmail.com','arriving'),('reliance@gmail.com','result_published'),('swiggy@gmail.com','arriving'),('wipro@gmail.com','arriving'),('zomato@gmail.com','arriving');

/*Table structure for table `companyrequirements` */

DROP TABLE IF EXISTS `companyrequirements`;

CREATE TABLE `companyrequirements` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `requiredcourse1` varchar(100) NOT NULL,
  `requiredcourse2` varchar(100) NOT NULL,
  `requiredcourse3` varchar(100) NOT NULL,
  `requiredbranch1` varchar(100) NOT NULL,
  `requiredbranch2` varchar(100) NOT NULL,
  `requiredbranch3` varchar(100) NOT NULL,
  `requiredbranch4` varchar(100) NOT NULL,
  `requiredbacklog` varchar(100) NOT NULL,
  `requiredpercentage` varchar(100) NOT NULL,
  `requiredskill` varchar(100) NOT NULL,
  `requiredprocedure` varchar(100) NOT NULL,
  `requiredbatch` varchar(100) NOT NULL,
  `job_profile` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL,
  `job_location` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `inoffcampus` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `companyrequirements` */

insert  into `companyrequirements`(`id`,`companyname`,`company_email`,`requiredcourse1`,`requiredcourse2`,`requiredcourse3`,`requiredbranch1`,`requiredbranch2`,`requiredbranch3`,`requiredbranch4`,`requiredbacklog`,`requiredpercentage`,`requiredskill`,`requiredprocedure`,`requiredbatch`,`job_profile`,`package`,`job_location`,`date`,`inoffcampus`) values (1,'Infosys','infosys@gmail.com','B.Tech','BCA','MCA','CSE','','CIVIL','','0','8','java','test','2019','trinee','3.5','patiala','2019-05-11','both'),(2,'Reliance Jio','reliance@gmail.com','B.Tech','BCA','MCA','CSE','MCE','CIVIL','ECE','0','8','java','test','2019','internship','4','Mohali','2019-05-11','both'),(3,'Wipro','wipro@gmail.com','B.Tech','BCA','MCA','CSE','MCE','CIVIL','ECE','0','8','JAVA','ONLINE TEST','2019','TRAINEE','4','Pune','2019-05-11','both'),(5,'Google','Google@gmail.com','B.Tech','null','null','CSE','null','null','null','0','8','JAVA','ONLINE TEST','2019','TRAINEE','4','usa','2019-05-16','both'),(6,'Swiggy','swiggy@gmail.com','B.Tech','BCA','MCA','CSE','MCE','CIVIL','ECE','0','8','JAVA','ONLINE TEST','2019','TRAINEE','3','Chnadigarh','2019-05-16','both'),(7,'HCL','hcl@gmail.com','B.Tech','BCA','MCA','CSE','MCE','CIVIL','ECE','0','8','JAVA','ONLINE TEST','2019','TRAINEE','3','Mohali','2019-05-16','Incampus'),(8,'Mindtree','mindtree@gmail.com','B.Tech','BCA','MCA','CSE','MCE','CIVIL','ECE','0','8','JAVA','ONLINE TEST','2019','TRAINEE','4','Mohali','2019-05-17','Incampus');

/*Table structure for table `companysignup` */

DROP TABLE IF EXISTS `companysignup`;

CREATE TABLE `companysignup` (
  `companyid` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(55) NOT NULL,
  `companyemail` varchar(55) NOT NULL,
  `companyphno` varchar(55) NOT NULL,
  `companylocation` varchar(55) NOT NULL,
  `companypassword` varchar(55) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `companysignup` */

insert  into `companysignup`(`companyid`,`companyname`,`companyemail`,`companyphno`,`companylocation`,`companypassword`,`status`) values (1,'Google','Google@gmail.com','8565485659','USA','12345678mM!','accept'),(2,'Infosys','infosys@gmail.com','8565485659','Banglore','12345678mM!','accept'),(3,'Wipro','wipro@gmail.com','8565485659','Mohali','12345678mM!','accept'),(4,'Reliance Jio','reliance@gmail.com','8565485659','Pune','12345678mM!','accept'),(5,'Zomato','zomato@gmail.com','8565412578','Pune','12345678mM!','reject'),(6,'Swiggy','swiggy@gmail.com','9565412578','Punjab','12345678mM!','accept'),(7,'HCL','hcl@gmail.com','8565412578','Mohali','12345678mM!','accept'),(8,'Agnext Technology','agnext@gmail.com','8565412578','Chandigarh','12345678mM!','accept'),(9,'Mindtree','mindtree@gmail.com','8565412578','banglore','12345678mM!','accept'),(10,'nagaro','nagaro@gmail.com','8565412578','Pune','12345678mM!','accept');

/*Table structure for table `interestedstudents` */

DROP TABLE IF EXISTS `interestedstudents`;

CREATE TABLE `interestedstudents` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `company_email` varchar(100) DEFAULT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_rollno` varchar(100) NOT NULL,
  `student_email` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `interestedstudents` */

insert  into `interestedstudents`(`id`,`company_name`,`company_email`,`student_name`,`student_rollno`,`student_email`,`status`) values (1,'Infosys','infosys@gmail.com','Mayank Verma','11501211','mayank@gmail.com','placed'),(2,'Infosys','infosys@gmail.com','Ronak Sudan','11501212','ronaksudan17june@gmail.com','unplaced'),(3,'Reliance Jio','reliance@gmail.com','Ronak Sudan','11501212','ronaksudan17june@gmail.com','placed'),(4,'Infosys','infosys@gmail.com','Mrinal Sharma','11501207','22mrinalsharma@gmail.com','placed'),(5,'Reliance Jio','reliance@gmail.com','Mrinal Sharma','11501207','22mrinalsharma@gmail.com','unplaced'),(6,'Infosys','infosys@gmail.com','Mohit Sharma','11601111','montymohit3567@gmail.com','unplaced'),(7,'Reliance Jio','reliance@gmail.com','Mohit Sharma','11601111','montymohit3567@gmail.com','unplaced'),(8,'Infosys','infosys@gmail.com','Naman Chehel','11501204','naman@gmail.com','unplaced'),(9,'Reliance Jio','reliance@gmail.com','Naman Chehel','11501204','naman@gmail.com','unplaced'),(10,'Wipro','wipro@gmail.com','Mohit Sharma','11601111','montymohit3567@gmail.com','waiting'),(11,'Swiggy','swiggy@gmail.com','Mayank','11501211','mayankjambu@gmail.com','waiting'),(12,'Google','Google@gmail.com','Mayank','11501211','mayankjambu@gmail.com','waiting'),(13,'Mindtree','mindtree@gmail.com','Harun kumar','11601114','harun@gmail.com','placed'),(14,'HCL','hcl@gmail.com','Harun kumar','11601114','harun@gmail.com','placed'),(15,'Wipro','wipro@gmail.com','Harun kumar','11601114','harun@gmail.com','waiting'),(16,'Google','Google@gmail.com','Mohit Sharma','11601111','montymohit3567@gmail.com','waiting'),(17,'HCL','hcl@gmail.com','Mohit Sharma','11601111','montymohit3567@gmail.com','placed'),(18,'Mindtree','mindtree@gmail.com','Mohit Sharma','11601111','montymohit3567@gmail.com','placed'),(19,'HCL','hcl@gmail.com','Pranhjot Singh','11601116','prabhjot@gmail.com','unplaced'),(20,'Mindtree','mindtree@gmail.com','Pranhjot Singh','11601116','prabhjot@gmail.com','placed'),(21,'HCL','hcl@gmail.com','Jatin Verma','11601113','jatin@gmail.com','placed'),(22,'Mindtree','mindtree@gmail.com','Jatin Verma','11601113','jatin@gmail.com','placed');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(100) NOT NULL,
  `companyid` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `message` */

insert  into `message`(`id`,`message`,`companyid`) values (1,'STUDENT NOT INTERESTED.','7'),(2,'STUDENT NOT INTERESTED.','9'),(3,'STUDENT NOT INTERESTED.','8'),(4,'STUDENT NOT INTERESTED.','5'),(6,'STUDENT NOT INTERESTED.','6');

/*Table structure for table `notice_table` */

DROP TABLE IF EXISTS `notice_table`;

CREATE TABLE `notice_table` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `studentmsg` varchar(100) NOT NULL,
  `companymsg` varchar(100) NOT NULL,
  `common` varchar(100) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `notice_table` */

insert  into `notice_table`(`id`,`subject`,`message`,`studentmsg`,`companymsg`,`common`,`date`) values (1,'IMPORTANT LINKS','ACB.COM','null','null','common','10/05/2019'),(2,'Infosys Company','Infosys Company Visit On Saturday,\r\nReady All Documents,\r\nAll Orignal Proof.','null','null','common','12/05/2019'),(3,'AMCAT EXAM','Amcat Exam on 16 May.\r\nYour Roll No And Password Already Send On Your Email.','','','common','12/05/2019'),(4,'SEMINAR','Reliance Jio Conduct Seminar On This Date.','null','null','common','12/05/2019'),(5,'TCS ION','REGISTER FOR TCS ION,\r\nLAST DATE TO APPLY IS 20 MAY','null','null','common','12/05/2019');

/*Table structure for table `offcampus_table` */

DROP TABLE IF EXISTS `offcampus_table`;

CREATE TABLE `offcampus_table` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `college_name` varchar(100) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `phoneno` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `twe` varchar(100) NOT NULL,
  `sem1` varchar(100) NOT NULL,
  `sem2` varchar(100) NOT NULL,
  `sem3` varchar(100) NOT NULL,
  `sem4` varchar(100) NOT NULL,
  `sem5` varchar(100) NOT NULL,
  `sem6` varchar(100) NOT NULL,
  `sem7` varchar(100) NOT NULL,
  `sem8` varchar(100) NOT NULL,
  `cgpa` varchar(100) DEFAULT NULL,
  `backlog` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `offcampus_table` */

insert  into `offcampus_table`(`id`,`name`,`college_name`,`roll`,`email`,`degree`,`branch`,`batch`,`phoneno`,`gender`,`ten`,`twe`,`sem1`,`sem2`,`sem3`,`sem4`,`sem5`,`sem6`,`sem7`,`sem8`,`cgpa`,`backlog`) values (1,'Raman Singh','Vikram collage','11801100','rk74418@gmail.com','BTech','CSE','2019','9985642567','Male','80','82','8','8','8','8','8','8','8','8','8','0'),(2,'Mohit Sharma','Rimt','11801123','montymohit3567@gmail.com','BTech','CSE','2019','9856545625','Male','80','80','8','8','8','8','8','8','8','8','8','0'),(3,'Aman Sharma','Rimt University,Mohali','11600101','aman@gmail.com','BTech','CSE','2019','8565456595','Male','80','80','8','8','8','8','8','8','8','8','8','0'),(4,'Yatin Kapoor','Yadvindra collage','11600102','yatin@gmail.com','BTech','CSE','2019','8565456595','Male','80','80','8','8','8','8','8','8','8','8','8','0'),(5,'Harshjot Singh','pbi uni','11601215','rk74418@gmail.com','BTech','CSE','2017','8565456595','Male','80','80','8','8','8','8','8','8','8','8','8','0'),(6,'Prabhjort','pbi uni','11503149','jot.scorpio96@gmail.com','BTech','CSE','2019','8565456595','Male','80','80','8','8','8','8','8','8','8','8','8','0');

/*Table structure for table `old_paper` */

DROP TABLE IF EXISTS `old_paper`;

CREATE TABLE `old_paper` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `old_papers` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `old_paper` */

insert  into `old_paper`(`id`,`name`,`old_papers`) values (1,'CSE PAPER 2015','Chapter2.pdf'),(3,'CSE PAPER 2016','Software Engineering MST Lastnightstudy (75)-1.pdf'),(4,'STUDY','placementell(final).pdf');

/*Table structure for table `qmessages` */

DROP TABLE IF EXISTS `qmessages`;

CREATE TABLE `qmessages` (
  `id` int(10) NOT NULL,
  `name` varchar(55) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `designation` varchar(55) NOT NULL,
  `time` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `qmessages` */

insert  into `qmessages`(`id`,`name`,`subject`,`message`,`designation`,`time`) values (1,'Infosys','Date','We are comming on 15 May','company','Fri 10 May 2019  at 01:32:01'),(2,'Mayank Verma','Rollno','My Rollno is Wrong.','student','Fri 10 May 2019  at 01:54:50'),(2,'admin','Rollno','Ok I See.','tpo','Fri 10 May 2019  at 01:55:26'),(2,'admin','Rollno','Done','tpo','Fri 10 May 2019  at 01:56:59'),(2,'admin','Rollno','Done','tpo','Fri 10 May 2019  at 01:56:59'),(2,'admin','Rollno','fgghjkl','tpo','Fri 10 May 2019  at 02:09:16'),(2,'admin','Rollno','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishi','tpo','Fri 10 May 2019  at 02:18:04'),(2,'admin','Rollno','Final from my side','tpo','Fri 10 May 2019  at 02:19:01'),(2,'admin','Rollno','Final from my side','tpo','Fri 10 May 2019  at 02:19:01'),(1,'admin','Date','DD','tpo','Fri 10 May 2019  at 02:19:25'),(3,'Mayank Verma','Date','DDD','student','Fri 10 May 2019  at 02:21:16'),(3,'admin','Date','DDD','tpo','Fri 10 May 2019  at 02:22:09'),(4,'Mrinal Sharma','Regarding Infosys Placement','The Result is Declare or NOt','student','Sat 11 May 2019  at 12:48:20'),(4,'Mrinal Sharma','Regarding Infosys Placement','Please reply','student','Sat 11 May 2019  at 12:50:05'),(4,'admin','Regarding Infosys Placement','OK','tpo','Sat 11 May 2019  at 12:50:47'),(4,'admin','Regarding Infosys Placement','.....','tpo','Sat 11 May 2019  at 12:52:15'),(4,'Mrinal Sharma','Regarding Infosys Placement',',,,,\r\n','company','Sat 11 May 2019  at 12:53:58'),(4,'Mrinal Sharma','Regarding Infosys Placement','Ok','company','Sat 11 May 2019  at 12:54:44'),(4,'Mrinal Sharma','Regarding Infosys Placement','fff','student','Sat 11 May 2019  at 12:55:47'),(5,'Infosys','Give Drive Date','Give','company','Sat 11 May 2019  at 12:58:24'),(5,'admin','Give Drive Date','Please Wait','tpo','Sat 11 May 2019  at 12:58:58'),(5,'Infosys','Give Drive Date','Ok','company','Sat 11 May 2019  at 12:59:20'),(5,'Infosys','Give Drive Date','I will','company','Sat 11 May 2019  at 01:02:06'),(5,'admin','Give Drive Date','Ok','tpo','Sat 11 May 2019  at 01:12:46'),(6,'Ronak Sudan','Date','GSJGK','student','Sat 11 May 2019  at 07:39:10'),(7,'Mayank','APPLY COMPANY','I Want To Apply For Google Company But Eror Occur.','student','Sun 12 May 2019  at 11:51:22');

/*Table structure for table `queries` */

DROP TABLE IF EXISTS `queries`;

CREATE TABLE `queries` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `TimeofReply` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Status` int(2) NOT NULL,
  `seen` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `queries` */

insert  into `queries`(`id`,`Name`,`Email`,`Designation`,`Subject`,`Message`,`TimeofReply`,`Phone`,`Status`,`seen`) values (2,'Mayank Verma','mayank@gmail.com','student','Rollno','My Rollno is Wrong.','Fri 10 May 2019  at 01:54:50','9875654856',1,1),(3,'Mayank Verma','mayank@gmail.com','student','Date','DDD','Fri 10 May 2019  at 02:21:16','9875654856',2,1),(4,'Mrinal Sharma','22mrinalsharma@gmail.com','student','Regarding Infosys Placement','The Result is Declare or NOt','Sat 11 May 2019  at 12:48:20','9856545625',1,1),(5,'Infosys','infosys@gmail.com','company','Give Drive Date','Give','Sat 11 May 2019  at 12:58:24','8565485659',1,0),(6,'Ronak Sudan','ronaksudan17june@gmail.com','student','Date','GSJGK','Sat 11 May 2019  at 07:39:10','9856545625',0,1),(7,'Mayank','mayankjambu@gmail.com','student','APPLY COMPANY','I Want To Apply For Google Company But Eror Occur.','Sun 12 May 2019  at 11:51:22','BTech',0,1);

/*Table structure for table `student_image` */

DROP TABLE IF EXISTS `student_image`;

CREATE TABLE `student_image` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rollno` varchar(100) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_image` */

/*Table structure for table `studentsignup` */

DROP TABLE IF EXISTS `studentsignup`;

CREATE TABLE `studentsignup` (
  `studentid` int(11) NOT NULL AUTO_INCREMENT,
  `studentname` varchar(55) NOT NULL,
  `studentrollno` varchar(55) NOT NULL,
  `studentemail` varchar(55) NOT NULL,
  `studentdegree` varchar(55) NOT NULL,
  `branch` varchar(55) NOT NULL,
  `batch` varchar(55) NOT NULL,
  `studentphno` varchar(55) NOT NULL,
  `studentgender` varchar(55) NOT NULL,
  `ten` varchar(55) NOT NULL,
  `twe` varchar(55) NOT NULL,
  `sem1` varchar(55) NOT NULL,
  `sem2` varchar(55) NOT NULL,
  `sem3` varchar(55) NOT NULL,
  `sem4` varchar(55) NOT NULL,
  `sem5` varchar(55) NOT NULL,
  `sem6` varchar(55) NOT NULL,
  `sem7` varchar(55) NOT NULL,
  `sem8` varchar(55) NOT NULL,
  `cgpa` varchar(55) NOT NULL,
  `backlog` varchar(55) NOT NULL,
  `studentpassword` varchar(55) NOT NULL,
  `studentstatus` varchar(55) NOT NULL,
  PRIMARY KEY (`studentid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `studentsignup` */

insert  into `studentsignup`(`studentid`,`studentname`,`studentrollno`,`studentemail`,`studentdegree`,`branch`,`batch`,`studentphno`,`studentgender`,`ten`,`twe`,`sem1`,`sem2`,`sem3`,`sem4`,`sem5`,`sem6`,`sem7`,`sem8`,`cgpa`,`backlog`,`studentpassword`,`studentstatus`) values (1,'Mayank','11501211','mayankjambu@gmail.com','9875654856','CSE','2019','BTech','Male','80','82','8','8','8','8','8','8','8','8','8','0','12345678mM!','placed'),(2,'Gursimer singh','1510991224','gusimersingh@gmail.com','BTech','CSE','2019','9985642567','Male','80','82','8','8','8','8','8','8','8','8','8','0','12345678mM','unplaced'),(3,'Mohit Sharma','11601111','montymohit3567@gmail.com','BTech','CSE','2019','9856545625','Male','80','82','8','8','8','8','8','8','8','8','8','0','12345678mM','unplaced'),(4,'Ronak Sudan','11501212','ronaksudan17june@gmail.com','BTech','CSE','2019','9856545625','Male','90','82','8','8','8','8','8','8','8','8','8','0','Ron@1997','placed'),(5,'Mrinal Sharma','11501207','22mrinalsharma@gmail.com','BTech','CSE','2019','9856545625','Male','90','82','8','8','8','8','8','8','8','8','8','0','12345678mM','placed'),(6,'Naman Chehel','11501204','naman@gmail.com','BTech','CSE','2019','9856545625','Male','80','82','8','8','8','8','8','8','8','8','8','0','12345678mM','unplaced'),(7,'Tushar Verma','11601112','tushar@gmail.com','MCA','MCA','2019','9856545625','Male','80','82','8','8','8','8','8','8','8','8','8','0','12345678mM','unplaced'),(8,'Jatin Verma','11601113','jatin@gmail.com','BCA','BCA','2019','9856545625','Male','80','80','8','8','8','8','8','8','8','8','8','0','12345678mM','unplaced'),(9,'Harun kumar','11601114','harun@gmail.com','MCA','MCA','2019','9856545625','Male','80','82','8','8','8','8','8','8','8','8','8','0','12345678mM','unplaced'),(10,'Rishabh Kumar','11601115','rishabh@gmail.com','BTech','CIVIL','2019','9856545625','Male','80','82','8','8','8','8','8','8','8','8','8','0','12345678mM','unplaced'),(11,'Pranhjot Singh','11601116','jot.scorpio96@gmail.com','BTech','ECE','2019','9856545625','Male','80','82','8','8','8','8','8','8','8','8','8','0','12345678mM!','unplaced');

/*Table structure for table `tpo_password` */

DROP TABLE IF EXISTS `tpo_password`;

CREATE TABLE `tpo_password` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tpo_password` */

insert  into `tpo_password`(`username`,`password`) values ('admin','admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

--
-- creating database `schoolmanagementdb`
--

CREATE DATABASE schoolmanagementdb;
USE schoolmanagementdb;


--
-- Definition of table `admin`
--
CREATE TABLE `admin` (
  `a_id` int unsigned NOT NULL auto_increment,
  `a_name` varchar(45) NOT NULL,
  `a_email` varchar(45) NOT NULL,
  `a_phone` varchar(45) NOT NULL,
  PRIMARY KEY  (`a_id`)
) 

--
-- Definition of table `student_info`
--

CREATE TABLE `student_info` (
  `s_id` int unsigned NOT NULL auto_increment,
  `s_name` varchar(500) NOT NULL,
  `class_id` int unsigned NOT NULL,
  `sess_id` int unsigned NOT NULL,
  `roll_no` int unsigned NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `age` int unsigned NOT NULL,
  `f_name` varchar(500) NOT NULL,
  `m_name` varchar(500) NOT NULL,
  `telephone_no` int unsigned default NULL,
  `mobile_no` int unsigned NOT NULL,
  `present_address` varchar(500) NOT NULL,
  `permanent_address` varchar(500) default NULL,
  PRIMARY KEY  (`s_id`)

)
--
-- Definition of table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `sa_id` int unsigned NOT NULL auto_increment,
  `sa_date` date default NULL,
  `s_id` int unsigned NOT NULL,
  `status` varchar(45) NOT NULL default 'A',
  PRIMARY KEY  (`sa_id`)
)

--
-- Definition of table `teacher_info`
--


CREATE TABLE `teacher_info` (
  `t_id` int unsigned NOT NULL auto_increment,
  `t_name` varchar(405) NOT NULL,
  `t_email` varchar(400) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone_number` int unsigned NOT NULL,
  `address` varchar(500) NOT NULL,
  `sub_id` int unsigned NOT NULL,
  `join_date` date NOT NULL,
  PRIMARY KEY  (`t_id`),
  KEY `FK_teacher_info_sub_id` (`sub_id`),
  CONSTRAINT `FK_teacher_info_sub_id` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`)
)
--
-- Definition of table `class`
--

CREATE TABLE `class` (
  `class_id`  unsigned NOT NULL auto_increment,
  `class_name` varchar(45) NOT NULL,
  PRIMARY KEY  (`sem_id`)
) 

--
-- Definition of table `subject`
--
CREATE TABLE `subject` (
  `sub_id` int unsigned NOT NULL auto_increment,
  `sub_name` varchar(45) NOT NULL,
  PRIMARY KEY  (`sub_id`)
)

--
-- Definition of table `result`
--
CREATE TABLE `result` (
  `res_id` int unsigned NOT NULL auto_increment,
  `sem_id` int unsigned NOT NULL,
  `s_id` int unsigned NOT NULL,
  `sub_id` int unsigned NOT NULL,
  `marks` int unsigned NOT NULL,
  `g_point` double NOT NULL,
  `grade` varchar(10) NOT NULL,
  PRIMARY KEY  (`res_id`)
) 
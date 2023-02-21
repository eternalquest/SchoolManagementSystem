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

CREATE TABLE `student_attendance` (
  `sa_id` int unsigned NOT NULL auto_increment,
  `sa_date` date default NULL,
  `s_id` int unsigned NOT NULL,
  `status` varchar(45) NOT NULL default 'A',
  PRIMARY KEY  (`sa_id`)
)

CREATE TABLE `class` (
  `class_id`  unsigned NOT NULL auto_increment,
  `class_name` varchar(45) NOT NULL,
  PRIMARY KEY  (`sem_id`)
) 

CREATE TABLE `subject` (
  `sub_id` int unsigned NOT NULL auto_increment,
  `sub_name` varchar(45) NOT NULL,
  PRIMARY KEY  (`sub_id`)
)
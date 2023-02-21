CREATE TABLE `student_info` (
  `s_id` int unsigned NOT NULL auto_increment,
  `s_name` varchar(500) NOT NULL,
  `c_id` int unsigned NOT NULL,
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
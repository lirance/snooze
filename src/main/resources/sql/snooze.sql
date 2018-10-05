
------------------------------------
--user table
DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(100) NOT NULL AUTO_INCREMENT,
  `userName` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `e-mail` varchar(320) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


------------------------------------
--group table
DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
`groupId` int (100) NOT NULL AUTO_INCREMENT,
`groupName` varchar (40) NOT NULL ,
PRIMARY KEY (`groupId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



------------------------------------
--user group table
DROP TABLE IF EXISTS `group_user`;

CREATE TABLE `group_user` (
`groupId` int (100) NOT NULL,
`userId` int(100) NOT NULL ,
`manager` boolean NOT NULL ,
CONSTRAINT PK_GU PRIMARY KEY (`groupId`,`userId`),
FOREIGN KEY fk_gId(groupId) REFERENCES `group` (groupId),
FOREIGN KEY fk_uId(userId) REFERENCES `user` (userId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



------------------------------------
--group total schedule table
DROP TABLE IF EXISTS `schedule_g`;

CREATE TABLE `schedule_g` (
`scheduleId` int (100) NOT NULL AUTO_INCREMENT,
`groupId` int (100) NOT NULL,
-- total schedule description, it's a map, (String, bool) for time and selected/unselected
`scheduleDes` varchar (1024),
`start` boolean DEFAULT 0,
`end` boolean DEFAULT 0,
`minHours` int (10) DEFAULT 0,
PRIMARY KEY (scheduleId),
FOREIGN KEY fk_gId_s(groupId) REFERENCES `group`(groupId)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


------------------------------------
--user personal schedule table
DROP TABLE IF EXISTS `schedule_u`;

CREATE TABLE `schedule_u` (
`scheduleId` int (100) NOT NULL,
`userId` int (100) NOT NULL ,
`scheduleDes` varchar (1024),
`hours` varchar (10) DEFAULT 0,
CONSTRAINT PK_SP PRIMARY KEY (`scheduleId`,`userId`),
FOREIGN KEY fk_sId(scheduleId) REFERENCES `schedule_g`(scheduleId),
FOREIGN KEY fk_uId_s(userId) REFERENCES `user`(userId)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

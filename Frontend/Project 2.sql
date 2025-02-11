-- DROP DATABASE modernsolutions_db;
CREATE DATABASE modernsolutions_db;
USE modernsolutions_db;

CREATE TABLE `modernsolutions_db`.`modern_employees` (
  `employee_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `position` VARCHAR(45) NOT NULL,
  `department` VARCHAR(45) NOT NULL,
  `salary` INT NOT NULL,
  `contact` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`name`)
  FOREIGN KEY (`employee_id`));
  
  CREATE TABLE `modernsolutions_db`.`payroll` (
  `employee_id` INT NOT NULL,
  `hoursWorked` INT NOT NULL,
  `leaveDeductions` INT NOT NULL,
  `finalSalary` INT NOT NULL,
  PRIMARY KEY (`employee_id`));
  
  CREATE TABLE `modernsolutions_db`.`attendance_data` (
  `employee_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`employee_id`));
  
  CREATE TABLE `modernsolutions_db`.`leaverequestid` (
  `leaveRequestId` INT NOT NULL,
  `employee_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  `reason` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`leaveRequestId`));

  
<<<<<<< HEAD
INSERT INTO `moderntechsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
VALUES ('1', 'Sibongile Nkosi', 'Software Engineer', 'Development', '70000', 'sibongile.nkosi@moderntech.com');
INSERT INTO `moderntechsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
=======
  INSERT INTO `modernsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
  VALUES ('1', 'Sibongile Nkosi', 'Software Engineer', 'Development', '70000', 'sibongile.nkosi@moderntech.com');
INSERT INTO `modernsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
>>>>>>> 8806e5df8e09ece8c144cb634426a71d05fe5a98
VALUES ('2', 'Lungile Moyo', 'HR Manager', 'HR', '80000', 'lungile.moyo@moderntech.com');
INSERT INTO `modernsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
VALUES ('3', 'Thabo Molefe', 'Quality Analyst', 'QA', '55000', 'thabo.molefe@moderntech.com');
INSERT INTO `modernsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
VALUES ('4', 'Keshav Naidoo', 'Sales Representative', 'Sales', '60000', 'keshav.naidoo@moderntech.com');
INSERT INTO `modernsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
VALUES ('5', 'Zanele Khumalo', 'Marketing Specialist', 'Marketing', '58000', 'zanele.khumalo@moderntech.com');
INSERT INTO `modernsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
VALUES ('6', 'Sipho Zulu', 'UI/UX Designer', 'Design', '65000', 'sipho.zulu@moderntech.com');
INSERT INTO `modernsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
VALUES ('7', 'Naledi Moeketsi', 'DevOps Engineer', 'IT', '72000', 'naledi.moeketsi@moderntech.com');
INSERT INTO `modernsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
VALUES ('8', 'Farai Gumbo', 'Content Strategist', 'Marketing', '56000', 'farai.gumbo@moderntech.com');
INSERT INTO `modernsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
VALUES ('9', 'Karabo Dlamini', 'Accountant', 'Finance', '62000', 'karabo.dlamini@moderntech.com');
INSERT INTO `modernsolutions_db`.`modern_employees` (`employee_id`, `name`, `position`, `department`, `salary`, `contact`)
VALUES ('10', 'Fatima Patel', 'Customer Support Lead', 'Support', '58000', 'fatima.patel@moderntech.com');

INSERT INTO `modernsolutions_db`.`payroll` (`employee_id`, `hoursWorked`, `leaveDeductions`, `finalSalary`)
VALUES ('1', '160', '8', '69650');
INSERT INTO `modernsolutions_db`.`payroll` (`employee_id`, `hoursWorked`, `leaveDeductions`, `finalSalary`)
VALUES ('2', '150', '10', '79000');
INSERT INTO `modernsolutions_db`.`payroll` (`employee_id`, `hoursWorked`, `leaveDeductions`, `finalSalary`)
VALUES ('3', '170', '4', '544800');
INSERT INTO `modernsolutions_db`.`payroll` (`employee_id`, `hoursWorked`, `leaveDeductions`, `finalSalary`)
VALUES ('4', '165', '6', '59700');
INSERT INTO `modernsolutions_db`.`payroll` (`employee_id`, `hoursWorked`, `leaveDeductions`, `finalSalary`)
VALUES ('5', '158', '5', '57850');
INSERT INTO `modernsolutions_db`.`payroll` (`employee_id`, `hoursWorked`, `leaveDeductions`, `finalSalary`)
VALUES ('6', '168', '2', '64800');
INSERT INTO `modernsolutions_db`.`payroll` (`employee_id`, `hoursWorked`, `leaveDeductions`, `finalSalary`)
VALUES ('7', '175', '3', '71800');
INSERT INTO `modernsolutions_db`.`payroll` (`employee_id`, `hoursWorked`, `leaveDeductions`, `finalSalary`)
VALUES ('8', '160', '0', '56000');
INSERT INTO `modernsolutions_db`.`payroll` (`employee_id`, `hoursWorked`, `leaveDeductions`, `finalSalary`)
VALUES ('9', '155', '5', '61500');
INSERT INTO `modernsolutions_db`.`payroll` (`employee_id`, `hoursWorked`, `leaveDeductions`, `finalSalary`)
VALUES ('10', '162', '4', '57750');

INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('1', '1', 'Sibongile Nkosi', '2024-11-22', 'Sick Leave', 'Approved');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('2', '1', 'Sibongile Nkosi', '2024-12-01', 'Personal', 'Pending');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('3', '2', 'Lungile Moyo', '2024-11-15', 'Family Responsibility', 'Denied');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('4', '2', 'Lungile Moyo', '2024-12-02', 'Vacation', 'Approved');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('5', '3', 'Thabo Molefe', '2024-12-05', 'Medical Appointment', 'Approved');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('6', '3', 'Thabo Molefe', '2024-12-05', 'Personal', 'Pending');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('7', '4', 'Keshav Naidoo', '2024-11-20', 'Bereavement', 'Approved');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('8', '5', 'Zanele Khumalo', '2024-12-01', 'Childcare', 'Pending');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('9', '6', 'Sipho Zulu', '2024-11-18', 'Sick Leave', 'Approved');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('10', '7', 'Naledi Moeketsi', '2024-11-2', 'Vacation', 'Pending');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('11', '8', 'Farai Gumbo', '2024-12-02', 'Medical Appointment', 'Approved');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('12', '9', 'Karabo Dlamini', '2024-11-19', 'Childcare', 'Denied');
INSERT INTO `modernsolutions_db`.`leaverequestid` (`leaveRequestId`,  `employee_id`, `name`, `date`, `reason`, `status`) VALUES ('13', '10', 'Fatima Patel', '2024-12-03', 'Vacation', 'Pending');

SELECT * FROM `modern_employees` LEFT JOIN `payroll` on `modern_employees`.`employee_id` = `payroll`.`employee_id`;
SELECT * FROM `modern_employees`;

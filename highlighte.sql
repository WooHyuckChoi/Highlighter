-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.2.5-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- highlighter 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `highlighter` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `highlighter`;

-- 테이블 highlighter.app_class 구조 내보내기
CREATE TABLE IF NOT EXISTS `app_class` (
  `ext_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `reg_date` date DEFAULT NULL,
  `reg_stus` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ext_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `app_class_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `app_class_ibfk_2` FOREIGN KEY (`ext_id`) REFERENCES `ext_info` (`ext_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.app_class:~7 rows (대략적) 내보내기
/*!40000 ALTER TABLE `app_class` DISABLE KEYS */;
INSERT INTO `app_class` (`ext_id`, `user_id`, `reg_date`, `reg_stus`) VALUES
	('1101002', '5', '2017-06-23', '결제완료'),
	('1102003', 's', '2017-07-23', '결제완료'),
	('1102004', 's', '2017-06-23', '결제완료'),
	('1203001', '2', '2017-06-23', '결제완료'),
	('1203001', '3', '2017-06-23', ' 수락대기'),
	('1203005', 's', '2017-07-27', '결제완료'),
	('1203005', 'ss', '2017-07-27', '결제완료');
/*!40000 ALTER TABLE `app_class` ENABLE KEYS */;

-- 테이블 highlighter.carrer 구조 내보내기
CREATE TABLE IF NOT EXISTS `carrer` (
  `carrer_id` varchar(30) NOT NULL,
  `att_file` varchar(200) DEFAULT NULL,
  `carrer_name` varchar(30) DEFAULT NULL,
  `agen_name` varchar(30) DEFAULT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`carrer_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `carrer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.carrer:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `carrer` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrer` ENABLE KEYS */;

-- 테이블 highlighter.exam_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `exam_info` (
  `user_id` varchar(20) DEFAULT NULL,
  `test_id` varchar(30) DEFAULT NULL,
  `test_state` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.exam_info:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `exam_info` DISABLE KEYS */;
INSERT INTO `exam_info` (`user_id`, `test_id`, `test_state`) VALUES
	('s', 'T12030051', 'clear'),
	('ss', 'T12030051', 'clear'),
	('s', 'T12030052', NULL),
	('ss', 'T12030052', NULL);
/*!40000 ALTER TABLE `exam_info` ENABLE KEYS */;

-- 테이블 highlighter.ext_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `ext_info` (
  `ext_id` varchar(20) NOT NULL,
  `end_rc_date` date DEFAULT NULL,
  `num_class_req` int(11) DEFAULT NULL,
  `str_class_date` date DEFAULT NULL,
  `end_class_date` date DEFAULT NULL,
  `tuit_fees` int(11) DEFAULT NULL,
  `ext_obj` varchar(10) DEFAULT NULL,
  `ext_way` varchar(20) DEFAULT NULL,
  `class_lev` varchar(5) DEFAULT NULL,
  `intro_class` varchar(5000) DEFAULT NULL,
  `class_poss_area` varchar(100) DEFAULT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `best_score` double DEFAULT NULL,
  `open_yn_stus` varchar(5) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`ext_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ext_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.ext_info:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ext_info` DISABLE KEYS */;
INSERT INTO `ext_info` (`ext_id`, `end_rc_date`, `num_class_req`, `str_class_date`, `end_class_date`, `tuit_fees`, `ext_obj`, `ext_way`, `class_lev`, `intro_class`, `class_poss_area`, `user_id`, `best_score`, `open_yn_stus`) VALUES
	('1101002', '2017-06-30', NULL, '2017-06-23', '2017-07-22', 30000, '고등학생', '기초다지기', '하', '지루하고 어렵게만 느껴지는 공부와 싸우고 계신 여러분께 저의 다양한 수능 고득점 팁들과 그간 쌓아온 강의 경험을 바탕으로 꼭! 도움을 드리고 싶습니다.\n\n', '', '4', NULL, 'n'),
	('1102003', '2017-07-30', NULL, '2017-07-23', '2017-08-23', 20000, '중학생', '문제풀이', '상', '재밋다', '', 't', NULL, 'n'),
	('1102004', '2017-07-30', NULL, '2017-06-23', '2017-07-22', 10000, '고등학생', '기초다지기', '상', '재미다아', '', 't', NULL, 'n'),
	('1102006', '2017-08-07', NULL, '2017-08-08', NULL, 111111, '초등학생', '기초다지기', '상', 'b', '', 'b', NULL, 'n'),
	('1203001', '2017-06-30', NULL, '2017-07-01', NULL, 18000, '고등학생', '교과서중심', '상', '영어는 내신과 수능을 다르게 공부해야 합니다. 내신은 꼼꼼히 외우는 것과 내용 및 각 단원 핵심 내용들을 숙지하고 있는 것이 중요하고, 수능은 지문을 최대한 짧은 시간 내에 읽고 핵심 내용을 파악해야 합니다. 이 모든 것의 바탕이 되는 단어 암기를 철저하게 매번 테스트를 통해 검사하고, 반복적인 암기가 되도록 하겠습니다. 그 후 내신은 짐누과 시험 범위 단어를 꼼꼼하게 외우도록, 수능은 반복적인 연습을 하게 하고 지문 유형별 풀이하는 방법을 익히게 하겠습니다.', '', '1', NULL, 'n'),
	('1203005', '2017-08-03', NULL, '2017-07-27', '2017-07-31', 10000, '중학생', '쪽집게풀이', '상', 'aaaa', '', 't', NULL, 'n');
/*!40000 ALTER TABLE `ext_info` ENABLE KEYS */;

-- 테이블 highlighter.ext_post 구조 내보내기
CREATE TABLE IF NOT EXISTS `ext_post` (
  `ext_id` varchar(20) NOT NULL,
  `post_id` varchar(25) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  PRIMARY KEY (`ext_id`,`post_id`),
  KEY `FK_ext_post_user_info` (`user_id`),
  CONSTRAINT `FK_ext_post_ext_info` FOREIGN KEY (`ext_id`) REFERENCES `ext_info` (`ext_id`),
  CONSTRAINT `FK_ext_post_user_info` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.ext_post:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ext_post` DISABLE KEYS */;
INSERT INTO `ext_post` (`ext_id`, `post_id`, `user_id`) VALUES
	('1203005', 'P120300500', 't'),
	('1203005', 'P120300501', 't');
/*!40000 ALTER TABLE `ext_post` ENABLE KEYS */;

-- 테이블 highlighter.ext_timetable 구조 내보내기
CREATE TABLE IF NOT EXISTS `ext_timetable` (
  `user_id` varchar(20) NOT NULL,
  `ext_id` varchar(20) NOT NULL,
  `day_week` varchar(10) NOT NULL,
  `class_str_time` int(11) NOT NULL,
  `class_end_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`ext_id`,`day_week`,`class_str_time`),
  KEY `ext_id` (`ext_id`),
  CONSTRAINT `ext_timetable_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `ext_timetable_ibfk_2` FOREIGN KEY (`ext_id`) REFERENCES `ext_info` (`ext_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.ext_timetable:~22 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ext_timetable` DISABLE KEYS */;
INSERT INTO `ext_timetable` (`user_id`, `ext_id`, `day_week`, `class_str_time`, `class_end_time`) VALUES
	('1', '1203001', '목', 18, 20),
	('1', '1203001', '월', 18, 20),
	('4', '1101002', '금', 16, 23),
	('4', '1101002', '목', 18, 23),
	('4', '1101002', '수', 18, 23),
	('4', '1101002', '월', 18, 23),
	('4', '1101002', '화', 18, 23),
	('5', '1101002', '목', 18, 20),
	('5', '1101002', '월', 18, 20),
	('b', '1102006', '월', 11, 12),
	('b', '1102006', '화', 12, 13),
	('s', '1102003', '목', 9, 11),
	('s', '1102003', '화', 9, 11),
	('s', '1102004', '목', 9, 11),
	('s', '1102004', '화', 9, 11),
	('t', '1102003', '목', 9, 11),
	('t', '1102003', '토', 9, 11),
	('t', '1102003', '화', 9, 11),
	('t', '1102004', '목', 9, 11),
	('t', '1102004', '수', 9, 11),
	('t', '1102004', '화', 9, 11),
	('t', '1203005', '목', 9, 11),
	('t', '1203005', '토', 9, 11),
	('t', '1203005', '화', 9, 11);
/*!40000 ALTER TABLE `ext_timetable` ENABLE KEYS */;

-- 테이블 highlighter.jindan_eval 구조 내보내기
CREATE TABLE IF NOT EXISTS `jindan_eval` (
  `ext_id` varchar(30) NOT NULL,
  `eval_code` varchar(30) NOT NULL,
  `eval_content` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ext_id`,`eval_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.jindan_eval:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `jindan_eval` DISABLE KEYS */;
INSERT INTO `jindan_eval` (`ext_id`, `eval_code`, `eval_content`) VALUES
	('1102003', 'e11020031', 'asdasdasdasd'),
	('1102003', 'e11020032', 'asdasdasdasd'),
	('1102003', 'e11020033', 'asdasdasd'),
	('1102003', 'e11020034', ''),
	('1102004', 'e11020041', 'aabbb'),
	('1102004', 'e11020042', 'cccc');
/*!40000 ALTER TABLE `jindan_eval` ENABLE KEYS */;

-- 테이블 highlighter.jindan_result 구조 내보내기
CREATE TABLE IF NOT EXISTS `jindan_result` (
  `user_id` varchar(20) NOT NULL,
  `jindan_result` varchar(200) DEFAULT NULL,
  `ext_id` varchar(20) DEFAULT NULL,
  `eval_code` varchar(20) NOT NULL,
  PRIMARY KEY (`eval_code`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.jindan_result:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `jindan_result` DISABLE KEYS */;
INSERT INTO `jindan_result` (`user_id`, `jindan_result`, `ext_id`, `eval_code`) VALUES
	('s', '1', '1102003', 'e11020031'),
	('s', '1', '1102003', 'e11020032'),
	('s', '1', '1102003', 'e11020033'),
	('s', NULL, '1102003', 'e11020034'),
	('s', '2', '1102004', 'e11020041'),
	('s', '3', '1102004', 'e11020042');
/*!40000 ALTER TABLE `jindan_result` ENABLE KEYS */;

-- 테이블 highlighter.msg_rec 구조 내보내기
CREATE TABLE IF NOT EXISTS `msg_rec` (
  `user_id` varchar(20) NOT NULL,
  `sent_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `msg_cont` varchar(200) DEFAULT NULL,
  `addr_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`sent_time`),
  CONSTRAINT `msg_rec_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.msg_rec:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `msg_rec` DISABLE KEYS */;
/*!40000 ALTER TABLE `msg_rec` ENABLE KEYS */;

-- 테이블 highlighter.posting_list 구조 내보내기
CREATE TABLE IF NOT EXISTS `posting_list` (
  `post_id` varchar(25) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_cont` varchar(200) NOT NULL,
  `att_file` varchar(300) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `ext_id` varchar(20) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `FK_posting_list_ext_post` (`ext_id`),
  KEY `FK_posting_list_post_form` (`post_code`),
  CONSTRAINT `FK_posting_list_ext_post` FOREIGN KEY (`ext_id`) REFERENCES `ext_post` (`ext_id`),
  CONSTRAINT `FK_posting_list_post_form` FOREIGN KEY (`post_code`) REFERENCES `post_form` (`post_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.posting_list:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `posting_list` DISABLE KEYS */;
INSERT INTO `posting_list` (`post_id`, `post_title`, `post_cont`, `att_file`, `post_code`, `ext_id`) VALUES
	('P120300500', 'webm', '1', 'D:\\video\\20170731\\play2.webm', '1', '1203005'),
	('P120300501', 'mp4', '2', 'D:\\video\\20170731\\play3.mp4', '1', '1203005');
/*!40000 ALTER TABLE `posting_list` ENABLE KEYS */;

-- 테이블 highlighter.post_form 구조 내보내기
CREATE TABLE IF NOT EXISTS `post_form` (
  `post_code` varchar(5) NOT NULL,
  `post_name` varchar(15) NOT NULL,
  PRIMARY KEY (`post_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.post_form:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `post_form` DISABLE KEYS */;
INSERT INTO `post_form` (`post_code`, `post_name`) VALUES
	('1', '다시보기');
/*!40000 ALTER TABLE `post_form` ENABLE KEYS */;

-- 테이블 highlighter.prob_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `prob_info` (
  `prob_id` varchar(30) NOT NULL,
  `prob_answ` varchar(30) DEFAULT NULL,
  `test_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`prob_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.prob_info:~20 rows (대략적) 내보내기
/*!40000 ALTER TABLE `prob_info` DISABLE KEYS */;
INSERT INTO `prob_info` (`prob_id`, `prob_answ`, `test_id`) VALUES
	('T1203005101', '1', 'T12030051'),
	('T1203005102', '1', 'T12030051'),
	('T1203005103', '1', 'T12030051'),
	('T1203005104', '1', 'T12030051'),
	('T1203005105', '1', 'T12030051'),
	('T1203005106', '1', 'T12030051'),
	('T1203005107', '1', 'T12030051'),
	('T1203005108', '1', 'T12030051'),
	('T1203005109', '1', 'T12030051'),
	('T1203005110', '1', 'T12030051'),
	('T1203005111', '1', 'T12030051'),
	('T1203005112', '1', 'T12030051'),
	('T1203005113', '1', 'T12030051'),
	('T1203005114', '1', 'T12030051'),
	('T1203005115', '1', 'T12030051'),
	('T1203005116', '1', 'T12030051'),
	('T1203005117', '1', 'T12030051'),
	('T1203005118', '1', 'T12030051'),
	('T1203005119', '1', 'T12030051'),
	('T1203005120', '1', 'T12030051'),
	('T1203005201', '1', 'T12030052'),
	('T1203005202', '1', 'T12030052'),
	('T1203005203', '1', 'T12030052'),
	('T1203005204', '1', 'T12030052'),
	('T1203005205', '1', 'T12030052'),
	('T1203005206', '1', 'T12030052'),
	('T1203005207', '1', 'T12030052'),
	('T1203005208', '1', 'T12030052'),
	('T1203005209', '1', 'T12030052'),
	('T1203005210', '1', 'T12030052'),
	('T1203005211', '1', 'T12030052'),
	('T1203005212', '1', 'T12030052'),
	('T1203005213', '1', 'T12030052'),
	('T1203005214', '1', 'T12030052'),
	('T1203005215', '1', 'T12030052'),
	('T1203005216', '1', 'T12030052'),
	('T1203005217', '1', 'T12030052'),
	('T1203005218', '1', 'T12030052'),
	('T1203005219', '1', 'T12030052'),
	('T1203005220', '1', 'T12030052');
/*!40000 ALTER TABLE `prob_info` ENABLE KEYS */;

-- 테이블 highlighter.stu_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `stu_info` (
  `ext_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `learn_att` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ext_id`,`user_id`,`post_date`),
  KEY `FK_stu_info_user_info` (`user_id`),
  CONSTRAINT `FK_stu_info_ext_info` FOREIGN KEY (`ext_id`) REFERENCES `ext_info` (`ext_id`),
  CONSTRAINT `FK_stu_info_user_info` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.stu_info:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `stu_info` DISABLE KEYS */;
INSERT INTO `stu_info` (`ext_id`, `user_id`, `post_date`, `learn_att`) VALUES
	('1102003', 's', '2017-07-19', 'ㅁ'),
	('1203005', 's', '2017-07-28', '키득'),
	('1203005', 'ss', '2017-07-28', '키득키득');
/*!40000 ALTER TABLE `stu_info` ENABLE KEYS */;

-- 테이블 highlighter.test_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `test_info` (
  `test_id` varchar(30) NOT NULL,
  `ext_id` varchar(30) DEFAULT NULL,
  `test_file` varchar(300) DEFAULT NULL,
  `test_time` int(11) DEFAULT NULL,
  `test_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.test_info:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `test_info` DISABLE KEYS */;
INSERT INTO `test_info` (`test_id`, `ext_id`, `test_file`, `test_time`, `test_date`) VALUES
	('T12030051', '1203005', 'Tulips.jpg', 10, '2017-07-28'),
	('T12030052', '1203005', 'Koala.jpg', 60, '2017-08-01');
/*!40000 ALTER TABLE `test_info` ENABLE KEYS */;

-- 테이블 highlighter.test_result 구조 내보내기
CREATE TABLE IF NOT EXISTS `test_result` (
  `prob_id` varchar(30) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `test_id` varchar(30) DEFAULT NULL,
  `date_gaze` date DEFAULT NULL,
  `stu_result` int(11) DEFAULT NULL,
  `w_answ_note` varchar(200) DEFAULT NULL,
  `w_answ_note_cont` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`prob_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.test_result:~40 rows (대략적) 내보내기
/*!40000 ALTER TABLE `test_result` DISABLE KEYS */;
INSERT INTO `test_result` (`prob_id`, `user_id`, `test_id`, `date_gaze`, `stu_result`, `w_answ_note`, `w_answ_note_cont`) VALUES
	('T1203005101', 's', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005101', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005102', 's', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005102', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005103', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005103', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005104', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005104', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005105', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005105', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005106', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005106', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005107', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005107', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005108', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005108', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005109', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005109', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005110', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005110', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005111', 's', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005111', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005112', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005112', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005113', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005113', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005114', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005114', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005115', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005115', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005116', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005116', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005117', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005117', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005118', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005118', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005119', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005119', 'ss', 'T12030051', '2017-07-28', 1, NULL, NULL),
	('T1203005120', 's', 'T12030051', '2017-07-28', 2, NULL, NULL),
	('T1203005120', 'ss', 'T12030051', '2017-07-28', 3, NULL, NULL);
/*!40000 ALTER TABLE `test_result` ENABLE KEYS */;

-- 테이블 highlighter.user_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` varchar(20) NOT NULL,
  `user_pw` varchar(20) DEFAULT NULL,
  `user_name` varchar(10) DEFAULT NULL,
  `user_email` varchar(40) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `prof_photo` varchar(100) DEFAULT NULL,
  `ext_exp` varchar(15) DEFAULT NULL,
  `bank` varchar(10) DEFAULT NULL,
  `bank_ac_num` varchar(30) DEFAULT NULL,
  `college` varchar(20) DEFAULT NULL,
  `college_dept` varchar(20) DEFAULT NULL,
  `par_id` varchar(20) DEFAULT NULL,
  `user_grade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 highlighter.user_info:~9 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` (`user_id`, `user_pw`, `user_name`, `user_email`, `gender`, `birth_date`, `address`, `phone`, `prof_photo`, `ext_exp`, `bank`, `bank_ac_num`, `college`, `college_dept`, `par_id`, `user_grade`) VALUES
	('1', '1', '송종하', 'songjongha@naver.com', 'male', '1994-05-10', '대구광역시 중구 국채보상로 143길 74 302호', '01041322537', 'f447d9eb-48c2-4d78-aa00-cf595f300a12_송종하.png', '1,2', '대구은행', '110-1111-1111-1', '영진전문대', '컴퓨터정보계열', '', 'teacher'),
	('2', '2', '김태훈', 'kimtaehoon@naver.com', 'male', '1993-05-22', '대구광역시 북구 산격 3동 1307-46번지', '010-5370-3186', '29da136f-f27c-426e-b768-2a9923765096_김태훈.jpg', NULL, NULL, NULL, NULL, NULL, '', 'student'),
	('3', '3', '최우혁', 'chaewoohyuck@naver.com', 'male', '1993-03-27', '대구 동구 동촌로 16길 22 오성파크 101동 901호', '010-9580-7277', '3009fff4-2ef2-4033-813b-74c5c0a82805_최우혁.jpg', NULL, NULL, NULL, NULL, NULL, '', 'student'),
	('4', '4', '김영운', 'kimyoungwoon@naver.com', 'male', '1993-04-16', '대구광영ㄱ시 달서구 도원동 사계절 아파트 310동 906호', '010-3641-6809', '34081ddf-a6ae-40ad-a59f-4418c569f35f_김영운.jpg', '3,0', '농협', '999999-9999-9', '서울대학교', '국어국문학과', NULL, 'teacher'),
	('5', '5', '권규희', 'kwongyuhee@naver.com', 'female', '1996-05-15', '경북 경산시 사동 부영 6차 613-501', '010-4084-1660', 'e2f58104-4878-4604-9ba6-a04960b4a98c_권규희.jpg', NULL, NULL, NULL, NULL, NULL, '', 'student'),
	('b', 'b', 'b', 'b@b', 'male', '2017-01-01', 'b', 'b', 'D:\\video\\20170731\\Chrysanthemum.jpg', '1,1', 'b', 'b', 'b', 'b', NULL, 'teacher'),
	('dㅇ', 'dd', 'dd', 'a@naver.com', 'male', '2017-06-09', 'dd', 'dd', 'be64d3ea-37ae-494b-8371-a9e56b7e0a19_', '1,2', 'dd', 'dd', 'dd', 'dd', NULL, 'teacher'),
	('s', 's', '학생', 'student@naver.com', 'male', '2010-10-07', '대구 북구', '01012345678', 'Penguins.jpg', NULL, NULL, NULL, NULL, NULL, '', 'student'),
	('ss', 'ss', '학생2', 'dkfds@naver.com', 'female', '1996-01-01', '대구 중구', '01012345678', 'resources/upload\\20170727\\Jellyfish.jpg', NULL, NULL, NULL, NULL, NULL, '', 'student'),
	('t', 't', '선생님', 'teacher@naver.com', 'male', '1993-03-27', '대구 동구', '01095807277', 'Lighthouse.jpg', '2,1', '우리은행', '1002045114652', '경북대학교', '영어영문학과', NULL, 'teacher');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

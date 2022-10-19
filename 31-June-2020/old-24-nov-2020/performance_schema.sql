-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2020 at 12:25 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `performance_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `USER` char(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL,
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cond_instances`
--

CREATE TABLE `cond_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_stages_current`
--

CREATE TABLE `events_stages_current` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `END_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_stages_history`
--

CREATE TABLE `events_stages_history` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `END_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_stages_history_long`
--

CREATE TABLE `events_stages_history_long` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `END_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_stages_summary_by_account_by_event_name`
--

CREATE TABLE `events_stages_summary_by_account_by_event_name` (
  `USER` char(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_stages_summary_by_host_by_event_name`
--

CREATE TABLE `events_stages_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_stages_summary_by_thread_by_event_name`
--

CREATE TABLE `events_stages_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_stages_summary_by_user_by_event_name`
--

CREATE TABLE `events_stages_summary_by_user_by_event_name` (
  `USER` char(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_stages_summary_global_by_event_name`
--

CREATE TABLE `events_stages_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_statements_current`
--

CREATE TABLE `events_statements_current` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `END_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `LOCK_TIME` bigint(20) UNSIGNED NOT NULL,
  `SQL_TEXT` longtext DEFAULT NULL,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext DEFAULT NULL,
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED DEFAULT NULL,
  `MYSQL_ERRNO` int(11) DEFAULT NULL,
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL,
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL,
  `ERRORS` bigint(20) UNSIGNED NOT NULL,
  `WARNINGS` bigint(20) UNSIGNED NOT NULL,
  `ROWS_AFFECTED` bigint(20) UNSIGNED NOT NULL,
  `ROWS_SENT` bigint(20) UNSIGNED NOT NULL,
  `ROWS_EXAMINED` bigint(20) UNSIGNED NOT NULL,
  `CREATED_TMP_DISK_TABLES` bigint(20) UNSIGNED NOT NULL,
  `CREATED_TMP_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SELECT_FULL_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SELECT_FULL_RANGE_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SELECT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SELECT_RANGE_CHECK` bigint(20) UNSIGNED NOT NULL,
  `SELECT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SORT_MERGE_PASSES` bigint(20) UNSIGNED NOT NULL,
  `SORT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SORT_ROWS` bigint(20) UNSIGNED NOT NULL,
  `SORT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `NO_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `NO_GOOD_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_statements_history`
--

CREATE TABLE `events_statements_history` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `END_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `LOCK_TIME` bigint(20) UNSIGNED NOT NULL,
  `SQL_TEXT` longtext DEFAULT NULL,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext DEFAULT NULL,
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED DEFAULT NULL,
  `MYSQL_ERRNO` int(11) DEFAULT NULL,
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL,
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL,
  `ERRORS` bigint(20) UNSIGNED NOT NULL,
  `WARNINGS` bigint(20) UNSIGNED NOT NULL,
  `ROWS_AFFECTED` bigint(20) UNSIGNED NOT NULL,
  `ROWS_SENT` bigint(20) UNSIGNED NOT NULL,
  `ROWS_EXAMINED` bigint(20) UNSIGNED NOT NULL,
  `CREATED_TMP_DISK_TABLES` bigint(20) UNSIGNED NOT NULL,
  `CREATED_TMP_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SELECT_FULL_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SELECT_FULL_RANGE_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SELECT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SELECT_RANGE_CHECK` bigint(20) UNSIGNED NOT NULL,
  `SELECT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SORT_MERGE_PASSES` bigint(20) UNSIGNED NOT NULL,
  `SORT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SORT_ROWS` bigint(20) UNSIGNED NOT NULL,
  `SORT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `NO_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `NO_GOOD_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_statements_history_long`
--

CREATE TABLE `events_statements_history_long` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `END_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `LOCK_TIME` bigint(20) UNSIGNED NOT NULL,
  `SQL_TEXT` longtext DEFAULT NULL,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext DEFAULT NULL,
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED DEFAULT NULL,
  `MYSQL_ERRNO` int(11) DEFAULT NULL,
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL,
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL,
  `ERRORS` bigint(20) UNSIGNED NOT NULL,
  `WARNINGS` bigint(20) UNSIGNED NOT NULL,
  `ROWS_AFFECTED` bigint(20) UNSIGNED NOT NULL,
  `ROWS_SENT` bigint(20) UNSIGNED NOT NULL,
  `ROWS_EXAMINED` bigint(20) UNSIGNED NOT NULL,
  `CREATED_TMP_DISK_TABLES` bigint(20) UNSIGNED NOT NULL,
  `CREATED_TMP_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SELECT_FULL_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SELECT_FULL_RANGE_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SELECT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SELECT_RANGE_CHECK` bigint(20) UNSIGNED NOT NULL,
  `SELECT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SORT_MERGE_PASSES` bigint(20) UNSIGNED NOT NULL,
  `SORT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SORT_ROWS` bigint(20) UNSIGNED NOT NULL,
  `SORT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `NO_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `NO_GOOD_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_statements_summary_by_account_by_event_name`
--

CREATE TABLE `events_statements_summary_by_account_by_event_name` (
  `USER` char(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `SUM_LOCK_TIME` bigint(20) UNSIGNED NOT NULL,
  `SUM_ERRORS` bigint(20) UNSIGNED NOT NULL,
  `SUM_WARNINGS` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_SENT` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_ROWS` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_statements_summary_by_digest`
--

CREATE TABLE `events_statements_summary_by_digest` (
  `SCHEMA_NAME` varchar(64) DEFAULT NULL,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext DEFAULT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `SUM_LOCK_TIME` bigint(20) UNSIGNED NOT NULL,
  `SUM_ERRORS` bigint(20) UNSIGNED NOT NULL,
  `SUM_WARNINGS` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_SENT` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_ROWS` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `FIRST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_statements_summary_by_host_by_event_name`
--

CREATE TABLE `events_statements_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `SUM_LOCK_TIME` bigint(20) UNSIGNED NOT NULL,
  `SUM_ERRORS` bigint(20) UNSIGNED NOT NULL,
  `SUM_WARNINGS` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_SENT` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_ROWS` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_statements_summary_by_thread_by_event_name`
--

CREATE TABLE `events_statements_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `SUM_LOCK_TIME` bigint(20) UNSIGNED NOT NULL,
  `SUM_ERRORS` bigint(20) UNSIGNED NOT NULL,
  `SUM_WARNINGS` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_SENT` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_ROWS` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_statements_summary_by_user_by_event_name`
--

CREATE TABLE `events_statements_summary_by_user_by_event_name` (
  `USER` char(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `SUM_LOCK_TIME` bigint(20) UNSIGNED NOT NULL,
  `SUM_ERRORS` bigint(20) UNSIGNED NOT NULL,
  `SUM_WARNINGS` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_SENT` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_ROWS` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_statements_summary_global_by_event_name`
--

CREATE TABLE `events_statements_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `SUM_LOCK_TIME` bigint(20) UNSIGNED NOT NULL,
  `SUM_ERRORS` bigint(20) UNSIGNED NOT NULL,
  `SUM_WARNINGS` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_SENT` bigint(20) UNSIGNED NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) UNSIGNED NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_RANGE` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_ROWS` bigint(20) UNSIGNED NOT NULL,
  `SUM_SORT_SCAN` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) UNSIGNED NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_current`
--

CREATE TABLE `events_waits_current` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `END_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `SPINS` int(10) UNSIGNED DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `OPERATION` varchar(32) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL,
  `FLAGS` int(10) UNSIGNED DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_history`
--

CREATE TABLE `events_waits_history` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `END_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `SPINS` int(10) UNSIGNED DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `OPERATION` varchar(32) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL,
  `FLAGS` int(10) UNSIGNED DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_history_long`
--

CREATE TABLE `events_waits_history_long` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `END_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED DEFAULT NULL,
  `SPINS` int(10) UNSIGNED DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `OPERATION` varchar(32) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL,
  `FLAGS` int(10) UNSIGNED DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_summary_by_account_by_event_name`
--

CREATE TABLE `events_waits_summary_by_account_by_event_name` (
  `USER` char(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_summary_by_host_by_event_name`
--

CREATE TABLE `events_waits_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_summary_by_instance`
--

CREATE TABLE `events_waits_summary_by_instance` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_summary_by_thread_by_event_name`
--

CREATE TABLE `events_waits_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_summary_by_user_by_event_name`
--

CREATE TABLE `events_waits_summary_by_user_by_event_name` (
  `USER` char(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_waits_summary_global_by_event_name`
--

CREATE TABLE `events_waits_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `file_instances`
--

CREATE TABLE `file_instances` (
  `FILE_NAME` varchar(512) NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `OPEN_COUNT` int(10) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `file_summary_by_event_name`
--

CREATE TABLE `file_summary_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) NOT NULL,
  `COUNT_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) NOT NULL,
  `COUNT_MISC` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_MISC` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `file_summary_by_instance`
--

CREATE TABLE `file_summary_by_instance` (
  `FILE_NAME` varchar(512) NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) NOT NULL,
  `COUNT_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) NOT NULL,
  `COUNT_MISC` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_MISC` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hosts`
--

CREATE TABLE `hosts` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL,
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `host_cache`
--

CREATE TABLE `host_cache` (
  `IP` varchar(64) NOT NULL,
  `HOST` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST_VALIDATED` enum('YES','NO') NOT NULL,
  `SUM_CONNECT_ERRORS` bigint(20) NOT NULL,
  `COUNT_HOST_BLOCKED_ERRORS` bigint(20) NOT NULL,
  `COUNT_NAMEINFO_TRANSIENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_NAMEINFO_PERMANENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_FORMAT_ERRORS` bigint(20) NOT NULL,
  `COUNT_ADDRINFO_TRANSIENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_ADDRINFO_PERMANENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_FCRDNS_ERRORS` bigint(20) NOT NULL,
  `COUNT_HOST_ACL_ERRORS` bigint(20) NOT NULL,
  `COUNT_NO_AUTH_PLUGIN_ERRORS` bigint(20) NOT NULL,
  `COUNT_AUTH_PLUGIN_ERRORS` bigint(20) NOT NULL,
  `COUNT_HANDSHAKE_ERRORS` bigint(20) NOT NULL,
  `COUNT_PROXY_USER_ERRORS` bigint(20) NOT NULL,
  `COUNT_PROXY_USER_ACL_ERRORS` bigint(20) NOT NULL,
  `COUNT_AUTHENTICATION_ERRORS` bigint(20) NOT NULL,
  `COUNT_SSL_ERRORS` bigint(20) NOT NULL,
  `COUNT_MAX_USER_CONNECTIONS_ERRORS` bigint(20) NOT NULL,
  `COUNT_MAX_USER_CONNECTIONS_PER_HOUR_ERRORS` bigint(20) NOT NULL,
  `COUNT_DEFAULT_DATABASE_ERRORS` bigint(20) NOT NULL,
  `COUNT_INIT_CONNECT_ERRORS` bigint(20) NOT NULL,
  `COUNT_LOCAL_ERRORS` bigint(20) NOT NULL,
  `COUNT_UNKNOWN_ERRORS` bigint(20) NOT NULL,
  `FIRST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FIRST_ERROR_SEEN` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ERROR_SEEN` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mutex_instances`
--

CREATE TABLE `mutex_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED NOT NULL,
  `LOCKED_BY_THREAD_ID` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `objects_summary_global_by_type`
--

CREATE TABLE `objects_summary_global_by_type` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `performance_timers`
--

CREATE TABLE `performance_timers` (
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL,
  `TIMER_FREQUENCY` bigint(20) DEFAULT NULL,
  `TIMER_RESOLUTION` bigint(20) DEFAULT NULL,
  `TIMER_OVERHEAD` bigint(20) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rwlock_instances`
--

CREATE TABLE `rwlock_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED NOT NULL,
  `WRITE_LOCKED_BY_THREAD_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `READ_LOCKED_BY_COUNT` int(10) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `session_account_connect_attrs`
--

CREATE TABLE `session_account_connect_attrs` (
  `PROCESSLIST_ID` int(11) NOT NULL,
  `ATTR_NAME` varchar(32) COLLATE utf8_bin NOT NULL,
  `ATTR_VALUE` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `ORDINAL_POSITION` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `session_connect_attrs`
--

CREATE TABLE `session_connect_attrs` (
  `PROCESSLIST_ID` int(11) NOT NULL,
  `ATTR_NAME` varchar(32) COLLATE utf8_bin NOT NULL,
  `ATTR_VALUE` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `ORDINAL_POSITION` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `setup_actors`
--

CREATE TABLE `setup_actors` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%',
  `USER` char(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%',
  `ROLE` char(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setup_consumers`
--

CREATE TABLE `setup_consumers` (
  `NAME` varchar(64) NOT NULL,
  `ENABLED` enum('YES','NO') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setup_instruments`
--

CREATE TABLE `setup_instruments` (
  `NAME` varchar(128) NOT NULL,
  `ENABLED` enum('YES','NO') NOT NULL,
  `TIMED` enum('YES','NO') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setup_objects`
--

CREATE TABLE `setup_objects` (
  `OBJECT_TYPE` enum('TABLE') NOT NULL DEFAULT 'TABLE',
  `OBJECT_SCHEMA` varchar(64) DEFAULT '%',
  `OBJECT_NAME` varchar(64) NOT NULL DEFAULT '%',
  `ENABLED` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `TIMED` enum('YES','NO') NOT NULL DEFAULT 'YES'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setup_timers`
--

CREATE TABLE `setup_timers` (
  `NAME` varchar(64) NOT NULL,
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `socket_instances`
--

CREATE TABLE `socket_instances` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED NOT NULL,
  `THREAD_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `SOCKET_ID` int(11) NOT NULL,
  `IP` varchar(64) NOT NULL,
  `PORT` int(11) NOT NULL,
  `STATE` enum('IDLE','ACTIVE') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `socket_summary_by_event_name`
--

CREATE TABLE `socket_summary_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) UNSIGNED NOT NULL,
  `COUNT_MISC` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_MISC` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `socket_summary_by_instance`
--

CREATE TABLE `socket_summary_by_instance` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) UNSIGNED NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) UNSIGNED NOT NULL,
  `COUNT_MISC` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_MISC` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_MISC` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_io_waits_summary_by_index_usage`
--

CREATE TABLE `table_io_waits_summary_by_index_usage` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `COUNT_FETCH` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_FETCH` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_FETCH` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_FETCH` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_FETCH` bigint(20) UNSIGNED NOT NULL,
  `COUNT_INSERT` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_INSERT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_INSERT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_INSERT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_INSERT` bigint(20) UNSIGNED NOT NULL,
  `COUNT_UPDATE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_UPDATE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_UPDATE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_UPDATE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_UPDATE` bigint(20) UNSIGNED NOT NULL,
  `COUNT_DELETE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_DELETE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_DELETE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_DELETE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_DELETE` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_io_waits_summary_by_table`
--

CREATE TABLE `table_io_waits_summary_by_table` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `COUNT_FETCH` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_FETCH` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_FETCH` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_FETCH` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_FETCH` bigint(20) UNSIGNED NOT NULL,
  `COUNT_INSERT` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_INSERT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_INSERT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_INSERT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_INSERT` bigint(20) UNSIGNED NOT NULL,
  `COUNT_UPDATE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_UPDATE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_UPDATE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_UPDATE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_UPDATE` bigint(20) UNSIGNED NOT NULL,
  `COUNT_DELETE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_DELETE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_DELETE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_DELETE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_DELETE` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_lock_waits_summary_by_table`
--

CREATE TABLE `table_lock_waits_summary_by_table` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ_NORMAL` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ_NORMAL` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ_NORMAL` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ_NORMAL` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ_NORMAL` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ_WITH_SHARED_LOCKS` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ_HIGH_PRIORITY` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ_HIGH_PRIORITY` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ_HIGH_PRIORITY` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ_HIGH_PRIORITY` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ_HIGH_PRIORITY` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ_NO_INSERT` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ_NO_INSERT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ_NO_INSERT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ_NO_INSERT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ_NO_INSERT` bigint(20) UNSIGNED NOT NULL,
  `COUNT_READ_EXTERNAL` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_READ_EXTERNAL` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_READ_EXTERNAL` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_READ_EXTERNAL` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_READ_EXTERNAL` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE_ALLOW_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE_ALLOW_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE_ALLOW_WRITE` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE_ALLOW_WRITE` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE_ALLOW_WRITE` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE_CONCURRENT_INSERT` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE_DELAYED` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE_DELAYED` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE_DELAYED` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE_DELAYED` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE_DELAYED` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE_LOW_PRIORITY` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE_LOW_PRIORITY` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE_LOW_PRIORITY` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE_LOW_PRIORITY` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE_LOW_PRIORITY` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE_NORMAL` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE_NORMAL` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE_NORMAL` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE_NORMAL` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE_NORMAL` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE_EXTERNAL` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WRITE_EXTERNAL` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WRITE_EXTERNAL` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WRITE_EXTERNAL` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WRITE_EXTERNAL` bigint(20) UNSIGNED NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `THREAD_ID` bigint(20) UNSIGNED NOT NULL,
  `NAME` varchar(128) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `PROCESSLIST_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `PROCESSLIST_USER` varchar(16) DEFAULT NULL,
  `PROCESSLIST_HOST` varchar(60) DEFAULT NULL,
  `PROCESSLIST_DB` varchar(64) DEFAULT NULL,
  `PROCESSLIST_COMMAND` varchar(16) DEFAULT NULL,
  `PROCESSLIST_TIME` bigint(20) DEFAULT NULL,
  `PROCESSLIST_STATE` varchar(64) DEFAULT NULL,
  `PROCESSLIST_INFO` longtext DEFAULT NULL,
  `PARENT_THREAD_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `ROLE` varchar(64) DEFAULT NULL,
  `INSTRUMENTED` enum('YES','NO') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER` char(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL,
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

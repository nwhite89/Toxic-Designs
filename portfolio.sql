-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 04, 2012 at 07:11 PM
-- Server version: 5.5.24
-- PHP Version: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `td_about_content`
--

DROP TABLE IF EXISTS `td_about_content`;
CREATE TABLE IF NOT EXISTS `td_about_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `td_about_content`
--

INSERT INTO `td_about_content` (`id`, `class`, `heading`, `content`, `date`) VALUES
(1, 'bio', 'bio', '<p>\r\n            I recently graduated with a First Class (Hons) in Business Information Systems whilst attending the University of Portsmouth. Since which I have returned working at a \r\n            digital agency called Content Formula LTD, that I completed a sandwich course during my third year of study.\r\n            <br /><br />\r\n            My current job roles is Website Developer which I work mainly with PHP, SharePoint 2007 and 2010. \r\n            Using different skills whether it is jQuery, CSS3, HTML5 or XSLT to meet the clients desired end result. \r\n            Other than development I also work largely with Project and Account Managers to provide written requirements for other developers to build from as well as working on IA \r\n            and checking wireframes to ensure what is proposed is possible.\r\n        </p>', '2012-11-28 15:28:40'),
(2, 'skills', 'coding skills', '<ul class="codeSkills">\r\n            <li><span class="labelTick">&nbsp;</span>HTML5</li>\r\n            <li><span class="labelTick">&nbsp;</span>CSS3</li>\r\n            <li><span class="labelTick">&nbsp;</span>Node.js</li>\r\n            <li><span class="labelTick">&nbsp;</span>PHP</li>\r\n            <li><span class="labelTick">&nbsp;</span>Codeigniter</li>\r\n            <li><span class="labelTick">&nbsp;</span>JavaScript</li>\r\n            <li><span class="labelTick">&nbsp;</span>jQuery</li>\r\n            <li><span class="labelTick">&nbsp;</span>MySQL</li>\r\n            <li><span class="labelTick">&nbsp;</span>SharePoint</li>\r\n            <li><span class="labelTick">&nbsp;</span>XML</li>\r\n            <li><span class="labelTick">&nbsp;</span>XSLT</li>\r\n        </ul>', '2012-11-30 09:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `td_about_social`
--

DROP TABLE IF EXISTS `td_about_social`;
CREATE TABLE IF NOT EXISTS `td_about_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `td_about_social`
--

INSERT INTO `td_about_social` (`id`, `label`, `username`, `url`) VALUES
(1, 'twitter', '@ToxicD89', 'http://twitter.com/toxicd89'),
(2, 'Github', 'nwhite89', 'https://github.com/nwhite89'),
(3, 'linkedin', 'Nick White', 'http://www.linkedin.com/profile/view?id=156575662'),
(4, 'instagram', 'nwhite89', 'http://instagram.com/nwhite89');

-- --------------------------------------------------------

--
-- Table structure for table `td_development`
--

DROP TABLE IF EXISTS `td_development`;
CREATE TABLE IF NOT EXISTS `td_development` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `summary` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `td_development`
--

INSERT INTO `td_development` (`id`, `title`, `thumbnail`, `image`, `date`, `summary`, `url`) VALUES
(1, 'Mobile London Nodejs', '../img/projects/thumbnails/mobilelondon.png', '../img/projects/mobilelondon.png', '2012-12-02 11:08:06', 'This project uses Node.js, Express, HTML5, jQuery and jQuery mobile to provide users with a mobile web application to travel around all of London via Public transport.', '');

-- --------------------------------------------------------

--
-- Table structure for table `td_instagram_cache`
--

DROP TABLE IF EXISTS `td_instagram_cache`;
CREATE TABLE IF NOT EXISTS `td_instagram_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `td_instagram_cache`
--

INSERT INTO `td_instagram_cache` (`id`, `thumbnail_url`) VALUES
(1, 'http://distilleryimage4.s3.amazonaws.com/706610cc393411e2b93522000a1f96b2_5.jpg'),
(2, 'http://distilleryimage10.s3.amazonaws.com/b1f6854c38d211e2bd9022000a1fa522_5.jpg'),
(3, 'http://distilleryimage3.s3.amazonaws.com/15984a22372011e2a07422000a1fab83_5.jpg'),
(4, 'http://distilleryimage3.s3.amazonaws.com/03f28e5c371d11e28a5c22000a1f8acf_5.jpg'),
(5, 'http://distilleryimage2.s3.amazonaws.com/dea0cc16348011e2952822000a1f9695_5.jpg'),
(6, 'http://distilleryimage5.s3.amazonaws.com/80997d8c2f5511e2b52122000a1fa4b5_5.jpg'),
(7, 'http://distilleryimage2.s3.amazonaws.com/13085a402f5511e295e31231380ff907_5.jpg'),
(8, 'http://distilleryimage2.s3.amazonaws.com/df4f326a2b8411e29b6422000a1c00c6_5.jpg'),
(9, 'http://distilleryimage9.s3.amazonaws.com/a5fc02d62b8411e288f622000a1fbc72_5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `td_tweet_cache`
--

DROP TABLE IF EXISTS `td_tweet_cache`;
CREATE TABLE IF NOT EXISTS `td_tweet_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashtag` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `td_tweet_cache`
--

INSERT INTO `td_tweet_cache` (`id`, `hashtag`, `date`, `text`, `user`) VALUES
(1, 'jquery', '01/12/2012', 'RT @AaronNicholsonn: Nice bit of light reading #dreamweaver #html5 #css #jquery http://t.co/8EfbkjGy', 'nativeblogger'),
(2, 'jquery', '01/12/2012', 'How to Create an Upload Form using jQuery, CSS3, HTML5 and PHP [Tutorial] http://t.co/ifqD7Uy7 #coding #css3 #html5 #jquery via @designmodo', 'hoppedupdesigns'),
(3, 'jquery', '01/12/2012', '#jQuery-Prototype Android App by jmshiery: Our company needs an app to be created to allow users to upload video... http://t.co/a1zFWCYI', 'ulohjobs'),
(4, 'jquery', '01/12/2012', 'Nice bit of light reading #dreamweaver #html5 #css #jquery http://t.co/8EfbkjGy', 'AaronNicholsonn'),
(5, 'jquery', '01/12/2012', '#jQuery-Prototype Android App by jmshiery: Our company needs an app to be created to allow users to... http://t.co/UWCFLPmH #Programming', 'reconnect_Job'),
(6, 'jquery', '01/12/2012', 'I got a lot of positive feedback and was pleased to see people happy finding out what''s it all about and how #jQuery makes things easy', 'aleksander_1980'),
(7, 'jquery', '01/12/2012', 'today I spoke about #JavaScript loops, conditions, iterating objects and array, as well as #jQuery selectors, events and callbacks...', 'aleksander_1980'),
(8, 'jquery', '01/12/2012', 'Well deserved drink after conducting another 8hrs of #JavaScript &amp; #jQuery basics training filled with exercises done by participants...', 'aleksander_1980'),
(9, 'jquery', '01/12/2012', '#jQuery-/-Prototype Wordpress site update.  $250 USD http://t.co/hsKWCTA0 Follow Me ReTweet #Jobs #TweetMyJobs #Job', 'JobFreelancer'),
(10, 'jquery', '01/12/2012', 'Well jquery mobile is fun :-) :-) #jquery #html5 #web', 'robinscreech4'),
(11, 'jquery', '01/12/2012', 'Try new Social Locker for #jquery from OnePress! http://t.co/AacRYrcp http://t.co/Ni7dAbIy', 'JavascriptNews'),
(12, 'jquery', '01/12/2012', '#jquery tip : set value of select form element selected : $("#idofelement").val("value").attr("selected","selected");', 'samsonasik'),
(13, 'jquery', '01/12/2012', 'Try new Social Locker for #jquery from OnePress! http://t.co/OASJpama', 'melihgengonul'),
(14, 'jquery', '01/12/2012', 'HTML5, #JQuery CSS3 Tutor #Needed Urgently http://t.co/niu1FTAP #jobs', 'pelaphptutor'),
(15, 'jquery', '01/12/2012', '#jQuery-Prototype Mobile App Development- Calendar, GPS function by EngagingOnes: Creation of a mobile app for l... http://t.co/7ZqjzcNX', 'ulohjobs'),
(16, 'javascript', '01/12/2012', 'Play Dune 2 in your browser â€“ http://t.co/Vtpg6qR4 #game #javascript #link', 'bramurss'),
(17, 'javascript', '01/12/2012', 'Asynchronous UIs - the future of web user interfaces http://t.co/qY9VRDF1 vÃ­a @maccman #javascript #html5 #web', 'h2non'),
(18, 'javascript', '01/12/2012', 'via Kamranicus: Using #Knockout bindings in your #WinJS application http://t.co/GPZAnbKk #javascript #windows8', 'kamranayub'),
(19, 'javascript', '01/12/2012', 'Morf.js - #CSS3 Transitions with custom easing functions http://t.co/19r9hi43 #javascript', 'chrishvizdak'),
(20, 'javascript', '01/12/2012', 'Thanks @NealStammers some good #rwd tips going on there. I like the solution for getting #CSS media queries to help fire #JavaScript', 'GeoffreyHayward'),
(21, 'javascript', '01/12/2012', 'Writing Modular #JavaScript With AMD, #CommonJS &amp; ES Harmony http://t.co/6R7gSq31 vÃ­a @addyosmani #js', 'h2non'),
(22, 'javascript', '01/12/2012', 'today I spoke about #JavaScript loops, conditions, iterating objects and array, as well as #jQuery selectors, events and callbacks...', 'aleksander_1980'),
(23, 'javascript', '01/12/2012', 'RT @codefoster: codeSHOW is now available in the Store http://t.co/vKR2qWvG #windows8 #surface #html #javascript #winjs', 'burhancetinkaya'),
(24, 'javascript', '01/12/2012', 'Well deserved drink after conducting another 8hrs of #JavaScript &amp; #jQuery basics training filled with exercises done by participants...', 'aleksander_1980'),
(25, 'javascript', '01/12/2012', 'RT @UserCommunity: Learn how to build #Windows8 apps using your #JavaScript skills in our free Hands-on Lab Online 12/5: http://t.co/qPPaEfGZ #GenApp', 'lderiu86'),
(26, 'javascript', '01/12/2012', '#javascript Install ClipBucket on Wordpress Site by really1: Install ClipBucket or other Youtube Clone with a th... http://t.co/MT4q1fhO', 'ulohjobs'),
(27, 'javascript', '01/12/2012', 'codeSHOW is now available in the Store http://t.co/vKR2qWvG #windows8 #surface #html #javascript #winjs', 'codefoster'),
(28, 'javascript', '01/12/2012', 'I _finally_ got around to using Grunt for building #JavaScript projects. It''s kittens all the way down. Â» http://t.co/bbrasLaR', 'bennage'),
(29, 'javascript', '01/12/2012', 'Social Networking Site by getabsfastandeas: Hello There,    i would like a social networking site do... http://t.co/wSSRYd2C #Javascript', 'natadipurashop'),
(30, 'javascript', '01/12/2012', 'Social Networking Site by getabsfastandeas: Hello There,    i would like a social networking site do... http://t.co/RnnIp8k3 #Javascript', 'R_DSGN'),
(31, 'php', '01/12/2012', 'RT @matthias_bayer: #php.net is now powered by #myracloud http://t.co/NS6S6wlx', 'mgapatrick'),
(32, 'php', '01/12/2012', 'RT @TCwiek: it was quite productive day. Done some bits of the #php assignment, applied for an industrial placement in #nestle, #GE and #GlaxoSmithKline', 'SreejithMJ'),
(33, 'php', '01/12/2012', 'it was quite productive day. Done some bits of the #php assignment, applied for an industrial placement in #nestle, #GE and #GlaxoSmithKline', 'TCwiek'),
(34, 'php', '01/12/2012', 'RT @JobsOnAir1: #job #php facebook application with share functions by acummins: 1. need a facebook application that ... http://t.co/YZGTzlXO #freelance', 'SreejithMJ'),
(35, 'php', '01/12/2012', '#job #php facebook application with share functions by acummins: 1. need a facebook application that ... http://t.co/YZGTzlXO #freelance', 'JobsOnAir1'),
(36, 'php', '01/12/2012', '#job #php Install ClipBucket on Wordpress Site by really1: Install ClipBucket or other Youtube Clone ... http://t.co/Pjzoluan #freelance', 'JobsOnAir1'),
(37, 'php', '01/12/2012', '#job #php Social Engine Experts - Convert PSDs to Social Engine - URGENT by VividSolutions: Need peop... http://t.co/cs8aRN7p #freelance', 'JobsOnAir1'),
(38, 'php', '01/12/2012', '#job #php Wowza Server &amp; Streaming Video Expert by harpsandhar: Website is Video based and the playba... http://t.co/ryEWrhcf #freelance', 'JobsOnAir1'),
(39, 'php', '01/12/2012', 'Bailey Deanna in ELMONT NY needs a PHP Freelancer  http://t.co/1p9qRMcG #Freelancer #PHP #HTML #Wordpress #Joomla #Magento #Drupal', 'Drupal_Web_Job'),
(40, 'php', '01/12/2012', 'Freelance Web Designer / Developer /Eecommerce - Freelance -  Dubai: Web Designer/Developer 6 ye... http://t.co/0LzA7I9m #PHP #UAE #Jobs', 'metechjobs'),
(41, 'php', '01/12/2012', 'Hillery Kerri in JONESBORO GA wants C++ Programmer  http://t.co/1p9qRMcG #Freelancer #PHP #HTML #Wordpress #Joomla #Magento #Drupal', 'Drupal_Web_Job'),
(42, 'php', '01/12/2012', 'facebook application with share functions by acummins: 1. need a facebook application that enables users to... http://t.co/lPcyBKBu #PHP', 'natadipurashop'),
(43, 'php', '01/12/2012', 'facebook application with share functions by acummins: 1. need a facebook application that enables users to... http://t.co/MHJK5w0L #PHP', 'R_DSGN'),
(44, 'php', '01/12/2012', '#Job facebook application with share function by acummins: 1. I need a facebook application that allows use... http://t.co/5SwQUVQE #php', 'jasonparker07'),
(45, 'mysql', '01/12/2012', 'Your own #MySQL replication listener based on binlog : https://t.co/2JoDBYIO #Ruby #Awesome', 'odelbos'),
(46, 'mysql', '01/12/2012', '#MySql facebook application with share functions by acummins: 1. need a facebook application that enables users ... http://t.co/zt2tEieo', 'luckyJob_'),
(47, 'mysql', '01/12/2012', '#Job Java Program with MySQL - No GUI Required. by RedHatcc: I have a homework program that ... http://t.co/lLFds8fm #Mysql #Programming', 'jasonparker07'),
(48, 'mysql', '01/12/2012', '#Job Wowza Server &amp; Streaming Video Expert by harpsandhar: Website is Video based and the pl... http://t.co/quSSjETf #Mysql #Programming', 'jasonparker07'),
(49, 'mysql', '01/12/2012', '#Job OpenSim Expert Required by IHeartBooks: We are seeking an OpenSim expert, to diagnose &amp;... http://t.co/VPTFPhPx #Mysql #Programming', 'jasonparker07'),
(50, 'mysql', '01/12/2012', '#MySQL Java Program with MySQL - No GUI Required. by RedHatcc: I have a homework program that has to be written ... http://t.co/A0XQoZfh', 'ullohjobs'),
(51, 'mysql', '01/12/2012', 'Setting up a Master-Master Replication for #MySQL in just 10 minutes.. \nLet''s start the #failover tests...', 'mipango'),
(52, 'mysql', '01/12/2012', '#MySql OpenSim Expert Required by IHeartBooks: We are seeking an OpenSim expert, to diagnose &amp; resolve a glitch,... http://t.co/AiZQFUuk', 'luckyJob_'),
(53, 'mysql', '01/12/2012', '#Job i want a screen sharing site (urgent) by miloalan: helllo,    http://t.co/z0G81ewn  chec... http://t.co/f4Du2YTj #Mysql #Programming', 'jasonparker07'),
(54, 'mysql', '01/12/2012', '#Job Facebook Connect to be Added on Invision Board Forum 3.3 by chiragagarwal91: Website: h... http://t.co/ewL2si3m #Mysql #Programming', 'jasonparker07'),
(55, 'mysql', '01/12/2012', '#Job Social Networking Site by getabsfastandeas: Hello There,    i would like a social netwo... http://t.co/NlhDymuJ #Mysql #Programming', 'jasonparker07'),
(56, 'mysql', '01/12/2012', 'Ultimate Web #Hosting Plan unlimited gb space* and bandwidth and email accounts* unlimited #MySQL Databases http://t.co/KJKai3Tp', 'KerryLangevin'),
(57, 'mysql', '01/12/2012', '#MySQL Nonpublic project #4001936 by andygroth: The project is Nonpublic. Description can be read only by regist... http://t.co/zvM0gB3r', 'ullohjobs'),
(58, 'mysql', '01/12/2012', '#MySql Nonpublic project #4001936 by andygroth: The project is Nonpublic. Description can be read only by regist... http://t.co/4B6gXHaG', 'luckyJob_'),
(59, 'mysql', '01/12/2012', 'RT @furthest_works: e-Reader using #HTML5/#PHP/#MySQL by Shawn0625: Overall Summaryâ€¦ http://t.co/mfxM6605 #freelance #job', 'nakashima_jo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 28, 2012 at 09:02 PM
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
(2, 'skills', 'coding skills', '<ul>\r\n            <li>HTML5</li>\r\n            <li>CSS3</li>\r\n            <li>Node.js</li>\r\n            <li>PHP</li>\r\n            <li>Codeigniter</li>\r\n            <li>Git</li>\r\n            <li>JavaScript</li>\r\n            <li>jQuery</li>\r\n            <li>MySQL</li>\r\n            <li>SharePoint 2007 / 2010</li>\r\n            <li>XML</li>\r\n            <li>XSLT</li>\r\n        </ul>', '2012-11-28 15:28:48');

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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `summary` int(11) NOT NULL,
  `url` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `td_tweet_cache`
--

INSERT INTO `td_tweet_cache` (`id`, `hashtag`, `date`, `text`, `user`) VALUES
(1, 'jquery', '28/11/2012', '#Sucuri Warns of Fake #jQuery Sites Distributing #Malware  http://t.co/brMPeGam\n#infosec #cybercriminals #spams #secure', 'eCoreTechnoSol'),
(2, 'jquery', '28/11/2012', 'SocialCount, a #jQuery Plugin for Lighter &amp; Faster Social Networking Widgets by @zachleat http://t.co/uiITjV9R +@johndyer @ematthys', 'elijahmanor'),
(3, 'jquery', '28/11/2012', 'OS DATE Convert #flash Chat to #Jquery http://t.co/I3ENhBeI #jobs', 'pelaphptutor'),
(4, 'jquery', '28/11/2012', 'RT @NodeJsCommunity: MockJS - Mockito syntax for JavaScript Unit Testing http://t.co/DtSzC3rY #JavaScript #mockito #nodejs #jquery http://t.co/kWDMJEd9', 'rikkertkoppes'),
(5, 'jquery', '28/11/2012', '#jquery #job - HTML CSS3.0 Expert - AJAX CSS HTML jQuery web 2.0 ($50 - 100) - http://t.co/x95ZEb41 #jobs', 'dnzJquery'),
(6, 'jquery', '28/11/2012', 'Build Lists and Popups in Minutes Using jQuery Mobile via @buildmobile http://t.co/D3eAVo29 #lists #popup #jquery #mobile', 'Mashant_'),
(7, 'jquery', '28/11/2012', 'RT @NodeJsCommunity: MockJS - Mockito syntax for JavaScript Unit Testing http://t.co/DtSzC3rY #JavaScript #mockito #nodejs #jquery http://t.co/kWDMJEd9', 'genedna'),
(8, 'jquery', '28/11/2012', 'RT @9Tree: MockJS - Mockito syntax for JavaScript Unit Testing http://t.co/JovQWM98 #JavaScript #mockito #nodejs #jquery', 'FriendsOfNodeJS'),
(9, 'jquery', '28/11/2012', 'MockJS - Mockito syntax for JavaScript Unit Testing http://t.co/DtSzC3rY #JavaScript #mockito #nodejs #jquery http://t.co/kWDMJEd9', 'NodeJsCommunity'),
(10, 'jquery', '28/11/2012', 'X-editable : Create editable elements with jQuery &amp; Bootstrap\nhttp://t.co/BHdnJC83 #jquery', 'ourjquery'),
(11, 'jquery', '28/11/2012', 'Best #jQuery #Plugins of 2011 | #Resources : http://t.co/29Wcm9nx - via @webdesignledger', 'MeRiSlOt'),
(12, 'jquery', '28/11/2012', '#jQuery-/-Prototype Wordpress-photocrati quick fix  $250 USD http://t.co/VPKuup8A Follow Me ReTweet #Jobs #TweetMyJobs #Job', 'JobFreelancer'),
(13, 'jquery', '28/11/2012', 'RT @mikeburkhartnc: Putting December on notice... going to ramp up #jquery , #bdd, and #javascript game', 'nakashima_jo'),
(14, 'jquery', '28/11/2012', 'RT @reconnect_Job: #jQuery-Prototype Fix CORS problem in express-js with Firefox by adriancrco: I have created two sim... http://t.co/pGg1CA7W #Programming', 'nakashima_jo'),
(15, 'jquery', '28/11/2012', 'RT @mitesh9883: #jQuery #Mobile #Essential #Training (#Download #Free) #ebook http://t.co/QiFRu0dP', 'nakashima_jo'),
(16, 'javascript', '28/11/2012', 'RT @pelaphptutor: Looking for a Dev: #PHP / #Javascript / #HTML / #CSS / Basic #Design http://t.co/gx8SppX4 #jobs', 'SreejithMJ'),
(17, 'javascript', '28/11/2012', 'RT @christedd: @epictalk #PHP #Moodle #HTML #JavaScript #Jobs #hiring. Job specs available here http://t.co/rQp5bIdY  #Brighton', 'SreejithMJ'),
(18, 'javascript', '28/11/2012', 'How to debug JavaScript Errors by Type http://t.co/fJnb0BNf ** VPS * http://t.co/96LQHaQz ** #javascript', 'stackful_io'),
(19, 'javascript', '28/11/2012', '#Mozilla ships #Firefox18 beta with faster #JavaScript, #Retina support http://t.co/kps8AKxt', 'Goyello'),
(20, 'javascript', '28/11/2012', 'If you are in any way interested in #web #animation using #javascript and #svg, you should look at this http://t.co/OFtDXauY #bonsaijs', 'larscwallin'),
(21, 'javascript', '28/11/2012', 'RT @Esri: RT @gispathway: Your Enhancements in Action: Create Mobile Web Apps Using #JavaScript API http://t.co/x9obDVQd #Esri #GIS', 'ESRIChile'),
(22, 'javascript', '28/11/2012', 'RT @christedd: @epictalk is #hiring. We need #PHP #Moodle #HTML #JavaScript Get a #job at 2012 Elearning production co of the year in lovely #Brighton #in', 'icasebourne'),
(23, 'javascript', '28/11/2012', 'RT @christedd: @epictalk #PHP #Moodle #HTML #JavaScript #Jobs #hiring. Job specs available here http://t.co/rQp5bIdY  #Brighton', 'icasebourne'),
(24, 'javascript', '28/11/2012', 'Looking for a Dev: #PHP / #Javascript / #HTML / #CSS / Basic #Design http://t.co/gx8SppX4 #jobs', 'pelaphptutor'),
(25, 'javascript', '28/11/2012', 'Nice! 25 Best JavaScript Libraries http://t.co/Qf9BaprJ #webdev #JavaScript', 'webaction'),
(26, 'javascript', '28/11/2012', '@epictalk #PHP #Moodle #HTML #JavaScript #Jobs #hiring. Job specs available here http://t.co/rQp5bIdY  #Brighton', 'christedd'),
(27, 'javascript', '28/11/2012', 'Fix a minor bug in #javascript by hulagutten2: Please visit the followingâ€¦ http://t.co/qf6euS0n #freelance #job', 'furthest_works'),
(28, 'javascript', '28/11/2012', 'Expert in #Javascript by stefanfriedli: Attached is a project brief of theâ€¦ http://t.co/h5WC8nmg #freelance #job', 'furthest_works'),
(29, 'javascript', '28/11/2012', 'We need someone that does frontend for our project by nicke55: We are looking for a html/css/js prof... http://t.co/kZ44wpHk #Javascript', 'natadipurashop'),
(30, 'javascript', '28/11/2012', 'We need someone that does frontend for our project by nicke55: We are looking for a html/css/js prof... http://t.co/n2pdzrC2 #Javascript', 'R_DSGN'),
(31, 'php', '28/11/2012', 'RT @pelaphptutor: Looking for a Dev: #PHP / #Javascript / #HTML / #CSS / Basic #Design http://t.co/gx8SppX4 #jobs', 'SreejithMJ'),
(32, 'php', '28/11/2012', 'RT @christedd: @epictalk #PHP #Moodle #HTML #JavaScript #Jobs #hiring. Job specs available here http://t.co/rQp5bIdY  #Brighton', 'SreejithMJ'),
(33, 'php', '28/11/2012', 'PHP developers laat van je horen! http://t.co/XQ3MY7av #bitfactory #developer #php', 'bitfactory'),
(34, 'php', '28/11/2012', 'RT @slidebot: *New!* Reutov, yunusov, nagibin   random numbers take ii http://t.co/Oy966kVD (by DefconRussia 2012-11-27) [en][DL:OK] #PHP', 'SreejithMJ'),
(35, 'php', '28/11/2012', '*New!* Reutov, yunusov, nagibin   random numbers take ii http://t.co/Oy966kVD (by DefconRussia 2012-11-27) [en][DL:OK] #PHP', 'slidebot'),
(36, 'php', '28/11/2012', 'RT @christedd: @epictalk is #hiring. We need #PHP #Moodle #HTML #JavaScript Get a #job at 2012 Elearning production co of the year in lovely #Brighton #in', 'icasebourne'),
(37, 'php', '28/11/2012', 'RT @christedd: @epictalk #PHP #Moodle #HTML #JavaScript #Jobs #hiring. Job specs available here http://t.co/rQp5bIdY  #Brighton', 'icasebourne'),
(38, 'php', '28/11/2012', 'Looking for a Dev: #PHP / #Javascript / #HTML / #CSS / Basic #Design http://t.co/gx8SppX4 #jobs', 'pelaphptutor'),
(39, 'php', '28/11/2012', 'http://t.co/iD4kgOTs #PHP #Wordpress #Joomla the Real #Free #Scripts temple, please support US! http://t.co/ItlR6vLm', 'DouglasQMoura'),
(40, 'php', '28/11/2012', '@epictalk #PHP #Moodle #HTML #JavaScript #Jobs #hiring. Job specs available here http://t.co/rQp5bIdY  #Brighton', 'christedd'),
(41, 'php', '28/11/2012', '#Php #Developer for #Wordpress http://t.co/BcSFUNgT #jobs', 'pelaphptutor'),
(42, 'php', '28/11/2012', 'RT @WebinarsatZend: Discussed and set up a webinar with @elazar about Efficient Communication for #PHP &amp; Android yesterday. Woohoo! http://t.co/aHUfMHsU #mobile', 'weierophinney'),
(43, 'php', '28/11/2012', 'RT @christedd: @epictalk is #hiring. We need #PHP #Moodle #HTML #JavaScript Get a #job at 2012 Elearning production co of the year in lovely #Brighton #in', 'SreejithMJ'),
(44, 'php', '28/11/2012', 'RT @alabazatam: I just joined @phpsnips! #php #phpsnips http://t.co/mm6tjehF', 'SreejithMJ'),
(45, 'php', '28/11/2012', 'I just joined @phpsnips! #php #phpsnips http://t.co/mm6tjehF', 'alabazatam'),
(46, 'mysql', '28/11/2012', 'RT @cedric_exbrayat: I didn''t know that Coursera migrated from #mongodb to #mysql http://t.co/9iYtYEst', 'thibpat'),
(47, 'mysql', '28/11/2012', 'I didn''t know that Coursera migrated from #mongodb to #mysql http://t.co/9iYtYEst', 'cedric_exbrayat'),
(48, 'mysql', '28/11/2012', 'RT @MySQL: Join Oracle''s #MySQL team at one of our upcoming events! Tech tours in California, Miami, Ireland... and more: http://t.co/RX4Hn8o9', 'rovaque'),
(49, 'mysql', '28/11/2012', '#MySql Booking Engine by jonathanchoochye: Need a Booking engine     Able to check availability and book on the ... http://t.co/VzeH9BeG', 'luckyJob_'),
(50, 'mysql', '28/11/2012', 'Anybody know about table partition using #mysql database?', 'msharil1983'),
(51, 'mysql', '28/11/2012', '#Job Booking Engine by jonathanchoochye: Need a Booking engine     Able to check availabilit... http://t.co/Kd7wXinr #Mysql #Programming', 'jasonparker07'),
(52, 'mysql', '28/11/2012', '#Job currency script by Top10merchant: All I need is an e-currency script (like LibertyReser... http://t.co/gRG1Vyh8 #Mysql #Programming', 'jasonparker07'),
(53, 'mysql', '28/11/2012', '#Job CodeIgniter Developer - Part Time by nguyenphucvw: Need codeigniter developer to code a... http://t.co/ZTBEr7I9 #Mysql #Programming', 'jasonparker07'),
(54, 'mysql', '28/11/2012', 'Did you know? For Election 2012: Twitter actually used #MySQL to break the record! - http://t.co/EVsUzO8K', 'webyog'),
(55, 'mysql', '28/11/2012', 'Join Oracle''s #MySQL team at one of our upcoming events! Tech tours in California, Miami, Ireland... and more: http://t.co/RX4Hn8o9', 'MySQL'),
(56, 'mysql', '28/11/2012', '#CodeIgniter Developer - Part Time by nguyenphucvw http://t.co/gXwtZ8oj #ajax #cms #mysql #php', 'seonepal1'),
(57, 'mysql', '28/11/2012', 'Learning Management System v2 by dneundorf http://t.co/9ZBr38cP #engineering #mysql #softwarearchitecture', 'seonepal1'),
(58, 'mysql', '28/11/2012', 'RT @muradswaleh: Today i discovered a simple #CMS @get_simple with a very powerful backend admin, and uses #XML instead of #MySQL thanks to @ahmedmaawy', 'get_simple'),
(59, 'mysql', '28/11/2012', 'RT @linuxride: Quick Question: Everyone knows indexing helps but how &amp; why indexing could be harmful in Mysql ?? #mysql #index #linux', 'jaymee126'),
(60, 'mysql', '28/11/2012', 'Quick Question: Everyone knows indexing helps but how &amp; why indexing could be harmful in Mysql ?? #mysql #index #linux', 'linuxride');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

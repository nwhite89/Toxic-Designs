-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2012 at 09:21 AM
-- Server version: 5.5.24
-- PHP Version: 5.3.10-1ubuntu3.2

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
  `text` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `td_development`
--

INSERT INTO `td_development` (`id`, `title`, `thumbnail`, `image`, `date`, `text`, `url`) VALUES
(1, 'Mobile London Nodejs', '/img/projects/thumbnails/mobilelondon.png', '/img/projects/mobilelondon.png', '2012-12-13 09:21:06', 'I worked on this project as my Dissertation finishing with a First for the project. Using Node.js, Express, HTML5, jQuery \r\nand jQuery Mobile. The aim of this web application is to provide users travelling around London via public transport, easy\r\naccess to up-to-date information provided by TFL on all mobile devices.<br /><br />\r\n\r\nThis web application has been created to work on all mobile devices supporting HTML5 (whilst being optimised for iOS).', 'http://www.mobilelondon.org');

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
(1, 'http://distilleryimage6.s3.amazonaws.com/bdb65b28418d11e2a76e22000a9f1968_5.jpg'),
(2, 'http://distilleryimage0.s3.amazonaws.com/3aeca4ec3eb611e2a1b122000a1f9702_5.jpg'),
(3, 'http://distilleryimage4.s3.amazonaws.com/706610cc393411e2b93522000a1f96b2_5.jpg'),
(4, 'http://distilleryimage10.s3.amazonaws.com/b1f6854c38d211e2bd9022000a1fa522_5.jpg'),
(5, 'http://distilleryimage3.s3.amazonaws.com/15984a22372011e2a07422000a1fab83_5.jpg'),
(6, 'http://distilleryimage3.s3.amazonaws.com/03f28e5c371d11e28a5c22000a1f8acf_5.jpg'),
(7, 'http://distilleryimage2.s3.amazonaws.com/dea0cc16348011e2952822000a1f9695_5.jpg'),
(8, 'http://distilleryimage5.s3.amazonaws.com/80997d8c2f5511e2b52122000a1fa4b5_5.jpg'),
(9, 'http://distilleryimage2.s3.amazonaws.com/13085a402f5511e295e31231380ff907_5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `td_lab`
--

DROP TABLE IF EXISTS `td_lab`;
CREATE TABLE IF NOT EXISTS `td_lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `text` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `td_lab`
--

INSERT INTO `td_lab` (`id`, `title`, `thumbnail`, `image`, `date`, `text`, `url`) VALUES
(1, 'Mobile London Nodejs', '/img/projects/thumbnails/mobilelondon.png', '/img/projects/mobilelondon.png', '2012-12-13 09:21:20', 'I worked on this project as my Dissertation finishing with a First for the project. Using Node.js, Express, HTML5, jQuery \r\nand jQuery Mobile. The aim of this web application is to provide users travelling around London via public transport, easy\r\naccess to up-to-date information provided by TFL on all mobile devices.<br /><br />\r\n\r\nThis web application has been created to work on all mobile devices supporting HTML5 (whilst being optimised for iOS).', 'http://www.mobilelondon.org');

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
(1, 'jquery', '12/12/2012', '#jQuery-Prototype Payment by SMS for WifiHotspot voucher. by aguisalvaterra: The project will be to allow the us... http://t.co/9PkzBt6a', 'ulohjobs'),
(2, 'jquery', '12/12/2012', 'RT @zesky: I''m happy to announce a new #WordPress theme designed with #CSS3 and #jQuery features - Eltorn http://t.co/TiBi4jOh', 'nakashima_jo'),
(3, 'jquery', '12/12/2012', 'RT @reconnect_Job: #jQuery-Prototype Payment by SMS for WifiHotspot voucher. by aguisalvaterra: The project will be to... http://t.co/v9vHSap4 #Programming', 'nakashima_jo'),
(4, 'jquery', '12/12/2012', '#jQuery-Prototype Payment by SMS for WifiHotspot voucher. by aguisalvaterra: The project will be to... http://t.co/v9vHSap4 #Programming', 'reconnect_Job'),
(5, 'jquery', '12/12/2012', 'RT @zesky: I''m happy to announce a new #WordPress theme designed with #CSS3 and #jQuery features - Eltorn http://t.co/TiBi4jOh', 'IllusiaX'),
(6, 'jquery', '12/12/2012', 'I''m happy to announce a new #WordPress theme designed with #CSS3 and #jQuery features - Eltorn http://t.co/TiBi4jOh', 'zesky'),
(7, 'jquery', '12/12/2012', 'RT @jQueryPlugins_: jQuery Sliding Hover Animated Menu http://t.co/JJlyVBem #jQuery #sliding #menu  #hover #effect', 'nakashima_jo'),
(8, 'jquery', '12/12/2012', 'RT @jaylblanchard: Is anyone here using gsap.js for animations? Thoughts? #JavaScript #jQuery', 'nakashima_jo'),
(9, 'jquery', '12/12/2012', 'RT @dnzJquery: #jquery #job - Jquery Form - jQuery ($10 - 15/hr) - http://t.co/LsljWsNM #jobs', 'nakashima_jo'),
(10, 'jquery', '12/12/2012', 'RT @ulohjobs: #jQuery-Prototype Web Application To Intergrate With http://t.co/DimpN643 by phatbroker2000: Please review the in... http://t.co/6RcHrdFh', 'nakashima_jo'),
(11, 'jquery', '12/12/2012', 'RT @resourceswd: 3D Thumbnail Hover... http://t.co/ydu3c9vY #Css #Jquery #Tutorials', 'nakashima_jo'),
(12, 'jquery', '12/12/2012', 'RT @mikedinsb: Holy jQuery!! #jquery #javalove @ Hedge House http://t.co/iL11r1iC', 'nakashima_jo'),
(13, 'jquery', '12/12/2012', 'RT @WebDesignMagz: javascript - Refresh periodically textarea with session attribute ... http://t.co/f2uCa5nr #jQuery', 'nakashima_jo'),
(14, 'jquery', '12/12/2012', 'javascript - Refresh periodically textarea with session attribute ... http://t.co/f2uCa5nr #jQuery', 'WebDesignMagz'),
(15, 'jquery', '12/12/2012', 'Holy jQuery!! #jquery #javalove @ Hedge House http://t.co/iL11r1iC', 'mikedinsb'),
(16, 'javascript', '12/12/2012', 'I will be at the #javascript hackathon in Chandler, AZ this Saturday http://t.co/x0adNASN', 'palermo4'),
(17, 'javascript', '12/12/2012', 'JavaScript News: TAB Results for Wednesday December 12, 2012 http://t.co/4I40M3eF #JavaScript', 'JSJobs'),
(18, 'javascript', '12/12/2012', 'AJAX Upload with Progress https://t.co/xW7FtuVx #ajax #javascript #php', 'phpacademy'),
(19, 'javascript', '12/12/2012', 'AJAX Upload with Progress https://t.co/ZV80Q3As #ajax #javascript #php', 'alexjgarrett'),
(20, 'javascript', '12/12/2012', 'This is a wonderful overview of the prototype in Javascript http://t.co/yXN8yo11 #javascript', 'jdonley83'),
(21, 'javascript', '12/12/2012', 'Decent introduction to image preloading with #javascript http://t.co/cX0RDr9Q #webdesign', 'jessekernaghan'),
(22, 'javascript', '12/12/2012', 'Cool #JavaScript "applications" no longer than 1KB http://t.co/lkgMM78I @leifsk8er @zzarcon', 'h2non'),
(23, 'javascript', '12/12/2012', 'Check out @brettjonesdev''s newest post: an introduction to #nodejs &amp; #couchdb for RESTful web apps: http://t.co/xorGHmfu #javascript', 'KeyholeSoftware'),
(24, 'javascript', '12/12/2012', 'Interesting things to learn at this year''s @DeveloperWeek! Tracks include #node.js #wordpress #javascript #business http://t.co/dlCf53pU', 'DeveloperWeek'),
(25, 'javascript', '12/12/2012', 'A Numerical Optimaisation #Javascript Tool: [http://t.co/f3T9v3dQ] GitHub Repistory (dfm/optimize.js): [https://t.co/L3Hnz813]. via.@__dfm__', 'michealjroberts'),
(26, 'javascript', '12/12/2012', 'RT @MicrosoftPress: Free 833-page #ebook: Programming #Windows8 Apps with #HTML, #CSS, and #JavaScript http://t.co/NkWzHD8Z', 'JeffDutraCanada'),
(27, 'javascript', '12/12/2012', 'RT @TjWallas: Analytics.js: The Analytics API you have been longing for | http://t.co/FxBtPy1Z | #Tech #Programming #JavaScript #OpenSource', 'ossdoc'),
(28, 'javascript', '12/12/2012', 'RT @jaylblanchard: Is anyone here using gsap.js for animations? Thoughts? #JavaScript #jQuery', 'nakashima_jo'),
(29, 'javascript', '12/12/2012', 'How long would it take to create own #ePUB reader using only #HTML and #JavaScript... #ChallengeAccepted', 'MartinekTwitt'),
(30, 'javascript', '12/12/2012', 'Analytics.js: Simple analytics API for JS: http://t.co/9TbnaVXA #js #javascript #analytics', 'panopticdev'),
(31, 'php', '12/12/2012', 'Thank you @VeraciTek for your #php help with my website. You saved us and our #wordpress install. Yay #technology!', 'JuliaEsquire'),
(32, 'php', '12/12/2012', 'New #job: E-Commerce Developer Location: Memphis .. http://t.co/bCVsnaxw #ecommerce #php #memtech #job', 'VacoTechnology'),
(33, 'php', '12/12/2012', 'ICTraveling - Script pour site de voyages http://t.co/xXkxGVkw #money #web #software #scripts #Voyager #Site #Logiciel #Agence #PHP #MySQL', 'ICloudCenter'),
(34, 'php', '12/12/2012', '#Job Crowd Funding Site by DatingSoft: Looking for a cheap fully functional crowd funding script, will requ... http://t.co/kBaTPdC8 #php', 'jasonparker07'),
(35, 'php', '12/12/2012', '#Job Custom Application by kstoutt: This is something I wrote trying to describe it, I did the best I can r... http://t.co/8MdlpyQ5 #php', 'jasonparker07'),
(36, 'php', '12/12/2012', '#Job Prestashop Fixes by michaeldante: I need simple CSS and HTML help. If you know Prestashop I was told t... http://t.co/c6lPxhn4 #php', 'jasonparker07'),
(37, 'php', '12/12/2012', '#Job macro program that you can schedule to start at different times during the day by puritest: currently ... http://t.co/1cA9JRu0 #php', 'jasonparker07'),
(38, 'php', '12/12/2012', 'Crowd Funding Site by DatingSoft http://t.co/EpQxy4zl #graphicdesign #html #php #websitedesign', 'AikiSogura'),
(39, 'php', '12/12/2012', 'Looking for Designer Crowd Funding Site by DatingSoft http://t.co/r5YgaEh7 #graphicdesign #html #php #websitedesign', 'Mayajob'),
(40, 'php', '12/12/2012', 'I Need a Designer!!! Crowd Funding Site by DatingSoft http://t.co/cLlHl6VC #graphicdesign #html #php #websitedesign', 'AikiSogura'),
(41, 'php', '12/12/2012', 'Client upgraded their #PHP version out of the blue. Wonders why things aren''t working #headdesk #paidbythehourftw', 'svpernova09'),
(42, 'php', '12/12/2012', 'Crowd Funding Site by DatingSoft http://t.co/k6DWmAeW #graphicdesign #html #php #websitedesign', 'Mayajob'),
(43, 'php', '12/12/2012', '#PHP Script Expert Required by Sempron12: Required a Exp PHP developer whoâ€¦ http://t.co/ojEJ31Fe #freelance #job', 'remote_work'),
(44, 'php', '12/12/2012', '#PHP Script Expert Required by Sempron12: Required a Exp PHP developer whoâ€¦ http://t.co/G5OgUJyX #freelance #job', 'job_freelancer_'),
(45, 'php', '12/12/2012', '#PHP Script Expert Required by Sempron12: Required a Exp PHP developer whoâ€¦ http://t.co/bkeIls6R #freelance #job', '_jobonline'),
(46, 'mysql', '12/12/2012', 'ICTraveling - Script pour site de voyages http://t.co/xXkxGVkw #money #web #software #scripts #Voyager #Site #Logiciel #Agence #PHP #MySQL', 'ICloudCenter'),
(47, 'mysql', '12/12/2012', '#iPhone - #iPad (RESERVED) by taccone http://t.co/53gzDTmP #mobilephone #mysql #xml', 'AikiSogura'),
(48, 'mysql', '12/12/2012', 'New #mysql planet post : Non-persistent connection performance improvements in 5.6 http://t.co/hScnAZwo', 'sarfraznawaz'),
(49, 'mysql', '12/12/2012', '#iPhone - #iPad (RESERVED) by taccone http://t.co/HUEsHyhE #mobilephone #mysql #xml', 'Mayajob'),
(50, 'mysql', '12/12/2012', '#MySQL iPhone - iPad (RESERVED) by taccone: It''s an easy project,  but we require developer expert of xCode, MyS... http://t.co/B07YOfx6', 'ullohjobs'),
(51, 'mysql', '12/12/2012', '#MySql iPhone - iPad (RESERVED) by taccone: It''s an easy project,  but we require developer expert of xCode, MyS... http://t.co/VCVm2xyu', 'luckyJob_'),
(52, 'mysql', '12/12/2012', 'RT @CodeBoom: Fancy a bit of #php and #mysql for your A2 Computing coursework? You''ll be needing this then... http://t.co/SEPaS7rU #CSin2012', 'whitespider1066'),
(53, 'mysql', '12/12/2012', 'RT @CodeBoom: Fancy a bit of #php and #mysql for your A2 Computing coursework? You''ll be needing this then... http://t.co/SEPaS7rU #CSin2012', 'SreejithMJ'),
(54, 'mysql', '12/12/2012', 'Fancy a bit of #php and #mysql for your A2 Computing coursework? You''ll be needing this then... http://t.co/SEPaS7rU #CSin2012', 'CodeBoom'),
(55, 'mysql', '12/12/2012', '#Job joomla site with civicrm - need civicrm fixes by danconia: Memberships are not expiring... http://t.co/5MehA9Y0 #Mysql #Programming', 'jasonparker07'),
(56, 'mysql', '12/12/2012', '#Job Link player names to pages by msnhockey: I have a couple pages    1 - player stats   2 ... http://t.co/vQelC4PQ #Mysql #Programming', 'jasonparker07'),
(57, 'mysql', '12/12/2012', '#Job voip huge calls in bulk by codermanuk: hi, we have 100 million uk mobile phone numbers.... http://t.co/qTABc0l5 #Mysql #Programming', 'jasonparker07'),
(58, 'mysql', '12/12/2012', 'RT @Percona: Fernando Ipar blogs on Webinar: 10 Percona Toolkit tools every MySQL DBA should know  http://t.co/LZBFDEjM #MySQL #Percona_Toolkit #Web', 'csvictor'),
(59, 'mysql', '12/12/2012', 'RT @exceliance: #HAProxy, high #mysql request rate and TCP source port exhaustion: http://t.co/Mp5Rgs1C', 'yangrunenberger'),
(60, 'mysql', '12/12/2012', '#Job Nonpublic project #4035440 by regg5100: The project is Nonpublic. Description can be re... http://t.co/PmI74zFZ #Mysql #Programming', 'jasonparker07');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

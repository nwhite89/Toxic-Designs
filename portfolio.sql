-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 28, 2012 at 04:29 PM
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
-- Table structure for table `td_blog_posts`
--

DROP TABLE IF EXISTS `td_blog_posts`;
CREATE TABLE IF NOT EXISTS `td_blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(255) NOT NULL,
  `blog_post` text NOT NULL,
  `blog_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `td_blog_posts`
--

INSERT INTO `td_blog_posts` (`id`, `blog_title`, `blog_post`, `blog_date`) VALUES
(1, 'To be native, or to be web that is the question', 'We all know that there is a complete massive boom in the creation of applications over recent years (and still growing). But is it really necessarily the best option to build a native application?<br /><br />\nIt all depends on your business, your application and your aim of the app.<br /><br />\nDo you already have a mobile web version?<br />\nIs it possible to create all the functionalities of your app with HTML5?<br />\nIs it possible to have a web and native app with further functionality in the native?<br /><br />\nPersonally I believe that it is much more worthwhile for a company to create a web application using some soft of framework such as jQuery Mobile or Sencha Touch 2. Using Sencha Touch 2 will allow developers to create one application and "wrap the application" (so to speak) creating a native application for iPhone, Android and Blackberry. jQuery Mobile can do this too when incorporating the application with Adobe''s PhoneGap.<br /><br />\nSo why not at least initially create an application using PhoneGap allowing your application to be hosted on the web, while also being packaged for every operating system rather than shedding out lots of cash to incorporate your app on all of them, or close your market before you have already started providing the application to only one OS?<br /><br />\nSo what is your take on the native vs web app world?', '2013-02-14 11:27:14'),
(3, 'Moving onto SharePoint', 'I have recently taken a work placement at a company Content Formula LTD which is mainly a Digital Healthcare Agency; designing, developing and looking after content for such businesses as Johnson & Johnson. The main part of the agency is to look after and further develop the companies intranet websites.<br /><br />\n\nWith this I have taken a role as "Junior Web Developer" which involves me developing websites using various coding languages which I have previously used (such as PHP, CSS, HTML, JavaScript and jQuery) however I have had to learn MOSS07 and with that XSL.<br /><br />\n\nI will be posting little snipits of code on my blog for "How To:".', '2013-01-11 12:20:07'),
(4, 'SharePoint Services jQuery Plugin', 'Since starting to develop SharePoint sites I have started to look into SharePoint services; as I do not tend to get access to SharePoint Designer. Which limits what I can and cannot do when developing for SharePoint.<br /><br />\n\nOne option is to use the jQuery plugin <a href="http://spservices.codeplex.com/" title="SharePoint Services" target="_blank">SPServices</a> this plugin allows you to tap into so much more and opens up the possibilities and limitations that SharePoint has.<br /><br />\n\nFor Example:<br />\nSharing list data between different SharePoint websites (I will be posting soon a tutorial on how to do this).<br /><br />\n\nIf you develop for SharePoint I would strongly advise that you look into <a href="http://spservices.codeplex.com/" title="SharePoint Services" target="_blank">SPServices</a>', '2013-01-23 10:47:22'),
(5, 'Create permission levels for MOSS07', 'This simple new permission level is great for allowing everyone to use forms that have been built with <a href="http://spservices.codeplex.com/" title="SharePoint Services" target="_blank">SPServices</a><br /><br />\r\n\r\nThis is a simple step by step  of how to create permission levels for MOSS07<br /><br />\r\n<ul>\r\n	<li>When on the Site Collection</li>\r\n	<li>Go to "Site Actions" menu</li>\r\n	<li>"Site Settings" > "Modify All Site Settings"</li>\r\n	<li>Click on the Link on the Quick Launch Bar "Advance Permissions"</li>\r\n	<li>Click on the Drop Down for "Settings"</li>\r\n	<li>Click "Permissions Levels"</li>\r\n	<li>This will then take you to a screen which will allow you to Add a Permission Level or Delete current permission levels.</li>\r\n</ul>', '2013-02-01 19:52:34'),
(6, 'My Final Year Project', 'For my final year project while at the University of Portsmouth; I decided to do an engineering project. This project was using Transport for London’s (TFL) API’s providing users a mobile website for travelling around London more easily.<br />\r\n\r\nBefore starting the project there was a lot of iOS based applications for travelling around London however, not all of these compile the information and offer the services in one app. Downloading some of the applications you will be able to see that most of them only have a main focus (such as traffic cameras or tube status).', '2013-02-06 16:50:40'),
(7, 'Mobile London iOS', 'Since completing the Mobile London project for my dissertation at www.MobileLondon.org. I have started brief work on an iOS PhoneGap application with the same and some further functionality.<br /><br />\n\nFurther news to come soon', '2013-02-27 08:12:34'),
(8, 'iOS Footer for jQuery Mobile', 'Since starting the iOS Phonegap application with jQuery Mobile, I have come across a plugin called Bartender. This plugin changes the footer bar to have a more "iOS" look and feel about it for the end user.\r\n<br /><br />\r\nUsing this for a Phonegap application is therefore a great idea to keep your end user have an experience that doesn''t feel too different from their other applications on their device.', '2013-03-01 07:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `td_categories`
--

DROP TABLE IF EXISTS `td_categories`;
CREATE TABLE IF NOT EXISTS `td_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `td_categories`
--

INSERT INTO `td_categories` (`id`, `title`) VALUES
(1, 'jQuery'),
(2, 'PHP'),
(3, 'JavaScript'),
(4, 'NodeJS'),
(5, 'Dissertation'),
(6, 'PhoneGap'),
(7, 'Portfolio'),
(8, 'Tutorials'),
(9, 'XSL'),
(10, 'General News');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `td_development`
--

INSERT INTO `td_development` (`id`, `title`, `thumbnail`, `image`, `date`, `text`, `url`) VALUES
(1, 'Mobile London Nodejs', '/img/projects/thumbnails/mobilelondon.png', '/img/projects/mobilelondon.png', '2012-12-13 09:21:06', 'I worked on this project as my Dissertation finishing with a First for the project. Using Node.js, Express, HTML5, jQuery \nand jQuery Mobile. The aim of this web application is to provide users travelling around London via public transport, easy\naccess to up-to-date information provided by TFL on all mobile devices.<br /><br />\n\nThis web application has been created to work on all mobile devices supporting HTML5 (whilst being optimised for iOS).', 'http://www.mobilelondon.org'),
(2, 'I Am Ethicon', '/img/projects/thumbnails/IamEthiconAwards.png', '/img/projects/IamEthiconAwards.png', '2012-12-03 09:21:06', 'This was an employee engagement campaign for the european section of Ethicon. It was later heralded as "the" way to bring employees together and considered the benchmark by the company.', ''),
(3, 'Learning Journey', '/img/projects/thumbnails/learningjourney.png', '/img/projects/learningjourney.png', '2012-12-04 13:16:30', 'This extranet site', 'http://mylearningjourney.acuvue.co.uk/');

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
(1, 'Mobile London Nodejs', '/img/projects/thumbnails/mobilelondon.png', '/img/projects/mobilelondon.png', '2012-12-28 11:45:53', '<pre class="codeview javascript lineNumbers" style="width:600px; height:300px;">\r\nfunction something() {\r\nvar x = 2, y = 1;\r\nreturn x + y;\r\n}\r\n</pre>', 'http://www.mobilelondon.org');

-- --------------------------------------------------------

--
-- Table structure for table `td_post_category`
--

DROP TABLE IF EXISTS `td_post_category`;
CREATE TABLE IF NOT EXISTS `td_post_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(1, 'jquery', '13/12/2012', '#jQuery-Prototype Web Design &amp; Coding by karlito: I am looking for a webdesigner who can design and build a site... http://t.co/wtik6I51', 'ulohjobs'),
(2, 'jquery', '13/12/2012', 'SocialCount - progressively enhanced, lazy loaded, mobile friendly social networking widgets: https://t.co/c6Cyiqe6 #jquery', '_mattbailey'),
(3, 'jquery', '13/12/2012', '@_kud It fired the alert - what problem are you seeing? #jQuery', 'jaylblanchard'),
(4, 'jquery', '13/12/2012', '@_kud ...and it works  #jquery', 'andyvividnight'),
(5, 'jquery', '13/12/2012', 'jQuery what the fuck? http://t.co/hojfDV03 // Try to type "enter" on text input. #jquery', '_kud'),
(6, 'jquery', '13/12/2012', 'javascript - Jquery click event on &lt;a&gt; tag not firing properly - Stack ... http://t.co/TLlz2JGu #jQuery', 'WebDesignMagz'),
(7, 'jquery', '13/12/2012', 'RT @CKGrafico: #jQuery jQuery EasyTabs Plugin: EasyTabs is a lightweight jQuery plugin to provide full tab ... http://t.co/tUOoykMx vÃ­a @jQueryPlugins', 'Ecuaideas'),
(8, 'jquery', '13/12/2012', '#jQuery-Prototype Advanced Jquery / JS expert with basic html skills by moreprj: 2 sections on one page exist ..... http://t.co/Wgfxuf6i', 'ulohjobs'),
(9, 'jquery', '13/12/2012', '#jQuery-Prototype Advanced Jquery / JS expert with basic html skills by moreprj: 2 sections on one ... http://t.co/gwES5hXH #Programming', 'reconnect_Job'),
(10, 'jquery', '13/12/2012', 'might have seriously fallen in love with #jQuery!', 'danjelv'),
(11, 'jquery', '13/12/2012', 'RT @DZone: "Drag and Drop with AngularJS using jQuery UI" http://t.co/50zrf2Um #angularjs #jquery', 'jlamigueiro'),
(12, 'jquery', '13/12/2012', '#jQuery Plugin to convert HTML select box to DIV based dropdown - iSummation WebSite: http://t.co/uTLkLCco', 'thecfguy'),
(13, 'jquery', '13/12/2012', 'Simple Effects for Drop-Down Lists http://t.co/2laYRdAE #jquery', 'incredibleTB'),
(14, 'jquery', '13/12/2012', 'How to make a progress bar using #jQuery http://t.co/RuEvGzRJ via @sharethis #webdev #webprogramming', 'mrboolteam'),
(15, 'jquery', '13/12/2012', 'is Full Stack Web Developer (m/f) http://t.co/zcsVdveA #sql #.net #asp.net #jquery #nosql #c# #javascript #job... http://t.co/ry76mbq7', 'findmjob'),
(16, 'javascript', '13/12/2012', 'RT @siphilp Check out Analytics.js : The hassle-free way to integrate analytics into any web application. http://t.co/RLtcKnax #javascript', 'nielsbjerg'),
(17, 'javascript', '13/12/2012', 'RT @acido69: High Performance Animation Library for #Javascript http://t.co/r4N7cHtg', 'javierland'),
(18, 'javascript', '13/12/2012', 'High Performance Animation Library for #Javascript http://t.co/r4N7cHtg', 'acido69'),
(19, 'javascript', '13/12/2012', '#html5 game tutorial with enchant.js http://t.co/1S0wdA6z #javascript', 'alex_kravets'),
(20, 'javascript', '13/12/2012', 'Puzzle app for android and ios phones and tablets by ralleman: I need one or more people to help dev... http://t.co/r97dumex #Javascript', 'natadipurashop'),
(21, 'javascript', '13/12/2012', 'Puzzle app for android and ios phones and tablets by ralleman: I need one or more people to help dev... http://t.co/m1kqfWHy #Javascript', 'R_DSGN'),
(22, 'javascript', '13/12/2012', '#javascript #timeline http://t.co/axRlffnK', 'cagdasolgun'),
(23, 'javascript', '13/12/2012', '#jobs #stellenangebote #jobsuche #javascript #xml #php #Hamburg 101 aktuelle Javascript Xml Php Hamburg Jobs http://t.co/C6t1tUsa', 'Renego_Jobs_DE'),
(24, 'javascript', '13/12/2012', 'Creating a simple web dev server environment using Node JS  http://t.co/2cCKLf8v http://t.co/nptmVdTg  #nodejs #javascript', 'adesis'),
(25, 'javascript', '13/12/2012', '@jlix Depends on skill level. jQMobile/sencha? I''d go with jQM ..or just plain html/css + jquery or zepto #mobile #javascript #framework', 'itechnologynet'),
(26, 'javascript', '13/12/2012', 'Parsing correctly dates/decimals from and to #javascript via ajax calls to services based on client/server region is story for itself.', 'bojanv91'),
(27, 'javascript', '13/12/2012', 'xCharts - A JavaScript library for data-driven chart visualizations\nhttp://t.co/RHgFirIC\ntake notes â™«â™ªâ™ª\n #data #javascript #plugins', 'penworks'),
(28, 'javascript', '13/12/2012', '#javascript Puzzle app for android and ios phones and tablets by ralleman: I need one or more people to help dev... http://t.co/DcVUj817', 'ulohjobs'),
(29, 'javascript', '13/12/2012', 'Best practices for Javascript Proramming http://t.co/R098E7dg\n#javascript', 'rBharshetty'),
(30, 'javascript', '13/12/2012', 'is Full Stack Web Developer (m/f) http://t.co/zcsVdveA #sql #.net #asp.net #jquery #nosql #c# #javascript #job... http://t.co/ry76mbq7', 'findmjob'),
(31, 'php', '13/12/2012', 'RT @Hajar_Abdullah: #php pfft! 10 hours of backache is enough for today!', 'SreejithMJ'),
(32, 'php', '13/12/2012', '#PHP modifications for auction site by ardge24: i currently have a auction site in which is in deve... http://t.co/YQfM0h5M #Programming', 'reconnect_Job'),
(33, 'php', '13/12/2012', '#php pfft! 10 hours of backache is enough for today!', 'Hajar_Abdullah'),
(34, 'php', '13/12/2012', 'RT @ullohjobs: #PHP Website redesign development - repost by fapetu: I have a website that needs to be redesigned to specificat... http://t.co/AznwugXl', 'SreejithMJ'),
(35, 'php', '13/12/2012', '#PHP Website redesign development - repost by fapetu: I have a website that needs to be redesigned to specificat... http://t.co/AznwugXl', 'ullohjobs'),
(36, 'php', '13/12/2012', 'Stasik Agnes in CHARLOTTE NC wants DATA entry  http://t.co/1p9qRMcG #Freelancer #PHP #HTML #Wordpress #Joomla #Magento #Drupal', 'Drupal_Web_Job'),
(37, 'php', '13/12/2012', 'Lead Trade Support Engineer / Next Step Systems / Chicago, IL http://t.co/02WSUOns #php', 'JobMotel_PHP'),
(38, 'php', '13/12/2012', 'Senior PHP Developer (Tech Temp) / Georgia Institute of Technology / Atlanta, GA http://t.co/B0qtCiLL #php', 'JobMotel_PHP'),
(39, 'php', '13/12/2012', 'PHP - Developer / Career Brokers / Charlotte, NC http://t.co/7aoShK7L #php', 'JobMotel_PHP'),
(40, 'php', '13/12/2012', 'PHP - Developer / Career Brokers / Columbus, OH http://t.co/VSy3aLvK #php', 'JobMotel_PHP'),
(41, 'php', '13/12/2012', '#job #php Website redesign development - repost by fapetu: I have a website that needs to be redesign... http://t.co/hu3ETPyJ #freelance', 'JobsOnAir1'),
(42, 'php', '13/12/2012', '#job #php Collect Data from website R1 by TodaysJob: Hello,    I need a software that will collect al... http://t.co/HTSOxZdI #freelance', 'JobsOnAir1'),
(43, 'php', '13/12/2012', '#job #php little joomla website with personnalised template by m2704: Doing a joomla web site of the ... http://t.co/Z6DayMbT #freelance', 'JobsOnAir1'),
(44, 'php', '13/12/2012', '#job #php Wordpress theme redesign by josousa: An existing wordpress template needs to be edited acco... http://t.co/A5MimFP9 #freelance', 'JobsOnAir1'),
(45, 'php', '13/12/2012', '#job #php Web Design &amp; Development by dnsphost: We are an India based web design and web development ... http://t.co/zzATSefN #freelance', 'JobsOnAir1'),
(46, 'mysql', '13/12/2012', '#MySQL Web Design &amp; Development by dnsphost: We are an India based web design and web development firm. We consi... http://t.co/50U49jcE', 'ullohjobs'),
(47, 'mysql', '13/12/2012', '#MySql Web Design &amp; Development by dnsphost: We are an India based web design and web development firm. We consi... http://t.co/P6fGJqe5', 'luckyJob_'),
(48, 'mysql', '13/12/2012', 'Use #MySQL monitoring to optimize performance http://t.co/cjKo1oaf', 'Moosh_be'),
(49, 'mysql', '13/12/2012', 'RP A graphical overview of your MySQL database #topicmaps #database #mysql #graphics - http://t.co/bXxxNZvX', 'patrickDurusau'),
(50, 'mysql', '13/12/2012', 'Open #job: Build a website #MySQL #pph http://t.co/y3cbuadG', 'pph_IT_web'),
(51, 'mysql', '13/12/2012', 'English test done! Coding the #php for creating stuff. #mysql', 'TobiJes'),
(52, 'mysql', '13/12/2012', 'Mysql query no coge variable #mysql #variable #formulario #query http://t.co/FpHRh4dz', 'fdwphp'),
(53, 'mysql', '13/12/2012', '#MySQL Set up DB on existing postgresql by SpatialSteve: I have a server that holds ESRI .shp and .dbf files (so... http://t.co/dG2D4Plo', 'ullohjobs'),
(54, 'mysql', '13/12/2012', '#MySql codeigniter admin backend, user login, system and database design by todkersten: Urgent !!    Hi Codeigni... http://t.co/xFYAYREQ', 'luckyJob_'),
(55, 'mysql', '13/12/2012', 'database design by Ninecstech: Â· A database that must utilise #MySQL; Â· Aâ€¦ http://t.co/tzgtYsCX #freelance #job', 'remote_work'),
(56, 'mysql', '13/12/2012', 'database design by Ninecstech: Â· A database that must utilise #MySQL; Â· Aâ€¦ http://t.co/NJfO7PhW #freelance #job', 'working_athome_'),
(57, 'mysql', '13/12/2012', 'database design by Ninecstech: Â· A database that must utilise #MySQL; Â· Aâ€¦ http://t.co/7A17IdZp #freelance #job', 'job_freelancer_'),
(58, 'mysql', '13/12/2012', 'database design by Ninecstech: Â· A database that must utilise #MySQL; Â· Aâ€¦ http://t.co/cPJWnLOe #freelance #job', 'now_hiring_'),
(59, 'mysql', '13/12/2012', 'database design by Ninecstech: Â· A database that must utilise #MySQL; Â· Aâ€¦ http://t.co/2zrLjA8U #freelance #job', '_jobonline'),
(60, 'mysql', '13/12/2012', 'database design by Ninecstech: Â· A database that must utilise #MySQL; Â· Aâ€¦ http://t.co/q6AewDOZ #freelance #job', 'furthest_works');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2013 at 09:47 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `td_about_social`
--

INSERT INTO `td_about_social` (`id`, `label`, `username`, `url`) VALUES
(1, 'twitter', '@ToxicD89', 'http://bit.ly/13ei1v6'),
(2, 'Github', 'nwhite89', 'http://bit.ly/XfgtO2'),
(3, 'linkedin', 'Nick White', 'http://linkd.in/UROMvc'),
(4, 'instagram', 'nwhite89', 'http://bit.ly/UwqrZd'),
(5, 'Facebook', 'ToxicD', 'http://on.fb.me/ZhRppb');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `td_development`
--

INSERT INTO `td_development` (`id`, `title`, `thumbnail`, `image`, `date`, `text`, `url`) VALUES
(1, 'Mobile London Nodejs', '/img/projects/thumbnails/mobilelondon.png', '/img/projects/mobilelondon.png', '2012-12-13 09:21:06', 'This project was completed for my dissertation which I recieved a first. Mobile London was created with <a href="http://nodejs.org/" target="_blank" title="Node.js">Node.js</a>, <a href="http://expressjs.com/" target="_blank" title="Expressjs">Express</a>, HTML5, <a href="http://jquery.com/" title="jQuery" target="_blank">jQuery</a> and <a href="http://jquerymobile.com/" target="_blank" title="jQuery Mobile">jQuery Mobile</a>; which provides users \neasy access to information provided by Transport For London (TFL) while travelling around London via public transport whilst using a smartphone or tablet device.\n<br /><br />\nThe web application was created to work on all mobile devices which support HTML5 however, optimised for iOS.', 'http://www.mobilelondon.org'),
(2, 'I Am Ethicon', '/img/projects/thumbnails/IamEthiconAwards.png', '/img/projects/IamEthiconAwards.png', '2012-12-03 09:21:06', 'This was an employee engagement campaign for the European section of Ethicon. It was later heralded as "the" way to bring employees together and considered a benchmark initiative within the company. \n<br /><br />\nThis site was built on SharePoint 2007 publishing platform. Despite this limitation, the aim was to make this feel more like a web application. In order to meet this, I implemented jQuery and AJAX and a jQuery plugin, SPServices. This plugin allowed for a lot of customisation linking, custom lists, with columns allowing users to like and comment on nominations.\n<br /><br />\nMy work on this SharePoint application took place whilst on work experience placement at Content Formula. My role on this project was to check wireframes matched the requirements, and to ensure that what was proposed was feasible using the plugin as well as lead the overall project build. I produced the functional specifications for how to build the system. Following this, I led the development effort, building all of the functionality on the SharePoint front-end.', ''),
(3, 'Learning Journey', '/img/projects/thumbnails/learningjourney.png', '/img/projects/learningjourney.png', '2012-12-04 13:16:30', 'The aim of this project was to provide employees within Vision Care (J&J) access to downloadable materials and planning functionality to track their development in their role. Vision Care provide new employees with documents and a schedule of meetings and courses, with information about when they should be completed during their entire induction. Once their induction is completed they should be allowed, allowing ongoing training (the same as existing employees). \n<br /><br />\nManagers of the learners use the tool to oversee the development of their reports with a view of learners'' progress of inductions and ongoing training sections. \n<br /><br />\nThis project was created using the Yii framework for PHP. My role on this project was Development Lead. In this capacity I worked on the IA/Requirement gathering, working with the wireframers to ensure that the final product met the main requirements and objectives of the project. \n<br /><br />\nI also worked on build of the project, working mainly on the front-end JavaScript, HTML and CSS styling. Throughout the project I ensured that the project was on track and meeting the needs of the client and stakeholders, as well as liaising with account and project managers, clients and also the developers working on the project.', 'http://mylearningjourney.acuvue.co.uk/'),
(4, 'RSSB RRUKA', '/img/projects/thumbnails/RSSBRruka.png', '/img/projects/RSSBRruka.png', '2012-12-03 13:16:30', 'The aim of this project was to take an already existing wordpress site which had been built with an old version, using the default wordpress theme. Update the version of wordpress and create \na personalised theme using the companys branding colours.\n<br /><br />\nThe main point of this site was to create different news items and post content types as well as an events section with suggestions and liking options.  My role and responsibilities for this \nproject was to ensure that the build requirements and suggestions were possible, and the site was built on track with deadlines. As development lead I created the functional requirements \nand outlined how the build should be carried, out as well as working on the development.', 'http://rruka.org.uk/');

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
(1, 'http://distilleryimage2.s3.amazonaws.com/19f99266583a11e2979222000a1f9bc6_5.jpg'),
(2, 'http://distilleryimage7.s3.amazonaws.com/9f3baea252c011e2bb3e22000a1fb8a8_5.jpg'),
(3, 'http://distilleryimage1.s3.amazonaws.com/bba53cc64e2311e2b7ab22000a1f90e7_5.jpg'),
(4, 'http://distilleryimage6.s3.amazonaws.com/bdb65b28418d11e2a76e22000a9f1968_5.jpg'),
(5, 'http://distilleryimage0.s3.amazonaws.com/3aeca4ec3eb611e2a1b122000a1f9702_5.jpg'),
(6, 'http://distilleryimage4.s3.amazonaws.com/706610cc393411e2b93522000a1f96b2_5.jpg'),
(7, 'http://distilleryimage10.s3.amazonaws.com/b1f6854c38d211e2bd9022000a1fa522_5.jpg'),
(8, 'http://distilleryimage3.s3.amazonaws.com/15984a22372011e2a07422000a1fab83_5.jpg'),
(9, 'http://distilleryimage3.s3.amazonaws.com/03f28e5c371d11e28a5c22000a1f8acf_5.jpg');

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
(1, 'jquery', '08/01/2013', '#jQuery-Prototype HTML5, CSS3 web application development and design by jmorjaria: Must have experi... http://t.co/6WtVy5wb #Programming', 'reconnect_Job'),
(2, 'jquery', '08/01/2013', '#jQuery-Prototype HTML5, CSS3 web application development and design by jmorjaria: Must have experience with pja... http://t.co/AzeU9uky', 'ulohjobs'),
(3, 'jquery', '08/01/2013', '#jquery #job - Lightbox (jQuery) gallery with comments. - MySQL PHP jQuery (Max. $500) - http://t.co/RBFtZH60 #jobs', 'dnzJquery'),
(4, 'jquery', '08/01/2013', 'Best Practices When Working With JavaScript Templates http://t.co/hvVKnjGV #webdev #developer #jquery #wpo', 'ChrisLove'),
(5, 'jquery', '08/01/2013', 'Check out this great item #jquery #portfolio #responsive   template "VALOR - Responsive HTML Template" http://t.co/BmRWswOs', 'Orange_Idea_RU'),
(6, 'jquery', '08/01/2013', 'Jquery to trigger HTML - Stack Overflow http://t.co/olaRDLWe #jQuery', 'WebDesignMagz'),
(7, 'jquery', '08/01/2013', '@amsul_  nice job on the #jquery pickadate.js i#awesome #html5 datepicker http://t.co/qyZMIkic', 'bestjquery'),
(8, 'jquery', '08/01/2013', 'Make Pretty Charts For Your App with #jQuery and #xCharts http://t.co/y2ApccM7 via @tutorialzine', 'batravarun'),
(9, 'jquery', '08/01/2013', 'Front-end UI/UX Developer http://t.co/SuARKM5W #php #svn #ajax #rest #html5 #jquery #photoshop #37signals #javascript #jobs #hiring #careers', 'jQueryBot'),
(10, 'jquery', '08/01/2013', 'HOT JOB: Senior Web Developer | Melbourne | Integrated Agency | Leadership Opps. #php #javascript #jquery #zend http://t.co/XXmkDZ9v', 'jQueryBot'),
(11, 'jquery', '08/01/2013', 'Front-end UI/UX Developer http://t.co/QpkBwS8Y #php #svn #ajax #rest #html5 #jquery #photoshop #37signals #javascript #jobs #hiring #careers', 'findmjob'),
(12, 'jquery', '08/01/2013', 'HOT JOB: Senior Web Developer | Melbourne | Integrated Agency | Leadership Opps. #php #javascript #jquery #zend http://t.co/mXQWkj0A', 'SandraBenskin'),
(13, 'jquery', '08/01/2013', '#jQuery-Prototype Modify Image Zoom Script by interskate: I am using the Network Solutions shopping... http://t.co/TNmYcRHV #Programming', 'reconnect_Job'),
(14, 'jquery', '08/01/2013', 'Open Source Staffing is hiring! One-click Apply with LinkedI http://t.co/fQD60Eox #job #OpenSourceStaffing #javascript #css #jquery', 'OSSJobs'),
(15, 'jquery', '08/01/2013', 'Make Pretty Charts For Your App with #jQuery and #xCharts http://t.co/x0EzHQ15 via @tutorialzine', 'vmdude_fr'),
(16, 'javascript', '08/01/2013', '#javascript JavaScript and jQuery Project by SYA2011: JavaScript and jQuery Project    You must have experience ... http://t.co/fVDYGamG', 'ulohjobs'),
(17, 'javascript', '08/01/2013', 'RT @_mlb: #Blog #JavaScript Don''t rely on globals http://t.co/uj5bU8t7', 'jBleuzen'),
(18, 'javascript', '08/01/2013', 'How can I get specific SharePoint site GUID using javascript/jquery http://t.co/Aa5mZjI6 #javascript', 'StackSharePoint'),
(19, 'javascript', '08/01/2013', 'javascript Programmer Job (Grass Valley, CA)  http://t.co/5ABs9oth #javascript #Programmer #job #jobs #california #ca #Grass Valley', 'CaliforniaJobLi'),
(20, 'javascript', '08/01/2013', '.@viatropos: Many useful Twitter Bootstrap components - http://t.co/Of3ssbBR #bootstrap #html5 #css3 #spa #javascript', 'caidong'),
(21, 'javascript', '08/01/2013', 'Been doing an awful lot of work in #javascript lately... I''m concerned I might actually be liking it... What should I do?!', 'nixeldev'),
(22, 'javascript', '08/01/2013', 'JavaScript News: Stocks to watch at close on Xday http://t.co/avl0Lj62 #JavaScript', 'JSJobs'),
(23, 'javascript', '08/01/2013', 'RT @pxlhero: Still looking for front-end folks in NYC. Jr or Snr. Full-time gig. Hit me up for more info. #mobile #javascript #html5 #nyc #developers', 'RyukXD'),
(24, 'javascript', '08/01/2013', '#Blog #JavaScript Don''t rely on globals http://t.co/uj5bU8t7', '_mlb'),
(25, 'javascript', '08/01/2013', 'Modify Image Zoom Script by interskate: I am using the Network Solutions shopping cart which is very... http://t.co/Vh42okZz #Javascript', 'natadipurashop'),
(26, 'javascript', '08/01/2013', 'Modify Image Zoom Script by interskate: I am using the Network Solutions shopping cart which is very... http://t.co/BObvC4yH #Javascript', 'R_DSGN'),
(27, 'javascript', '08/01/2013', 'Still looking for front-end folks in NYC. Jr or Snr. Full-time gig. Hit me up for more info. #mobile #javascript #html5 #nyc #developers', 'pxlhero'),
(28, 'javascript', '08/01/2013', 'Rails Engineer http://t.co/x7rMUL4m #css #html #rails #mongodb #javascript #jobs #hiring #careers', 'findmjob'),
(29, 'javascript', '08/01/2013', 'RT @andy_clement: #Scripted #JavaScript editor v0.3 now available. Release notes: http://t.co/c8bH5yxK', 'xavierhanin'),
(30, 'javascript', '08/01/2013', 'Front-end UI/UX Developer http://t.co/SuARKM5W #php #svn #ajax #rest #html5 #jquery #photoshop #37signals #javascript #jobs #hiring #careers', 'jQueryBot'),
(31, 'php', '08/01/2013', 'PHP News: Mentioned today on Live at 9 Tuesday, January 8 http://t.co/kEFj2X94 #PHP', 'FindPHPJobs'),
(32, 'php', '08/01/2013', 'More reviews on true problems with #PHP\nhttp://t.co/OjIoY4VC', 'Dev_Knowhow'),
(33, 'php', '08/01/2013', 'Save your time in building #customized #applications in #PHP http://t.co/fGD7JzsG', 'KrishnaRockz7'),
(34, 'php', '08/01/2013', 'RT @nemshilov: so, #rails become the new #php ?', 'SreejithMJ'),
(35, 'php', '08/01/2013', 'so, #rails become the new #php ?', 'nemshilov'),
(36, 'php', '08/01/2013', 'RT @c2graph volunteer #php dev needed for the massive  timeline on #manning http://t.co/fMNKfwmM #WikiLeaks', 'FreeBradManning'),
(37, 'php', '08/01/2013', 'Goodbye 5.3 #php', 'carlucchese'),
(38, 'php', '08/01/2013', 'So, you''ve decided you want to write a program, or just have a change... http://t.co/zNX3ZycH #ios #languages #perl #php #programming #style', 'BrainFadeDotNet'),
(39, 'php', '08/01/2013', 'Think I just found one of my clients for the semester. Time to get work now on storyboards. #WebDevelopment #DatabaseManagement #PHP #MySQL', 'AG3N1US'),
(40, 'php', '08/01/2013', 'RT @c2graph volunteer #php dev needed for the massive  timeline on #manning http://t.co/vw27S7t3 #WikiLeaks', 'wikileakBot'),
(41, 'php', '08/01/2013', '#job #php Prestashop Expert Needed for Update and Changes/Fixes by modernsh: I already have a Prestas... http://t.co/ZLVcwJrP #freelance', 'JobsOnAir1'),
(42, 'php', '08/01/2013', '#job #php gps  easycap sensor for ubuntu arm by Bladimiir: Hardware to using:    ULTRA COMPACT 1.7GHz... http://t.co/SCBcRyeT #freelance', 'JobsOnAir1'),
(43, 'php', '08/01/2013', '#job #php simple wordpress jobs for website by gportnoy: I am already using a wordpress template (jew... http://t.co/bkZiEuNX #freelance', 'JobsOnAir1'),
(44, 'php', '08/01/2013', '#job #php Procon Plugin by p19blo: I have a BF3 server and use Procon to manage it. i need a coded pl... http://t.co/pizHkhMc #freelance', 'JobsOnAir1'),
(45, 'php', '08/01/2013', '#job #php DEVELOPER NEED by techbrothersteam: i need developer(individual)   for my new IT COMPANY.  ... http://t.co/EZiwEQJK #freelance', 'JobsOnAir1'),
(46, 'mysql', '08/01/2013', '#Job gps  easycap sensor for ubuntu arm by Bladimiir: Hardware to using:    ULTRA COMPACT 1.... http://t.co/PiKsKra5 #Mysql #Programming', 'jasonparker07'),
(47, 'mysql', '08/01/2013', '#Job JavaScript and jQuery Project by SYA2011: JavaScript and jQuery Project    You must hav... http://t.co/i7luzljj #Mysql #Programming', 'jasonparker07'),
(48, 'mysql', '08/01/2013', '#Job API Project by SYA2011: API Project    You must be able to extract data from a third pa... http://t.co/12fkIgmc #Mysql #Programming', 'jasonparker07'),
(49, 'mysql', '08/01/2013', 'Think I just found one of my clients for the semester. Time to get work now on storyboards. #WebDevelopment #DatabaseManagement #PHP #MySQL', 'AG3N1US'),
(50, 'mysql', '08/01/2013', 'Damnâ€¦.  I think I just jacked up that #percona #mysql install we did in training.  But I guess that''s why you train, right?', 'jdgonzalez'),
(51, 'mysql', '08/01/2013', 'Plane ticket-check! Hotel-check! Car-check! All ready to visit @tokutek offices and work on our plans of #bigdata domination #mysql #mariadb', 'seattlegaucho'),
(52, 'mysql', '08/01/2013', 'Can you answer this? "InnoDB: error clustered record for sec rec not found" MySQL 5.5.28 http://t.co/wGlmoFOm #mysql', 'StackDBAs'),
(53, 'mysql', '08/01/2013', 'Website http://t.co/hZmQuxel needs #mySQL fixed and configured for user loginâ€¦ http://t.co/smjsWwdy #freelance #job', '_jobonline'),
(54, 'mysql', '08/01/2013', 'Website http://t.co/hZmQuxel needs #mySQL fixed and configured for user loginâ€¦ http://t.co/5277d0tO #freelance #job', '_jobonline'),
(55, 'mysql', '08/01/2013', 'Well. It is a start! #MySql #HTML #PHP http://t.co/6q76x4GL', 'dtexlyn'),
(56, 'mysql', '08/01/2013', 'I Need a Designer!!! Website http://t.co/M6ixxULe needs #mySQL fixed and configured for userâ€¦ http://t.co/UQM2j5zo', 'AikiSogura'),
(57, 'mysql', '08/01/2013', '#MySql Website http://t.co/nd0TWwaS needs mySQL fixed and configured for user login/Contact/sign-up funtionality... http://t.co/7IELwe9W', 'luckyJob_'),
(58, 'mysql', '08/01/2013', '#MySQL Website http://t.co/gRguaMRM needs mySQL fixed and configured for user login/Contact/sign-up funtionality... http://t.co/8YNYwTyt', 'ullohjobs'),
(59, 'mysql', '08/01/2013', '#Job HTML contact form coding by bs5143: I am developing a new website geared toward collect... http://t.co/0kq8PL3Z #Mysql #Programming', 'jasonparker07'),
(60, 'mysql', '08/01/2013', '#Job Drupal - Drupal CMS Search Function Update by kanderson97: This is a simple Job!    I h... http://t.co/Rg6U9fF8 #Mysql #Programming', 'jasonparker07');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

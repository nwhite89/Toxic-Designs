-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2012 at 05:11 PM
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
  `summary` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `td_development`
--

INSERT INTO `td_development` (`id`, `title`, `thumbnail`, `image`, `date`, `summary`, `url`) VALUES
(1, 'Mobile London Nodejs', '/img/projects/thumbnails/mobilelondon.png', '../img/projects/mobilelondon.png', '2012-12-05 12:23:53', 'This project uses Node.js, Express, HTML5, jQuery and jQuery mobile to provide users with a mobile web application to travel around all of London via Public transport.', '');

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
(1, 'http://distilleryimage0.s3.amazonaws.com/3aeca4ec3eb611e2a1b122000a1f9702_5.jpg'),
(2, 'http://distilleryimage4.s3.amazonaws.com/706610cc393411e2b93522000a1f96b2_5.jpg'),
(3, 'http://distilleryimage10.s3.amazonaws.com/b1f6854c38d211e2bd9022000a1fa522_5.jpg'),
(4, 'http://distilleryimage3.s3.amazonaws.com/15984a22372011e2a07422000a1fab83_5.jpg'),
(5, 'http://distilleryimage3.s3.amazonaws.com/03f28e5c371d11e28a5c22000a1f8acf_5.jpg'),
(6, 'http://distilleryimage2.s3.amazonaws.com/dea0cc16348011e2952822000a1f9695_5.jpg'),
(7, 'http://distilleryimage5.s3.amazonaws.com/80997d8c2f5511e2b52122000a1fa4b5_5.jpg'),
(8, 'http://distilleryimage2.s3.amazonaws.com/13085a402f5511e295e31231380ff907_5.jpg'),
(9, 'http://distilleryimage2.s3.amazonaws.com/df4f326a2b8411e29b6422000a1c00c6_5.jpg');

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
(1, 'jquery', '05/12/2012', 'I really like playing around with Isotope http://t.co/hnCCSqmI Very handy in this multi-screen world #jQuery #library', 'danielsalom'),
(2, 'jquery', '05/12/2012', '#jQuery-Prototype Mobile App for a Website by jdcruxtt: We have a site at http://t.co/lKogti1l and... http://t.co/c66EjZqG #Programming', 'reconnect_Job'),
(3, 'jquery', '05/12/2012', 'wikiUp - #jQuery plugin which allows you to display #Wikipedia descriptions in #tooltips. http://t.co/9uSjLdHa', 'ufranchini'),
(4, 'jquery', '05/12/2012', 'Destaque â€“ Slideshow Plugin with Parallax Effect http://t.co/eFq8L085 #jQuery #parallax #slider #slideshow', 'jQueryPlugins_'),
(5, 'jquery', '05/12/2012', 'Crossdomain ajax requests with jQuery: http://t.co/1bb1gpOW #stackoverflowaddict #jquery', 'dblanco_es'),
(6, 'jquery', '05/12/2012', 'jQuery Roundup: jquery.snipe, Photobooth.js, jHERE http://t.co/QXQjZw1m ++ VPS + http://t.co/96LQHaQz ++ #jquery #javascript #frontend', 'stackful_io'),
(7, 'jquery', '05/12/2012', 'Nice Cheat Sheet collection for developers http://t.co/msIpALgX #Python #jQuery #NodeJS #Java #Ruby #HTML #MySQL and more', 'S3M_nl'),
(8, 'jquery', '05/12/2012', 'A #JQuery christmas card is always fun!! #Christmas #Webdesign', 'BW_C3'),
(9, 'jquery', '05/12/2012', 'I''m also looking for a #junior #developer with #email experience - matthew@cogsagency.com #digitaljobs #HTML #CSS #jQuery', 'mattchallis'),
(10, 'jquery', '05/12/2012', 'Pines Notify http://t.co/T0AooQsN #jquery', 'vlizco'),
(11, 'jquery', '05/12/2012', '10 Useful #jQuery Techniques to Improve Your Code http://t.co/8tOpB6qX', 'ruhanirabin'),
(12, 'jquery', '05/12/2012', 'RT @WebDesignMagz: javascript - How to get attr of jQuery html object passed with ''this ... http://t.co/8ykEM3tJ #jQuery', 'NIMSRULES'),
(13, 'jquery', '05/12/2012', 'javascript - How to get attr of jQuery html object passed with ''this ... http://t.co/8ykEM3tJ #jQuery', 'WebDesignMagz'),
(14, 'jquery', '05/12/2012', 'Looking for a responsive lightbox #jQuery plugin for your responsive website? Look no further: http://t.co/u8lhWA1W', 'pixelentity'),
(15, 'javascript', '05/12/2012', 'jsSHA - JavaScript implementation of the entire family of SHA hashes : http://t.co/fhgGhP1M #Security #JavaScript (via @TheHackersNews)', 'binitamshah'),
(16, 'javascript', '05/12/2012', 'RT @jeffbarr: AWS SDK for #node.js - Now Available in Preview Form - http://t.co/3xE5Z4k9 #aws #javascript', 'mejackreed'),
(17, 'javascript', '05/12/2012', 'Senior UX Engineer (front end developer) http://t.co/ADNfrvjB #javascript #html #jobs #hiring #careers', 'findmjob'),
(18, 'javascript', '05/12/2012', 'jquery script for HTML website by d3ano http://t.co/vVtqebc0 #javascript #jqueryprototype', 'Mayajob'),
(19, 'javascript', '05/12/2012', 'jquery script for HTML website by d3ano http://t.co/9cv5oHnm #javascript #jqueryprototype', 'AikiSogura'),
(20, 'javascript', '05/12/2012', 'I love to work with #SharePoint, #Office &amp; #Javascript/REST/jQuery. Winning combination. FTW!', 'ErnstWolthaus'),
(21, 'javascript', '05/12/2012', 'Developing Lua VM in #JavaScript - with @paulcuth. @Skillsmatter December 6th! http://t.co/rVDKgCpu', 'skillsmatter'),
(22, 'javascript', '05/12/2012', '#javascript jquery script for HTML website by d3ano: edit script to make a site filter content to homepage. jque... http://t.co/DowM4y89', 'ulohjobs'),
(23, 'javascript', '05/12/2012', 'RT @_kud: Want some fakes? https://t.co/0pasqsLq #javascript', 'jBleuzen'),
(24, 'javascript', '05/12/2012', 'Want some fakes? https://t.co/0pasqsLq #javascript', '_kud'),
(25, 'javascript', '05/12/2012', 'Feel''s like #kickass #javascript #Sharepoint', 'arivu86'),
(26, 'javascript', '05/12/2012', 'Javascript &amp; HTML5 Game Engines Libraries http://t.co/nJmEqGRq #html5rocksÂ #html5Â #javascriptÂ #librariesÂ ', 'marcoviaweb'),
(27, 'javascript', '05/12/2012', 'RT @jeffbarr: AWS SDK for #node.js - Now Available in Preview Form - http://t.co/3xE5Z4k9 #aws #javascript', 'KoyamaKei_'),
(28, 'javascript', '05/12/2012', 'RT @Morriz: I''m looking for a #senior #javascript #frontend / #backend #contract, preferably with #NodeJS and/or state of the art libraries and tools ;)', 'trawickairxtl7'),
(29, 'javascript', '05/12/2012', 'Know how to get LCOV compatible output from JSCover/JSCoverage coverage.xml/jscoverage.json? http://t.co/PpKeF7vF #webdev #tdd #javascript', 'GotNoSugarBaby'),
(30, 'php', '05/12/2012', '#PHP #job - PHP/.Net Developer ($50 - 55/hr) - http://t.co/IQxQxoJB #jobs', 'dnzPHP'),
(31, 'php', '05/12/2012', 'RT @Mayajob: Need experienced #Oscommerce Developer by s3p http://t.co/WuutwSAM #ecommerce #php #shoppingcarts', 'iSahidul'),
(32, 'php', '05/12/2012', '#php #coder for social #project http://t.co/LkZ4n475 #jobs', 'pelaphptutor'),
(33, 'php', '05/12/2012', 'RT @Mayajob: Need experienced #Oscommerce Developer by s3p http://t.co/WuutwSAM #ecommerce #php #shoppingcarts', 'SreejithMJ'),
(34, 'php', '05/12/2012', 'Need experienced #Oscommerce Developer by s3p http://t.co/WuutwSAM #ecommerce #php #shoppingcarts', 'Mayajob'),
(35, 'php', '05/12/2012', 'Geocoding API by filippom http://t.co/B9JgsLwO #geolocation #html #php', 'Mayajob'),
(36, 'php', '05/12/2012', 'Geocoding API by filippom http://t.co/N6svTbuJ #geolocation #html #php', 'AikiSogura'),
(37, 'php', '05/12/2012', 'RT @WebinarsatZend: Just set up a webinar about Building Testable #PHP Applications with @grmpyprogrammer Woohoo! http://t.co/7lhVOBQj', 'grmpyprogrammer'),
(38, 'php', '05/12/2012', 'Need experienced #Oscommerce Developer by s3p http://t.co/osxn5uCd #ecommerce #php #shoppingcarts', 'AikiSogura'),
(39, 'php', '05/12/2012', 'Advantages of #PHP #website #development for your website @ http://t.co/TSO5vJTE  #canada #services #job', 'MYZEALIT'),
(40, 'php', '05/12/2012', '#PHP #Freelance Unieke Junior PHP functie! Intern in de regio Apeldoorn - Apeldoorn http://t.co/hkMCovIW', 'phpjobnederland'),
(41, 'php', '05/12/2012', '#PHP #Freelance Unieke Junior PHP functie! Intern in de regio Apeldoorn http://t.co/4YIRAWlt', 'phpjobnederland'),
(42, 'php', '05/12/2012', 'HE Test #PHP is awesome', 'davecmongler'),
(43, 'php', '05/12/2012', '#PHP or #JSP? Which is better for a web app with database. Hmmm -.- #Help', 'papaucastro95'),
(44, 'php', '05/12/2012', '#job #php Migrate dedicated directadmin server to cloud plesk server by Joopo: Hi,    I currently ren... http://t.co/Mv04697J #freelance', 'JobsOnAir1'),
(45, 'mysql', '05/12/2012', 'Revealed: The gift that keeps on giving to Oracle ... is dying http://t.co/ouMQZpWQ Mac Asay on #mysql steward', 'schestowitz'),
(46, 'mysql', '05/12/2012', 'Exciting opportunity for Java Software Engineers #Tomcat #Jetty #MySQL #SpringFramework: Permanent Product Manager London, call 0845 4133701', 'MaxfieldExecs'),
(47, 'mysql', '05/12/2012', '#MariaDB Gets a Foundation http://t.co/OR0cFdd0 #mysql #database #gpl', 'schestowitz'),
(48, 'mysql', '05/12/2012', '#MySQL Fix algo and filter db- web filtering  $250 USD http://t.co/QjQoWAVO Post your BID with confidence or ReTweet ;)', 'JobFreelancer'),
(49, 'mysql', '05/12/2012', '#MariaDB steps out from MySQL''s shadow http://t.co/7BZUF5ZU via @infoworld #oracle #MySQL', 'wmartinteam'),
(50, 'mysql', '05/12/2012', 'RT @kryskool: Ne faite pas confiance a MySQL et SQLite http://t.co/ztuCmurs #mysql #sqlite #fail', 'michaelpq'),
(51, 'mysql', '05/12/2012', 'RT @freshdaz: 12/12/2012, #meetup #lemug &amp; #skysql: #mysql le #cloud et #mariadb.\nhttp://t.co/xYAMbseL', 'sraymond38'),
(52, 'mysql', '05/12/2012', '#Job Change Layout Home Wordpress by bewebagency: I need to change the layout of the home pa... http://t.co/OgYj9x8i #Mysql #Programming', 'jasonparker07'),
(53, 'mysql', '05/12/2012', '#Job Sports Site by projects08: I need an online store built for a sports themed site.  I ha... http://t.co/Kk5nOXqq #Mysql #Programming', 'jasonparker07'),
(54, 'mysql', '05/12/2012', '#Job Programmer needed by glpshop: A large traffic webplatform is searching for a programmer... http://t.co/gfo51DaL #Mysql #Programming', 'jasonparker07'),
(55, 'mysql', '05/12/2012', 'RT @kryskool: Ne faite pas confiance a MySQL et SQLite http://t.co/ztuCmurs #mysql #sqlite #fail', 'sebastien_ferry'),
(56, 'mysql', '05/12/2012', 'Nice Cheat Sheet collection for developers http://t.co/msIpALgX #Python #jQuery #NodeJS #Java #Ruby #HTML #MySQL and more', 'S3M_nl'),
(57, 'mysql', '05/12/2012', '#MySql Change Layout Home Wordpress by bewebagency: I need to change the layout of the home page of my wordpress... http://t.co/Vq7CmdMa', 'luckyJob_'),
(58, 'mysql', '05/12/2012', 'RT @d3t0n4t0r: RT @devilok: Fast #cracking of #MySQL #passwords demonstrated http://t.co/UFYvEMAU', 'kriptonium_'),
(59, 'mysql', '05/12/2012', 'RT @AikiSogura: Sports Site by projects08 http://t.co/OVIANDDy #mysql #php', 'SreejithMJ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

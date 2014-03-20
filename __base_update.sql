
CREATE TABLE IF NOT EXISTS `pages` (
  `id_page` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `ref_page` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_page`),
  UNIQUE KEY `ref_page` (`ref_page`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table des pages du site' AUTO_INCREMENT=1;

INSERT INTO `pages` (`ref_page`, `url`, `title`, `description`) VALUES
('home', 'home', 'Une agence créative au service de l''Évangile', ''),
('about', 'agence', 'L''agence', ''),
('404', '404', 'Erreur 404', ''),
('realisations', 'realisations', 'Nos réalisations', ''),
('realisation', 'realisation', 'Réalisation', ''),
('contact', 'contact', 'Contact', ''),
('projects', 'incubator', 'Furious Incubator', ''),
('submission', 'projet', 'Soumettre un projet', '');

CREATE TABLE `contact` (
`id_contact` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`company` VARCHAR( 60 ) NOT NULL ,
`website` VARCHAR( 60 ) NOT NULL ,
`name` VARCHAR( 60 ) NOT NULL ,
`email` VARCHAR( 60 ) NOT NULL ,
`project` TEXT NOT NULL ,
`other` TEXT NOT NULL ,
`root` ENUM( 'social', 'blog', 'other' ) NOT NULL
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT = 'Contact table';

ALTER TABLE `contact` ADD `date_contact` DATETIME NOT NULL;


CREATE TABLE `projects` (
`id_project` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`title` VARCHAR( 60 ) NOT NULL ,
`website` VARCHAR( 60 ) NULL ,
`description` TEXT NOT NULL ,
`image` VARCHAR( 60 ) NULL ,
`date_add` DATE NOT NULL
) ENGINE = InnoDB COMMENT = 'Projects table';

ALTER TABLE `projects` ADD `shortener` VARCHAR( 60 ) NOT NULL AFTER `title`;

CREATE TABLE `projects_details` (
`id_detail` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`id_project` TINYINT UNSIGNED NOT NULL ,
`title` VARCHAR( 60 ) NOT NULL ,
`description` TEXT NOT NULL ,
`image` VARCHAR( 60 ) NULL
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT = 'Projects details table';

ALTER TABLE projects_details ADD FOREIGN KEY (id_project) REFERENCES projects (id_project) ON DELETE CASCADE ON UPDATE CASCADE;

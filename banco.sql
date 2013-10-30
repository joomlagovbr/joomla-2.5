-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.9


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema portal_modelo
--

CREATE DATABASE IF NOT EXISTS portal_modelo;
USE portal_modelo;

--
-- Definition of table `portal_modelo`.`pmgov2013_assets`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_assets`;
CREATE TABLE  `portal_modelo`.`pmgov2013_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_assets`
--

/*!40000 ALTER TABLE `pmgov2013_assets` DISABLE KEYS */;
LOCK TABLES `pmgov2013_assets` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_assets` VALUES  (1,0,1,191,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (2,1,1,2,1,'com_admin','com_admin','{}'),
 (3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
 (4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
 (5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
 (6,1,11,12,1,'com_config','com_config','{}'),
 (7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
 (8,1,17,140,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
 (9,1,141,142,1,'com_cpanel','com_cpanel','{}'),
 (10,1,143,144,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
 (11,1,145,146,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
 (12,1,147,148,1,'com_login','com_login','{}'),
 (13,1,149,150,1,'com_mailto','com_mailto','{}'),
 (14,1,151,152,1,'com_massmail','com_massmail','{}'),
 (15,1,153,154,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
 (16,1,155,156,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
 (17,1,157,158,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
 (18,1,159,160,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
 (19,1,161,164,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
 (20,1,165,166,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
 (21,1,167,168,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),
 (22,1,169,170,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
 (23,1,171,172,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
 (24,1,173,176,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
 (25,1,177,180,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
 (26,1,181,182,1,'com_wrapper','com_wrapper','{}'),
 (27,8,18,19,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
 (28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
 (29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
 (30,19,162,163,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
 (31,25,178,179,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
 (32,24,174,175,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
 (33,1,183,184,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
 (34,1,185,186,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),
 (35,37,21,22,3,'com_content.article.1','Editoria A','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (36,1,187,188,1,'com_jce','jce','{}'),
 (37,8,20,47,2,'com_content.category.8','Assuntos','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (38,37,23,24,3,'com_content.article.2','Pagina 1: titulo do texto institucional','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (39,43,32,33,6,'com_content.article.3','Página 2: título do texto institucional','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (40,43,34,35,6,'com_content.article.4','Página 3: título do texto institucional','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (41,37,25,38,3,'com_content.category.9','Editoria A','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (42,41,26,37,4,'com_content.category.10','Menu de 2. Nivel','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (43,42,27,36,5,'com_content.category.11','Menu de 3. Nivel','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (44,43,28,29,6,'com_content.category.12','Página 2: título do texto institucional','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (45,43,30,31,6,'com_content.category.13','Página 3: título do texto institucional','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (46,37,39,42,3,'com_content.category.14','Editoria B','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (47,37,43,46,3,'com_content.category.15','Editoria C','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (48,46,40,41,4,'com_content.article.5','Editoria B','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (49,47,44,45,4,'com_content.article.6','Editoria C','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (50,8,48,67,2,'com_content.category.16','Sobre','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (51,50,49,50,3,'com_content.article.7','Institucional','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (52,50,51,52,3,'com_content.article.8','Ações e Programas','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (53,50,53,54,3,'com_content.article.9','Auditoria','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (54,50,55,56,3,'com_content.article.10','Convênios','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (55,50,57,58,3,'com_content.article.11','Despesas','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (56,50,59,60,3,'com_content.article.12','Licitações e contratos','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (57,50,61,62,3,'com_content.article.13','Servidores','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (58,50,63,64,3,'com_content.article.14','Informações classificadas','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (59,50,65,66,3,'com_content.article.15','Serviço de Informação ao Cidadão (SIC)','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (60,8,68,105,2,'com_content.category.17','Últimas notícias','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (61,60,69,70,3,'com_content.category.18','Texto 1 - Título da notícia entre 35 e 90 caracteres','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (62,60,75,76,3,'com_content.category.19','Texto 3 - Título da notícia entre 35 e 90 caracteres','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (63,60,71,72,3,'com_content.category.20','Texto 4 - Título da notícia entre 35 e 90 caracteres','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (64,60,73,74,3,'com_content.category.21','Release 1: Título do release entre 35 e 90 caracteres','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (65,60,77,78,3,'com_content.category.22','Release 2: Título do release entre 35 e 90 caracteres','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (66,60,79,80,3,'com_content.category.23','Release 3: Título do release entre 35 e 90 caracteres','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (67,60,81,82,3,'com_content.category.24','Release 4: Título do release entre 35 e 90 caracteres','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (68,60,83,84,3,'com_content.category.25','Release 5: Título do release entre 35 e 90 caracteres','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (69,60,85,86,3,'com_content.article.16','Texto 1 - Título da notícia entre 35 e 90 caracteres','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (70,60,87,88,3,'com_content.article.17','Release 5: Título do release entre 35 e 90 caracteres','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (71,60,89,90,3,'com_content.article.18','Release 4: Título do release entre 35 e 90 caracteres','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (72,60,91,92,3,'com_content.article.19','Release 1: Título do release entre 35 e 90 caracteres','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (73,60,93,94,3,'com_content.article.20','Release 2: Título do release entre 35 e 90 caracteres','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (74,60,95,96,3,'com_content.article.21','Release 3: Título do release entre 35 e 90 caracteres','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (75,60,97,98,3,'com_content.article.22','Texto 3 - Título da notícia entre 35 e 90 caracteres','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (76,60,99,100,3,'com_content.article.23','Texto 4 - Título da notícia entre 35 e 90 caracteres','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (77,60,101,102,3,'com_content.article.24','Texto 5 - Título da notícia entre 35 e 90 caracteres','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (78,60,103,104,3,'com_content.article.25','Texto 2 - Título da notícia entre 35 e 90 caracteres','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (79,82,137,138,3,'com_content.article.26','Conheça o novo modelo de plataforma digital do governo federal','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (80,81,107,108,3,'com_content.article.27','Manuais','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (81,8,106,109,2,'com_content.category.26','manuais','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (82,8,136,139,2,'com_content.category.27','plataforma digital do governo federal','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (83,93,127,130,3,'com_content.category.28','Perguntas frequentes','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (84,93,123,126,3,'com_content.category.29','Contato','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (85,93,119,122,3,'com_content.category.30','Servicos da Denominação','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (86,93,115,118,3,'com_content.category.31','Dados abertos','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (87,93,111,114,3,'com_content.category.32','Area de imprensa','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (88,83,128,129,4,'com_content.article.28','Perguntas frequentes','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (89,84,124,125,4,'com_content.article.29','Contato','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (90,85,120,121,4,'com_content.article.30','Servicos da Denominação','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (91,86,116,117,4,'com_content.article.31','Dados abertos','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (92,87,112,113,4,'com_content.article.32','Area de imprensa','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (93,8,110,135,2,'com_content.category.33','Menu superior','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (94,93,131,134,3,'com_content.category.34','Acessibilidade','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
 (95,94,132,133,4,'com_content.article.33','Acessibilidade','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
 (96,1,189,190,1,'com_blankcomponent','blankcomponent','{}');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_assets` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_associations`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_associations`;
CREATE TABLE  `portal_modelo`.`pmgov2013_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_associations`
--

/*!40000 ALTER TABLE `pmgov2013_associations` DISABLE KEYS */;
LOCK TABLES `pmgov2013_associations` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_associations` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_banner_clients`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_banner_clients`;
CREATE TABLE  `portal_modelo`.`pmgov2013_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_banner_clients`
--

/*!40000 ALTER TABLE `pmgov2013_banner_clients` DISABLE KEYS */;
LOCK TABLES `pmgov2013_banner_clients` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_banner_clients` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_banner_tracks`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_banner_tracks`;
CREATE TABLE  `portal_modelo`.`pmgov2013_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_banner_tracks`
--

/*!40000 ALTER TABLE `pmgov2013_banner_tracks` DISABLE KEYS */;
LOCK TABLES `pmgov2013_banner_tracks` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_banner_tracks` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_banners`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_banners`;
CREATE TABLE  `portal_modelo`.`pmgov2013_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_banners`
--

/*!40000 ALTER TABLE `pmgov2013_banners` DISABLE KEYS */;
LOCK TABLES `pmgov2013_banners` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_banners` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_categories`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_categories`;
CREATE TABLE  `portal_modelo`.`pmgov2013_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_categories`
--

/*!40000 ALTER TABLE `pmgov2013_categories` DISABLE KEYS */;
LOCK TABLES `pmgov2013_categories` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_categories` VALUES  (1,0,0,0,67,0,'','system','ROOT',0x726F6F74,'','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),
 (2,27,1,1,2,1,'uncategorised','com_content','Uncategorised',0x756E63617465676F7269736564,'','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*'),
 (3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised',0x756E63617465676F7269736564,'','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),
 (4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised',0x756E63617465676F7269736564,'','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),
 (5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised',0x756E63617465676F7269736564,'','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),
 (6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised',0x756E63617465676F7269736564,'','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),
 (7,32,1,11,12,1,'uncategorised','com_users','Uncategorised',0x756E63617465676F7269736564,'','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),
 (8,37,1,13,28,1,'assuntos','com_content','Assuntos',0x617373756E746F73,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 17:09:55',0,'0000-00-00 00:00:00',0,'*'),
 (9,41,8,14,23,2,'assuntos/editoria-a','com_content','Editoria A',0x656469746F7269612D61,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 17:15:48',0,'0000-00-00 00:00:00',0,'*'),
 (10,42,9,15,22,3,'assuntos/editoria-a/menu-de-2-nivel','com_content','Menu de 2. Nivel',0x6D656E752D64652D322D6E6976656C,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 17:17:17',0,'0000-00-00 00:00:00',0,'*'),
 (11,43,10,16,21,4,'assuntos/editoria-a/menu-de-2-nivel/menu-de-3-nivel','com_content','Menu de 3. Nivel',0x6D656E752D64652D332D6E6976656C,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 17:17:49',0,'0000-00-00 00:00:00',0,'*'),
 (12,44,11,17,18,5,'assuntos/editoria-a/menu-de-2-nivel/menu-de-3-nivel/pagina-2-titulo-do-texto-institucional','com_content','Página 2: título do texto institucional',0x706167696E612D322D746974756C6F2D646F2D746578746F2D696E737469747563696F6E616C,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 17:18:50',576,'2013-10-21 17:18:53',0,'*'),
 (13,45,11,19,20,5,'assuntos/editoria-a/menu-de-2-nivel/menu-de-3-nivel/pagina-3-titulo-do-texto-institucional','com_content','Página 3: título do texto institucional',0x706167696E612D332D746974756C6F2D646F2D746578746F2D696E737469747563696F6E616C,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 17:19:21',0,'0000-00-00 00:00:00',0,'*'),
 (14,46,8,24,25,2,'assuntos/editoria-b','com_content','Editoria B',0x656469746F7269612D62,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 17:31:38',576,'2013-10-21 17:32:39',0,'*'),
 (15,47,8,26,27,2,'assuntos/editoria-c','com_content','Editoria C',0x656469746F7269612D63,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 17:32:25',0,'0000-00-00 00:00:00',0,'*'),
 (16,50,1,29,30,1,'sobre','com_content','Sobre',0x736F627265,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 17:58:32',0,'0000-00-00 00:00:00',0,'*'),
 (17,60,1,31,48,1,'ultimas-noticias','com_content','Últimas notícias',0x756C74696D61732D6E6F746963696173,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 18:17:00',0,'0000-00-00 00:00:00',0,'*'),
 (18,61,17,32,33,2,'ultimas-noticias/texto-1-titulo-da-noticia-entre-35-e-90-caracteres','com_content','Texto 1 - Título da notícia entre 35 e 90 caracteres',0x746578746F2D312D746974756C6F2D64612D6E6F74696369612D656E7472652D33352D652D39302D63617261637465726573,'','<div>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 18:20:18',576,'2013-10-21 18:23:28',0,'*'),
 (19,62,17,38,39,2,'ultimas-noticias/texto-3-titulo-da-noticia-entre-35-e-90-caracteres','com_content','Texto 3 - Título da notícia entre 35 e 90 caracteres',0x746578746F2D332D746974756C6F2D64612D6E6F74696369612D656E7472652D33352D652D39302D63617261637465726573,'','<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\"><strong>Subtítulo em negrito</strong></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\"><strong>Subtítulo em negrito</strong></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 18:23:56',576,'2013-10-21 18:25:58',0,'*'),
 (20,63,17,34,35,2,'ultimas-noticias/texto-4-titulo-da-noticia-entre-35-e-90-caracteres','com_content','Texto 4 - Título da notícia entre 35 e 90 caracteres',0x746578746F2D342D746974756C6F2D64612D6E6F74696369612D656E7472652D33352D652D39302D63617261637465726573,'','<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\"><strong>Subtítulo em negrito</strong></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 18:24:44',0,'0000-00-00 00:00:00',0,'*'),
 (21,64,17,36,37,2,'ultimas-noticias/release-1-titulo-do-release-entre-35-e-90-caracteres','com_content','Release 1: Título do release entre 35 e 90 caracteres',0x72656C656173652D312D746974756C6F2D646F2D72656C656173652D656E7472652D33352D652D39302D63617261637465726573,'','<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chapéu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Subtítulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">&nbsp;</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo Citação, localizado no campo Corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 18:25:41',0,'0000-00-00 00:00:00',0,'*'),
 (22,65,17,40,41,2,'ultimas-noticias/release-2-titulo-do-release-entre-35-e-90-caracteres','com_content','Release 2: Título do release entre 35 e 90 caracteres',0x72656C656173652D322D746974756C6F2D646F2D72656C656173652D656E7472652D33352D652D39302D63617261637465726573,'','<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\"><strong>Subtítulo em negrito</strong></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo Citação, localizado no campo Corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\"><strong>Subtítulo em negrito</strong></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 18:26:37',0,'0000-00-00 00:00:00',0,'*'),
 (23,66,17,42,43,2,'ultimas-noticias/release-3-titulo-do-release-entre-35-e-90-caracteres','com_content','Release 3: Título do release entre 35 e 90 caracteres',0x72656C656173652D332D746974756C6F2D646F2D72656C656173652D656E7472652D33352D652D39302D63617261637465726573,'','<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chapéu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Subtítulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">&nbsp;</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo Citação, localizado no campo Corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 18:27:18',0,'0000-00-00 00:00:00',0,'*'),
 (24,67,17,44,45,2,'ultimas-noticias/release-4-titulo-do-release-entre-35-e-90-caracteres','com_content','Release 4: Título do release entre 35 e 90 caracteres',0x72656C656173652D342D746974756C6F2D646F2D72656C656173652D656E7472652D33352D652D39302D63617261637465726573,'','<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chapéu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Subtítulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo Citação, localizado no campo Corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 18:28:08',0,'0000-00-00 00:00:00',0,'*'),
 (25,68,17,46,47,2,'ultimas-noticias/release-5-titulo-do-release-entre-35-e-90-caracteres','com_content','Release 5: Título do release entre 35 e 90 caracteres',0x72656C656173652D352D746974756C6F2D646F2D72656C656173652D656E7472652D33352D652D39302D63617261637465726573,'','<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\"><strong>Subtítulo em negrito</strong></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo Citação, localizado no campo Corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\"><strong>Subtítulo em negrito</strong></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-21 18:28:42',0,'0000-00-00 00:00:00',0,'*'),
 (26,81,1,49,50,1,'manuais','com_content','manuais',0x6D616E75616973,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-23 20:53:19',0,'0000-00-00 00:00:00',0,'*'),
 (27,82,1,65,66,1,'plataforma-digital-do-governo-federal','com_content','plataforma digital do governo federal',0x706C617461666F726D612D6469676974616C2D646F2D676F7665726E6F2D6665646572616C,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-23 21:30:58',576,'2013-10-23 21:47:25',0,'*'),
 (28,83,33,60,61,2,'menu-superior/perguntas-frequentes','com_content','Perguntas frequentes',0x70657267756E7461732D6672657175656E746573,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-23 21:32:46',576,'2013-10-23 21:44:35',0,'*'),
 (29,84,33,58,59,2,'menu-superior/contato','com_content','Contato',0x636F6E7461746F,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-23 21:33:00',576,'2013-10-23 21:44:24',0,'*'),
 (30,85,33,56,57,2,'menu-superior/servicos-da-denominacao','com_content','Servicos da Denominação',0x7365727669636F732D64612D64656E6F6D696E6163616F,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-23 21:33:28',576,'2013-10-23 21:44:14',0,'*'),
 (31,86,33,54,55,2,'menu-superior/dados-abertos','com_content','Dados abertos',0x6461646F732D61626572746F73,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-23 21:33:42',576,'2013-10-23 21:44:06',0,'*'),
 (32,87,33,52,53,2,'menu-superior/area-de-imprensa','com_content','Area de imprensa',0x617265612D64652D696D7072656E7361,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-23 21:34:19',576,'2013-10-23 21:43:57',0,'*'),
 (33,93,1,51,64,1,'menu-superior','com_content','Menu superior',0x6D656E752D7375706572696F72,'','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-23 21:43:10',0,'0000-00-00 00:00:00',0,'*'),
 (34,94,33,62,63,2,'menu-superior/acessibilidade','com_content','Acessibilidade',0x61636573736962696C6964616465,'','<p><br style=\"text-align: left;\" /></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',576,'2013-10-23 21:48:21',576,'2013-10-23 21:51:57',0,'*');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_categories` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_contact_details`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_contact_details`;
CREATE TABLE  `portal_modelo`.`pmgov2013_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_contact_details`
--

/*!40000 ALTER TABLE `pmgov2013_contact_details` DISABLE KEYS */;
LOCK TABLES `pmgov2013_contact_details` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_contact_details` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_content`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_content`;
CREATE TABLE  `portal_modelo`.`pmgov2013_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_content`
--

/*!40000 ALTER TABLE `pmgov2013_content` DISABLE KEYS */;
LOCK TABLES `pmgov2013_content` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_content` VALUES  (1,35,'Editoria A',0x656469746F7269612D61,'','<div>\r\n<div id=\"c1e7e8f45dc4438296670befba1af889\" class=\"tile --NOVALUE--\" data-tile=\"@@nitf/c1e7e8f45dc4438296670befba1af889\">\r\n<div>\r\n<p class=\"tile-subtitle\" style=\"text-align: left;\"><span style=\"font-size: 10pt; color: #3366ff;\"><img style=\"margin-left: 5px; float: right;\" src=\"images/imagens_menu/video.png\" alt=\"video\" />Chapéu</span></p>\r\n<a class=\"imag\" title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\" href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-2-titulo-da-noticia-entre-35-e-90-caracteres\"> <img class=\"left\" style=\"margin-right: 10px; float: left;\" src=\"images/imagens_menu/texto-2-titulo-da-noticia-entre-35-e-90-caracteres.jpeg\" alt=\"texto-2-titulo-da-noticia-entre-35-e-90-caracteres\" /></a><span class=\"imag\"> </span>\r\n<h2 style=\"text-align: left;\">&nbsp;<span style=\"font-size: 10pt; color: #000000;\"><span style=\"color: #000000;\">Título da notícia em 3 linhas - até 50 caracteres</span><a title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\" href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-2-titulo-da-noticia-entre-35-e-90-caracteres\"><span style=\"color: #000000;\"></span> </a> </span></h2>\r\n<p class=\"tile-description\" style=\"text-align: left;\">Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div id=\"db631c61295a409e8fe5408dee369c07\" class=\"tile --NOVALUE--\" data-tile=\"@@nitf/db631c61295a409e8fe5408dee369c07\">\r\n<div>\r\n<p class=\"tile-subtitle\" style=\"text-align: left;\">&nbsp;</p>\r\n<p class=\"tile-subtitle\" style=\"text-align: left;\"><span style=\"font-size: 10pt; color: #3366ff;\">Chapéu</span></p>\r\n<a class=\"imag\" title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\" href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-1-titulo-da-noticia-entre-35-e-90-caracteres\"> <img class=\"left\" style=\"margin-right: 10px; float: left;\" src=\"images/imagens_menu/texto-1-titulo-da-noticia-entre-35-e-90-caracteres.jpeg\" alt=\"texto-1-titulo-da-noticia-entre-35-e-90-caracteres\" /> </a>\r\n<h2 style=\"text-align: left;\">&nbsp;<span style=\"font-size: 10pt; color: #000000;\"><span style=\"color: #000000;\">Título da notícia em 3 linhas - até 50 caracteres</span><a title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\" href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-1-titulo-da-noticia-entre-35-e-90-caracteres\"><span style=\"color: #000000;\"></span> </a> </span></h2>\r\n<p class=\"tile-description\" style=\"text-align: left;\">Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div id=\"b7d1e844f3ae4cd2a7c01a8397c0cdf7\" class=\"tile --NOVALUE--\" data-tile=\"@@nitf/b7d1e844f3ae4cd2a7c01a8397c0cdf7\">\r\n<div>\r\n<p class=\"tile-subtitle\">&nbsp;</p>\r\n<p class=\"tile-subtitle\" style=\"text-align: left;\"><span style=\"font-size: 10pt; color: #3366ff;\">Chapéu</span></p>\r\n<h2 style=\"text-align: left;\"><span style=\"font-size: 10pt; color: #000000;\"><span style=\"color: #000000;\">Título da notícia em duas linhas cheias com até 90 caracteres. Título da notícia em 2 linhas</span><a title=\"Subtítulo em três linhas com até 180 caracteres. Subtítulo em três linhas com até 1800 caracteres. Subtítulo em três linhas com até 180 caracteres. Subtítulo em três linhas\" href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-3-titulo-da-noticia-entre-35-e-90-caracteres\"> </a> </span></h2>\r\n<p class=\"tile-description\" style=\"text-align: left;\">Subtítulo em três linhas com até 180 caracteres. Subtítulo em três linhas com até 1800 caracteres. Subtítulo em três linhas com até 180 caracteres. Subtítulo em três linhas</p>\r\n<div class=\"visualClear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div id=\"eba7851c6a8b42b9955c31ea87657979\" class=\"tile tile-default\" data-tile=\"@@mediacarousel/eba7851c6a8b42b9955c31ea87657979\">\r\n<div id=\"mediacarousel-eba7851c6a8b42b9955c31ea87657979\" class=\"mediacarousel\">\r\n<h2 class=\"mediacarousel-tile\">&nbsp;</h2>\r\n<div id=\"mediacarousel-gallerie-eba7851c6a8b42b9955c31ea87657979\" class=\"ready image\" style=\"height: 419.667px;\">\r\n<div class=\"galleria-container notouch iframe\" style=\"width: 360px; height: 270px;\">\r\n<div class=\"galleria-stage\">\r\n<div class=\"galleria-images\" style=\"position: relative; top: 0px; left: 0px; width: 100%; height: 100%;\">\r\n<div class=\"galleria-image\" style=\"overflow: hidden; position: absolute; top: 0px; left: 0px; transition: none 0s ease 0s; opacity: 0; z-index: 0;\">&nbsp;</div>\r\n<div class=\"galleria-image\" style=\"overflow: hidden; position: absolute; top: 0px; left: 0px; opacity: 1; width: 360px; height: 270px; transition: none 0s ease 0s; z-index: 1;\">\r\n<div class=\"galleria-layer\" style=\"position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; z-index: 2; display: block; width: 0px; height: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"galleria-loader\" style=\"opacity: 0.4; display: none;\">&nbsp;</div>\r\n<div class=\"galleria-counter\" style=\"opacity: 0.4; display: block;\"><span class=\"galleria-current\">1</span> / <span class=\"galleria-total\">5</span></div>\r\n<div class=\"galleria-image-nav\">&nbsp;</div>\r\n</div>\r\n<div class=\"galleria-info\" style=\"opacity: 1;\">\r\n<div class=\"galleria-info-text\">\r\n<div class=\"galleria-info-title\"><a href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/video-5-titulo-com-ate-45-caracteres/view\">Vídeo 5: título com até 45 caracteres</a></div>\r\n<div class=\"galleria-info-description\">Legenda do vídeo 5. Para ficar em uma linha use 77 caracteres. Para ficar em duas, 157 caracteres</div>\r\n<div class=\"rights\" style=\"display: block;\" data-index=\"0\">Autor/Criador do vídeo</div>\r\n</div>\r\n<div class=\"galleria-info-link\" style=\"display: none;\">&nbsp;</div>\r\n<div class=\"galleria-info-close\" style=\"display: none;\">&nbsp;</div>\r\n</div>\r\n<div class=\"galleria-thumbnails-container\" style=\"opacity: 1;\">\r\n<div class=\"galleria-thumb-nav-left disabled\">&nbsp;</div>\r\n<div class=\"galleria-thumbnails-list\" style=\"overflow: hidden; position: relative;\">\r\n<div class=\"galleria-thumbnails\" style=\"overflow: hidden; position: relative; width: 285px; height: 40px; left: 0px;\">\r\n<div class=\"galleria-image active\" style=\"overflow: hidden; position: relative; visibility: visible; width: 51px; height: 38px;\"><img style=\"display: block; opacity: 1; min-width: 0px; min-height: 0px; max-width: none; max-height: none; width: 51px; height: 38px; position: absolute; top: 0px; left: 0px;\" src=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/video-5-titulo-com-ate-45-caracteres/@@images/0d7d327d-f33a-410d-a1fd-2da52011820b.jpeg\" alt=\"\" width=\"51\" height=\"38\" /></div>\r\n<div class=\"galleria-image\" style=\"overflow: hidden; position: relative; visibility: visible; width: 51px; height: 38px;\"><img style=\"display: block; opacity: 0.6; min-width: 0px; min-height: 0px; max-width: none; max-height: none; width: 51px; height: 38px; position: absolute; top: 0px; left: 0px;\" src=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/video-4-titulo-com-ate-45-caracteres/@@images/b4e9775e-8b9c-457b-9d05-c4d39dce34dd.jpeg\" alt=\"\" width=\"51\" height=\"38\" /></div>\r\n<div class=\"galleria-image\" style=\"overflow: hidden; position: relative; visibility: visible; width: 51px; height: 38px;\"><img style=\"display: block; opacity: 0.6; min-width: 0px; min-height: 0px; max-width: none; max-height: none; width: 51px; height: 38px; position: absolute; top: 0px; left: 0px;\" src=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/video-3-titulo-com-ate-45-caracteres/@@images/8b4f5b24-4678-4591-894c-feb8b212611c.jpeg\" alt=\"\" width=\"51\" height=\"38\" /></div>\r\n<div class=\"galleria-image\" style=\"overflow: hidden; position: relative; visibility: visible; width: 51px; height: 38px;\"><img style=\"display: block; opacity: 0.6; min-width: 0px; min-height: 0px; max-width: none; max-height: none; width: 51px; height: 38px; position: absolute; top: 0px; left: 0px;\" src=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/video-2-titulo-com-ate-45-caracteres/@@images/6e18d60e-4d16-4921-a0cc-54a2d2eb98af.jpeg\" alt=\"\" width=\"51\" height=\"38\" /></div>\r\n<div class=\"galleria-image\" style=\"overflow: hidden; position: relative; visibility: visible; width: 51px; height: 38px;\"><img style=\"display: block; opacity: 0.6; min-width: 0px; min-height: 0px; max-width: none; max-height: none; width: 51px; height: 38px; position: absolute; top: 0px; left: 0px;\" src=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/video-1-titulo-com-ate-45-caracteres/@@images/f8dfd87e-7961-4a21-a9ee-f0adfb857ba4.jpeg\" alt=\"\" width=\"51\" height=\"38\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"galleria-thumb-nav-right disabled\">&nbsp;</div>\r\n</div>\r\n<div class=\"galleria-tooltip\" style=\"opacity: 0;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"mediacarousel-footer-container\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div id=\"c92bf1f0074d4f7ca662ba73168c31d6\" class=\"tile verde\" data-tile=\"@@standaloneheader/c92bf1f0074d4f7ca662ba73168c31d6\">\r\n<div class=\"outstanding-header\"><span class=\"outstanding-link\">Mais vídeos</span></div>\r\n<div class=\"outstanding-header\">&nbsp;</div>\r\n<div class=\"outstanding-header\">&nbsp;</div>\r\n<div class=\"outstanding-header\" style=\"text-align: left;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"row\" data-layout-type=\"row\">\r\n<div class=\"cell width-5 position-0 \" data-panel=\"\">\r\n<div>\r\n<div id=\"a5649a69a3d340b7b764863116c961d1\" class=\"tile verde\" data-tile=\"@@standaloneheader/a5649a69a3d340b7b764863116c961d1\">\r\n<div class=\"outstanding-header\">\r\n<h2 class=\"outstanding-title\">Assunto 1</h2>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div id=\"b0730eabce904e26af69e73b7199228f\" class=\"tile verde\" data-tile=\"@@nitf/b0730eabce904e26af69e73b7199228f\">\r\n<div>\r\n<p class=\"tile-subtitle\">Chapéu</p>\r\n<h3>Título da notícia entre 40 e 50 caracteres com espaço</h3>\r\n<p class=\"tile-description\">Subtítulo em uma linha com até 90 caracteres. Subtítulo em duas linhas com até 90 caracteres</p>\r\n<div class=\"visualClear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"cell width-5 position-5 \" data-panel=\"\">\r\n<div>\r\n<div id=\"da748697ff30417ba173411a4119fd8c\" class=\"tile laranja\" data-tile=\"@@standaloneheader/da748697ff30417ba173411a4119fd8c\">\r\n<div class=\"outstanding-header\">\r\n<h2 class=\"outstanding-title\">Assunto 2</h2>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div id=\"fe7eb78520c54808ad2c93dc84a0235a\" class=\"tile laranja\" data-tile=\"@@nitf/fe7eb78520c54808ad2c93dc84a0235a\">\r\n<div>\r\n<p class=\"tile-subtitle\">Chapéu</p>\r\n<h3>Título da notícia entre 40 e 50 caracteres com espaço</h3>\r\n<p class=\"tile-description\">Subtítulo em uma linha com até 90 caracteres. Subtítulo em duas linhas com até 90 caracteres</p>\r\n<div class=\"visualClear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"cell width-5 position-10 \" data-panel=\"\">\r\n<div>\r\n<div id=\"bbe7cb043bcd4da0910677b7294cfec4\" class=\"tile azul-claro\" data-tile=\"@@standaloneheader/bbe7cb043bcd4da0910677b7294cfec4\">\r\n<div class=\"outstanding-header\">\r\n<h2 class=\"outstanding-title\">Assunto 3</h2>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div id=\"f3a41236612f465ca7fef22d4c6b4c4f\" class=\"tile azul-claro\" data-tile=\"@@nitf/f3a41236612f465ca7fef22d4c6b4c4f\">\r\n<div>\r\n<p class=\"tile-subtitle\">Chapéu</p>\r\n<h3>Título da notícia entre 40 e 50 caracteres com espaço</h3>\r\n<p class=\"tile-description\">Subtítulo em uma linha com até 90 caracteres. Subtítulo em duas linhas com até 90 caracteres</p>\r\n<br class=\"tile-description\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','',1,0,0,8,'2013-10-21 14:40:14',576,'','2013-10-22 12:50:36',576,0,'0000-00-00 00:00:00','2013-10-21 14:40:14','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',31,0,2,'','',1,72,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (2,38,'Pagina 1: titulo do texto institucional',0x706167696E612D312D746974756C6F2D646F2D746578746F2D696E737469747563696F6E616C,'','<p style=\"text-align: left;\">Espaço para inserir o subtítulo do texto institucional. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Segundo subtítulo em negrito</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Terceiro subtítulo em negrito</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Link externo 1<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Link externo 2<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Link externo 3<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Link externo 4<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Link externo 5<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','',1,0,0,8,'2013-10-21 17:11:14',576,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-21 17:11:14','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,1,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (3,39,'Página 2: título do texto institucional',0x706167696E612D322D746974756C6F2D646F2D746578746F2D696E737469747563696F6E616C,'','<p style=\"text-align: left;\">Espaço para inserir o subtítulo do texto institucional. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">•&nbsp;&nbsp;&nbsp; Lorem ipsum dolor sit amet;</p>\r\n<p style=\"text-align: left;\">•&nbsp;&nbsp;&nbsp; Lorem ipsum dolor sit amet;</p>\r\n<p style=\"text-align: left;\">•&nbsp;&nbsp;&nbsp; Lorem ipsum dolor sit amet</p>\r\n<p style=\"text-align: left;\">•&nbsp;&nbsp;&nbsp; Lorem ipsum dolor sit amet</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','',1,0,0,11,'2013-10-21 17:13:25',576,'','2013-10-21 17:29:25',576,0,'0000-00-00 00:00:00','2013-10-21 17:13:25','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (4,40,'Página 3: título do texto institucional',0x706167696E612D332D746974756C6F2D646F2D746578746F2D696E737469747563696F6E616C,'','<p style=\"text-align: left;\"><span style=\"color: #c0c0c0;\"><strong>Espaço para inserir o subtítulo do texto institucional. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</strong></span></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','',1,0,0,11,'2013-10-21 17:14:11',576,'','2013-10-21 17:29:34',576,0,'0000-00-00 00:00:00','2013-10-21 17:14:11','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (5,48,'Editoria B',0x656469746F7269612D62,'','<div class=\"row\" style=\"text-align: left;\" data-layout-type=\"row\">\r\n<div class=\"cell width-5 position-0 \" data-panel=\"\">\r\n<div>\r\n<div id=\"d851ae9071794d20a821de0c2495f2e2\" class=\"tile azul-claro\" data-tile=\"@@nitf/d851ae9071794d20a821de0c2495f2e2\">\r\n<div>\r\n<p class=\"tile-subtitle\">Chapéu</p>\r\n<a class=\"imag\" title=\"Subtítulo em três linhas com até 110 caracteres. Subtítulo em três linhas com até 110 caracteres\" href=\"http://tv1-lnx-04.grupotv1.com/portalmodelo/conteudos-de-marcacao/texto-1-titulo-da-noticia-entre-35-e-90-caracteres\"> <img class=\"left\" style=\"float: left;\" src=\"images/imagens_menu/conteudos_de_marcacao/editoria_b/texto-1-titulo-da-noticia-entre-35-e-90-caracteres.jpeg\" alt=\"texto-1-titulo-da-noticia-entre-35-e-90-caracteres\" /> </a>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">Subtítulo em três linhas com até 110 caracteres. Subtítulo em três linhas com até 110 caracteres</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div id=\"bbc6404fc50f419fada71ec28a369083\" class=\"tile --NOVALUE--\" data-tile=\"@@nitf/bbc6404fc50f419fada71ec28a369083\">\r\n<div>\r\n<p class=\"tile-subtitle\">Chapéu</p>\r\n<h2>Título da notícia em duas linhas em até 50 caracteres</h2>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"cell width-5 position-5 \" data-panel=\"\">\r\n<div>\r\n<div id=\"8b7832e2df6b4137b4f8f059ad5c4925\" class=\"tile laranja\" data-tile=\"@@nitf/8b7832e2df6b4137b4f8f059ad5c4925\">\r\n<div>\r\n<p class=\"tile-subtitle\">Chapéu</p>\r\n<a class=\"imag\" title=\"Subtítulo em três linhas com até 110 caracteres. Subtítulo em três linhas com até 110 caracteres\" href=\"http://tv1-lnx-04.grupotv1.com/portalmodelo/conteudos-de-marcacao/texto-2-titulo-da-noticia-entre-35-e-90-caracteres\"> <img class=\"left\" style=\"float: left;\" src=\"images/imagens_menu/conteudos_de_marcacao/editoria_b/texto-2-titulo-da-noticia-entre-35-e-90-caracteres.jpeg\" alt=\"texto-2-titulo-da-noticia-entre-35-e-90-caracteres\" /> </a>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">Subtítulo em três linhas com até 110 caracteres. Subtítulo em três linhas com até 110 caracteres</p>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div id=\"53b54dfd8bf64e268b611fc16c057faa\" class=\"tile --NOVALUE--\" data-tile=\"@@nitf/53b54dfd8bf64e268b611fc16c057faa\">\r\n<div>\r\n<p class=\"tile-subtitle\">Chapéu</p>\r\n<h2>Título da notícia em duas linhas em até 50 caracteres</h2>\r\n<div>&nbsp;</div>\r\n<div>Chapéu</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"cell width-5 position-10 \" data-panel=\"\">\r\n<div>\r\n<div id=\"028b23f042944cae9c91e248dc192eab\" class=\"tile verde\" data-tile=\"@@nitf/028b23f042944cae9c91e248dc192eab\">\r\n<div><a class=\"imag\" title=\"Subtítulo em três linhas com até 110 caracteres. Subtítulo em três linhas com até 110 caracteres\" href=\"http://tv1-lnx-04.grupotv1.com/portalmodelo/conteudos-de-marcacao/texto-3-titulo-da-noticia-entre-35-e-90-caracteres\"> <img class=\"left\" style=\"float: left;\" src=\"images/imagens_menu/conteudos_de_marcacao/editoria_b/texto-3-titulo-da-noticia-entre-35-e-90-caracteres.jpeg\" alt=\"texto-3-titulo-da-noticia-entre-35-e-90-caracteres\" /><br style=\"clear: right;\" /> </a>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">&nbsp;</p>\r\n<p class=\"tile-description\">Subtítulo em três linhas com até 110 caracteres. Subtítulo em três linhas com até 110 caracteres</p>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div id=\"5e62039de6674899974139b7a04327f6\" class=\"tile --NOVALUE--\" data-tile=\"@@nitf/5e62039de6674899974139b7a04327f6\">\r\n<div>\r\n<p class=\"tile-subtitle\">Chapéu</p>\r\n<h2>Título da notícia em duas linhas em até 50 caracteres</h2>\r\n<p>&nbsp;</p>\r\n<p><img style=\"float: left;\" src=\"images/imagens_menu/conteudos_de_marcacao/editoria_b/220x220_cor-1.jpg\" alt=\"220x220 cor-1\" /> <img src=\"images/imagens_menu/conteudos_de_marcacao/editoria_b/220x220_cor-2.jpg\" alt=\"220x220 cor-2\" /> <img style=\"float: right;\" src=\"images/imagens_menu/conteudos_de_marcacao/editoria_b/220x220_cor-3.jpg\" alt=\"220x220 cor-3\" /></p>\r\n<div class=\"visualClear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"error\">&nbsp;.</div>\r\n</div>\r\n</div>','',1,0,0,14,'2013-10-21 17:37:58',576,'','2013-10-22 13:17:14',576,0,'0000-00-00 00:00:00','2013-10-21 17:37:58','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',20,0,0,'','',1,31,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (6,49,'Editoria C',0x656469746F7269612D63,'','<div class=\"cell width-5 position-0 \" style=\"text-align: left;\" data-panel=\"\">\r\n<div>\r\n<div id=\"c77b4042cfef45839eab8aefecae128b\" class=\"tile azul-claro\" data-tile=\"@@standaloneheader/c77b4042cfef45839eab8aefecae128b\">\r\n<div class=\"outstanding-header\">\r\n<h2 class=\"outstanding-title\">Assunto 1</h2>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div id=\"b0730eabce904e26af69e73b7199228f\" class=\"tile --NOVALUE--\" data-tile=\"@@nitf/b0730eabce904e26af69e73b7199228f\">\r\n<div><a class=\"imag\" title=\"Subtítulo em três linhas com até 100 caracteres. Subtítulo em três linhas com até 100 caracteres\" href=\"http://tv1-lnx-04.grupotv1.com/portalmodelo/conteudos-de-marcacao/texto-1-titulo-da-noticia-entre-35-e-90-caracteres\"> <img class=\"left\" style=\"float: left;\" src=\"images/imagens_menu/conteudos_de_marcacao/editoria_c/texto-1-titulo-da-noticia-entre-35-e-90-caracteres.jpeg\" alt=\"texto-1-titulo-da-noticia-entre-35-e-90-caracteres\" /> </a>\r\n<h3>&nbsp;</h3>\r\n<h3>&nbsp;</h3>\r\n<h3>&nbsp;</h3>\r\n<h3>&nbsp;Título em duas linhas escrito com até 50 caracteres</h3>\r\n<p class=\"tile-description\">Subtítulo em três linhas com até 100 caracteres. Subtítulo em três linhas com até 100 caracteres</p>\r\n<div class=\"visualClear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>','',1,0,0,15,'2013-10-21 17:50:17',576,'','2013-10-22 12:58:53',576,0,'0000-00-00 00:00:00','2013-10-21 17:50:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,0,0,'','',1,16,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (7,51,'Institucional',0x696E737469747563696F6E616C,'','<p style=\"text-align: left;\">Nesta seção são divulgadas informações institucionais e organizacionais do(a) [nome do órgão ou entidade], compreendendo suas funções, competências, estrutura organizacional, relação de autoridades (quem é quem), agenda de autoridades, horários de atendimento e legislação do órgão/entidade</p>\r\n<p style=\"text-align: left;\">Esse item deve apresentar as seguintes informações em relação ao órgão/entidade:</p>\r\n<p style=\"text-align: left;\">&nbsp;&nbsp;&nbsp; I. Estrutura organizacional (organograma);<br />&nbsp;&nbsp;&nbsp; II. Competências;<br />&nbsp;&nbsp;&nbsp; III. Base jurídica da estrutura organizacional e das competências do órgãos/entidade, inclusive regimentos<br />&nbsp;&nbsp;&nbsp; internos, quando existirem;<br />&nbsp;&nbsp;&nbsp; IV. Lista dos principais cargos e seus respectivos ocupantes (denominado “Quem é quem”);<br />&nbsp;&nbsp;&nbsp; V. Telefones, emails e endereços de contato dos ocupantes dos principais cargos; agenda de autoridades;<br />&nbsp;&nbsp;&nbsp; VI.Horários de atendimento do órgãos/entidade.</p>\r\n<p style=\"text-align: left;\">As informações relativas aos subitens I a V devem ser apresentadas, ao menos, para as unidades do órgão/entidade em nível hierárquico equivalente ou superior às coordenações-gerais. Os órgãos/entidades que disponibilizam as informações relativas a esses itens em seus respectivos portais eletrônicos poderão disponibilizar links remetendo para a referida área já existente em seu portal. O órgão/entidade que não disponibiliza as informações referentes a esse item deverá produzir e disponibilizar a informação.</p>\r\n<p style=\"text-align: left;\">O subitem V (agenda de autoridades) sugere-se que seja publicado para cargos de 1º e 2º escalão, autarquias, inclusive as especiais, fundações mantidas pelo Poder Público, empresas públicas e sociedades de economia mista. Esse item deverá apresentar:</p>\r\n<p style=\"text-align: left;\">&nbsp;&nbsp;&nbsp; a) a agenda de reuniões com pessoas físicas e jurídicas com as quais se relacione funcionalmente, com registro sumário das matérias tratadas;<br />&nbsp;&nbsp;&nbsp; b) audiências concedidas, com informações sobre seus objetivos, participantes e resultados;<br />&nbsp;&nbsp;&nbsp; c) eventos político-eleitorais de que a autoridade participe, informando as condições de logística e financeira da participação.</p>\r\n<p style=\"text-align: left;\">O subitem VII (horários de atendimento do órgão/entidade) refere-se às informações de horário de funcionamento e atendimento ao público do órgão/entidade e de suas respectivas unidades, em caso da existência de horários diferenciados entre as unidades ou da existência de unidades descentralizadas.</p>\r\n<p style=\"text-align: left;\">O órgão/entidade que divulga o referido conjunto de informações em seu portal eletrônico poderá disponibilizar link remetendo para a área onde as informações já estão disponíveis.</p>\r\n<p style=\"text-align: left;\">A <a class=\"external-link\" title=\"\" href=\"http://epwg.governoeletronico.gov.br/cartilha-redacao\" target=\"_self\">Cartilha e-PWG</a> – Redação para Web possui orientações para a escrita de áreas comuns de portais.</p>\r\n<p style=\"text-align: left;\"><strong>Guias</strong></p>\r\n<p style=\"text-align: left;\">Para mais informações sobre a seção de Acesso à Informação, confira os guias elaborados pela Controladoria-Geral da União.</p>\r\n<ul style=\"text-align: left;\">\r\n<li><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_SecaoSitios.pdf\" target=\"_self\">Guia para criação da seção de acesso à informação nos portais eletrônicos dos órgãos e entidades federais</a><span>&nbsp;(arquivo pdf, tamanho: 1,14 MB)</span></li>\r\n<li><a class=\"external-link\" title=\"\" href=\"http://www.cgu.gov.br/Publicacoes/BrasilTransparente/Guia_TransparenciaAtiva_EstadosMunicipios.pdf\" target=\"_self\">Guia para criação da&nbsp;Seção de Acesso à Informação&nbsp;nos portais eletrônicos&nbsp;dos Órgãos e Entidades&nbsp;Estaduais e Municipais</a><span>&nbsp;(arquivo pdf, tamanho:1,27 MB)</span></li>\r\n<li class=\"last-item\"><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_InformacoesClassificadas.pdf\" target=\"_self\">Publicação do rol de informações&nbsp;classificadas e desclassificadas e&nbsp;de relatórios estatísticos sobre a&nbsp;Lei de Acesso à Informação</a><span>&nbsp;(arquivo pdf, tamanho: 682 KB)</span></li>\r\n</ul>','',1,0,0,16,'2013-10-21 18:02:08',576,'','2013-10-23 20:30:53',576,0,'0000-00-00 00:00:00','2013-10-21 18:02:08','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,8,'','',1,18,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (8,52,'Ações e Programas',0x61636F65732D652D70726F6772616D6173,'','<div class=\"documentDescription description\" style=\"text-align: left;\">Nesta seção são divulgadas as informações pertinentes aos programas, ações, projetos e atividades implementadas pelo (a) [nome do órgão ou entidade]</div>\r\n<p style=\"text-align: left;\">Programas são o principal instrumento que os governos utilizam para promover a integração entre os entes e os setores para concretizar políticas públicas e otimizar seus recursos, sejam eles financeiros, humanos, logísticos ou materiais. Por outro lado, uma ação é um conjunto de operações, cujos produtos contribuem para os objetivos do programa governamental. A ação pode ser um projeto, atividade ou operação especial.</p>\r\n<p style=\"text-align: left;\">O órgão/entidade deverá disponibilizar o seguinte conjunto mínimo de informações em relação a seus respectivos programas, projetos e ações:<br />I - lista dos programas e ações executados pelo órgão/entidade;<br />II - indicação da unidade responsável pelo desenvolvimento e implementação;<br />III - principais metas;<br />IV - indicadores de resultado e impacto, quando existentes;<br />V - principais resultados.</p>\r\n<p style=\"text-align: left;\">Em relação aos programas e ações que se constituírem serviços diretamente prestados ao público pelo órgão/entidade, deverão ser apresentadas as seguintes informações adicionais:<br />I - o serviço oferecido;<br />II - os requisitos, documentos e informações necessários para acessar o serviço;<br />III - as principais etapas para processamento do serviço;<br />IV - o prazo máximo para a prestação do serviço;<br />V - a forma de prestação do serviço;<br />VI - a forma de comunicação com o solicitante do serviço;<br />VII - os locais e formas de acessar o serviço;<br />VIII - prioridades de atendimento;<br />IX - tempo de espera para atendimento;<br />X - prazos para a realização dos serviços;<br />XI - mecanismos de comunicação com os usuários;<br />XII - procedimentos para receber, atender, gerir e responder às sugestões e reclamações;<br />XIII - fornecimento de informações acerca das etapas, presentes e futuras, esperadas para a realização dos serviços, inclusive estimativas de prazos;<br />XIV - mecanismos de consulta, por parte dos usuários, acerca das etapas, cumpridas e pendentes, para a realização do serviço solicitado;<br />XV - tratamento a ser dispensado aos usuários quando do atendimento;<br />XVI - requisitos básicos para o sistema de sinalização visual das unidades de atendimento;<br />XVII - condições mínimas a serem observadas pelas unidades de atendimento, em especial no que se refere a acessibilidade, limpeza e conforto;<br />XVIII - procedimentos alternativos para atendimento quando o sistema informatizado se encontrar indisponível;<br />XIX - outras informações julgadas de interesse dos usuários.</p>\r\n<p style=\"text-align: left;\">O órgão ou entidade que já divulga o referido conjunto de informações em seu portal eletrônico ou que já publica sua respectiva Carta de Serviços ao Cidadão poderá disponibilizar link remetendo para a área onde as informações já estão disponíveis.</p>\r\n<p style=\"text-align: left;\"><span>Se o órgão/entidade ainda não divulga tais informações em seu portal eletrônico, ele deverá produzir e disponibilizar o conteúdo. Duas opções que podem contribuir para o atendimento do órgão/entidade a esse item são:</span>\r\n</p>\r\n<p style=\"text-align: left;\"><span>A publicação dos dados institucionais dos órgão/entidade disponíveis no Sistema Integrado de Planejamento e Orçamento do Brasil (SIOP), disponível em: <a class=\"external-link\" title=\"\" href=\"https://www.siop.planejamento.gov.br/siop/\" target=\"_self\">https://www.siop.planejamento.gov.br/siop/</a></span>\r\n</p>\r\n<p style=\"text-align: left;\">O direcionamento para o link do relatório de gestão do órgão/entidade, desde que esteja atualizado e as informações sejam de fácil localização.</p>\r\n<p style=\"text-align: left;\"><span>Caso o órgão/entidade possua informação extra no próprio site, ele poderá indicar o link. Exemplo seria o relatório de avaliação do PPA, no site da CGU: <a class=\"external-link\" title=\"\" href=\"http://www.cgu.gov.br/Publicacoes/AvaliacaoPPA/index.asp\" target=\"_self\">http://www.cgu.gov.br/Publicacoes/AvaliacaoPPA/index.asp</a></span>\r\n</p>\r\n<p style=\"text-align: left;\"><strong>Guias</strong>\r\n</p>\r\n<p style=\"text-align: left;\">Para mais informações sobre a seção de Acesso à Informação, confira os guias elaborados pela Controladoria-Geral da União.</p>\r\n<p style=\"text-align: left;\"><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_SecaoSitios.pdf\" target=\"_self\">Guia para criação da seção de acesso à informação nos portais eletrônicos dos órgãos e entidades federais</a>&nbsp;(arquivo pdf)</p>\r\n<p style=\"text-align: left;\"><a class=\"external-link\" title=\"\" href=\"http://www.cgu.gov.br/Publicacoes/BrasilTransparente/Guia_TransparenciaAtiva_EstadosMunicipios.pdf\" target=\"_self\">Guia para criação da&nbsp;Seção de Acesso à Informação&nbsp;nos portais eletrônicos&nbsp;dos Órgãos e Entidades&nbsp;Estaduais e Municipais</a>&nbsp;(arquivo pdf)</p>\r\n<p style=\"text-align: left;\"><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_InformacoesClassificadas.pdf\" target=\"_self\">Publicação do rol de informações&nbsp;classificadas e desclassificadas e&nbsp;de relatórios estatísticos sobre a&nbsp;Lei de Acesso à Informação</a>&nbsp;(arquivo pdf)</p>\r\n','',1,0,0,16,'2013-10-21 18:02:49',576,'','2013-10-23 20:23:12',576,0,'0000-00-00 00:00:00','2013-10-21 18:02:49','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,7,'','',1,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (9,53,'Auditoria',0x61756469746F726961,'','<div class=\"documentDescription description\" style=\"text-align: left;\">Nesta seção são divulgadas informações referentes ao resultado de inspeções, auditorias, prestações e tomada de contas realizadas no (a) [nome do órgão ou entidade]</div>\r\n<div id=\"content-core\" style=\"text-align: left;\">\r\n	<div id=\"parent-fieldname-text\">\r\n		<p>Os órgãos/entidades deverão disponibilizar os relatórios de gestão, os relatórios e certificados de auditoria, com pareceres do órgão de controle interno, e dos pronunciamentos dos ministros de Estado supervisores das áreas das autoridades de nível hierárquico equivalente, contidos nos processos de contas anuais, contendo a íntegra das peças e informações complementares contendo, minimamente, os seguintes dados:</p>\r\n		<ul>\r\n			<li><span>I - exercício ao qual se referem as contas;</span>\r\n			</li>\r\n			<li><span>II - código e descrição da respectiva unidade;</span>\r\n			</li>\r\n			<li><span>III - número do processo no órgão ou entidade de origem;</span>\r\n			</li>\r\n			<li><span>IV - número do processo no Tribunal de Contas da União;</span>\r\n			</li>\r\n			<li class=\"last-item\"><span>V - situação junto ao Tribunal de Contas da União, de modo que se informe se o processo foi entregue, sobrestado ou julgado.</span>\r\n			</li>\r\n		</ul>\r\n		<p><br />Caso o órgão/entidade já disponibilize as informações em seu portal eletrônico, poderá ser disponibilizado link para a área em que os relatórios já são divulgados.</p>\r\n		<p>Se o órgão/entidade ainda não divulga a informação em seu portal eletrônico, deverá providenciá-lo.</p>\r\n		<p><strong>Guias</strong>\r\n		</p>\r\n		<p>Para mais informações sobre a seção de Acesso à Informação, confira os guias elaborados pela Controladoria-Geral da União.</p>\r\n		<ul>\r\n			<li><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_SecaoSitios.pdf\" target=\"_self\">Guia para criação da seção de acesso à informação nos portais eletrônicos dos órgãos e entidades federais</a><span>&nbsp;<span>(arquivo pdf, tamanho: 1,14 MB)</span></span>\r\n			</li>\r\n			<li><a class=\"external-link\" title=\"\" href=\"http://www.cgu.gov.br/Publicacoes/BrasilTransparente/Guia_TransparenciaAtiva_EstadosMunicipios.pdf\" target=\"_self\">Guia para criação da&nbsp;Seção de Acesso à Informação&nbsp;nos portais eletrônicos&nbsp;dos Órgãos e Entidades&nbsp;Estaduais e Municipais</a><span>&nbsp;<span>(arquivo pdf, tamanho:1,27 MB)</span></span>\r\n			</li>\r\n			<li class=\"last-item\"><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_InformacoesClassificadas.pdf\" target=\"_self\">Publicação do rol de informações&nbsp;classificadas e desclassificadas e&nbsp;de relatórios estatísticos sobre a&nbsp;Lei de Acesso à Informação</a><span>&nbsp;<span>&nbsp;(arquivo pdf, tamanho: 682 KB)</span></span>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n','',1,0,0,16,'2013-10-21 18:03:23',576,'','2013-10-23 20:24:13',576,0,'0000-00-00 00:00:00','2013-10-21 18:03:23','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,6,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (10,54,'Convênios',0x636F6E76656E696F73,'','<div class=\"documentDescription description\" style=\"text-align: left;\">Nesta seção são divulgadas informações sobre os repasses e transferências de recursos financeiros efetuados pelo (a) [nome do órgão ou entidade]</div>\r\n<p style=\"text-align: left;\">As informações a serem divulgadas nesse item referem-se às transferências de recursos da União realizadas pelo órgão/entidade mediante convênios, contratos de repasse e termos de cooperação, ou instrumentos congêneres com órgãos ou entidades públicas ou privadas sem fins lucrativos. Incluem-se nesta seção as transferências constitucionais e legais, e as transferências de renda direta ao cidadão, realizadas pelo órgão ou entidade.</p>\r\n<p style=\"text-align: left;\"><span>Serão divulgadas as seguintes informações relativas aos convênios ou instrumentos congêneres celebrados pelo órgão/entidade:</span></p>\r\n<p style=\"text-align: left;\">I - órgão superior;<br />II - órgão subordinado ou entidade vinculada;<br />III - unidade gestora;<br />IV - nome do conveniado;<br />V - número do convênio;<br />VI - número do processo;<br />VII - objeto;<br />VIII - valor de repasse;<br />IX - valor da contrapartida do conveniado;<br />X - valor total dos recursos;<br />XI - período de vigência.</p>\r\n<p style=\"text-align: left;\">O órgão/entidade que divulga o referido conjunto de informações em seu portal eletrônico ou possui Página de Transparência poderá disponibilizar link remetendo para a área do portal onde as informações já estão disponíveis ou para sua respectiva Página de Transparência.</p>\r\n<p style=\"text-align: left;\">Se o órgão/entidade ainda não divulgar tais informações em seu portal eletrônico, ele poderá disponibilizar link para as consultas do Portal da Transparência que apresentam os respectivos dados/informações ou para o Sistema de Gestão de Convênios e Contratos de Repasse do Governo Federal (SICONV). Os links a serem indicados são:</p>\r\n<p style=\"text-align: left;\"><strong><span>Para o Portal da Transparência do Governo Federal<br /></span></strong><a class=\"external-link\" title=\"\" href=\"http://www.portaldatransparencia.gov.br/convenios/\" target=\"_self\">Seção Convênios</a><span>&nbsp;<br /></span><a class=\"external-link\" title=\"\" href=\"http://www.portaldatransparencia.gov.br/PortalTransparenciaPrincipal2.asp\" target=\"_self\">Seção Despesas - Transferências de Recursos</a></p>\r\n<p style=\"text-align: left;\"><span><strong>Para o Portal de Convênios (SICONV)</strong><br /></span><span>O link indicado é a opção de consulta&nbsp;</span><a class=\"external-link\" title=\"\" href=\"https://www.convenios.gov.br/portal/acessoLivre.html\" target=\"_self\">Lista convênios por Órgão</a></p>\r\n<p style=\"text-align: left;\"><strong>Guias</strong></p>\r\n<p style=\"text-align: left;\">Para mais informações sobre a seção de Acesso à Informação, confira os guias elaborados pela Controladoria-Geral da União.</p>\r\n<p style=\"text-align: left;\"><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_SecaoSitios.pdf\" target=\"_self\">Guia para criação da seção de acesso à informação nos portais eletrônicos dos órgãos e entidades federais</a>&nbsp;(arquivo pdf)</p>\r\n<p style=\"text-align: left;\"><a class=\"external-link\" title=\"\" href=\"http://www.cgu.gov.br/Publicacoes/BrasilTransparente/Guia_TransparenciaAtiva_EstadosMunicipios.pdf\" target=\"_self\">Guia para criação da&nbsp;Seção de Acesso à Informação&nbsp;nos portais eletrônicos&nbsp;dos Órgãos e Entidades&nbsp;Estaduais e Municipais</a>&nbsp;(arquivo pdf)</p>\r\n<p style=\"text-align: left;\"><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_InformacoesClassificadas.pdf\" target=\"_self\">Publicação do rol de informações&nbsp;classificadas e desclassificadas e&nbsp;de relatórios estatísticos sobre a&nbsp;Lei de Acesso à Informação</a>&nbsp;(arquivo pdf)</p>','',1,0,0,16,'2013-10-21 18:03:58',576,'','2013-10-23 20:24:33',576,0,'0000-00-00 00:00:00','2013-10-21 18:03:58','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,5,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (11,55,'Despesas',0x6465737065736173,'','<p style=\"text-align: left;\">Nesta seção são divulgadas informações sobre a execução orçamentária e financeira detalhada do (a) [nome do Órgão ou entidade]</p>\r\n<p style=\"text-align: left;\">São consideradas despesas quaisquer gastos com aquisição e contratação de obras e compras governamentais. A execução financeira é a utilização dos recursos financeiros visando atender à realização dos programas, ações e projetos e/ou subatividades atribuídos às unidades orçamentárias.</p>\r\n<p style=\"text-align: left;\">Deverão ser divulgados os seguintes dados e informações em relação à execução orçamentária e financeira dos órgãos/entidades:</p>\r\n<p style=\"text-align: left;\">&nbsp;&nbsp;&nbsp; I - Quadro de Detalhamento de Programas, por unidade orçamentária do órgão/entidade, contendo:<br />&nbsp;&nbsp;&nbsp; a) código e especificação dos programas orçamentários;<br />&nbsp;&nbsp;&nbsp; b) orçamento atualizado, levando em consideração os recursos consignados por programa na Lei Orçamentária Anual e em seus créditos adicionais;<br />&nbsp;&nbsp;&nbsp; c) valor liquidado no ano considerado, para exercícios encerrados, e valor liquidado até o mês considerado, para o exercício corrente;<br />&nbsp;&nbsp;&nbsp; d) valor pago no ano considerado, para exercícios encerrados, e valor pago até o mês considerado, para o exercício corrente;<br />&nbsp;&nbsp;&nbsp; e) percentual dos recursos liquidados comparados aos autorizados;<br />&nbsp;&nbsp;&nbsp; f) percentual dos recursos pagos comparados aos autorizados.</p>\r\n<p style=\"text-align: left;\">&nbsp;&nbsp;&nbsp; II - Quadro de Execução de Despesas, por unidade orçamentária dos órgãos e entidades, contendo:<br />&nbsp;&nbsp;&nbsp; a) descrição da natureza das despesas;<br />&nbsp;&nbsp;&nbsp; b) valor liquidado no ano considerado, para exercícios encerrados e valor liquidado até o mês considerado, para o exercício corrente;<br />&nbsp;&nbsp;&nbsp; c) valor pago no ano considerado, para exercícios encerrados e valor pago até o mês considerado, para o exercício corrente.</p>\r\n<p style=\"text-align: left;\">O órgão/entidade deverá detalhar suas despesas com diárias e passagens pagas a servidores públicos em viagens a trabalho ou a colaboradores eventuais em viagens no interesse da Administração, no seguinte nível de detalhe para cada trecho da viagem:</p>\r\n<p style=\"text-align: left;\">&nbsp;&nbsp;&nbsp; I - órgão superior;<br />&nbsp;&nbsp;&nbsp; II - órgão subordinado ou entidade vinculada;<br />&nbsp;&nbsp;&nbsp; III - unidade gestora;<br />&nbsp;&nbsp;&nbsp; IV - nome do servidor;<br />&nbsp;&nbsp;&nbsp; V - cargo;<br />&nbsp;&nbsp;&nbsp; VI - origem de todos os trechos da viagem;<br />&nbsp;&nbsp;&nbsp; VII - destino de todos os trechos da viagem;<br />&nbsp;&nbsp;&nbsp; VIII - período da viagem;<br />&nbsp;&nbsp;&nbsp; IX - motivo da viagem;<br />&nbsp;&nbsp;&nbsp; X - meio de transporte;<br />&nbsp;&nbsp;&nbsp; XI - categoria da passagem;<br />&nbsp;&nbsp;&nbsp; XII - valor da passagem;<br />&nbsp;&nbsp;&nbsp; XIII - número de diárias;<br />&nbsp;&nbsp;&nbsp; XIV - valor total das diárias;<br />&nbsp;&nbsp;&nbsp; XV - valor total da viagem.</p>\r\n<p style=\"text-align: left;\">O órgão/entidade que divulga o referido conjunto de informações em seu portal eletrônico ou possui Página de Transparência atualizada poderá disponibilizar link remetendo para a área do portal onde as informações já estão disponíveis ou para sua respectiva Página de Transparência.</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<div id=\"content-core\" style=\"text-align: left;\">\r\n<div id=\"parent-fieldname-text\">\r\n<p>O órgão/entidade que não disponibiliza dados de despesa em seu portal eletrônico e não possui Página de Transparência poderá disponibilizar o link do <a class=\"external-link\" title=\"\" href=\"http://www.portaltransparencia.gov.br/despesasdiarias/\" target=\"_self\">Portal da Transparência</a>&nbsp;para cumprir este item, exceto detalhamento de diárias e passagens. O Portal da Transparência do Governo Federal disponibiliza informações de execução orçamentária e financeira dos órgãos/entidades da Administração Federal. As informações são extraídas do <span>Sistema Integrado de Administração Financeira do Governo Federal (</span>SIAFI), portanto, são publicados no Portal da Transparência apenas os dados dos órgãos/entidades que utilizam o SIAFI. Nesses casos, o órgão/entidade poderá disponibilizar link de acesso para o Portal da Transparência. Os órgãos/entidades que não utilizam o SIAFI e cujas informações, portanto, não se encontram no Portal da Transparência, deverão divulgar por meio próprio suas informações de execução orçamentária e financeira.</p>\r\n<p><strong>Guias</strong></p>\r\n<p>Para mais informações sobre a seção de Acesso à Informação, confira os guias elaborados pela Controladoria-Geral da União.</p>\r\n<ul>\r\n<li><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_SecaoSitios.pdf\" target=\"_self\">Guia para criação da seção de acesso à informação nos portais eletrônicos dos órgãos e entidades federais</a><span>&nbsp;<span>(arquivo pdf, tamanho: 1,14 MB)</span></span></li>\r\n<li><a class=\"external-link\" title=\"\" href=\"http://www.cgu.gov.br/Publicacoes/BrasilTransparente/Guia_TransparenciaAtiva_EstadosMunicipios.pdf\" target=\"_self\">Guia para criação da&nbsp;Seção de Acesso à Informação&nbsp;nos portais eletrônicos&nbsp;dos Órgãos e Entidades&nbsp;Estaduais e Municipais</a><span>&nbsp;<span>(arquivo pdf, tamanho:1,27 MB)</span></span></li>\r\n<li class=\"last-item\"><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_InformacoesClassificadas.pdf\" target=\"_self\">Publicação do rol de informações&nbsp;classificadas e desclassificadas e&nbsp;de relatórios estatísticos sobre a&nbsp;Lei de Acesso à Informação</a><span>&nbsp;<span>(arquivo pdf, tamanho: 682 KB)</span></span></li>\r\n</ul>\r\n</div>\r\n</div>','',1,0,0,16,'2013-10-21 18:04:35',576,'','2013-10-23 20:24:47',576,0,'0000-00-00 00:00:00','2013-10-21 18:04:35','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,4,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (12,56,'Licitações e contratos',0x6C6963697461636F65732D652D636F6E747261746F73,'','<div class=\"documentDescription description\" style=\"text-align: left;\">Nesta seção são divulgadas as licitações e contratos realizados pelo (a) [nome do órgão ou entidade]</div>\r\n<div id=\"content-core\" style=\"text-align: left;\">\r\n<div id=\"parent-fieldname-text\">\r\n<p>As informações a serem divulgadas nesse tópico referem-se aos procedimentos licitatórios, às contratações e aos gastos diretos realizados pelo órgão/entidade.</p>\r\n<p>As seguintes informações, referentes às licitações realizadas e em andamento pelos órgãos/entidades deverão ser publicadas:</p>\r\n<p>I - órgão superior;<br />II - órgão subordinado ou entidade vinculada;<br />III - unidade administrativa dos serviços gerais (UASG);<br />IV - número da licitação;<br />V - número do processo;<br />VI - modalidade da licitação;<br />VII - objeto;<br />VIII - número de itens;<br />IX - data e hora da abertura;<br />X - local da abertura;<br />XI - cidade da abertura;<br />XII - Unidade da Federação da abertura;<br />XIII - situação da licitação (aberta ou homologada);<br />XIV - contato no órgão ou entidade responsável;<br />XV - atalho para solicitação, por meio de correio eletrônico, da íntegra de editais, atas, anexos, projetos básicos e informações adicionais, diretamente à área responsável do órgão ou entidade.</p>\r\n<p>As seguintes informações, relativas aos contratos firmados e notas de empenho expedidas pelos órgãos/entidades deverão ser disponibilizados:</p>\r\n<p>I - órgão superior;<br />II - órgão subordinado ou entidade vinculada;<br />III - unidade administrativa dos serviços gerais (UASG);<br />IV - número do contrato;<br />V - data de publicação no Diário Oficial da União;<br />VI - número do processo;<br />VII - modalidade da licitação;<br />VIII - nome do contratado;<br />IX - número de inscrição do contratado no Cadastro Nacional de Pessoas Jurídicas (CNPJ) ou no Cadastro de Pessoas Físicas (CPF);<br />X - objeto;<br />XI - fundamento legal;<br />XII - período de vigência;<br />XIII - valor do contrato;<br />XIV - situação do contrato (ativo, concluído, rescindido ou cancelado);<br />XV - atalho para solicitar ao órgão ou entidade responsável, via correio eletrônico, a íntegra do instrumento de contrato e respectivos aditivos;<br />XVI - relação de aditivos ao contrato com as seguintes informações:<br />a) número do aditivo;<br />b) data da publicação no Diário Oficial da União;<br />c) número do processo;<br />d) objeto do aditivo.</p>\r\n<p>O órgão/entidade que divulga o referido conjunto de informações em seu portal eletrônico ou possui Página de Transparência atualizada poderá disponibilizar link remetendo para a área do portal onde as informações já estão disponíveis ou para sua respectiva Página de Transparência.</p>\r\n<p>Para aqueles órgãos/entidades que não possuem Página de Transparência própria, as informações detalhadas sobre licitações e contratos poderão ser extraídas do Sistema Integrado de Administração de Serviços Gerais (SIASG) ou do próprio sistema do órgão.</p>\r\n<p><strong>Guias</strong></p>\r\n<p>Para mais informações sobre a seção de Acesso à Informação, confira os guias elaborados pela Controladoria-Geral da União.</p>\r\n<p><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_SecaoSitios.pdf\" target=\"_self\">Guia para criação da seção de acesso à informação nos portais eletrônicos dos órgãos e entidades federais</a>&nbsp;(arquivo pdf)</p>\r\n<p><a class=\"external-link\" title=\"\" href=\"http://www.cgu.gov.br/Publicacoes/BrasilTransparente/Guia_TransparenciaAtiva_EstadosMunicipios.pdf\" target=\"_self\">Guia para criação da&nbsp;Seção de Acesso à Informação&nbsp;nos portais eletrônicos&nbsp;dos Órgãos e Entidades&nbsp;Estaduais e Municipais</a>&nbsp;(arquivo pdf)</p>\r\n<p><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_InformacoesClassificadas.pdf\" target=\"_self\">Publicação do rol de informações&nbsp;classificadas e desclassificadas e&nbsp;de relatórios estatísticos sobre a&nbsp;Lei de Acesso à Informação</a>&nbsp;(arquivo pdf)</p>\r\n</div>\r\n</div>','',1,0,0,16,'2013-10-21 18:06:12',576,'','2013-10-23 20:25:11',576,0,'0000-00-00 00:00:00','2013-10-21 18:06:12','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `portal_modelo`.`pmgov2013_content` VALUES  (13,57,'Servidores',0x7365727669646F726573,'','<div class=\"documentDescription description\" style=\"text-align: left;\">Nesta seção são divulgadas informações sobre concursos públicos de provimento de cargos e relação dos servidores públicos lotados ou em exercício no (a) [nome do órgão ou entidade]</div>\r\n<div id=\"content-core\" style=\"text-align: left;\">\r\n<div id=\"parent-fieldname-text\">\r\n<p>Nesta seção, deverão ser publicadas as íntegras dos editais de concursos públicos para provimento de cargos realizados pelo órgão/entidade e a relação dos agentes públicos, efetivos ou não, lotados ou em exercício no órgão/entidade, apresentando as seguintes informações mínimas:</p>\r\n<ul>\r\n<li><span>I - número de identificação funcional;</span></li>\r\n<li><span>II - nome completo;</span></li>\r\n<li><span>III - CPF (ocultando os três primeiros dígitos e os dois dígitos verificadores do CPF);</span></li>\r\n<li><span>IV - cargo e função;</span></li>\r\n<li><span>V - lotação;</span></li>\r\n<li><span>VI - Regime Jurídico;</span></li>\r\n<li><span>VII - jornada de trabalho;</span></li>\r\n<li><span>VIII - ato de nomeação ou contratação;</span></li>\r\n<li><span>IX - respectiva data de publicação do ato;</span></li>\r\n<li><span>X - cargo efetivo ou permanente ou emprego permanente;</span></li>\r\n<li class=\"last-item\"><span>XI - órgão ou entidade de origem, no caso de servidor requisitado ou cedido.</span></li>\r\n</ul>\r\n<p>Membros de conselhos de administração ou fiscal da administração indireta também devem figurar nesta relação, assim como militares das Forças Armadas. Agentes públicos cujo exercício profissional é protegido por sigilo, em atendimento à legislação vigente, não devem figurar nesta relação.</p>\r\n<p>O órgão/entidade que utiliza o Sistema Integrado de Administração de Recursos Humanos (SIAPE) poderá, para cumprir este item, disponibilizar link para consulta “Servidores” do Portal da Transparência, disponível no <a class=\"external-link\" title=\"\" href=\"http://www.portaldatransparencia.gov.br/servidores\" target=\"_self\">Portal da Transparência</a>.</p>\r\n<p>A entidade da Administração Indireta, incluindo agências reguladoras e conselhos de administração e fiscal, cujos registros de servidores não estão no SIAPE, deverá disponibilizar a relação de servidores e agentes públicos, ou, caso já tenha a informação em seu portal eletrônico, remeter para área onde estão disponíveis essas informações.</p>\r\n<p><strong>Guias</strong></p>\r\n<p>Para mais informações sobre a seção de Acesso à Informação, confira os guias elaborados pela Controladoria-Geral da União.</p>\r\n<ul>\r\n<li><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_SecaoSitios.pdf\" target=\"_self\">Guia para criação da seção de acesso à informação nos portais eletrônicos dos órgãos e entidades federais</a><span>&nbsp;<span>(arquivo pdf, tamanho: 1,14 MB)</span></span></li>\r\n<li><a class=\"external-link\" title=\"\" href=\"http://www.cgu.gov.br/Publicacoes/BrasilTransparente/Guia_TransparenciaAtiva_EstadosMunicipios.pdf\" target=\"_self\">Guia para criação da&nbsp;Seção de Acesso à Informação&nbsp;nos portais eletrônicos&nbsp;dos Órgãos e Entidades&nbsp;Estaduais e Municipais</a><span>&nbsp;<span>(arquivo pdf, tamanho:1,27 MB)</span></span></li>\r\n<li class=\"last-item\"><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_InformacoesClassificadas.pdf\" target=\"_self\">Publicação do rol de informações&nbsp;classificadas e desclassificadas e&nbsp;de relatórios estatísticos sobre a&nbsp;Lei de Acesso à Informação</a><span>&nbsp;<span>(arquivo pdf, tamanho: 682 KB)</span></span></li>\r\n</ul>\r\n</div>\r\n</div>','',1,0,0,16,'2013-10-21 18:06:44',576,'','2013-10-23 20:25:46',576,0,'0000-00-00 00:00:00','2013-10-21 18:06:44','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,2,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (14,58,'Informações classificadas',0x696E666F726D61636F65732D636C6173736966696361646173,'','<div class=\"documentDescription description\" style=\"text-align: left;\">Nesta seção são divulgados o rol das informações classificadas em cada grau de sigilo e o rol das informações desclassificadas nos últimos doze meses no âmbito do [nome do órgão ou entidade]</div>\r\n<div id=\"content-core\" style=\"text-align: left;\">\r\n<div id=\"parent-fieldname-text\">\r\n<p>O novo item de navegação “Informações classificadas” deverá trazer um texto explicativo sobre o seu&nbsp;objetivo de atender aos incisos I e II, do Art. 45, do <a class=\"external-link\" title=\"\" href=\"http://www.planalto.gov.br/ccivil_03/_ato2011-2014/2012/Decreto/D7724.htm\" target=\"_self\">Decreto nº 7.724/2012</a>.</p>\r\n<p>A página deverá conter duas áreas específicas para a apresentação das listagens requeridas, com as seguintes&nbsp;nomenclaturas:</p>\r\n<p>• Rol de informações classificadas<br />• Rol de informações desclassificadas</p>\r\n<p><strong>Conteúdo da área “rol de informações desclassificadas”</strong></p>\r\n<p>Essa área deverá conter os Números Únicos de Protocolo (NUP) de todos os documentos desclassificados&nbsp;desde a entrada em vigor da Lei de Acesso à Informação.</p>\r\n<p><strong>Conteúdo da área “rol de informações classificadas”</strong></p>\r\n<p>O conteúdo dessa área deverá apresentar as seguintes informações:</p>\r\n<p>• Código de Indexação de Documento que contém Informação Classificada – CIDIC;<br />• Categoria na qual se enquadra a informação;<br />• Indicação do dispositivo legal que fundamenta a classificação;<br />• Data da produção da informação;<br />• Data da classificação;<br />• Prazo da classificação.</p>\r\n<p>Somente devem ser incluídas no “Rol de informações classificadas” as informações classificadas nos termos&nbsp;do §1º do art. 24 da <a class=\"external-link\" title=\"\" href=\"http://www.planalto.gov.br/ccivil_03/_ato2011-2014/2011/lei/l12527.htm\" target=\"_self\">Lei nº 12.527/2011</a>, ou seja, como reservadas, secretas ou ultrassecretas. Por isso,&nbsp;informações cujo sigilo seja devido a outras legislações (como fiscal e tributária), documentos preparatórios&nbsp;e informações pessoais não estão sujeitos aos termos de divulgação apresentados neste guia.</p>\r\n<p><strong>a) Formato de apresentação do CIDIC<br /></strong><br />O formato de apresentação do Código de Indexação de Documento que contém Informação Classificada<br />(CIDIC) obedece às seguintes regras, de acordo com os artigos 50 a 54 do <a class=\"external-link\" title=\"\" href=\"http://www.planalto.gov.br/ccivil_03/_ato2011-2014/2012/Decreto/D7845.htm\" target=\"_self\">Decreto nº 7.845/2012</a>:</p>\r\n<p>1. A 1ª parte do CIDIC corresponde ao Número Único de Protocolo – NUP do documento que&nbsp;contém a informação. Este é um código exclusivamente numérico;<br />2. A 2ª parte do CIDIC, separada da 1ª parte por um “.”, iniciará sempre por um caractere alfabético&nbsp;(“U”, “S” ou “R”), de acordo com o grau de sigilo. Além disso, deve prever até o máximo de 39 posições,&nbsp;com caracteres alfanuméricos e separadores;<br />3. Os separadores utilizados serão: “.” e “/” (este último, para as datas);<br />4. Para as informações classificadas no grau reservado e secreto, a 2ª parte do CIDIC terá sempre 28&nbsp;posições com caracteres alfanuméricos e separadores;<br />5. Para as informações classificadas no grau ultrassecreto, a 2ª parte do CIDIC terá 28 posições com&nbsp;<span>caracteres alfanuméricos e separadores, enquanto não ocorrer prorrogação do prazo do sigilo;<br /></span><span>6. Quando ocorrer a prorrogação do prazo de sigilo da informação classificada no grau ultrassecreto,&nbsp;</span><span>a nova data deverá constar no final da 2ª parte do CIDIC, totalizando 39 posições com caracteres&nbsp;</span><span>alfanuméricos e separadores;</span></p>\r\n<p><strong>b) Categoria na qual se enquadra a informação</strong></p>\r\n<p>A divulgação da informação “categoria na qual se enquadra a informação” deve obedecer os padrões estabelecidos&nbsp;no Vocabulário Controlado de Governo Eletrônico – VCGE (Anexo II do Decreto 7.845/2012).&nbsp;Trata-se de um padrão criado para facilitar e uniformizar a classificação dos tipos de informações tratadas&nbsp;em todo o Governo Federal.</p>\r\n<p>Para consultar o VCGE, acesse: <a href=\"http://vocab.e.gov.br/2011/03/vcge#esquema\">http://vocab.e.gov.br/2011/03/vcge#esquema</a>&nbsp;Deve-se utilizar apenas o primeiro nível do Vocabulário.</p>\r\n<p><strong>c) Fundamentação legal da classificação</strong></p>\r\n<p>Para indicar a fundamentação legal da classificação, deve-se fazer referência ao inciso do artigo 23 da <a class=\"external-link\" title=\"\" href=\"http://www.planalto.gov.br/ccivil_03/_ato2011-2014/2011/lei/l12527.htm\" target=\"_self\">Lei&nbsp;nº 12.527/2011</a> utilizado como justificativa para a classificação da informação.</p>\r\n<p><strong>d) Formato para publicação das listagens</strong></p>\r\n<p>A disponibilização das listagens deve observar o disposto no artigo 8º, parágrafo 3, inciso II, da <a class=\"external-link\" title=\"\" href=\"http://www.planalto.gov.br/ccivil_03/_Ato2011-2014/2011/Lei/L12527.htm\" target=\"_self\">Lei de Acesso&nbsp;à Informação</a>, ou seja, as informações devem ser publicadas em formatos “abertos e não proprietários,&nbsp;tais como planilhas e texto, de modo a facilitar a análise das informações”. Também devem ser observados&nbsp;os padrões estabelecidos pela e-PING - Padrões de Interoperabilidade de Governo Eletrônico.&nbsp;O formato (como, por exemplo, html, csv, ods, etc.) a ser utilizado pode ser definido pelo próprio órgão&nbsp;ou entidade, considerando as normas e procedimentos internos de segurança da informação.</p>\r\n<p><strong>Guias</strong></p>\r\n<p>Para mais informações sobre a seção de Acesso à Informação, confira os guias elaborados pela Controladoria-Geral da União.</p>\r\n<p><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_SecaoSitios.pdf\" target=\"_self\">Guia para criação da seção de acesso à informação nos portais eletrônicos dos órgãos e entidades federais</a>&nbsp;(arquivo pdf)</p>\r\n<p><a class=\"external-link\" title=\"\" href=\"http://www.cgu.gov.br/Publicacoes/BrasilTransparente/Guia_TransparenciaAtiva_EstadosMunicipios.pdf\" target=\"_self\">Guia para criação da&nbsp;Seção de Acesso à Informação&nbsp;nos portais eletrônicos&nbsp;dos Órgãos e Entidades&nbsp;Estaduais e Municipais</a>&nbsp;(arquivo pdf)</p>\r\n<p><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_InformacoesClassificadas.pdf\" target=\"_self\">Publicação do rol de informações&nbsp;classificadas e desclassificadas e&nbsp;de relatórios estatísticos sobre a&nbsp;Lei de Acesso à Informação</a>&nbsp;(arquivo pdf)</p>\r\n</div>\r\n</div>','',1,0,0,16,'2013-10-21 18:07:21',576,'','2013-10-23 20:25:01',576,0,'0000-00-00 00:00:00','2013-10-21 18:07:21','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,1,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (15,59,'Serviço de Informação ao Cidadão (SIC)',0x7365727669636F2D64652D696E666F726D6163616F2D616F2D6369646164616F2D736963,'','<div class=\"documentDescription description\" style=\"text-align: left;\">Nesta seção são divulgadas as informações sobre o Sistema de Informações ao Cidadão (SIC), pertinentes ao seu funcionamento, localização e dados de contato no âmbito do (a) [nome do órgão ou entidade]</div>\r\n<div id=\"content-core\" style=\"text-align: left;\">\r\n<div id=\"parent-fieldname-text\">\r\n<p>Nesse tópico o órgão/entidade disponibilizará as seguintes informações sobre o(s) Serviço(s) de Informação ao Cidadão (SICs), de que trata o artigo 9º da Lei de Acesso à Informação:</p>\r\n<p><span>I - localização;</span><br />II - horário de funcionamento;<br />III - nome dos servidores responsáveis pelo SIC;<br />IV - telefone e e-mails específicos para orientação e esclarecimentos de dúvidas, tais como sobre a protocolização de requerimentos de acesso à informação; a tramitação de solicitação de informação;<br />V - nome da autoridade do órgão responsável pelo monitoramento da implementação da Lei de Acesso à Informação no âmbito do órgão/entidade (autoridade prevista no artigo 40º da Lei 12.527/11).</p>\r\n<p>Também será disponibilizado neste item modelo de formulário de solicitação de informação para aqueles que queiram apresentam o pedido em meio físico (papel) junto ao SIC.</p>\r\n<p><span>Adicionalmente, o órgão ou entidade deverá disponibilizar eventuais informações sobre os procedimentos que os cidadãos deverão adotar para solicitar acesso à informação perante o respectivo órgão/entidade.</span></p>\r\n<p>Neste item, o órgão/entidade deverá disponibilizar link para o Sistema de Solicitação de Acesso à Informação do Poder Executivo Federal, a ser disponibilizado pela Controladoria-Geral da União (CGU), o qual permitirá que o requerente selecione o órgão ou entidade para o qual deseja endereçar pedido de acesso à informação. A CGU entrará em contato com todas as autoridades responsáveis pela implementação da Lei de Acesso à Informação dos órgãos/entidades a fim de indicar o exato link onde estará disponível a referida informação, bem como receber indicação do nome do servidor que deverá ser cadastrado para ter acesso ao sistema.</p>\r\n<p><strong>Guias</strong></p>\r\n<p>Para mais informações sobre a seção de Acesso à Informação, confira os guias elaborados pela Controladoria-Geral da União.</p>\r\n<p><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_SecaoSitios.pdf\" target=\"_self\">Guia para criação da seção de acesso à informação nos portais eletrônicos dos órgãos e entidades federais</a>&nbsp;(arquivo pdf)</p>\r\n<p><a class=\"external-link\" title=\"\" href=\"http://www.cgu.gov.br/Publicacoes/BrasilTransparente/Guia_TransparenciaAtiva_EstadosMunicipios.pdf\" target=\"_self\">Guia para criação da&nbsp;Seção de Acesso à Informação&nbsp;nos portais eletrônicos&nbsp;dos Órgãos e Entidades&nbsp;Estaduais e Municipais</a>&nbsp;(arquivo pdf)</p>\r\n<p><a class=\"external-link\" title=\"\" href=\"http://www.acessoainformacao.gov.br/acessoainformacaogov/espaco-gestor/arquivos/Guia_InformacoesClassificadas.pdf\" target=\"_self\">Publicação do rol de informações&nbsp;classificadas e desclassificadas e&nbsp;de relatórios estatísticos sobre a&nbsp;Lei de Acesso à Informação</a>&nbsp;(arquivo pdf)</p>\r\n</div>\r\n</div>','',1,0,0,16,'2013-10-21 18:07:56',576,'','2013-10-23 20:25:24',576,0,'0000-00-00 00:00:00','2013-10-21 18:07:56','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (16,69,'Texto 1 - Título da notícia entre 35 e 90 caracteres',0x746578746F2D312D746974756C6F2D64612D6E6F74696369612D656E7472652D33352D652D39302D63617261637465726573,'','<h1 class=\"documentFirstHeading\" style=\"text-align: left;\">Texto 1 - Título da notícia entre 35 e 90 caracteres</h1>\r\n<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chaéeu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Subtitulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">&nbsp;</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">\r\n<p><img style=\"margin-right: 10px; float: left;\" src=\"images/imagens_menu/conteudos_de_marcacao/nitf_custom_galleria.jpeg\" alt=\"nitf custom galleria\" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><span style=\"font-size: 8pt;\">Legenda da foto (arquivo .JPG) deve</span></p>\r\n<p><span style=\"font-size: 8pt;\"> ter até 60 caracteres,</span></p>\r\n<p><span style=\"font-size: 8pt;\"> preferencialmente</span></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>\r\n<object data=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" type=\"application/x-shockwave-flash\" width=\"640\" height=\"480\"><param name=\"movie\" value=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" /><param name=\"allowFullScreen\" value=\"true\" /><param name=\"allowscriptaccess\" value=\"always\" /></object>\r\n</p>','',1,0,0,17,'2013-10-21 18:35:16',576,'','2013-10-22 20:44:43',576,0,'0000-00-00 00:00:00','2013-10-21 18:35:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,11,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (17,70,'Release 5: Título do release entre 35 e 90 caracteres',0x72656C656173652D352D746974756C6F2D646F2D72656C656173652D656E7472652D33352D652D39302D63617261637465726573,'','<p style=\"text-align: left;\">Chapéu da editoria<br />Subtítulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</p>\r\n<p style=\"text-align: left;\"><img style=\"margin-right: 10px; float: left;\" src=\"images/imagens_menu/conteudos_de_marcacao/nitf_custom_galleria.jpeg\" alt=\"\" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\"><strong>Subtítulo em negrito</strong></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">&nbsp;&nbsp;&nbsp; Use o estilo Citação, localizado no campo Corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\"><strong>Subtítulo em negrito</strong></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp; \r\n<object data=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" type=\"application/x-shockwave-flash\" width=\"640\" height=\"480\"><param name=\"movie\" value=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" /><param name=\"allowFullScreen\" value=\"true\" /><param name=\"allowscriptaccess\" value=\"always\" /></object>\r\n</p>','',1,0,0,17,'2013-10-22 19:42:21',576,'','2013-10-23 20:41:04',576,0,'0000-00-00 00:00:00','2013-10-22 19:42:21','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',10,0,10,'','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (18,71,'Release 4: Título do release entre 35 e 90 caracteres',0x72656C656173652D342D746974756C6F2D646F2D72656C656173652D656E7472652D33352D652D39302D63617261637465726573,'','<h1 class=\"documentFirstHeading\" style=\"text-align: left;\">Release 4: Título do release entre 35 e 90 caracteres</h1>\r\n<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chaéeu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Subtitulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">&nbsp;</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">\r\n<p><img style=\"margin-right: 10px; float: left;\" src=\"images/imagens_menu/conteudos_de_marcacao/nitf_custom_galleria.jpeg\" alt=\"nitf custom galleria\" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><span style=\"font-size: 8pt;\">Legenda da foto (arquivo .JPG) deve</span></p>\r\n<p><span style=\"font-size: 8pt;\"> ter até 60 caracteres,</span></p>\r\n<p><span style=\"font-size: 8pt;\"> preferencialmente</span></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>\r\n<object data=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" type=\"application/x-shockwave-flash\" width=\"640\" height=\"480\"><param name=\"movie\" value=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" /><param name=\"allowFullScreen\" value=\"true\" /><param name=\"allowscriptaccess\" value=\"always\" /></object>\r\n</p>','',1,0,0,17,'2013-10-21 18:35:16',576,'','2013-10-23 20:37:52',576,0,'0000-00-00 00:00:00','2013-10-21 18:35:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,9,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (19,72,'Release 1: Título do release entre 35 e 90 caracteres',0x72656C656173652D312D746974756C6F2D646F2D72656C656173652D656E7472652D33352D652D39302D63617261637465726573,'','<h1 class=\"documentFirstHeading\" style=\"text-align: left;\">Texto 1 - Título da notícia entre 35 e 90 caracteres</h1>\r\n<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chaéeu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Subtitulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">&nbsp;</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">\r\n<p><img style=\"margin-right: 10px; float: left;\" src=\"images/imagens_menu/conteudos_de_marcacao/nitf_custom_galleria.jpeg\" alt=\"nitf custom galleria\" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><span style=\"font-size: 8pt;\">Legenda da foto (arquivo .JPG) deve</span></p>\r\n<p><span style=\"font-size: 8pt;\"> ter até 60 caracteres,</span></p>\r\n<p><span style=\"font-size: 8pt;\"> preferencialmente</span></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>\r\n<object data=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" type=\"application/x-shockwave-flash\" width=\"640\" height=\"480\"><param name=\"movie\" value=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" /><param name=\"allowFullScreen\" value=\"true\" /><param name=\"allowscriptaccess\" value=\"always\" /></object>\r\n</p>','',1,0,0,17,'2013-10-21 18:35:16',576,'','2013-10-23 20:32:21',576,0,'0000-00-00 00:00:00','2013-10-21 18:35:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,8,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (20,73,'Release 2: Título do release entre 35 e 90 caracteres',0x72656C656173652D322D746974756C6F2D646F2D72656C656173652D656E7472652D33352D652D39302D63617261637465726573,'','<h1 class=\"documentFirstHeading\" style=\"text-align: left;\">Texto 1 - Título da notícia entre 35 e 90 caracteres</h1>\r\n<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chaéeu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Subtitulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">&nbsp;</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">\r\n<p><img style=\"margin-right: 10px; float: left;\" src=\"images/imagens_menu/conteudos_de_marcacao/nitf_custom_galleria.jpeg\" alt=\"nitf custom galleria\" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><span style=\"font-size: 8pt;\">Legenda da foto (arquivo .JPG) deve</span></p>\r\n<p><span style=\"font-size: 8pt;\"> ter até 60 caracteres,</span></p>\r\n<p><span style=\"font-size: 8pt;\"> preferencialmente</span></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>\r\n<object data=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" type=\"application/x-shockwave-flash\" width=\"640\" height=\"480\"><param name=\"movie\" value=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" /><param name=\"allowFullScreen\" value=\"true\" /><param name=\"allowscriptaccess\" value=\"always\" /></object>\r\n</p>','',1,0,0,17,'2013-10-21 18:35:16',576,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-21 18:35:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,7,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (21,74,'Release 3: Título do release entre 35 e 90 caracteres',0x72656C656173652D332D746974756C6F2D646F2D72656C656173652D656E7472652D33352D652D39302D63617261637465726573,'','<h1 class=\"documentFirstHeading\" style=\"text-align: left;\">Texto 1 - Título da notícia entre 35 e 90 caracteres</h1>\r\n<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chaéeu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Subtitulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">&nbsp;</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">\r\n<p><img style=\"margin-right: 10px; float: left;\" src=\"images/imagens_menu/conteudos_de_marcacao/nitf_custom_galleria.jpeg\" alt=\"nitf custom galleria\" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><span style=\"font-size: 8pt;\">Legenda da foto (arquivo .JPG) deve</span></p>\r\n<p><span style=\"font-size: 8pt;\"> ter até 60 caracteres,</span></p>\r\n<p><span style=\"font-size: 8pt;\"> preferencialmente</span></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>\r\n<object data=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" type=\"application/x-shockwave-flash\" width=\"640\" height=\"480\"><param name=\"movie\" value=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" /><param name=\"allowFullScreen\" value=\"true\" /><param name=\"allowscriptaccess\" value=\"always\" /></object>\r\n</p>','',1,0,0,17,'2013-10-21 18:35:16',576,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-21 18:35:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,6,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (22,75,'Texto 3 - Título da notícia entre 35 e 90 caracteres',0x746578746F2D332D746974756C6F2D64612D6E6F74696369612D656E7472652D33352D652D39302D63617261637465726573,'','<h1 class=\"documentFirstHeading\" style=\"text-align: left;\">Subtítulo do texto 3. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</h1>\r\n<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chaéeu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Subtítulo do texto 3. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">&nbsp;</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\"><span class=\"copyright\">Crédito da imagem</span></div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">&nbsp;<img id=\"Legenda da foto (arquivo .JPG) deve ter até 60 caracteres, preferencialmente\" class=\"Legenda da foto (arquivo .JPG) deve ter até 60 caracteres, preferencialmente\" style=\"margin-right: 10px; float: left;\" title=\"Legenda da foto (arquivo .JPG) deve ter até 60 caracteres, preferencialmente\" lang=\"Legenda da foto (arquivo .JPG) deve ter até 60 caracteres, preferencialmente\" src=\"images/imagens_menu/conteudos_de_marcacao/nitf_custom_galleria.jpeg\" alt=\"nitf custom galleria\" longdesc=\"Legenda da foto (arquivo .JPG) deve ter até 60 caracteres, preferencialmente\" usemap=\"Legenda da foto (arquivo .JPG) deve ter até 60 caracteres, preferencialmente\" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 8pt;\">Legenda da foto (arquivo .JPG) deve</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 8pt;\"> ter até 60 caracteres,</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 8pt;\"> preferencialmente</span></p>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;&nbsp;&nbsp; Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>','',1,0,0,17,'2013-10-21 18:35:16',576,'','2013-10-23 20:44:29',576,0,'0000-00-00 00:00:00','2013-10-21 18:35:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',16,0,5,'','',1,12,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `portal_modelo`.`pmgov2013_content` VALUES  (23,76,'Texto 4 - Título da notícia entre 35 e 90 caracteres',0x746578746F2D342D746974756C6F2D64612D6E6F74696369612D656E7472652D33352D652D39302D63617261637465726573,'','<h1 class=\"documentFirstHeading\" style=\"text-align: left;\">Texto 4 - Título da notícia entre 35 e 90 caracteres</h1>\r\n<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chaéeu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Texto 4 - Título da notícia entre 35 e 90 caracteres</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">&nbsp;</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">\r\n<p><a title=\"Legenda da foto (arquivo .JPG) deve ter até 60 caracteres, preferencialmente\" href=\"images/imagens_menu/imagem-noticia-vertical-tamanho-550.jpeg\"><img style=\"margin-right: 10px; float: left;\" src=\"images/imagens_menu/imagem-noticia-vertical-tamanho-550.jpeg\" alt=\"imagem-noticia-vertical-tamanho-550\" /></a>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 8pt;\">Legenda da foto (arquivo .JPG) deve</span></p>\r\n<p><span style=\"font-size: 8pt;\"> ter até 60 caracteres,</span></p>\r\n<p><span style=\"font-size: 8pt;\"> preferencialmente</span></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p>\r\n<object data=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" type=\"application/x-shockwave-flash\" width=\"640\" height=\"480\"><param name=\"movie\" value=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" /><param name=\"allowFullScreen\" value=\"true\" /><param name=\"allowscriptaccess\" value=\"always\" /></object>\r\n</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n</div>','',1,0,0,17,'2013-10-21 18:35:16',576,'','2013-10-23 20:46:00',576,0,'0000-00-00 00:00:00','2013-10-21 18:35:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',12,0,4,'','',1,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (24,77,'Texto 5 - Título da notícia entre 35 e 90 caracteres',0x746578746F2D352D746974756C6F2D64612D6E6F74696369612D656E7472652D33352D652D39302D63617261637465726573,'','<h1 class=\"documentFirstHeading\" style=\"text-align: left;\">Texto 5 - Título da notícia entre 35 e 90 caracteres</h1>\r\n<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chaéeu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Subtítulo do texto 5. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</div>\r\n<div style=\"text-align: left;\">\r\n<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><strong>Subtítulo em negrito</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>\r\n<p style=\"text-align: left;\">&nbsp;</p>','',1,0,0,17,'2013-10-21 18:35:16',576,'','2013-10-22 21:30:03',576,0,'0000-00-00 00:00:00','2013-10-21 18:35:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,3,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (25,78,'Texto 2 - Título da notícia entre 35 e 90 caracteres',0x746578746F2D322D746974756C6F2D64612D6E6F74696369612D656E7472652D33352D652D39302D63617261637465726573,'','<h1 class=\"documentFirstHeading\" style=\"text-align: left;\">Texto 2 - Título da notícia entre 35 e 90 caracteres</h1>\r\n<h2 class=\"nitfSubtitle\" style=\"text-align: left;\">Chaéeu da editoria</h2>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">Subtitulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres</div>\r\n<div class=\"documentDescription\" style=\"text-align: left;\">&nbsp;\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>\r\n<object data=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" type=\"application/x-shockwave-flash\" width=\"640\" height=\"480\"><param name=\"movie\" value=\"//www.youtube-nocookie.com/v/Vj1MpR3iER4?hl=pt_BR&amp;version=3&amp;rel=0\" /><param name=\"allowFullScreen\" value=\"true\" /><param name=\"allowscriptaccess\" value=\"always\" /></object>\r\n</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\"><strong>Subtítulo em negrito</strong></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<blockquote class=\"pullquote\">Use o estilo citação, localizado no campo corpo do texto, para criar um olho na sua matéria. Não há um limite de caracteres</blockquote>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\"><strong>Subtítulo em negrito</strong></p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','',1,0,0,17,'2013-10-21 18:35:16',576,'','2013-10-23 20:43:54',576,0,'0000-00-00 00:00:00','2013-10-21 18:35:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,2,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (26,79,'Conheça o novo modelo de plataforma digital do governo federal',0x636F6E686563612D6F2D6E6F766F2D6D6F64656C6F2D64652D706C617461666F726D612D6469676974616C2D646F2D676F7665726E6F2D6665646572616C,'','<p style=\"text-align: left;\">Estrutura reúne o que há de mais adequado em soluções digitais de acessibilidade e de divulgação de informações nos mais variados formatos; conheça todos os detalhes deste novo modelo</p>\r\n<p style=\"text-align: left;\"><span>Para otimizar a comunicação com o cidadão, foi criada a Identidade Digital de Governo. Esse projeto busca padronizar os portais dos órgãos públicos federais e alinhar as informações com foco no cidadão.</span></p>\r\n<p style=\"text-align: left;\"><span><span>Os conteúdos, módulos e funcionalidades foram criados para facilitar o acesso aos serviços oferecidos pelo Governo Federal, assim como possibilitam, por meio de vídeos, infográficos, textos, aplicativos, vídeos, que as notícias sejam facilmente compreendidas.</span></span></p>\r\n<p style=\"text-align: left;\"><a href=\"index.php/manuais\">Acesse os manuais que irão auxiliar na montagem de sites dos órgãos do governo federal</a></p>\r\n<p style=\"text-align: left;\"><span><span><span>A nova Identidade também garante uma navegação acessível, para pessoas com deficiência, e adota conceito de web responsiva, ou seja, a páginas se adaptam automaticamente e podem ser visualizadas tanto em um computador quanto em smartphones e tablets, garantindo uma visualização mais uniforme.</span></span></span></p>\r\n<p style=\"text-align: left;\"><span>Navegue pelo portal e conheça todas as aplicações possíveis para os mais variados conteúdos, sejam vídeos, imagens, áudios e textos.</span></p>\r\n<p style=\"text-align: left;\">Bom trabalho!</p>','',1,0,0,27,'2013-10-23 20:51:50',576,'','2013-10-23 21:31:08',576,0,'0000-00-00 00:00:00','2013-10-23 20:51:50','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,1,'','',1,39,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (27,80,'Manuais',0x6D616E75616973,'','<p>&nbsp;</p>\r\n<table class=\"plain\">\r\n<tbody>\r\n<tr>\r\n<td><a class=\"internal-link\" title=\"\" href=\"resolveuid/104ed19893a1441bb4cb47cfe6f59611\" target=\"_self\"> <img class=\"image-inline\" style=\"margin: 10px;\" title=\"Imagem da capa do Manual de diretrizes de comunicação da identidade digital\" src=\"images/imagens_menu/manuais/diretrizes.jpeg\" alt=\"diretrizes\" /> </a></td>\r\n<td>\r\n<p><span> <strong><a href=\"images/manuais/diretrizes-de-comunicacao_v2_final.pdf\">Manual de Diretrizes de Comunicação da Identidade Digital de Governo</a><a class=\"internal-link\" title=\"Manual de diretrizes de comunicação da identidade digital do governo\" href=\"resolveuid/104ed19893a1441bb4cb47cfe6f59611\" target=\"_self\"></a> </strong><br /> Material foi desenvolvido com objetivo de apresentar as funções, vantagens e características do Portal Padrão, parte integrante do Projeto de Identidade Digital do Governo Federal. <br /> <br /> versão 2.0 / outubro de 2013 </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><img class=\"image-inline\" style=\"margin: 10px;\" title=\"Imagem da capa do Guia de Estilo do Portal Padrão para Identidade Digital de Governo\" src=\"images/imagens_menu/manuais/guia_de_estilo.jpeg\" alt=\"guia de estilo\" /></td>\r\n<td>\r\n<p><span> <strong> Guia de Estilo do Portal Padrão para Identidade Digital de Governo (em breve) <br /> </strong> </span><span style=\"line-height: 1.5em;\">Guia Visual lista as funções, características e relações estruturais entre os diversos elementos do projeto gráfico, possibilitando a compreensão do conjunto e ao mesmo tempo oferecendo as informações necessárias para sua correta replicação.</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><a class=\"external-link\" title=\"\" href=\"http://identidade-digital-de-governo-plone.readthedocs.org/en/latest/\" target=\"_self\"> <img class=\"image-inline\" style=\"margin: 10px;\" title=\"Imagem capa Manual Técnico de Instalação do Portal Padrão\" src=\"images/imagens_menu/manuais/manual_tecnico.jpeg\" alt=\"manual tecnico\" /> </a></td>\r\n<td><span> <strong> <a class=\"external-link\" title=\"Manual técnico de instalação do Portal Padrão\" href=\"http://identidade-digital-de-governo-plone.readthedocs.org/en/latest/\" target=\"_self\">Manual técnico de instalação do Portal Padrão para Identidade Digital de Governo</a> </strong> <br /> Este documento explica como instalar a implementação modelo do Portal Padrão utilizando o Plone, em um computador com sistema operacional Linux, empregando a distribuição Debian ou Ubuntu. </span></td>\r\n</tr>\r\n<tr>\r\n<td><a class=\"internal-link\" title=\"\" href=\"resolveuid/7022edde8ccf445f97f66f97758a310a\" target=\"_self\"> <img class=\"image-inline\" title=\"Imagem da capa do Manual de Gestão de Conteúdo em Plone do Portal Padrão\" src=\"images/imagens_menu/manuais/guia_de_conteudo_plone.jpeg\" alt=\"guia de conteudo plone\" /> </a></td>\r\n<td>\r\n<div>\r\n<p><strong><a href=\"images/manuais/manual-gestao-de-conteudo-em-plone-do-portal-padrao.pdf\">Manual de Gestão de Conteúdo em Plone do Portal Padrão para Identidade Digital de Governo</a> (arquivo em pdf) </strong><br /> Objetivo desse manual é apresentar a versão 4.3 do Plone e seus principais recursos, habilitando o leitor a utilizar suas ferramentas para a gestão de conteúdo e consequente aplicação nos demais sites do governo federal desenvolvidos em Plone.</p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"row\" data-layout-type=\"row\">\r\n<div class=\"cell width-16 position-0 \" data-panel=\"\">\r\n<div>\r\n<div id=\"f96ec405e1814727beff88b52307485b\" class=\"tile azul-escuro\" data-tile=\"@@standaloneheader/f96ec405e1814727beff88b52307485b\">\r\n<div class=\"outstanding-header\">\r\n<h3 class=\"outstanding-title\" style=\"text-align: left;\">Outros manuais</h3>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div id=\"dbe92e9afafe46cd8001b4f3690d1004\" class=\"tile tile-default\" data-tile=\"@@collective.cover.richtext/dbe92e9afafe46cd8001b4f3690d1004\">\r\n<div class=\"tile-content\">\r\n<p style=\"text-align: left;\">Acesse a documentação abaixo para auxílio no desenvolvimento do portal padrão:</p>\r\n<p style=\"text-align: left;\"><strong> <a class=\"external-link\" title=\"Administração de sites e portais\" href=\"https://www.governoeletronico.gov.br/acoes-e-projetos/padroes-brasil-e-gov/guia-de-administracao\" target=\"_self\"><span style=\"color: #000000;\"> Administração de Sites e Portais</span> <br /> </a> </strong> <span>Objetivo do Guia de Administração é oferecer subsídios para a concepção, desenvolvimento, manutenção e administração de sítios de governo eletrônico na esfera federal.</span></p>\r\n<p style=\"text-align: left;\"><strong> <a class=\"external-link\" title=\"Cartilha de Codificação\" href=\"https://www.governoeletronico.gov.br/acoes-e-projetos/padroes-brasil-e-gov/cartilha-de-codificacao\" target=\"_self\"> Cartilha de Codificação <br /> </a> </strong> Manual detalha as recomendações de boas práticas em codificação, que orientem as equipes no desenvolvimento de sítios, portais e serviços de governo eletrônico com o propósito de torná-los identificáveis, portáveis, relevantes, acessíveis e efetivos.</p>\r\n<p style=\"text-align: left;\"><strong> <a class=\"external-link\" title=\"Cartilha de usabilidade\" href=\"https://www.governoeletronico.gov.br/acoes-e-projetos/padroes-brasil-e-gov/cartilha-de-usabilidade\" target=\"_self\"> Cartilha de Usabilidade <br /> </a> </strong> <span>Cartilha propõe ser um guia na aplicação da usabilidade em sítios da administração pública de forma clara e descomplicada. São apresentadas recomendações descritas de forma prática e aplicável, assim como orientações sobre como realizar testes.</span></p>\r\n<p style=\"text-align: left;\"><strong> <a class=\"external-link\" title=\"Acessibilidade\" href=\"https://www.governoeletronico.gov.br/acoes-e-projetos/e-MAG\" target=\"_self\"> Acessibilidade <br /> </a> </strong> <span style=\"line-height: 1.5em;\">Modelo de Acessibilidade de Governo Eletrônico (e-MAG) consiste em um conjunto de recomendações para que o processo de acessibilidade dos sítios e portais do governo brasileiro seja conduzido de forma padronizada e de fácil implementação.</span></p>\r\n<p style=\"text-align: left;\"><span style=\"line-height: 1.5em;\"> <strong> <a class=\"external-link\" title=\"Redes Sociais\" href=\"http://www.secom.gov.br/sobre-a-secom/acoes-e-programas/comunicacao-digital/redes-sociais/publicacoes/manual-de-redes-sociais-/at_download/file\" target=\"_self\">Redes Sociais</a> </strong> <br /> Este documento tem como objetivo estipular melhores práticas e guiar os agentes da comunidade Sicom no uso de redes sociais, incluindo a geração de conteúdo, interação com o usuário e atuação em casos de crise. </span></p>\r\n<p style=\"text-align: left;\"><span style=\"line-height: 1.5em;\"> <strong> <a class=\"external-link\" title=\"Cartilha de Redação Web\" href=\"https://www.governoeletronico.gov.br/acoes-e-projetos/padroes-brasil-e-gov/cartilha-de-redacao-web\" target=\"_self\">Cartilha de Redação Web</a> </strong> <br /> Desenvolvida por Bruno Rodrigues e com direitos cedidos ao Departamento de Governo Eletrônico, a cartilha pretende ser um guia e um norte na tarefa de elaborar informação clara, estruturada e eficaz para o meio digital</span></p>\r\n<p style=\"text-align: left;\">&nbsp;<a href=\"images/manuais/icones-portal-brasil-png.zip\">Acesse as opções de cores para os ícones do Portal Padrão em extensão .png (arquivo zip)</a></p>\r\n<br class=\"row\" data-layout-type=\"row\" />\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','',1,0,0,26,'2013-10-23 20:52:45',576,'','2013-10-23 21:29:46',576,0,'0000-00-00 00:00:00','2013-10-23 20:52:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',13,0,0,'','',1,30,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (28,88,'Perguntas frequentes',0x70657267756E7461732D6672657175656E746573,'','<div class=\"documentDescription description\" style=\"text-align: left;\">Nesta seção são divulgadas as perguntas frequentes sobre o (a) [nome do órgão ou entidade] e ações no âmbito de sua competência</div>\r\n<div id=\"content-core\" style=\"text-align: left;\">\r\n<div id=\"parent-fieldname-text\">\r\n<p>Caso o órgão ou entidade disponibilize uma seção de “Perguntas frequentes” em seu portal eletrônico, deverá remeter para o link que dá acesso a tal seção. O órgão/entidade que não divulga “Perguntas frequentes” deverá fazê-la e mantê-la constantemente atualizada, disponibilizando proativamente as respostas às perguntas usualmente formuladas pelos cidadãos.</p>\r\n<p>A <a class=\"external-link\" title=\"\" href=\"http://www.planalto.gov.br/ccivIl_03/Resolu%C3%A7%C3%A3o/2002/RES07-02web.htm\" target=\"_self\">Resolução nº 7, de 29 de julho de 2002</a>, do Comitê Eletrônico de Governo Eletrônico e os Padrões Web em Governo Eletrônico (Guia de administração do MPOG 8) orientam acerca de criação de seção dedicada às respostas às perguntas mais frequentes da sociedade.</p>\r\n</div>\r\n</div>','',1,0,0,28,'2013-10-23 21:35:08',576,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-23 21:35:08','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (29,89,'Contato',0x636F6E7461746F,'','<div class=\"documentDescription description\" style=\"text-align: left;\">Área reúne as formas de contato entre o visitante do portal e o órgão</div>\r\n<div id=\"content-core\" style=\"text-align: left;\">\r\n<div id=\"parent-fieldname-text\">\r\n<p>Esta seção do portal deverá fornecer ao internauta todas as formas de contato disponíveis para ele interagir com o órgão.&nbsp;</p>\r\n<p>Aqui devem ser publicados os telefones de contato, a ouvidoria, o&nbsp;endereço físico e eletrônico do órgão, além do formulário de contato (<a class=\"internal-link\" title=\"\" href=\"http://portalpadrao.plone.org.br/contato/contato\" target=\"_self\">Página com exemplo de formulário para contato</a>).</p>\r\n</div>\r\n</div>','',1,0,0,29,'2013-10-23 21:36:17',576,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-23 21:36:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (30,90,'Servicos da Denominação',0x7365727669636F732D64612D64656E6F6D696E6163616F,'','<div class=\"documentDescription description\" style=\"text-align: left;\">Página agrega todos os links de acessos a sistemas do órgão</div>\r\n<div id=\"content-core\" style=\"text-align: left;\">\r\n<div id=\"parent-fieldname-text\">\r\n<p>Esta área deverá reunir os links de acesso a sistemas que um órgão ou entidade possua e que disponibilize para os seus visitantes.&nbsp;<span>A página agregadora de conteúdo tem como objetivo facilitar a navegação para o internauta e por isso deverá listar os acessos a sistema com&nbsp;</span><span>imagens, um breve descritivo sobre o que será encontrado na página em questão e o respectivo link para acesso.&nbsp;</span></p>\r\n<p><span>No exemplo abaixo, estão listados alguns sistemas do Ministério da Educação espalhados por todo o site da insituição. Nesta proposta, todos eles seriam publicados em uma única área:</span></p>\r\n</div>\r\n</div>','',1,0,0,30,'2013-10-23 21:37:10',576,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-23 21:37:10','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (31,91,'Dados abertos',0x6461646F732D61626572746F73,'','<div class=\"documentDescription description\" style=\"text-align: left;\">Área em que o portal deve disponibilizar informações sobre os trabalhos realizados pelo órgão</div>\r\n<div id=\"content-core\" style=\"text-align: left;\">\r\n<div id=\"parent-fieldname-text\">\r\n<p>Cada órgão deverá manter em seu portal um link para o site <a class=\"external-link\" title=\"\" href=\"http://dados.gov.br/dados-abertos/\" target=\"_self\">Página Dados Abertos</a>&nbsp;(link externo)<span>, que reúne informações de todas as principais áreas do governo federal.&nbsp;</span></p>\r\n</div>\r\n</div>','',1,0,0,31,'2013-10-23 21:37:38',576,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-23 21:37:38','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (32,92,'Area de imprensa',0x617265612D64652D696D7072656E7361,'','<p class=\"callout\" style=\"text-align: left;\">Assessor 1<strong>&nbsp;<br /></strong><span>Esplanada dos Ministérios, Bl. “L” - 9º Andar - Gabinete<br /></span><span>70047-900 - Brasília - DF<br /></span><span>Fone: XX - XXXX - XXXX<br /></span><span>E-mail:&nbsp;</span><a href=\"mailto:acsgabinete@mec.gov.br\">e</a>mail@orgao.gov.br</p>\r\n<p class=\"callout\" style=\"text-align: left;\"><span>Assessor 2</span><strong><br /></strong><span>Esplanada dos Ministérios, Bl. “L” - 9º Andar - Gabinete<br /></span><span>70047-900 - Brasília - DF<br /></span><span>Fone: XX - XXXX - XXXX<br /></span><span>E-mail:&nbsp;</span><a href=\"mailto:acsgabinete@mec.gov.br\">e</a><span>mail@orgao.gov.br</span></p>\r\n<p class=\"callout\" style=\"text-align: left;\">Assessor 3<strong><br /></strong><span>Esplanada dos Ministérios, Bl. “L” - 9º Andar - Sala 903<br /></span><span>70047-900 - Brasília - DF<br /></span>Fone: XX - XXXX - XXXX<br /><span>E-mail:&nbsp;</span><a href=\"mailto:acsgabinete@mec.gov.br\">e</a><span>mail@orgao.gov.br</span></p>','',1,0,0,32,'2013-10-23 21:40:16',576,'','2013-10-23 21:40:38',576,0,'0000-00-00 00:00:00','2013-10-23 21:40:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
 (33,95,'Acessibilidade',0x61636573736962696C6964616465,'','<p style=\"text-align: left;\">Este portal segue as diretrizes do e-MAG (Modelo de Acessibilidade em Governo Eletrônico), conforme as normas do Governo Federal, em obediência ao Decreto 5.296, de 2.12.2004</p>\r\n<p style=\"text-align: left;\">O termo acessibilidade significa incluir a pessoa com deficiência na participação de atividades como o uso de produtos, serviços e informações. Alguns exemplos são os prédios com rampas de acesso para cadeira de rodas e banheiros adaptados para deficientes.</p>\r\n<p style=\"text-align: left;\">Na internet, acessibilidade refere-se principalmente às recomendações do WCAG (World Content Accessibility Guide) do W3C e no caso do Governo Brasileiro ao e-MAG (Modelo de Acessibilidade em Governo Eletrônico). O e-MAG está alinhado as recomendações internacionais, mas estabelece padrões de comportamento acessível para sites governamentais.</p>\r\n<p style=\"text-align: left;\">Na parte superior do portal existe uma barra de acessibilidade onde se encontra atalhos de navegação padronizados e a opção para alterar o contraste. Essas ferramentas estão disponíveis em todas as páginas do portal.</p>\r\n<p style=\"text-align: left;\">Os atalhos padrões do governo federal são:</p>\r\n<p style=\"text-align: left;\">&nbsp;&nbsp;&nbsp; Teclando-se Alt + 1 em qualquer página do portal, chega-se diretamente ao começo do conteúdo principal da página.<br />&nbsp;&nbsp;&nbsp; Teclando-se Alt + 2 em qualquer página do portal, chega-se diretamente ao início do menu principal.<br />&nbsp;&nbsp;&nbsp; Teclando-se Alt + 3 em qualquer página do portal, chega-se diretamente em sua busca interna.<br />&nbsp;&nbsp;&nbsp; Teclando-se Alt + 4 em qualquer página do portal, chega-se diretamente ao rodapé do site.</p>\r\n<p style=\"text-align: left;\">Esses atalhos valem para o navegador Chrome, mas existem algumas variações para outros navegadores.</p>\r\n<p style=\"text-align: left;\">Quem prefere utilizar o Internet Explorer é preciso apertar o botão Enter do seu teclado após uma das combinações acima. Portanto, para chegar ao campo de busca de interna é preciso pressionar Alt+3 e depois Enter.</p>\r\n<p style=\"text-align: left;\">No caso do Firefox, em vez de Alt + número, tecle simultaneamente Alt + Shift + número.</p>\r\n<p style=\"text-align: left;\">Sendo Firefox no Mac OS, em vez de Alt + Shift + número, tecle simultaneamente Ctrl + Alt + número.</p>\r\n<p style=\"text-align: left;\">No Opera, as teclas são Shift + Escape + número. Ao teclar apenas Shift + Escape, o usuário encontrará uma janela com todas as alternativas de ACCESSKEY da página.</p>\r\n<p style=\"text-align: left;\">Ao final desse texto, você poderá baixar alguns arquivos que explicam melhor o termo acessibilidade e como deve ser implementado nos sites da Internet.</p>\r\n<div id=\"content-core\" style=\"text-align: left;\">\r\n<div id=\"parent-fieldname-text\">\r\n<h2>Leis e decretos sobre acessibilidade:</h2>\r\n<ul>\r\n<li><a class=\"external-link\" title=\"\" href=\"http://www.planalto.gov.br/ccivil_03/_Ato2004-2006/2004/Decreto/D5296.htm\" target=\"_self\">Decreto nº 5.296 de 02 de dezembro de 2004&nbsp;</a>(link externo)</li>\r\n<li><a class=\"external-link\" title=\"\" href=\"http://www.planalto.gov.br/ccivil_03/_ato2007-2010/2009/decreto/d6949.htm\" target=\"_self\">Decreto nº 6.949, de 25 de agosto de 2009</a> (link externo)&nbsp;- Promulga a Convenção Internacional sobre os Direitos das Pessoas com Deficiência e seu Protocolo Facultativo, assinados em Nova York, em 30 de março de 2007&nbsp;</li>\r\n<li><a class=\"external-link\" title=\"\" href=\"http://www.planalto.gov.br/ccivil_03/_ato2011-2014/2012/Decreto/D7724.htm\" target=\"_self\">Decreto nº 7.724, de 16 de Maio de 2012</a>&nbsp;(link externo) - Regulamenta a Lei No 12.527, que dispõe sobre o acesso a informações.</li>\r\n<li><a class=\"external-link\" title=\"\" href=\"http://www.governoeletronico.gov.br/acoes-e-projetos/e-MAG\" target=\"_self\">Modelo de Acessibilidade de Governo Eletrônico</a>&nbsp;(link externo)&nbsp;</li>\r\n<li class=\"last-item\"><a class=\"external-link\" title=\"\" href=\"http://www.governoeletronico.gov.br/biblioteca/arquivos/portaria-no-03-de-07-05-2007\" target=\"_self\">Portaria nº 03, de 07 de Maio de 2007 - formato .pdf (35,5Kb)</a>&nbsp;(link externo) - Institucionaliza o Modelo de Acessibilidade em Governo Eletrônico – e-MAG&nbsp;</li>\r\n</ul>\r\n<h2>Dúvidas, sugestões e críticas:</h2>\r\n<p>No caso de problemas com a acessibilidade do portal, favor acessar a&nbsp;<a class=\"external-link\" title=\"\" href=\"http://portalpadrao.plone.org.br/fale-conosco\" target=\"_self\">Página de contato</a><span>.</span></p>\r\n<h2>Dicas, links e recursos úteis:&nbsp;</h2>\r\n<ul>\r\n<li><a class=\"external-link\" title=\"\" href=\"http://acessibilidadelegal.com/\" target=\"_self\">Acessibilidade Legal</a>&nbsp;(link externo)</li>\r\n<li class=\"last-item\"><a class=\"external-link\" title=\"\" href=\"http://acessodigital.net/links.html\" target=\"_self\">Acesso Digital</a>&nbsp;(link externo)</li>\r\n</ul>\r\n</div>\r\n</div>','',1,0,0,34,'2013-10-23 21:52:16',576,'','2013-10-23 21:53:15',576,0,'0000-00-00 00:00:00','2013-10-23 21:52:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,0,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_content` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_content_frontpage`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_content_frontpage`;
CREATE TABLE  `portal_modelo`.`pmgov2013_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_content_frontpage`
--

/*!40000 ALTER TABLE `pmgov2013_content_frontpage` DISABLE KEYS */;
LOCK TABLES `pmgov2013_content_frontpage` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_content_frontpage` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_content_rating`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_content_rating`;
CREATE TABLE  `portal_modelo`.`pmgov2013_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_content_rating`
--

/*!40000 ALTER TABLE `pmgov2013_content_rating` DISABLE KEYS */;
LOCK TABLES `pmgov2013_content_rating` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_content_rating` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_core_log_searches`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_core_log_searches`;
CREATE TABLE  `portal_modelo`.`pmgov2013_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_core_log_searches`
--

/*!40000 ALTER TABLE `pmgov2013_core_log_searches` DISABLE KEYS */;
LOCK TABLES `pmgov2013_core_log_searches` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_core_log_searches` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_extensions`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_extensions`;
CREATE TABLE  `portal_modelo`.`pmgov2013_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10016 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_extensions`
--

/*!40000 ALTER TABLE `pmgov2013_extensions` DISABLE KEYS */;
LOCK TABLES `pmgov2013_extensions` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_extensions` VALUES  (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
 (5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
 (9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"pt-BR\",\"site\":\"pt-BR\"}','','',0,'0000-00-00 00:00:00',0,0),
 (12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),
 (14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
 (18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
 (20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
 (21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
 (22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
 (23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),
 (24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
 (27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),
 (28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
 (314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
 (400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),
 (401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),
 (404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),
 (405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
 (406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),
 (407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),
 (408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),
 (409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),
 (410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),
 (411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
 (412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),
 (413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
 (414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
 (415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),
 (416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),
 (417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
 (418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
 (419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
 (420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
 (421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
 (422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
 (423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),
 (424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),
 (425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),
 (426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),
 (427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),
 (428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),
 (429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),
 (430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),
 (431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),
 (432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),
 (433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
 (434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
 (435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),
 (437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),
 (440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),
 (441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
 (443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
 (444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),
 (445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),
 (446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),
 (500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `portal_modelo`.`pmgov2013_extensions` VALUES  (502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
 (503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),
 (504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
 (505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
 (600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.14\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
 (10000,'PortugusBrasil','language','pt-BR','',0,1,0,0,'{\"legacy\":false,\"name\":\"Portugu\\u00eas(Brasil)\",\"type\":\"language\",\"creationDate\":\"2013-01-29\",\"author\":\"Joomla Brasil\",\"copyright\":\"Copyright 2005 - 2013 Open Source Matters. Todos os Direitos Reservados. Copyright Translation 2005 - 2013 Joomla Brasil. Todos os Direitos Reservados.\",\"authorEmail\":\"traducao@joomla.com.br\",\"authorUrl\":\"www.joomla.com.br\",\"version\":\"2.5.9.1\",\"description\":\"\\n\\t\\t\\t\\tArquivos de Idioma em Portugu\\u00eas Brasileiro para o CMS Joomla! 2.5<br\\/>\\n\\t\\t\\t\\tCopyright 2005 - 2013 Open Source Matters. Todos os Direitos Reservados. Copyright Translation 2005 - 2013 Joomla Brasil. Todos os Direitos Reservados.<br\\/>\\n\\t\\t\\t\\tDe acordo com termo de licenciamento de <a href=\\\"http:\\/\\/www.opensourcematters.org\\\" target=\\\"_blank\\\">OpenSourceMatters<\\/a> e <a href=\\\"http:\\/\\/www.joomla.org\\\" target=\\\"_blank\\\">Joomla!<\\/a> todos os arquivos de idioma devem ser licenciados sob a <a href=\\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\\" target=\\\"_blank\\\"> licen\\u00e7a GNU\\/GPL (v.2.0)<\\/a>. Esta tradu\\u00e7\\u00e3o est\\u00e1 licenciada sob esta licen\\u00e7a. Se voc\\u00ea encontrar algum erro de digita\\u00e7\\u00e3o, tradu\\u00e7\\u00f5es incorretas ou se deseja sugerir melhorias, entre em contato com o <a href=\\\"mailto:traducao@joomla.com.br\\\">coordenador<\\/a> da tradu\\u00e7\\u00e3o.\\n\\t\\t\\t\\t\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (10001,'PortugusBrasil','language','pt-BR','',1,1,0,0,'{\"legacy\":false,\"name\":\"Portugu\\u00eas(Brasil)\",\"type\":\"language\",\"creationDate\":\"2013-01-29\",\"author\":\"Joomla Brasil\",\"copyright\":\"Copyright 2005 - 2013 Open Source Matters. Todos os Direitos Reservados. Copyright Translation 2005 - 2013 Joomla Brasil. Todos os Direitos Reservados.\",\"authorEmail\":\"traducao@joomla.com.br\",\"authorUrl\":\"www.joomla.com.br\",\"version\":\"2.5.9.1\",\"description\":\"\\n\\t\\t\\t\\tArquivos de Idioma em Portugu\\u00eas Brasileiro para o CMS Joomla! 2.5<br\\/>\\n\\t\\t\\t\\tCopyright 2005 - 2013 Open Source Matters. Todos os Direitos Reservados. Copyright Translation 2005 - 2013 Joomla Brasil. Todos os Direitos Reservados.<br\\/>\\n\\t\\t\\t\\tDe acordo com termo de licenciamento de <a href=\\\"http:\\/\\/www.opensourcematters.org\\\" target=\\\"_blank\\\">OpenSourceMatters<\\/a> e <a href=\\\"http:\\/\\/www.joomla.org\\\" target=\\\"_blank\\\">Joomla!<\\/a> todos os arquivos de idioma devem ser licenciados sob a <a href=\\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\\" target=\\\"_blank\\\"> licen\\u00e7a GNU\\/GPL (v.2.0)<\\/a>. Esta tradu\\u00e7\\u00e3o est\\u00e1 licenciada sob esta licen\\u00e7a. Se voc\\u00ea encontrar algum erro de digita\\u00e7\\u00e3o, tradu\\u00e7\\u00f5es incorretas ou se deseja sugerir melhorias, entre em contato com o <a href=\\\"mailto:traducao@joomla.com.br\\\">coordenador<\\/a> da tradu\\u00e7\\u00e3o.\\n\\t\\t\\t\\t\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (10002,'pt-BR','package','pkg_pt-BR','',0,1,1,0,'{\"legacy\":false,\"name\":\"Pacote de Idiomas em Portugu\\u00eas Brasileiro\",\"type\":\"package\",\"creationDate\":\"Janeiro 2013\",\"author\":\"Joomla Brasil\",\"copyright\":\"\",\"authorEmail\":\"traducao@joomla.com.br\",\"authorUrl\":\"www.joomla.com.br\",\"version\":\"2.5.9.1\",\"description\":\"\\n\\t\\t\\t\\tArquivos de Idioma em Portugu\\u00eas Brasileiro para o CMS Joomla! 2.5<br\\/>\\n\\t\\t\\t\\tCopyright 2005 - 2013 Open Source Matters. Todos os Direitos Reservados. Copyright Translation 2005 - 2013 Joomla Brasil. Todos os Direitos Reservados.<br\\/>\\n\\t\\t\\t\\tDe acordo com termo de licenciamento de <a href=\\\"http:\\/\\/www.opensourcematters.org\\\" target=\\\"_blank\\\">OpenSourceMatters<\\/a> e <a href=\\\"http:\\/\\/www.joomla.org\\\" target=\\\"_blank\\\">Joomla!<\\/a> todos os arquivos de idioma devem ser licenciados sob a <a href=\\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\\" target=\\\"_blank\\\"> licen\\u00e7a GNU\\/GPL (v.2.0)<\\/a>. Esta tradu\\u00e7\\u00e3o est\\u00e1 licenciada sob esta licen\\u00e7a. Se voc\\u00ea encontrar algum erro de digita\\u00e7\\u00e3o, tradu\\u00e7\\u00f5es incorretas ou se deseja sugerir melhorias, entre em contato com o <a href=\\\"mailto:traducao@joomla.com.br\\\">coordenador<\\/a> da tradu\\u00e7\\u00e3o.\\n\\t\\t\\t\\t\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (10003,'plg_editors_jce','plugin','jce','editors',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"13 July 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"2006-2010 Ryan Demmer\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.3.3.2\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (10004,'plg_quickicon_jcefilebrowser','plugin','jcefilebrowser','quickicon',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_quickicon_jcefilebrowser\",\"type\":\"plugin\",\"creationDate\":\"13 July 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved\",\"authorEmail\":\"@@email@@\",\"authorUrl\":\"www.joomalcontenteditor.net\",\"version\":\"2.3.3.2\",\"description\":\"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (10005,'jce','component','com_jce','',1,1,0,0,'{\"legacy\":false,\"name\":\"JCE\",\"type\":\"component\",\"creationDate\":\"13 July 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.3.3.2\",\"description\":\"WF_ADMIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (10006,'mod_barradogoverno','module','mod_barradogoverno','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_barradogoverno\",\"type\":\"module\",\"creationDate\":\"Outubro 2013\",\"author\":\"Comunidade Joomla Calango e Grupo de Trabalho de Minist\\u00e9rios\",\"copyright\":\"Copyright (C) 2013 Comunidade Joomla Calango e Grupo de Trabalho de Minist\\u00e9rios\",\"authorEmail\":\"joomlagovbr@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/joomlagovbr\",\"version\":\"1.0\",\"description\":\"Mais informacoes na url do github.\",\"group\":\"\"}','{\"modelo\":\"1\",\"cor_2012\":\"\",\"acesso_a_informacao_2012\":\"1\",\"largura_barra_2012\":\"1000\",\"alinhamentoBarra\":\"\",\"link_acesso_a_informacao_2012\":\"http:\\/\\/www.acessoainformacao.gov.br\\/acessoainformacaogov\\/\",\"link_portal_brasil_2012\":\"http:\\/\\/www.brasil.gov.br\\/\",\"target_links_2012\":\"_blank\",\"correcoes_ie_6_2014\":\"Seu navegador \\u00e9 incompat\\u00edvel com os novos padr\\u00f5es de tecnologia e por isso voc\\u00ea n\\u00e3o pode visualizar a nova barra do Governo Federal. Atualize ou troque seu navegador.\",\"correcoes_ie_8_2014\":\"\",\"link_css_ie_8_2014\":\"{URL_SITE}\\/modules\\/mod_barradogoverno\\/assets\\/2014\\/css\\/ie8.css\",\"html_alternativo\":\"\",\"anexar_css\":\"1\",\"anexar_js\":\"1\",\"anexar_codigo\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),
 (10007,'padraogoverno01','template','padraogoverno01','',0,1,1,0,'{\"legacy\":false,\"name\":\"padraogoverno01\",\"type\":\"template\",\"creationDate\":\"Outubro 2013\",\"author\":\"Comunidade Joomla Calango e Grupo de Trabalho de Minist\\u00e9rios\",\"copyright\":\"Copyright (C) 2013 Comunidade Joomla Calango e Grupo de Trabalho de Minist\\u00e9rios.\",\"authorEmail\":\"joomlagovbr@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/joomlagovbr\",\"version\":\"2.5.0\",\"description\":\"Mais informacoes na URL do github.\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),
 (10008,'mod_container','module','mod_container','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_container\",\"type\":\"module\",\"creationDate\":\"Outubro 2013\",\"author\":\"Comunidade Joomla Calango e Grupo de Trabalho de Minist\\u00e9rios\",\"copyright\":\"Copyright (C) 2013 Comunidade Joomla Calango e Grupo de Trabalho de Minist\\u00e9rios\",\"authorEmail\":\"joomlagovbr@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/joomlagovbr\",\"version\":\"1.0\",\"description\":\"Mais informacoes na url do github.\",\"group\":\"\"}','{\"posicao\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),
 (10010,'plg_system_scriptsfooter','plugin','scriptsfooter','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_scriptsfooter\",\"type\":\"plugin\",\"creationDate\":\"Outubro 2013\",\"author\":\"Comunidade Joomla Calango e Grupo de Trabalho de Minist\\u00e9rios\",\"copyright\":\"Copyright (C) 2013 Comunidade Joomla Calango e Grupo de Trabalho de Minist\\u00e9rios\",\"authorEmail\":\"joomlagovbr@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/joomlagovbr\",\"version\":\"1.0\",\"description\":\"Mais informacoes na url do github.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (10012,'HTML Custom','module','mod_htmlcustom','',0,1,1,0,'{\"legacy\":false,\"name\":\"HTML Custom\",\"type\":\"template\",\"creationDate\":\"Outubro 2013\",\"author\":\"Comunidade Joomla Calango e Grupo de Trabalho de Minist\\u00e9rios\",\"copyright\":\"Copyright (C) 2013 Comunidade Joomla Calango e Grupo de Trabalho de Minist\\u00e9rios.\",\"authorEmail\":\"joomlagovbr@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/joomlagovbr\",\"version\":\"1.0\",\"description\":\"Mais informacoes na URL do github.\",\"group\":\"\"}','{\"htmlcode\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),
 (10013,'blankcomponent','component','com_blankcomponent','',1,1,0,0,'{\"legacy\":false,\"name\":\"Blank Component\",\"type\":\"component\",\"creationDate\":\"21\\/9\\/2011\",\"author\":\"Omar Muhammad\",\"copyright\":\"Copyright \\u00a9 2011, Omar\'s Site, All Rights Reserved.\",\"authorEmail\":\"admin@omar84.com\",\"authorUrl\":\"http:\\/\\/omar84.com\",\"version\":\"1.7.0\",\"description\":\"Blank Component was made to make it possible to create a menu item page that contains only modules and no component.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
 (10014,'Blank Module','module','mod_blank250','',0,1,0,0,'{\"legacy\":false,\"name\":\"Blank Module\",\"type\":\"module\",\"creationDate\":\"August 2013\",\"author\":\"Bob Galway\",\"copyright\":\"Copyright  Bob Galway. All rights reserved.\",\"authorEmail\":\"reply@blackdale.com\",\"authorUrl\":\"www.blackdale.com\",\"version\":\"5.0.2\",\"description\":\"BLANKMODULE250\",\"group\":\"\"}','{\"codeeditor\":\"\",\"textareause\":\"1\",\"phpcode\":\"\",\"phpuse\":\"1\",\"script\":\"\",\"scriptuse\":\"1\",\"itemid\":\"a\",\"contenttitleuse\":\"1\",\"contentuse\":\"1\",\"content1\":\"1\",\"content2\":\"2\",\"content3\":\"3\",\"graphics\":\"1\",\"bgpattern\":\"TinySquare2\",\"colour1\":\"9CA5FF\",\"trans1\":\"1\",\"bordercol\":\"ACB5FF\",\"bordersz\":\"4\",\"shadcol\":\"444444\",\"shadsz\":\"4\",\"margin-leftmodule\":\"\",\"paddingleft\":\"\",\"paddingright\":\"\",\"paddingtop\":\"\",\"paddingbottom\":\"\",\"margin-top\":\"\",\"margin-bottom\":\"\",\"width\":\"100\",\"widthunit\":\"%\",\"colour2\":\"\",\"trans2\":\"1\",\"moduleclass_sfx\":\"\",\"modno_bm\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
 (10015,'mod_chamadas','module','mod_chamadas','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_chamadas\",\"type\":\"module\",\"creationDate\":\"Outubro 2013\",\"author\":\"Roberson Pinheiro\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"roberson.augusto@gmail.com\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"MOD_CHAMADA_XML_DESCRICAO\",\"group\":\"\"}','{\"modelo\":\"article_content\",\"quantidade\":\"4\",\"habilitar_mensagem_vazia\":\"0\",\"limitar_caractere\":\"0\",\"limite_caractere\":\"\",\"destaque\":\"show\",\"somente_imagem\":\"0\",\"buscar_cat_tag\":\"1\",\"visualizar_filho\":\"0\",\"nivel\":\"10\",\"exibir_imagem\":\"1\",\"exibir_introtext\":\"1\",\"exibir_title\":\"1\",\"ordem\":\"title\",\"ordem_direction\":\"ASC\",\"owncache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_extensions` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_filters`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_filters`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_filters`
--

/*!40000 ALTER TABLE `pmgov2013_finder_filters` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_filters` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_filters` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_terms0`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_terms0`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_terms0`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_terms0` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_terms0` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_terms0` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_terms1`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_terms1`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_terms1`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_terms1` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_terms1` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_terms1` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_terms2`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_terms2`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_terms2`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_terms2` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_terms2` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_terms2` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_terms3`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_terms3`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_terms3`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_terms3` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_terms3` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_terms3` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_terms4`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_terms4`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_terms4`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_terms4` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_terms4` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_terms4` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_terms5`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_terms5`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_terms5`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_terms5` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_terms5` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_terms5` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_terms6`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_terms6`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_terms6`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_terms6` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_terms6` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_terms6` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_terms7`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_terms7`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_terms7`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_terms7` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_terms7` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_terms7` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_terms8`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_terms8`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_terms8`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_terms8` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_terms8` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_terms8` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_terms9`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_terms9`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_terms9`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_terms9` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_terms9` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_terms9` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_termsa`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_termsa`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_termsa`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_termsa` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_termsa` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_termsa` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_termsb`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_termsb`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_termsb`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_termsb` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_termsb` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_termsb` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_termsc`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_termsc`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_termsc`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_termsc` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_termsc` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_termsc` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_termsd`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_termsd`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_termsd`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_termsd` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_termsd` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_termsd` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_termse`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_termse`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_termse`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_termse` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_termse` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_termse` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_links_termsf`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_links_termsf`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_links_termsf`
--

/*!40000 ALTER TABLE `pmgov2013_finder_links_termsf` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_links_termsf` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_links_termsf` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_taxonomy`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_taxonomy`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_taxonomy`
--

/*!40000 ALTER TABLE `pmgov2013_finder_taxonomy` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_taxonomy` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_finder_taxonomy` VALUES  (1,0,'ROOT',0,0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_taxonomy` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_taxonomy_map`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_taxonomy_map`
--

/*!40000 ALTER TABLE `pmgov2013_finder_taxonomy_map` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_taxonomy_map` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_taxonomy_map` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_terms`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_terms`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_terms`
--

/*!40000 ALTER TABLE `pmgov2013_finder_terms` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_terms` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_terms` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_terms_common`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_terms_common`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_terms_common`
--

/*!40000 ALTER TABLE `pmgov2013_finder_terms_common` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_terms_common` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_finder_terms_common` VALUES  ('a','en'),
 ('about','en'),
 ('after','en'),
 ('ago','en'),
 ('all','en'),
 ('am','en'),
 ('an','en'),
 ('and','en'),
 ('ani','en'),
 ('any','en'),
 ('are','en'),
 ('aren\'t','en'),
 ('as','en'),
 ('at','en'),
 ('be','en'),
 ('but','en'),
 ('by','en'),
 ('for','en'),
 ('from','en'),
 ('get','en'),
 ('go','en'),
 ('how','en'),
 ('if','en'),
 ('in','en'),
 ('into','en'),
 ('is','en'),
 ('isn\'t','en'),
 ('it','en'),
 ('its','en'),
 ('me','en'),
 ('more','en'),
 ('most','en'),
 ('must','en'),
 ('my','en'),
 ('new','en'),
 ('no','en'),
 ('none','en'),
 ('not','en'),
 ('noth','en'),
 ('nothing','en'),
 ('of','en'),
 ('off','en'),
 ('often','en'),
 ('old','en'),
 ('on','en'),
 ('onc','en'),
 ('once','en'),
 ('onli','en'),
 ('only','en'),
 ('or','en'),
 ('other','en'),
 ('our','en'),
 ('ours','en'),
 ('out','en'),
 ('over','en'),
 ('page','en'),
 ('she','en'),
 ('should','en'),
 ('small','en'),
 ('so','en'),
 ('some','en'),
 ('than','en'),
 ('thank','en'),
 ('that','en'),
 ('the','en'),
 ('their','en'),
 ('theirs','en'),
 ('them','en'),
 ('then','en'),
 ('there','en'),
 ('these','en'),
 ('they','en'),
 ('this','en'),
 ('those','en'),
 ('thus','en'),
 ('time','en'),
 ('times','en'),
 ('to','en'),
 ('too','en'),
 ('true','en'),
 ('under','en'),
 ('until','en'),
 ('up','en'),
 ('upon','en'),
 ('use','en'),
 ('user','en'),
 ('users','en'),
 ('veri','en'),
 ('version','en'),
 ('very','en'),
 ('via','en'),
 ('want','en'),
 ('was','en'),
 ('way','en'),
 ('were','en'),
 ('what','en'),
 ('when','en'),
 ('where','en'),
 ('whi','en'),
 ('which','en'),
 ('who','en'),
 ('whom','en'),
 ('whose','en'),
 ('why','en'),
 ('wide','en'),
 ('will','en'),
 ('with','en'),
 ('within','en'),
 ('without','en'),
 ('would','en'),
 ('yes','en'),
 ('yet','en'),
 ('you','en'),
 ('your','en'),
 ('yours','en');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_terms_common` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_tokens`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_tokens`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_tokens`
--

/*!40000 ALTER TABLE `pmgov2013_finder_tokens` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_tokens` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_tokens` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_tokens_aggregate`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_tokens_aggregate`
--

/*!40000 ALTER TABLE `pmgov2013_finder_tokens_aggregate` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_tokens_aggregate` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_tokens_aggregate` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_finder_types`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_finder_types`;
CREATE TABLE  `portal_modelo`.`pmgov2013_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_finder_types`
--

/*!40000 ALTER TABLE `pmgov2013_finder_types` DISABLE KEYS */;
LOCK TABLES `pmgov2013_finder_types` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_finder_types` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_languages`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_languages`;
CREATE TABLE  `portal_modelo`.`pmgov2013_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_languages`
--

/*!40000 ALTER TABLE `pmgov2013_languages` DISABLE KEYS */;
LOCK TABLES `pmgov2013_languages` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_languages` VALUES  (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_languages` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_menu`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_menu`;
CREATE TABLE  `portal_modelo`.`pmgov2013_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_menu`
--

/*!40000 ALTER TABLE `pmgov2013_menu` DISABLE KEYS */;
LOCK TABLES `pmgov2013_menu` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_menu` VALUES  (1,'','Menu_Item_Root',0x726F6F74,'','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,189,0,'*',0),
 (2,'menu','com_banners',0x42616E6E657273,'','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',3,12,0,'*',1),
 (3,'menu','com_banners',0x42616E6E657273,'','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',4,5,0,'*',1),
 (4,'menu','com_banners_categories',0x43617465676F72696573,'','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',6,7,0,'*',1),
 (5,'menu','com_banners_clients',0x436C69656E7473,'','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',8,9,0,'*',1),
 (6,'menu','com_banners_tracks',0x547261636B73,'','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',10,11,0,'*',1),
 (7,'menu','com_contact',0x436F6E7461637473,'','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',13,18,0,'*',1),
 (8,'menu','com_contact',0x436F6E7461637473,'','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',14,15,0,'*',1),
 (9,'menu','com_contact_categories',0x43617465676F72696573,'','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',16,17,0,'*',1),
 (10,'menu','com_messages',0x4D6573736167696E67,'','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',19,24,0,'*',1),
 (11,'menu','com_messages_add',0x4E65772050726976617465204D657373616765,'','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',20,21,0,'*',1),
 (12,'menu','com_messages_read',0x526561642050726976617465204D657373616765,'','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',22,23,0,'*',1),
 (13,'menu','com_newsfeeds',0x4E657773204665656473,'','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',25,30,0,'*',1),
 (14,'menu','com_newsfeeds_feeds',0x4665656473,'','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',26,27,0,'*',1),
 (15,'menu','com_newsfeeds_categories',0x43617465676F72696573,'','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',28,29,0,'*',1),
 (16,'menu','com_redirect',0x5265646972656374,'','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),
 (17,'menu','com_search',0x426173696320536561726368,'','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',33,34,0,'*',1),
 (18,'menu','com_weblinks',0x5765626C696E6B73,'','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',35,40,0,'*',1),
 (19,'menu','com_weblinks_links',0x4C696E6B73,'','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',36,37,0,'*',1),
 (20,'menu','com_weblinks_categories',0x43617465676F72696573,'','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',38,39,0,'*',1),
 (21,'menu','com_finder',0x536D61727420536561726368,'','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),
 (22,'menu','com_joomlaupdate',0x4A6F6F6D6C612120557064617465,'','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',43,44,0,'*',1),
 (101,'mainmenu','Página inicial',0x686F6D65,'','home','index.php?option=com_blankcomponent&view=default','component',1,1,1,10013,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',1,2,1,'*',0),
 (102,'main','JCE',0x6A6365,'','jce','index.php?option=com_jce','component',0,1,1,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/logo.png',0,'',45,54,0,'',1),
 (103,'main','WF_MENU_CPANEL',0x77662D6D656E752D6370616E656C,'','jce/wf-menu-cpanel','index.php?option=com_jce','component',0,102,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-cpanel.png',0,'',46,47,0,'',1),
 (104,'main','WF_MENU_CONFIG',0x77662D6D656E752D636F6E666967,'','jce/wf-menu-config','index.php?option=com_jce&view=config','component',0,102,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-config.png',0,'',48,49,0,'',1),
 (105,'main','WF_MENU_PROFILES',0x77662D6D656E752D70726F66696C6573,'','jce/wf-menu-profiles','index.php?option=com_jce&view=profiles','component',0,102,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-profiles.png',0,'',50,51,0,'',1),
 (106,'main','WF_MENU_INSTALL',0x77662D6D656E752D696E7374616C6C,'','jce/wf-menu-install','index.php?option=com_jce&view=installer','component',0,102,2,10005,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-install.png',0,'',52,53,0,'',1),
 (107,'assuntos','Editoria A',0x656469746F7269612D61,'','editoria-a','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',111,112,0,'*',0),
 (110,'assuntos','Editoria B',0x656469746F7269612D62,'','editoria-b','index.php?option=com_content&view=article&id=5','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',113,114,0,'*',0),
 (111,'assuntos','Editoria C',0x656469746F7269612D63,'','editoria-c','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',115,116,0,'*',0),
 (112,'sobre','Institucional',0x696E737469747563696F6E616C,'','institucional','index.php?option=com_content&view=article&id=7','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',55,56,0,'*',0),
 (113,'sobre','Ações e Programas',0x61636F65732D652D70726F6772616D6173,'','acoes-e-programas','index.php?option=com_content&view=article&id=8','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',57,58,0,'*',0),
 (114,'sobre','Auditoria',0x61756469746F726961,'','auditoria','index.php?option=com_content&view=article&id=9','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',59,60,0,'*',0),
 (115,'sobre','Convênios',0x636F6E76656E696F73,'','convenios','index.php?option=com_content&view=article&id=10','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',61,62,0,'*',0),
 (116,'sobre','Despesas',0x6465737065736173,'','despesas','index.php?option=com_content&view=article&id=11','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',63,64,0,'*',0),
 (117,'sobre','Licitações e contratos',0x6C6963697461636F65732D652D636F6E747261746F73,'','licitacoes-e-contratos','index.php?option=com_content&view=article&id=12','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',65,66,0,'*',0),
 (118,'sobre','Servidores',0x7365727669646F726573,'','servidores','index.php?option=com_content&view=article&id=13','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',67,68,0,'*',0),
 (119,'sobre','Informações classificadas',0x696E666F726D61636F65732D636C6173736966696361646173,'','informacoes-classificadas','index.php?option=com_content&view=article&id=14','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',69,70,0,'*',0),
 (120,'sobre','Serviço de Informação ao Cidadão (SIC)',0x7365727669636F2D64652D696E666F726D6163616F2D616F2D6369646164616F2D736963,'','servico-de-informacao-ao-cidadao-sic','index.php?option=com_content&view=article&id=15','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',71,72,0,'*',0),
 (121,'mainmenu','Últimas Notícias',0x756C74696D61732D6E6F746963696173,'','ultimas-noticias','index.php?option=com_content&view=category&id=17','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',133,134,0,'*',0),
 (123,'mainmenu','Manuais',0x6D616E75616973,'','manuais','index.php?option=com_content&view=article&id=27','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',135,136,0,'*',0),
 (124,'menu-de-apoio','Conheça a identidade digital do governo',0x636F6E686563612D612D6964656E7469646164652D6469676974616C2D646F2D676F7665726E6F,'','conheca-a-identidade-digital-do-governo','index.php?option=com_content&view=article&id=26','component',1,1,1,22,0,576,'2013-10-28 14:39:30',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"identidade-digital-1\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',117,118,0,'*',0),
 (125,'mainmenu','Conteudo do Menu Superior',0x636F6E746575646F2D646F2D6D656E752D7375706572696F72,'','conteudo-do-menu-superior','index.php?option=com_content&view=category&id=33','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',137,138,0,'*',0),
 (126,'em-destaque','Destaque 1',0x323031332D31302D32372D30302D31312D3034,'','2013-10-27-00-11-04','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',73,74,0,'*',0),
 (127,'em-destaque','Destaque 2',0x323031332D31302D32372D30302D31312D35,'','2013-10-27-00-11-5','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',75,76,0,'*',0),
 (128,'em-destaque','Destaque 3',0x323031332D31302D32372D30302D31312D36,'','2013-10-27-00-11-6','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',77,78,0,'*',0),
 (129,'em-destaque','Destaque 4',0x323031332D31302D32372D30302D31312D37,'','2013-10-27-00-11-7','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',79,80,0,'*',0),
 (130,'em-destaque','Destaque 5',0x323031332D31302D32372D30302D31312D38,'','2013-10-27-00-11-8','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',81,82,0,'*',0),
 (131,'servicos','Perguntas frequentes',0x323031332D31302D32372D30312D35352D3038,'','2013-10-27-01-55-08','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',83,84,0,'*',0),
 (132,'servicos','Contato',0x323031332D31302D32372D30312D35352D39,'','2013-10-27-01-55-9','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',85,86,0,'*',0),
 (133,'servicos','Serviços da [Denominação]',0x323031332D31302D32372D30312D35352D3130,'','2013-10-27-01-55-10','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',87,88,0,'*',0),
 (134,'servicos','Dados abertos',0x323031332D31302D32372D30312D35352D3131,'','2013-10-27-01-55-11','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',89,90,0,'*',0),
 (135,'servicos','Área de imprensa',0x323031332D31302D32372D30312D35352D3132,'','2013-10-27-01-55-12','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',91,92,0,'*',0),
 (136,'midias-sociais','Twitter',0x323031332D31302D32372D30322D31322D3336,'twitter-sign','2013-10-27-02-12-36','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',93,94,0,'*',0),
 (137,'midias-sociais','YouTube',0x323031332D31302D32372D30322D31322D3337,'youtube','2013-10-27-02-12-37','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',95,96,0,'*',0),
 (138,'midias-sociais','Facebook',0x323031332D31302D32372D30322D31322D3338,'facebook-sign','2013-10-27-02-12-38','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',97,98,0,'*',0),
 (139,'midias-sociais','Flickr',0x323031332D31302D32372D30322D31322D3339,'flickr','2013-10-27-02-12-39','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',99,100,0,'*',0),
 (140,'acessibilidade','Acessibilidade',0x323031332D31302D32372D30322D35342D3030,'','2013-10-27-02-54-00','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',101,102,0,'*',0),
 (141,'acessibilidade','Alto contraste',0x323031332D31302D32372D30322D35342D31,'','2013-10-27-02-54-1','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',103,104,0,'*',0),
 (142,'acessibilidade','Mapa do site',0x323031332D31302D32372D30322D35342D32,'','2013-10-27-02-54-2','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',105,106,0,'*',0),
 (143,'idiomas','EN',0x323031332D31302D32372D30332D31382D3337,'','2013-10-27-03-18-37','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"language-en\",\"menu_image\":\"\",\"menu_text\":1}',107,108,0,'*',0),
 (144,'idiomas','ES',0x323031332D31302D32372D30332D31382D3338,'','2013-10-27-03-18-38','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"language-es\",\"menu_image\":\"\",\"menu_text\":1}',109,110,0,'*',0),
 (145,'central-de-conteudos','Imagens',0x323031332D31302D32372D31332D32362D3333,'icon-picture','2013-10-27-13-26-33','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"imagens\",\"menu_image\":\"\",\"menu_text\":1}',119,120,0,'*',0),
 (146,'central-de-conteudos','Vídeos',0x323031332D31302D32372D31332D32362D3334,'icon-play','2013-10-27-13-26-34','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"videos\",\"menu_image\":\"\",\"menu_text\":1}',121,122,0,'*',0),
 (147,'central-de-conteudos','Áudios',0x323031332D31302D32372D31332D32362D3335,'icon-volume-up','2013-10-27-13-26-35','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"audios\",\"menu_image\":\"\",\"menu_text\":1}',123,124,0,'*',0),
 (148,'central-de-conteudos','Publicações',0x323031332D31302D32372D31332D32362D3336,'icon-file-text','2013-10-27-13-26-36','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"publicacoes\",\"menu_image\":\"\",\"menu_text\":1}',125,126,0,'*',0),
 (149,'central-de-conteudos','Aplicativos',0x323031332D31302D32372D31332D32362D3337,'icon-mobile-phone','2013-10-27-13-26-37','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"aplicativos\",\"menu_image\":\"\",\"menu_text\":1}',127,128,0,'*',0),
 (150,'central-de-conteudos','Infográficos',0x323031332D31302D32372D31332D32362D3338,'icon-columns','2013-10-27-13-26-38','#','url',0,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"infograficos\",\"menu_image\":\"\",\"menu_text\":1}',129,130,0,'*',0),
 (151,'central-de-conteudos','Estatísticas',0x323031332D31302D32372D31332D32362D3339,'icon-bar-chart','2013-10-27-13-26-39','#','url',0,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"estatisticas\",\"menu_image\":\"\",\"menu_text\":1}',131,132,0,'*',0),
 (152,'assuntos','Editoria D',0x656469746F7269612D64,'','editoria-d','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',139,162,0,'*',0),
 (153,'assuntos','Editoria E',0x656469746F7269612D65,'','editoria-e','index.php?option=com_content&view=article&id=5','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',163,164,0,'*',0),
 (154,'assuntos','Editoria F',0x656469746F7269612D66,'','editoria-f','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',165,166,0,'*',0),
 (155,'assuntos','Editoria G',0x656469746F7269612D67,'','editoria-g','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',167,168,0,'*',0),
 (156,'assuntos','Editoria H',0x656469746F7269612D68,'','editoria-h','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',169,170,0,'*',0),
 (157,'assuntos','Editoria I',0x656469746F7269612D69,'','editoria-i','index.php?option=com_content&view=article&id=5','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',171,172,0,'*',0),
 (158,'assuntos','Editoria J',0x656469746F7269612D6A,'','editoria-j','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',173,174,0,'*',0),
 (159,'assuntos','Subnível 1 - link 1',0x323031332D31302D32372D31332D33322D3438,'','editoria-d/2013-10-27-13-32-48','#','url',1,152,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',140,153,0,'*',0),
 (160,'assuntos','Subnível 1 - link 2',0x323031332D31302D32372D31332D33322D3439,'','editoria-d/2013-10-27-13-32-49','#','url',1,152,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',154,155,0,'*',0),
 (161,'assuntos','Subnível 1 - link 3',0x323031332D31302D32372D31332D33322D3530,'','editoria-d/2013-10-27-13-32-50','#','url',1,152,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',156,157,0,'*',0),
 (162,'assuntos','Subnível 1 - link 4',0x323031332D31302D32372D31332D33322D3531,'','editoria-d/2013-10-27-13-32-51','#','url',1,152,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',158,159,0,'*',0),
 (163,'assuntos','Subnível 1 - link 5',0x323031332D31302D32372D31332D33322D3532,'','editoria-d/2013-10-27-13-32-52','#','url',1,152,2,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',160,161,0,'*',0),
 (164,'assuntos','Subnível 2 - link 1',0x323031332D31302D32372D31332D33322D3533,'','editoria-d/2013-10-27-13-32-48/2013-10-27-13-32-53','#','url',1,159,3,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',141,142,0,'*',0),
 (165,'assuntos','Subnível 2 - link 2',0x7375626E6976656C2D322D6C696E6B2D32,'','editoria-d/2013-10-27-13-32-48/subnivel-2-link-2','index.php?option=com_content&view=article&id=33','component',1,159,3,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',143,152,0,'*',0),
 (166,'assuntos','Subnível 3 - link 1',0x7375626E6976656C2D332D6C696E6B2D31,'','editoria-d/2013-10-27-13-32-48/subnivel-2-link-2/subnivel-3-link-1','index.php?option=com_content&view=article&id=33','component',1,165,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',144,149,0,'*',0),
 (167,'assuntos','Subnível 3 - link 2',0x7375626E6976656C2D332D6C696E6B2D32,'','editoria-d/2013-10-27-13-32-48/subnivel-2-link-2/subnivel-3-link-2','index.php?option=com_content&view=article&id=33','component',1,165,4,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',150,151,0,'*',0),
 (168,'assuntos','Subnível 4 - link 1',0x7375626E6976656C2D342D6C696E6B2D31,'','editoria-d/2013-10-27-13-32-48/subnivel-2-link-2/subnivel-3-link-1/subnivel-4-link-1','index.php?option=com_content&view=article&id=33','component',1,166,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',145,146,0,'*',0),
 (169,'assuntos','Subnível 4 - link 2',0x7375626E6976656C2D342D6C696E6B2D32,'','editoria-d/2013-10-27-13-32-48/subnivel-2-link-2/subnivel-3-link-1/subnivel-4-link-2','index.php?option=com_content&view=article&id=33','component',1,166,5,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',147,148,0,'*',0),
 (170,'rss','O que é?',0x323031332D31302D32372D31372D34382D3138,'','2013-10-27-17-48-18','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',175,176,0,'*',0),
 (171,'rss','Assine',0x323031332D31302D32372D31372D34382D3538,'','2013-10-27-17-48-58','#','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',177,178,0,'*',0),
 (172,'sobre-o-site','Acessibilidade',0x323031332D31302D32372D31382D31312D3137,'','2013-10-27-18-11-17','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"140\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',179,180,0,'*',0),
 (173,'sobre-o-site','Mapa do site',0x323031332D31302D32372D31382D31312D3138,'','2013-10-27-18-11-18','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"142\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',181,182,0,'*',0),
 (174,'sobre-o-site','Versión en Español - Versão em Espanhol',0x323031332D31302D32372D31382D31332D3034,'','2013-10-27-18-13-04','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"144\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',183,184,0,'*',0),
 (175,'sobre-o-site','English version - Versão em Inglês',0x323031332D31302D32372D31382D31332D35,'','2013-10-27-18-13-5','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"143\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',185,186,0,'*',0),
 (176,'main','Blank Component',0x626C616E6B2D636F6D706F6E656E74,'','blank-component','index.php?option=com_blankcomponent','component',0,1,1,10013,0,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',187,188,0,'',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_menu` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_menu_types`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_menu_types`;
CREATE TABLE  `portal_modelo`.`pmgov2013_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_menu_types`
--

/*!40000 ALTER TABLE `pmgov2013_menu_types` DISABLE KEYS */;
LOCK TABLES `pmgov2013_menu_types` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_menu_types` VALUES  (1,'mainmenu','Main Menu','The main menu for the site'),
 (3,'sobre','Sobre',''),
 (4,'em-destaque','Em destaque',''),
 (5,'servicos','Serviços',''),
 (6,'midias-sociais','Mídias Sociais',''),
 (7,'acessibilidade','Acessibilidade',''),
 (8,'idiomas','Idiomas',''),
 (9,'assuntos','Assuntos',''),
 (10,'menu-de-apoio','Menu de Apoio',''),
 (11,'central-de-conteudos','Central de conteúdos',''),
 (12,'rss','RSS',''),
 (13,'sobre-o-site','Sobre o site','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_menu_types` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_messages`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_messages`;
CREATE TABLE  `portal_modelo`.`pmgov2013_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_messages`
--

/*!40000 ALTER TABLE `pmgov2013_messages` DISABLE KEYS */;
LOCK TABLES `pmgov2013_messages` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_messages` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_messages_cfg`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_messages_cfg`;
CREATE TABLE  `portal_modelo`.`pmgov2013_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_messages_cfg`
--

/*!40000 ALTER TABLE `pmgov2013_messages_cfg` DISABLE KEYS */;
LOCK TABLES `pmgov2013_messages_cfg` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_messages_cfg` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_modules`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_modules`;
CREATE TABLE  `portal_modelo`.`pmgov2013_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_modules`
--

/*!40000 ALTER TABLE `pmgov2013_modules` DISABLE KEYS */;
LOCK TABLES `pmgov2013_modules` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_modules` VALUES  (1,'Temas relevantes','','',1,'menu-principal',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"menu-de-apoio\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"span9\",\"window_open\":\"\",\"layout\":\"padraogoverno01:menuprincipal\",\"moduleclass_sfx\":\"menu-de-apoio\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),
 (3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
 (4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
 (8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),
 (9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),
 (10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
 (12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),
 (13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),
 (14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),
 (15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),
 (16,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),
 (17,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
 (86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
 (87,'Sobre','','',3,'menu-principal',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"sobre\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"span9\",\"window_open\":\"\",\"layout\":\"padraogoverno01:menuprincipal\",\"moduleclass_sfx\":\"sobre\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (88,'Editora A - Noticias','','<style type=\"text/css\">\r\n#t1{margin-left: 209px; margin-top: -130px;}\r\n#p1{margin-left: 209px;}\r\n#t2{margin-left: 209px; margin-top: -130px;}\r\n#p2{margin-left: 209px;}\r\n#not{height:150px;}\r\n#not2{height:150px; margin-top: 35px;}\r\n#not3{height:150px; margin-top: 35px;}\r\n#chapeu{margin-bottom:5px;}\r\n#chapeut3{/*margin-bottom: -17px;*/ margin-top: 10px;}\r\n</style>\r\n\r\n<div id=\"not\">\r\n      <p id=\"chapeu\">Chapéu</p>\r\n      <a href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-2-titulo-da-noticia-entre-35-e-90-caracteres\" title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\"> <img alt=\"Título da notícia em 3 linhas - até 50 caracteres\" src=\"http://portalpadrao.plone.org.br/assuntos/editoria-a/capa-interna/@@nitf/c1e7e8f45dc4438296670befba1af889/@@images/de711a47-37cb-4135-b352-be0faae7c1da.jpeg\" height=\"130\" width=\"200\" /></a>\r\n      <h2 id=\"t1\"> <a href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-2-titulo-da-noticia-entre-35-e-90-caracteres\" title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\">Título da notícia em 3 linhas - até 50 caracteres</a> </h2>\r\n      <p id=\"p1\">Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres</p>\r\n</div>\r\n\r\n\r\n<div id=\"not2\">\r\n      <p id=\"chapeu\">Chapéu</p>\r\n      <a href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-1-titulo-da-noticia-entre-35-e-90-caracteres\" title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\"> <img alt=\"Título da notícia em 3 linhas - até 50 caracteres\" src=\"http://portalpadrao.plone.org.br/assuntos/editoria-a/capa-interna/@@nitf/db631c61295a409e8fe5408dee369c07/@@images/f86ae8f4-36a5-4297-88b4-bd3f9218908c.jpeg\" height=\"130\" width=\"200\" /></a>\r\n      <h2 id=\"t2\"> <a href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-1-titulo-da-noticia-entre-35-e-90-caracteres\" title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\">Título da notícia em 3 linhas - até 50 caracteres</a> </h2>\r\n      <p id=\"p2\">Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres</p>\r\n</div>\r\n\r\n\r\n<div id=\"not3\">\r\n      <p id=\"chapeut3\">Chapéu</p>\r\n      <h2> <a href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-3-titulo-da-noticia-entre-35-e-90-caracteres\" title=\"Subtítulo em três linhas com até 180 caracteres. Subtítulo em três linhas com até 1800 caracteres. Subtítulo em três linhas com até 180 caracteres. Subtítulo em três linhas\">Título da notícia em duas linhas cheias com até 90 caracteres. Título da notícia em 2 linhas</a> </h2>\r\n      <p>Subtítulo em três linhas com até 180   caracteres. Subtítulo em três linhas com até 1800 caracteres. Subtítulo   em três linhas com até 180 caracteres. Subtítulo em três linhas</p>\r\n</div>',1,'position-12',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (89,'Editora A - Vídeos','','<img src=\"images/imagens_menu/video.png\" alt=\"video\" />',1,'position-3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (91,'Barra do Governo','','',1,'barra-do-governo',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_barradogoverno',1,1,'{\"layout\":\"_:2014\",\"anexar_css_2012\":\"1\",\"cor_2012\":\"barraGovernoVerde\",\"acesso_a_informacao_2012\":\"1\",\"largura_barra_2012\":\"970\",\"alinhamento_barra_2012\":\"\",\"link_acesso_a_informacao_2012\":\"http:\\/\\/www.acessoainformacao.gov.br\\/acessoainformacaogov\\/\",\"link_portal_brasil_2012\":\"http:\\/\\/www.brasil.gov.br\\/\",\"target_links_2012\":\"_blank\",\"anexar_js_2014\":\"0\",\"endereco_js_2014\":\"http:\\/\\/barra.brasil.gov.br\\/barra.js?cor=verde\",\"mensagem_ie6_2014\":\"Seu navegador \\u00e9 incompat\\u00edvel com os novos padr\\u00f5es de tecnologia e por isso voc\\u00ea n\\u00e3o pode visualizar a nova barra do Governo Federal. Atualize ou troque seu navegador.\",\"correcoes_ie8_2014\":\"show_css\",\"link_css_ie8_2014\":\"{URL_SITE}\\/modules\\/mod_barradogoverno\\/assets\\/2014\\/css\\/ie8.css\",\"head_custom\":\"\",\"html_custom\":\"<div id=\\\"barra-brasil\\\">\\r\\n        <a href=\\\"http:\\/\\/brasil.gov.br\\\" title=\\\"Acesse para conhecer todos os servi\\u00e7os e informa\\u00e7\\u00f5es do Governo Brasileiro na Internet.\\\">Portal do Governo Brasileiro<\\/a>  \\r\\n<script src=\\\"http:\\/\\/barra.brasil.gov.br\\/barra.js?cor=verde\\\" type=\\\"text\\/javascript\\\"><\\/script>   \\r\\n    <\\/div>\",\"anexar_head\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
 (92,'Editora A - Noticias (2)','','<style type=\"text/css\">\r\n#t1{margin-left: 209px; margin-top: -130px;}\r\n#p1{margin-left: 209px;}\r\n#t2{margin-left: 209px; margin-top: -130px;}\r\n#p2{margin-left: 209px;}\r\n#not{height:150px;}\r\n#not2{height:150px; margin-top: 35px;}\r\n#not3{height:150px; margin-top: 35px;}\r\n#chapeu{margin-bottom:5px;}\r\n#chapeut3{/*margin-bottom: -17px;*/ margin-top: 10px;}\r\n</style>\r\n\r\n<div id=\"not\">\r\n      <p id=\"chapeu\">Chapéu</p>\r\n      <a href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-2-titulo-da-noticia-entre-35-e-90-caracteres\" title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\"> <img alt=\"Título da notícia em 3 linhas - até 50 caracteres\" src=\"http://portalpadrao.plone.org.br/assuntos/editoria-a/capa-interna/@@nitf/c1e7e8f45dc4438296670befba1af889/@@images/de711a47-37cb-4135-b352-be0faae7c1da.jpeg\" height=\"130\" width=\"200\" /></a>\r\n      <h2 id=\"t1\"> <a href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-2-titulo-da-noticia-entre-35-e-90-caracteres\" title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\">Título da notícia em 3 linhas - até 50 caracteres</a> </h2>\r\n      <p id=\"p1\">Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres</p>\r\n</div>\r\n\r\n\r\n<div id=\"not2\">\r\n      <p id=\"chapeu\">Chapéu</p>\r\n      <a href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-1-titulo-da-noticia-entre-35-e-90-caracteres\" title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\"> <img alt=\"Título da notícia em 3 linhas - até 50 caracteres\" src=\"http://portalpadrao.plone.org.br/assuntos/editoria-a/capa-interna/@@nitf/db631c61295a409e8fe5408dee369c07/@@images/f86ae8f4-36a5-4297-88b4-bd3f9218908c.jpeg\" height=\"130\" width=\"200\" /></a>\r\n      <h2 id=\"t2\"> <a href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-1-titulo-da-noticia-entre-35-e-90-caracteres\" title=\"Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres\">Título da notícia em 3 linhas - até 50 caracteres</a> </h2>\r\n      <p id=\"p2\">Subtítulo em quatro linhas com até 110 caracteres. Subtítulo em quatro linhas com até 110 caracteres</p>\r\n</div>\r\n\r\n\r\n<div id=\"not3\">\r\n      <p id=\"chapeut3\">Chapéu</p>\r\n      <h2> <a href=\"http://portalpadrao.plone.org.br/conteudos-de-marcacao/texto-3-titulo-da-noticia-entre-35-e-90-caracteres\" title=\"Subtítulo em três linhas com até 180 caracteres. Subtítulo em três linhas com até 1800 caracteres. Subtítulo em três linhas com até 180 caracteres. Subtítulo em três linhas\">Título da notícia em duas linhas cheias com até 90 caracteres. Título da notícia em 2 linhas</a> </h2>\r\n      <p>Subtítulo em três linhas com até 180   caracteres. Subtítulo em três linhas com até 1800 caracteres. Subtítulo   em três linhas com até 180 caracteres. Subtítulo em três linhas</p>\r\n</div>',1,'position-222',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (93,'Em destaque','Inclua class duas-linhas para tratar layout.','',1,'topo-main',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"em-destaque\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"em-destaque\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"padraogoverno01:destaque\",\"moduleclass_sfx\":\"span10\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (94,'Serviços','','',1,'menu-sobre',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"servicos\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"menu-servicos pull-right\",\"window_open\":\"\",\"layout\":\"padraogoverno01:servicos\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (95,'Redes Sociais','','',2,'header-meio-direita',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"midias-sociais\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"padraogoverno01:redessociais\",\"moduleclass_sfx\":\"social-icons\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (96,'Opções de acessibilidade','','',2,'header-topo-direita',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"acessibilidade\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"portal-siteactions\",\"class_sfx\":\"\",\"window_open\":\"5\",\"layout\":\"padraogoverno01:menustopo\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (97,'Idiomas','','',1,'header-topo-direita',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"idiomas\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"language\",\"class_sfx\":\"\",\"window_open\":\"8\",\"layout\":\"padraogoverno01:menustopo\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (99,'Assuntos','','',2,'menu-principal',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"assuntos\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"span9\",\"window_open\":\"\",\"layout\":\"padraogoverno01:menuprincipal\",\"moduleclass_sfx\":\"assuntos\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (100,'Central de conteúdos','','',4,'menu-principal',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"central-de-conteudos\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"span9\",\"window_open\":\"\",\"layout\":\"padraogoverno01:menuprincipal\",\"moduleclass_sfx\":\"central-conteudos\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (101,'Assuntos','','',1,'menus-rodape',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"assuntos\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"span3\",\"window_open\":\"\",\"layout\":\"padraogoverno01:menusrodape\",\"moduleclass_sfx\":\"assuntos\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (102,'Serviços','','',2,'menus-rodape',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"servicos\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"span3\",\"window_open\":\"\",\"layout\":\"padraogoverno01:menusrodape\",\"moduleclass_sfx\":\"servicos\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (103,'Redes Sociais','','',3,'menus-rodape',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"midias-sociais\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"span3\",\"window_open\":\"\",\"layout\":\"padraogoverno01:menusrodape\",\"moduleclass_sfx\":\"redes-sociais\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (105,'RSS','','',5,'menus-rodape',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"rss\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"span3\",\"window_open\":\"\",\"layout\":\"padraogoverno01:menusrodape\",\"moduleclass_sfx\":\"rss\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (106,'Sobre o site','','',6,'menus-rodape',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"sobre-o-site\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"span3\",\"window_open\":\"\",\"layout\":\"padraogoverno01:menusrodape\",\"moduleclass_sfx\":\"sobre\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (107,'Buscar no portal','','',1,'header-meio-direita',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"portal-searchbox\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
 (110,'Portal Padrão','','',1,'pagina-inicial',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_htmlcustom',1,1,'{\"htmlcode\":\"<div class=\\\"row-fluid module\\\">                          \\r\\n                                <div class=\\\"outstanding-header\\\">\\r\\n                                    <h2 class=\\\"outstanding-title\\\">Portal Padr\\u00e3o<\\/h2>\\r\\n                                <\\/div>\\r\\n                                <section class=\\\"module-section\\\">\\r\\n                                    <div class=\\\"span4 no-margin\\\">                                   \\r\\n                                        <p class=\\\"subtitle\\\">Identidade Digital de Governo<\\/p>\\r\\n                                        <h1>\\r\\n                                            <a title=\\\"Estrutura re\\u00fane o que h\\u00e1 de mais adequado em solu\\u00e7\\u00f5es digitais de acessibilidade e de divulga\\u00e7\\u00e3o de informa\\u00e7\\u00f5es nos mais variados formatos; conhe\\u00e7a os detalhes deste novo modelo e acesse os manuais de identidade digital, estilo, instala\\u00e7\\u00e3o e gest\\u00e3o de conte\\u00fado\\\" href=\\\"#\\\">Conhe\\u00e7a o novo modelo de plataforma digital<\\/a>\\r\\n                                        <\\/h1>\\r\\n                                        <p>Estrutura re\\u00fane o que h\\u00e1 de mais adequado em solu\\u00e7\\u00f5es digitais de acessibilidade e de divulga\\u00e7\\u00e3o de informa\\u00e7\\u00f5es nos mais variados formatos; conhe\\u00e7a os detalhes deste novo modelo e acesse os manuais de identidade digital, estilo, instala\\u00e7\\u00e3o e gest\\u00e3o de conte\\u00fado<\\/p>                                         \\r\\n                                    <\\/div>\\r\\n                                    <!-- fim .span4 -->\\r\\n                                    <div class=\\\"span8\\\">\\r\\n                                        <object width=\\\"480\\\" height=\\\"246\\\"><param value=\\\"\\/\\/www.youtube.com\\/v\\/BGzfIhIUF68?version=3&amp;hl=pt_BR&amp;rel=0\\\" name=\\\"movie\\\"><param value=\\\"true\\\" name=\\\"allowFullScreen\\\"><param value=\\\"always\\\" name=\\\"allowscriptaccess\\\"><embed width=\\\"480\\\" height=\\\"368\\\" allowfullscreen=\\\"true\\\" allowscriptaccess=\\\"always\\\" type=\\\"application\\/x-shockwave-flash\\\" src=\\\"\\/\\/www.youtube.com\\/v\\/BGzfIhIUF68?version=3&amp;hl=pt_BR&amp;rel=0\\\"><\\/object>\\r\\n                                    <\\/div>\\r\\n                                    <!-- fim .span8 -->\\r\\n                                <\\/section>\\r\\n                            <\\/div>\\r\\n                            <!-- fim .row-fluid -->\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (111,'linha 02','pagina-inicial-container1','',2,'pagina-inicial',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_container',1,0,'{\"posicao\":\"pagina-inicial-container1\",\"moduleclass_sfx\":\"row-fluid\",\"alternative_title\":\"\",\"title_outstanding\":\"1\",\"text_link_title\":\"\",\"url_link_title\":\"\",\"show_footer\":\"0\",\"text_link_footer\":\"\",\"url_link_footer\":\"\",\"auto_divisor\":\"1\",\"title_outstanding_column1\":\"1\",\"text_link_title_column1\":\"\",\"url_link_title_column1\":\"\",\"footer_outstanding_column1\":\"0\",\"text_link_footer_column1\":\"\",\"url_link_footer_column1\":\"\",\"title_outstanding_column2\":\"1\",\"text_link_title_column2\":\"\",\"url_link_title_column2\":\"\",\"footer_outstanding_column2\":\"0\",\"text_link_footer_column2\":\"\",\"url_link_footer_column2\":\"\",\"title_outstanding_column3\":\"1\",\"text_link_title_column3\":\"\",\"url_link_title_column3\":\"\",\"footer_outstanding_column3\":\"0\",\"text_link_footer_column3\":\"\",\"url_link_footer_column3\":\"\",\"container_level1\":\"div\",\"container_level2\":\"div\",\"layout\":\"_:default\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
 (112,'Planejamento','','',1,'pagina-inicial-container1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_htmlcustom',1,1,'{\"htmlcode\":\"<h3><a href=\\\"#\\\">Conhe\\u00e7a as etapas para o desenvolvimento de portais<\\/a><\\/h3>\\r\\n<p>Apresenta\\u00e7\\u00e3o mostra como desenvolver um site de acordo com a Identidade digital do governo federal<\\/p>\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"variacao-module-01\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (113,'Lei de acesso à informação','','',2,'pagina-inicial-container1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_htmlcustom',1,1,'{\"htmlcode\":\"<h3><a href=\\\"#\\\">Saiba como montar o menu da Lei de Acesso \\u00e0 Informa\\u00e7\\u00e3o<\\/a><\\/h3>\\r\\n<p>\\u00d3rg\\u00e3os do governo federal devem disponibilizar em seu site um menu especificado pela legisla\\u00e7\\u00e3o<\\/p>\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"variacao-module-02\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (114,'Agenda','','',3,'pagina-inicial-container1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_htmlcustom',1,1,'{\"htmlcode\":\"<p>O m\\u00f3dulo agenda, que ocupar\\u00e1 este espa\\u00e7o est\\u00e1 em desenvolvimento e ficar\\u00e1 dispon\\u00edvel at\\u00e9 o fim do m\\u00eas de outubro.<\\/p>\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"variacao-module-03\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (115,'linha 04','pagina-inicial-container4','',5,'pagina-inicial',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_container',1,1,'{\"posicao\":\"pagina-inicial-container4\",\"moduleclass_sfx\":\"row-fluid\",\"alternative_title\":\"Programas\",\"title_outstanding\":\"1\",\"text_link_title\":\"\",\"url_link_title\":\"\",\"show_footer\":\"0\",\"text_link_footer\":\"\",\"url_link_footer\":\"\",\"auto_divisor\":\"1\",\"title_outstanding_column1\":\"1\",\"text_link_title_column1\":\"\",\"url_link_title_column1\":\"\",\"footer_outstanding_column1\":\"0\",\"text_link_footer_column1\":\"\",\"url_link_footer_column1\":\"\",\"title_outstanding_column2\":\"1\",\"text_link_title_column2\":\"\",\"url_link_title_column2\":\"\",\"footer_outstanding_column2\":\"0\",\"text_link_footer_column2\":\"\",\"url_link_footer_column2\":\"\",\"title_outstanding_column3\":\"1\",\"text_link_title_column3\":\"\",\"url_link_title_column3\":\"\",\"footer_outstanding_column3\":\"0\",\"text_link_footer_column3\":\"\",\"url_link_footer_column3\":\"\",\"container_level1\":\"div\",\"container_level2\":\"div\",\"layout\":\"_:default\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
 (116,'Programa 1','','',1,'pagina-inicial-container4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_htmlcustom',1,0,'{\"htmlcode\":\"<a href=\\\"#\\\" class=\\\"img-rounded\\\"><img src=\\\"templates\\/padraogoverno01\\/images\\/8309509b-fd4a-4c6c-be30-e8ce75642bcc.jpeg\\\" alt=\\\"imagem decorativa\\\"><\\/a>\\r\\n<h2><a href=\\\"#\\\">Texto 1: T\\u00edtulo da manchete em at\\u00e9 55 caracteres com espa\\u00e7o<\\/a><\\/h2>\\r\\n<p>Subt\\u00edtulo do texto 1. Escrever texto do subt\\u00edtulo da chamada em at\\u00e9 130 caracteres com espa\\u00e7o<\\/p>\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"no-margin\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (117,'Programa 2','','',2,'pagina-inicial-container4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_htmlcustom',1,0,'{\"htmlcode\":\"<a href=\\\"#\\\" class=\\\"img-rounded\\\"><img src=\\\"templates\\/padraogoverno01\\/images\\/4ae7baa4-f707-4b34-a01e-9c5fe45f00b9.jpeg\\\" alt=\\\"imagem decorativa\\\"><\\/a>\\r\\n<h2><a href=\\\"#\\\">Texto 2: T\\u00edtulo da manchete em at\\u00e9 55 caracteres com espa\\u00e7o<\\/a><\\/h2>\\r\\n<p>Subt\\u00edtulo do texto 2. Escrever texto do subt\\u00edtulo da chamada em at\\u00e9 130 caracteres com espa\\u00e7o<\\/p>\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (118,'Programa 3','','',3,'pagina-inicial-container4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_htmlcustom',1,0,'{\"htmlcode\":\"<a href=\\\"#\\\" class=\\\"img-rounded\\\"><img src=\\\"templates\\/padraogoverno01\\/images\\/c11b62ec-4a89-4707-a39e-9413b20cf235.jpeg\\\" alt=\\\"imagem decorativa\\\"><\\/a>\\r\\n<h2><a href=\\\"#\\\">Texto 3: T\\u00edtulo da manchete em at\\u00e9 55 caracteres com espa\\u00e7o<\\/a><\\/h2>\\r\\n<p>Subt\\u00edtulo do texto 3. Escrever texto do subt\\u00edtulo da chamada em at\\u00e9 130 caracteres com espa\\u00e7o<\\/p>\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (119,'linha 04','pagina-inicial-container3','',4,'pagina-inicial',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_container',1,0,'{\"posicao\":\"pagina-inicial-container3\",\"title_outstanding\":\"0\",\"title_outstanding_level2\":\"0\",\"moduleclass_sfx\":\"row-fluid\",\"auto_divisor\":\"0\",\"show_footer\":\"0\",\"footer_outstanding\":\"0\",\"texto_link_title\":\"\",\"url_link_title\":\"\",\"texto_link_footer\":\"\",\"link_footer\":\"\",\"container_level1\":\"div\",\"container_level2\":\"div\",\"layout\":\"_:default\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
 (120,'Twitter','','',1,'pagina-inicial-container3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_htmlcustom',1,0,'{\"htmlcode\":\"<div class=\\\"header tabs row-fluid\\\">\\r\\n<h2 class=\\\"title active span6\\\">Twitter<\\/h2>\\r\\n<h2 class=\\\"title span6 hide\\\">Facebook<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\\"pane\\\">\\r\\n<div class=\\\"twitter-content\\\">\\r\\n    <a height=\\\"350\\\" data-widget-id=\\\"388035310119964672\\\" href=\\\"https:\\/\\/twitter.com\\/Portal%20Brasil\\\" class=\\\"twitter-timeline\\\"><br \\/>Tweets do Portal Brasil<\\/a>\\r\\n    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=\\/^http:\\/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\\\":\\/\\/platform.twitter.com\\/widgets.js\\\";fjs.parentNode.insertBefore(js,fjs);}}(document,\\\"script\\\",\\\"twitter-wjs\\\");<\\/script><noscript>\\r\\n        <div class=\\\"error\\\">\\r\\n          <p>Javascript desativado.<\\/p>\\r\\n          <p><a href=\\\"https:\\/\\/twitter.com\\/portalbrasil\\\">Micro-blog Twitter do Portal Brasil<\\/a><\\/p>\\r\\n        <\\/div>\\r\\n    <\\/noscript>\\r\\n<\\/div>                                     \\r\\n<\\/div>\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"span4 module-twitter-facebook\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (121,'Galeria de imagens','','',2,'pagina-inicial-container3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_htmlcustom',1,0,'{\"htmlcode\":\"<div class=\\\"header\\\">\\r\\n<h2 class=\\\"title\\\">Galeria de imagens<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\\"gallery-pane\\\">\\r\\n<!-- inicio galeria -->\\r\\n<div class=\\\"carousel slide\\\" id=\\\"gallery-carousel\\\">\\r\\n  <div class=\\\"carousel-inner\\\">\\r\\n    <div class=\\\"item\\\">\\r\\n      <img alt=\\\"Foto de paisagem de montanhas\\\" src=\\\"templates\\/padraogoverno01\\/images\\/image.jpg\\\">\\r\\n      \\r\\n      <div class=\\\"galleria-info\\\">\\r\\n        <div class=\\\"galleria-info-text\\\">\\r\\n            <div class=\\\"galleria-info-title\\\">\\r\\n                <h3><a href=\\\"http:\\/\\/portalpadrao.plone.org.br\\/conteudos-de-marcacao\\/imagem-1-titulo-com-ate-45-caracteres\\/view\\\">Imagem 1: t\\u00edtulo com at\\u00e9 45 caracteres<\\/a><\\/h3>\\r\\n            <\\/div>\\r\\n            <div class=\\\"galleria-info-description\\\">Espa\\u00e7o para incluir a legenda\\/descri\\u00e7\\u00e3o da imagem<\\/div>\\r\\n            <div data-index=\\\"0\\\" class=\\\"rights\\\">Nome do autor da imagem<\\/div>\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n\\r\\n    <\\/div>\\r\\n    <div class=\\\"item active\\\">\\r\\n      <img alt=\\\"Foto de flor delicada cercada de folhas verdes\\\" src=\\\"templates\\/padraogoverno01\\/images\\/image2.jpg\\\">\\r\\n      \\r\\n      <div class=\\\"galleria-info\\\">\\r\\n        <div class=\\\"galleria-info-text\\\">\\r\\n            <div class=\\\"galleria-info-title\\\">\\r\\n                <h3><a href=\\\"http:\\/\\/portalpadrao.plone.org.br\\/conteudos-de-marcacao\\/imagem-1-titulo-com-ate-45-caracteres\\/view\\\">Imagem 2: t\\u00edtulo com at\\u00e9 45 caracteres<\\/a><\\/h3>\\r\\n            <\\/div>\\r\\n            <div class=\\\"galleria-info-description\\\">Espa\\u00e7o para incluir a legenda\\/descri\\u00e7\\u00e3o da imagem<\\/div>\\r\\n            <div data-index=\\\"0\\\" class=\\\"rights\\\">Nome do autor da imagem<\\/div>\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n      \\r\\n    <\\/div>\\r\\n    <div class=\\\"item\\\">\\r\\n      <img alt=\\\"Foto de 3 pinguins\\\" src=\\\"templates\\/padraogoverno01\\/images\\/image3.jpg\\\">\\r\\n      \\r\\n      <div class=\\\"galleria-info\\\">\\r\\n        <div class=\\\"galleria-info-text\\\">\\r\\n            <div class=\\\"galleria-info-title\\\">\\r\\n                <h3><a href=\\\"http:\\/\\/portalpadrao.plone.org.br\\/conteudos-de-marcacao\\/imagem-1-titulo-com-ate-45-caracteres\\/view\\\">Imagem 3: t\\u00edtulo com at\\u00e9 45 caracteres<\\/a><\\/h3>\\r\\n            <\\/div>\\r\\n            <div class=\\\"galleria-info-description\\\">Espa\\u00e7o para incluir a legenda\\/descri\\u00e7\\u00e3o da imagem<\\/div>\\r\\n            <div data-index=\\\"0\\\" class=\\\"rights\\\">Nome do autor da imagem<\\/div>\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n      \\r\\n    <\\/div>\\r\\n    <div class=\\\"item\\\">\\r\\n      <img alt=\\\"Foto de v\\u00e1rias flores\\\" src=\\\"templates\\/padraogoverno01\\/images\\/image4.jpg\\\">\\r\\n      \\r\\n      <div class=\\\"galleria-info\\\">\\r\\n        <div class=\\\"galleria-info-text\\\">\\r\\n            <div class=\\\"galleria-info-title\\\">\\r\\n                <h3><a href=\\\"http:\\/\\/portalpadrao.plone.org.br\\/conteudos-de-marcacao\\/imagem-1-titulo-com-ate-45-caracteres\\/view\\\">Imagem 4: t\\u00edtulo com at\\u00e9 45 caracteres<\\/a><\\/h3>\\r\\n            <\\/div>\\r\\n            <div class=\\\"galleria-info-description\\\">Espa\\u00e7o para incluir a legenda\\/descri\\u00e7\\u00e3o da imagem<\\/div>\\r\\n            <div data-index=\\\"0\\\" class=\\\"rights\\\">Nome do autor da imagem<\\/div>\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n      \\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n  <a data-slide=\\\"prev\\\" href=\\\"#gallery-carousel\\\" class=\\\"left carousel-control\\\"><i class=\\\"icon-angle-left\\\"><\\/i><span class=\\\"hide\\\">Mover foto esquerda<\\/span><\\/a>\\r\\n  <!-- separador para fins de acessibilidade <--><span class=\\\"hide\\\">&nbsp;<\\/span><\\/--><!-- fim separador para fins de acessibilidade -->\\r\\n  <a data-slide=\\\"next\\\" href=\\\"#gallery-carousel\\\" class=\\\"right carousel-control\\\"><i class=\\\"icon-angle-right\\\"><\\/i><span class=\\\"hide\\\">Mover foto esquerda<\\/span><\\/a>\\r\\n<\\/div>\\r\\n<!-- fim galeria -->\\r\\n<\\/div>\\r\\n<div class=\\\"footer\\\">\\r\\n<a href=\\\"#\\\" class=\\\"outstanding-link\\\"><span class=\\\"text\\\">Acesse a lista completa<\\/span>\\r\\n    <span class=\\\"icon-box\\\">                                          \\r\\n      <i class=\\\"icon-angle-right icon-light\\\"><span class=\\\"hide\\\">&nbsp;<\\/span><\\/i>\\r\\n    <\\/span>\\r\\n<\\/a>\\r\\n<\\/div>\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"span8 module-box-01 module-box-01-top-adjust\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (122,'Áudio do órgão','','',0,'pagina-inicial-container2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_htmlcustom',1,1,'{\"htmlcode\":\"<img src=\\\"templates\\/padraogoverno01\\/images\\/fake-player-audio.png\\\" alt=\\\"Player ainda ser\\u00e1 desenvolvido ou adaptado.\\\">\\r\\n<p>Espa\\u00e7o para inserir a legenda do \\u00e1udio 1<\\/p>\\r\\n<div class=\\\"outstanding-footer\\\">\\r\\n\\t<a href=\\\"#\\\" class=\\\"outstanding-link\\\">\\r\\n\\t    <span class=\\\"text\\\">Mais \\u00e1udios<\\/span>\\r\\n\\t    <span class=\\\"icon-box\\\">                                          \\r\\n\\t      <i class=\\\"icon-angle-right icon-light\\\"><span class=\\\"hide\\\">&nbsp;<\\/span><\\/i>\\r\\n\\t    <\\/span>\\r\\n\\t<\\/a>\\r\\n<\\/div>\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"span4\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (123,'linha 03','pagina-inicial-container2','',3,'pagina-inicial',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_container',1,0,'{\"posicao\":\"pagina-inicial-container2\",\"moduleclass_sfx\":\"row-fluid\",\"alternative_title\":\"\",\"title_outstanding\":\"0\",\"text_link_title\":\"\",\"url_link_title\":\"\",\"show_footer\":\"0\",\"text_link_footer\":\"\",\"url_link_footer\":\"\",\"auto_divisor\":\"0\",\"title_outstanding_column1\":\"1\",\"text_link_title_column1\":\"\",\"url_link_title_column1\":\"\",\"footer_outstanding_column1\":\"0\",\"text_link_footer_column1\":\"\",\"url_link_footer_column1\":\"\",\"title_outstanding_column2\":\"0\",\"text_link_title_column2\":\"\",\"url_link_title_column2\":\"\",\"footer_outstanding_column2\":\"0\",\"text_link_footer_column2\":\"\",\"url_link_footer_column2\":\"\",\"title_outstanding_column3\":\"1\",\"text_link_title_column3\":\"\",\"url_link_title_column3\":\"\",\"footer_outstanding_column3\":\"0\",\"text_link_footer_column3\":\"\",\"url_link_footer_column3\":\"\",\"container_level1\":\"div\",\"container_level2\":\"div\",\"layout\":\"_:default\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
 (124,'Últimas notícias','','',1,'pagina-inicial-container2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_htmlcustom',1,0,'{\"htmlcode\":\"<div class=\\\"header\\\">\\r\\n    <h2 class=\\\"title\\\">\\u00daltimas not\\u00edcias<\\/h2>\\r\\n<\\/div>\\r\\n<ul class=\\\"lista row-fluid\\\">\\r\\n<li class=\\\"span4\\\">\\r\\n    <h3><a href=\\\"#\\\" title=\\\"Subt\\u00edtulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres\\\">Subt\\u00edtulo do texto 1. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres<\\/a><\\/h3>\\r\\n<\\/li>\\r\\n<li class=\\\"span4\\\">\\r\\n    <h3><a href=\\\"#\\\" title=\\\"Subt\\u00edtulo do texto 2. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres\\\">Subt\\u00edtulo do texto 2. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres<\\/a><\\/h3>\\r\\n<\\/li>\\r\\n<li class=\\\"span4\\\">\\r\\n    <h3><a href=\\\"#\\\" title=\\\"Subt\\u00edtulo do texto 3. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres\\\">Subt\\u00edtulo do texto 3. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres<\\/a><\\/h3>\\r\\n<\\/li>\\r\\n<li class=\\\"span4\\\">\\r\\n    <h3><a href=\\\"#\\\" title=\\\"Subt\\u00edtulo do texto 4. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres\\\">Subt\\u00edtulo do texto 4. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres<\\/a><\\/h3>\\r\\n<\\/li>\\r\\n<li class=\\\"span4\\\">\\r\\n    <h3><a href=\\\"#\\\" title=\\\"Subt\\u00edtulo do texto 5. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres\\\">Subt\\u00edtulo do texto 5. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres<\\/a><\\/h3>\\r\\n<\\/li>\\r\\n<li class=\\\"span4\\\">\\r\\n    <h3><a href=\\\"#\\\" title=\\\"Subt\\u00edtulo do texto 6. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres\\\">Subt\\u00edtulo do texto 6. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres<\\/a><\\/h3>\\r\\n<\\/li>\\r\\n<li class=\\\"span4\\\">\\r\\n    <h3><a href=\\\"#\\\" title=\\\"Subt\\u00edtulo do texto 7. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres\\\">Subt\\u00edtulo do texto 7. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres<\\/a><\\/h3>\\r\\n<\\/li>\\r\\n<li class=\\\"span4\\\">\\r\\n    <h3><a href=\\\"#\\\" title=\\\"Subt\\u00edtulo do texto 8. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres\\\">Subt\\u00edtulo do texto 8. Se em uma linha, usar 90 caracteres. Se em duas linhas usar 190 caracteres<\\/a><\\/h3>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<div class=\\\"footer\\\">\\r\\n    <a href=\\\"#\\\" class=\\\"link\\\">Acesse a lista completa<\\/a>\\r\\n<\\/div> \",\"layout\":\"_:default\",\"moduleclass_sfx\":\"span8 module-box-01\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
 (125,'teste','','',1,'internas-direita',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_htmlcustom',1,1,'{\"htmlcode\":\"<strong>teste<\\/strong>\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_modules` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_modules_menu`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_modules_menu`;
CREATE TABLE  `portal_modelo`.`pmgov2013_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_modules_menu`
--

/*!40000 ALTER TABLE `pmgov2013_modules_menu` DISABLE KEYS */;
LOCK TABLES `pmgov2013_modules_menu` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_modules_menu` VALUES  (1,0),
 (2,0),
 (3,0),
 (4,0),
 (6,0),
 (7,0),
 (8,0),
 (9,0),
 (10,0),
 (12,0),
 (13,0),
 (14,0),
 (15,0),
 (16,0),
 (17,0),
 (79,0),
 (86,0),
 (87,0),
 (88,101),
 (89,101),
 (91,0),
 (92,101),
 (93,101),
 (94,0),
 (95,0),
 (96,0),
 (97,0),
 (99,0),
 (100,0),
 (101,0),
 (102,0),
 (103,0),
 (105,0),
 (106,0),
 (107,0),
 (110,0),
 (111,0),
 (112,0),
 (113,0),
 (114,0),
 (115,0),
 (116,0),
 (117,0),
 (118,0),
 (119,0),
 (120,0),
 (121,0),
 (122,0),
 (123,0),
 (124,0),
 (125,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_modules_menu` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_newsfeeds`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_newsfeeds`;
CREATE TABLE  `portal_modelo`.`pmgov2013_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_newsfeeds`
--

/*!40000 ALTER TABLE `pmgov2013_newsfeeds` DISABLE KEYS */;
LOCK TABLES `pmgov2013_newsfeeds` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_newsfeeds` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_overrider`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_overrider`;
CREATE TABLE  `portal_modelo`.`pmgov2013_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_overrider`
--

/*!40000 ALTER TABLE `pmgov2013_overrider` DISABLE KEYS */;
LOCK TABLES `pmgov2013_overrider` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_overrider` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_redirect_links`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_redirect_links`;
CREATE TABLE  `portal_modelo`.`pmgov2013_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_redirect_links`
--

/*!40000 ALTER TABLE `pmgov2013_redirect_links` DISABLE KEYS */;
LOCK TABLES `pmgov2013_redirect_links` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_redirect_links` VALUES  (1,'http://10.200.1.43/INTERNET/portal_modelo/index.php/editoria-a/menu-de-3-nivel','','http://10.200.1.43/INTERNET/portal_modelo/index.php/editoria-a/menu-de-2-nivel','',1,0,'2013-10-21 17:28:46','0000-00-00 00:00:00');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_redirect_links` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_schemas`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_schemas`;
CREATE TABLE  `portal_modelo`.`pmgov2013_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_schemas`
--

/*!40000 ALTER TABLE `pmgov2013_schemas` DISABLE KEYS */;
LOCK TABLES `pmgov2013_schemas` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_schemas` VALUES  (700,'2.5.14');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_schemas` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_session`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_session`;
CREATE TABLE  `portal_modelo`.`pmgov2013_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_session`
--

/*!40000 ALTER TABLE `pmgov2013_session` DISABLE KEYS */;
LOCK TABLES `pmgov2013_session` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_session` VALUES  ('1f208824936992f49e0525e70ac18d14',1,0,'1383097928','__default|a:8:{s:22:\"session.client.browser\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36\";s:15:\"session.counter\";i:57;s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":5:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:11:\"com_modules\";O:8:\"stdClass\":3:{s:7:\"modules\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":8:{s:18:\"client_id_previous\";i:0;s:6:\"search\";s:0:\"\";s:6:\"access\";i:0;s:5:\"state\";s:0:\"\";s:8:\"position\";s:0:\"\";s:6:\"module\";s:0:\"\";s:9:\"client_id\";i:0;s:8:\"language\";s:0:\"\";}s:10:\"limitstart\";s:2:\"20\";s:8:\"ordercol\";s:8:\"position\";s:9:\"orderdirn\";s:3:\"asc\";}s:4:\"edit\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":1:{s:4:\"data\";N;}}s:3:\"add\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":2:{s:12:\"extension_id\";i:10015;s:6:\"params\";a:0:{}}}}s:13:\"com_languages\";O:8:\"stdClass\":1:{s:9:\"installed\";O:8:\"stdClass\":1:{s:8:\"ordercol\";s:6:\"a.name\";}}s:13:\"com_installer\";O:8:\"stdClass\":3:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";s:6:\"manage\";O:8:\"stdClass\":4:{s:4:\"data\";a:1:{s:7:\"filters\";a:5:{s:6:\"search\";s:0:\"\";s:9:\"client_id\";s:0:\"\";s:6:\"status\";s:0:\"\";s:4:\"type\";s:6:\"module\";s:5:\"group\";s:0:\"\";}}s:10:\"limitstart\";s:1:\"0\";s:8:\"ordercol\";s:12:\"extension_id\";s:9:\"orderdirn\";s:4:\"desc\";}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:20;}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"576\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:21:\"joomlagovbr@gmail.com\";s:8:\"password\";s:65:\"c4895b7096aa172a0f9f77a92938bcd5:cPJGYBfZT5Ixm70kR3hcqGZUHvkssOLp\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-10-14 14:26:05\";s:13:\"lastvisitDate\";s:19:\"2013-10-29 22:49:07\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:95:\"{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"jce\",\"helpsite\":\"\",\"timezone\":\"\"}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":6:{s:11:\"admin_style\";s:0:\"\";s:14:\"admin_language\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"editor\";s:3:\"jce\";s:8:\"helpsite\";s:0:\"\";s:8:\"timezone\";s:0:\"\";}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"aaa221d6f6aabde771844cf1d2e8975a\";s:19:\"session.timer.start\";i:1383094426;s:18:\"session.timer.last\";i:1383097887;s:17:\"session.timer.now\";i:1383097927;}',576,'admin','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_session` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_template_styles`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_template_styles`;
CREATE TABLE  `portal_modelo`.`pmgov2013_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_template_styles`
--

/*!40000 ALTER TABLE `pmgov2013_template_styles` DISABLE KEYS */;
LOCK TABLES `pmgov2013_template_styles` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_template_styles` VALUES  (2,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),
 (3,'atomic',0,'0','Atomic - Default','{}'),
 (4,'beez_20',0,'0','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
 (5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
 (6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}'),
 (7,'padraogoverno01',0,'1','padraogoverno01 - Default','{\"cor\":\"verde\",\"font_style_url\":\"http:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans:400italic,400,600,800,700\",\"denominacao\":\"Denomina\\u00e7\\u00e3o do \\u00f3rg\\u00e3o\",\"nome_principal\":\"Nome principal\",\"subordinacao\":\"subordina\\u00e7\\u00e3o\",\"rodape_acesso_informacao\":1,\"rodape_logo_brasil\":1,\"mensagem_final_ferramenta\":\"\",\"clear_default_javascript\":1,\"local_jquery\":\"footer\",\"anexar_js_barra2014\":\"1\",\"endereco_js_barra2014\":\"http:\\/\\/barra.brasil.gov.br\\/barra.js?cor=verde\",\"google_analytics_id\":\"\",\"google_analytics_domain_name\":\"\",\"google_analytics_allow_linker\":0}');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_template_styles` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_update_categories`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_update_categories`;
CREATE TABLE  `portal_modelo`.`pmgov2013_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';

--
-- Dumping data for table `portal_modelo`.`pmgov2013_update_categories`
--

/*!40000 ALTER TABLE `pmgov2013_update_categories` DISABLE KEYS */;
LOCK TABLES `pmgov2013_update_categories` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_update_categories` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_update_sites`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_update_sites`;
CREATE TABLE  `portal_modelo`.`pmgov2013_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Dumping data for table `portal_modelo`.`pmgov2013_update_sites`
--

/*!40000 ALTER TABLE `pmgov2013_update_sites` DISABLE KEYS */;
LOCK TABLES `pmgov2013_update_sites` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_update_sites` VALUES  (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',0,1382911212),
 (2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1383083901),
 (3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,1383083901),
 (4,'JCE Editor Updates','extension','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1',1,1383083899),
 (5,'Blackdale','extension','http://updates.blackdale.com/update/modblank250/modblank250.xml',1,1383083901);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_update_sites` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_update_sites_extensions`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_update_sites_extensions`;
CREATE TABLE  `portal_modelo`.`pmgov2013_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `portal_modelo`.`pmgov2013_update_sites_extensions`
--

/*!40000 ALTER TABLE `pmgov2013_update_sites_extensions` DISABLE KEYS */;
LOCK TABLES `pmgov2013_update_sites_extensions` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_update_sites_extensions` VALUES  (1,700),
 (2,700),
 (3,600),
 (3,10002),
 (4,10005),
 (5,10014);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_update_sites_extensions` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_updates`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_updates`;
CREATE TABLE  `portal_modelo`.`pmgov2013_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

--
-- Dumping data for table `portal_modelo`.`pmgov2013_updates`
--

/*!40000 ALTER TABLE `pmgov2013_updates` DISABLE KEYS */;
LOCK TABLES `pmgov2013_updates` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_updates` VALUES  (1,3,0,0,'Armenian','','pkg_hy-AM','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hy-AM_details.xml',''),
 (2,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),
 (3,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),
 (4,3,0,0,'Khmer','','pkg_km-KH','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml',''),
 (5,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),
 (6,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (7,3,0,0,'Bulgarian','','pkg_bg-BG','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml',''),
 (8,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),
 (9,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),
 (10,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),
 (11,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),
 (12,3,0,0,'Turkish','','pkg_tr-TR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/tr-TR_details.xml',''),
 (13,3,0,0,'Ukrainian','','pkg_uk-UA','package','',0,'2.5.13.11','','http://update.joomla.org/language/details/uk-UA_details.xml',''),
 (14,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.2','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (15,3,0,0,'Belarusian','','pkg_be-BY','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml',''),
 (16,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),
 (17,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),
 (18,3,0,0,'Romanian','','pkg_ro-RO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ro-RO_details.xml',''),
 (19,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),
 (20,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),
 (21,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),
 (22,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),
 (23,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),
 (24,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),
 (25,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),
 (26,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-AU_details.xml',''),
 (27,3,0,0,'English US','','pkg_en-US','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-US_details.xml',''),
 (28,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),
 (29,3,0,0,'Lithuanian','','pkg_lt-LT','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml',''),
 (30,3,0,0,'Albanian','','pkg_sq-AL','package','',0,'2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml',''),
 (31,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),
 (32,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),
 (33,3,0,0,'Galician','','pkg_gl-ES','package','',0,'2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml',''),
 (34,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),
 (35,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),
 (36,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),
 (37,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),
 (38,3,0,0,'Hebrew','','pkg_he-IL','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml',''),
 (39,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),
 (40,3,0,0,'Laotian','','pkg_lo-LA','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml',''),
 (41,3,0,0,'Afrikaans','','pkg_af-ZA','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),
 (42,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),
 (43,3,0,0,'Greek','','pkg_el-GR','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml',''),
 (44,3,0,0,'Esperanto','','pkg_eo-XX','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/eo-XX_details.xml',''),
 (45,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),
 (47,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),
 (48,3,0,0,'Vietnamese','','pkg_vi-VN','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml',''),
 (49,3,0,0,'Kurdish Sorani','','pkg_ckb-IQ','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml',''),
 (50,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),
 (51,3,0,0,'Croatian','','pkg_hr-HR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/hr-HR_details.xml',''),
 (52,3,0,0,'Azeri','','pkg_az-AZ','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml',''),
 (53,3,0,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml',''),
 (54,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.14.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),
 (55,3,0,0,'Scottish Gaelic','','pkg_gd-GB','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml',''),
 (56,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),
 (57,3,0,0,'Basque','','pkg_eu-ES','package','',0,'1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml',''),
 (58,3,0,0,'Uyghur','','pkg_ug-CN','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml',''),
 (59,3,0,0,'Korean','','pkg_ko-KR','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ko-KR_details.xml',''),
 (60,3,0,0,'Hindi','','pkg_hi-IN','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml',''),
 (61,3,0,0,'Welsh','','pkg_cy-GB','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml',''),
 (62,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),
 (63,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (64,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (65,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (66,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (67,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (68,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (69,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (70,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (71,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (72,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (73,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (74,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (75,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (76,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (77,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (78,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (79,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (80,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (81,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (82,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (83,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (84,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (85,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (86,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (87,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (88,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (89,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (90,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (91,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (92,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (93,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (94,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
 (95,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
 (96,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_updates` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_user_notes`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_user_notes`;
CREATE TABLE  `portal_modelo`.`pmgov2013_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_user_notes`
--

/*!40000 ALTER TABLE `pmgov2013_user_notes` DISABLE KEYS */;
LOCK TABLES `pmgov2013_user_notes` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_user_notes` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_user_profiles`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_user_profiles`;
CREATE TABLE  `portal_modelo`.`pmgov2013_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Dumping data for table `portal_modelo`.`pmgov2013_user_profiles`
--

/*!40000 ALTER TABLE `pmgov2013_user_profiles` DISABLE KEYS */;
LOCK TABLES `pmgov2013_user_profiles` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_user_profiles` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_user_usergroup_map`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_user_usergroup_map`;
CREATE TABLE  `portal_modelo`.`pmgov2013_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_user_usergroup_map`
--

/*!40000 ALTER TABLE `pmgov2013_user_usergroup_map` DISABLE KEYS */;
LOCK TABLES `pmgov2013_user_usergroup_map` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_user_usergroup_map` VALUES  (576,8);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_user_usergroup_map` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_usergroups`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_usergroups`;
CREATE TABLE  `portal_modelo`.`pmgov2013_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_usergroups`
--

/*!40000 ALTER TABLE `pmgov2013_usergroups` DISABLE KEYS */;
LOCK TABLES `pmgov2013_usergroups` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_usergroups` VALUES  (1,0,1,20,'Public'),
 (2,1,6,17,'Registered'),
 (3,2,7,14,'Author'),
 (4,3,8,11,'Editor'),
 (5,4,9,10,'Publisher'),
 (6,1,2,5,'Manager'),
 (7,6,3,4,'Administrator'),
 (8,1,18,19,'Super Users');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_usergroups` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_users`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_users`;
CREATE TABLE  `portal_modelo`.`pmgov2013_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_users`
--

/*!40000 ALTER TABLE `pmgov2013_users` DISABLE KEYS */;
LOCK TABLES `pmgov2013_users` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_users` VALUES  (576,'Super User','admin','joomlagovbr@gmail.com','c4895b7096aa172a0f9f77a92938bcd5:cPJGYBfZT5Ixm70kR3hcqGZUHvkssOLp','deprecated',0,1,'2013-10-14 14:26:05','2013-10-30 00:53:50','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"jce\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_users` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_viewlevels`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_viewlevels`;
CREATE TABLE  `portal_modelo`.`pmgov2013_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_viewlevels`
--

/*!40000 ALTER TABLE `pmgov2013_viewlevels` DISABLE KEYS */;
LOCK TABLES `pmgov2013_viewlevels` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_viewlevels` VALUES  (1,'Public',0,'[1]'),
 (2,'Registered',1,'[6,2,8]'),
 (3,'Special',2,'[6,3,8]');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_viewlevels` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_weblinks`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_weblinks`;
CREATE TABLE  `portal_modelo`.`pmgov2013_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_weblinks`
--

/*!40000 ALTER TABLE `pmgov2013_weblinks` DISABLE KEYS */;
LOCK TABLES `pmgov2013_weblinks` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_weblinks` ENABLE KEYS */;


--
-- Definition of table `portal_modelo`.`pmgov2013_wf_profiles`
--

DROP TABLE IF EXISTS `portal_modelo`.`pmgov2013_wf_profiles`;
CREATE TABLE  `portal_modelo`.`pmgov2013_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_modelo`.`pmgov2013_wf_profiles`
--

/*!40000 ALTER TABLE `pmgov2013_wf_profiles` DISABLE KEYS */;
LOCK TABLES `pmgov2013_wf_profiles` WRITE;
INSERT INTO `portal_modelo`.`pmgov2013_wf_profiles` VALUES  (1,'Default','Default Profile for all users','','3,4,5,6,8,7','',0,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists',1,1,0,'0000-00-00 00:00:00',''),
 (2,'Front End','Sample Front-end Profile','','3,4,5','',1,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists',0,2,0,'0000-00-00 00:00:00',''),
 (3,'Blogger','Simple Blogging Profile','','3,4,5,6,8,7','',0,'desktop,tablet,phone','bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help','link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists',0,3,0,'0000-00-00 00:00:00','{\"editor\":{\"toggle\":\"0\"}}'),
 (4,'Mobile','Sample Mobile Profile','','3,4,5,6,8,7','',0,'tablet,phone','undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink','fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists',0,4,0,'0000-00-00 00:00:00','{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pmgov2013_wf_profiles` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: metabase
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `metabase`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `metabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `metabase`;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AUTHOR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FILENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LABELS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `idx_databasechangelog_id_author_filename` (`ID`,`AUTHOR`,`FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:12',1,'EXECUTED','8:c6ae58b391611a9317a5235970daf2bd','createTable tableName=core_organization; createTable tableName=core_user; createTable tableName=core_userorgperm; addUniqueConstraint constraintName=idx_unique_user_id_organization_id, tableName=core_userorgperm; createIndex indexName=idx_userorgp...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('10','cammsaul','migrations/000_migrations.yaml','2023-01-16 16:10:14',9,'EXECUTED','8:8fcc2f7ef28743cc7653d0d2803a789b','createTable tableName=revision; createIndex indexName=idx_revision_model_model_id, tableName=revision','',NULL,'4.10.0',NULL,NULL,'3885407059'),('100','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:02',98,'EXECUTED','8:28b6b684c539d4668110b920985ee363','sql; sql','Added 0.32.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('101','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:03',99,'EXECUTED','8:58eabb08a175fafe8985208545374675','createIndex indexName=idx_field_parent_id, tableName=metabase_field','Added 0.32.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('103','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:04',100,'EXECUTED','8:fda3670fd16a40fd9d0f89a003098d54','addColumn tableName=metabase_database','Added 0.32.10',NULL,'4.10.0',NULL,NULL,'3885407059'),('104','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:04',101,'EXECUTED','8:21709f17e6d1b521d3d3b8cbb5445218','addColumn tableName=core_session','Added EE 1.1.6/CE 0.33.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('106','sb','migrations/000_migrations.yaml','2023-01-16 16:11:05',102,'EXECUTED','8:a3dd42bbe25c415ce21e4c180dc1c1d7','modifyDataType columnName=database_type, tableName=metabase_field','Added 0.33.5',NULL,'4.10.0',NULL,NULL,'3885407059'),('107','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:05',103,'EXECUTED','8:605c2b4d212315c83727aa3d914cf57f','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('108','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:05',104,'EXECUTED','8:d11419da9384fd27d7b1670707ac864c','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('109','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:05',105,'EXECUTED','8:a5f4ea412eb1d5c1bc824046ad11692f','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('11','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:14',10,'EXECUTED','8:ca6561cab1eedbcf4dcb6d6e22cd46c6','sql','',NULL,'4.10.0',NULL,NULL,'3885407059'),('110','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:05',106,'EXECUTED','8:82343097044b9652f73f3d3a2ddd04fe','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('111','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:05',107,'EXECUTED','8:528de1245ba3aa106871d3e5b3eee0ba','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('112','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:06',108,'EXECUTED','8:010a3931299429d1adfa91941c806ea4','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('113','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:06',109,'EXECUTED','8:8f8e0836064bdea82487ecf64a129767','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('114','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:06',110,'EXECUTED','8:7a0bcb25ece6d9a311d6c6be7ed89bb7','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('115','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:06',111,'EXECUTED','8:55c10c2ff7e967e3ea1fdffc5aeed93a','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('116','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:08',112,'EXECUTED','8:dbf7c3a1d8b1eb77b7f5888126b13c2e','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('117','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:08',113,'EXECUTED','8:f2d7f9fb1b6713bc5362fe40bfe3f91f','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('118','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:08',114,'EXECUTED','8:17f4410e30a0c7e84a36517ebf4dab64','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('119','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:08',115,'EXECUTED','8:195cf171ac1d5531e455baf44d9d6561','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('12','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:14',11,'EXECUTED','8:1cc6a5e29970d1ae5008ccd842b0b06a','addColumn tableName=report_card; addColumn tableName=report_card; addColumn tableName=report_card','',NULL,'4.10.0',NULL,NULL,'3885407059'),('120','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:09',116,'EXECUTED','8:61f53fac337020aec71868656a719bba','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('121','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:09',117,'EXECUTED','8:1baa145d2ffe1e18d097a63a95476c5f','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('122','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:09',118,'EXECUTED','8:929b3c551a8f631cdce2511612d82d62','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('123','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:09',119,'EXECUTED','8:35e5baddf78df5829fe6889d216436e5','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('124','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:10',120,'EXECUTED','8:ce2322ca187dfac51be8f12f6a132818','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('125','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:10',121,'EXECUTED','8:dd948ac004ceb9d0a300a8e06806945f','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('126','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:10',122,'EXECUTED','8:3d34c0d4e5dbb32b432b83d5322e2aa3','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('127','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:10',123,'EXECUTED','8:18314b269fe11898a433ca9048400975','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('128','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:10',124,'EXECUTED','8:44acbe257817286d88b7892e79363b66','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('129','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:10',125,'EXECUTED','8:f890168c47cc2113a8af77ed3875c4b3','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('13','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:15',12,'EXECUTED','8:c8ef7e28056d502c43909e81dd420a91','createTable tableName=activity; createIndex indexName=idx_activity_timestamp, tableName=activity; createIndex indexName=idx_activity_user_id, tableName=activity; createIndex indexName=idx_activity_custom_id, tableName=activity','',NULL,'4.10.0',NULL,NULL,'3885407059'),('130','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:10',126,'EXECUTED','8:ecdcf1fd66b3477e5b6882c3286b2fd8','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('131','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:10',127,'EXECUTED','8:453af2935194978c65b19eae445d85c9','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('132','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:10',128,'EXECUTED','8:d2c37bc80b42a15b65f148bcb1daa86e','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('133','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:11',129,'EXECUTED','8:5b9b539d146fbdb762577dc98e7f3430','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('134','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:11',130,'EXECUTED','8:4d0f688a168db3e357a808263b6ad355','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('135','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:11',131,'EXECUTED','8:2ca54b0828c6aca615fb42064f1ec728','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('136','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:11',132,'EXECUTED','8:7115eebbcf664509b9fc0c39cb6f29e9','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('137','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',133,'EXECUTED','8:da754ac6e51313a32de6f6389b29e1ca','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('138','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',134,'EXECUTED','8:bfb201761052189e96538f0de3ac76cf','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('139','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',135,'EXECUTED','8:fdad4ec86aefb0cdf850b1929b618508','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('14','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:15',13,'EXECUTED','8:e0ab939d4315c87ed232b71989dfa7a5','createTable tableName=view_log; createIndex indexName=idx_view_log_user_id, tableName=view_log; createIndex indexName=idx_view_log_timestamp, tableName=view_log','',NULL,'4.10.0',NULL,NULL,'3885407059'),('140','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',136,'EXECUTED','8:a0cfe6468160bba8c9d602da736c41fb','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('141','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',137,'EXECUTED','8:b6b7faa02cba069e1ed13e365f59cb6b','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('142','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',138,'EXECUTED','8:0c291eb50cc0f1fef3d55cfe6b62bedb','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('143','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',139,'EXECUTED','8:3d9a5cb41f77a33e834d0562fdddeab6','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('144','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',140,'EXECUTED','8:1d5b7f79f97906105e90d330a17c4062','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('145','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',141,'EXECUTED','8:b162dd48ef850ab4300e2d714eac504e','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('146','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',142,'EXECUTED','8:8c0c1861582d15fe7859358f5d553c91','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('147','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',143,'EXECUTED','8:5ccf590332ea0744414e40a990a43275','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('148','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:12',144,'EXECUTED','8:12b42e87d40cd7b6399c1fb0c6704fa7','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('149','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:13',145,'EXECUTED','8:dd45bfc4af5e05701a064a5f2a046d7f','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('15','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:15',14,'EXECUTED','8:505b91530103673a9be3382cd2db1070','addColumn tableName=revision','',NULL,'4.10.0',NULL,NULL,'3885407059'),('150','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:13',146,'EXECUTED','8:48beda94aeaa494f798c38a66b90fb2a','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('151','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:13',147,'EXECUTED','8:bb752a7d09d437c7ac294d5ab2600079','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('152','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:13',148,'EXECUTED','8:4bcbc472f2d6ae3a5e7eca425940e52b','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('153','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:13',149,'EXECUTED','8:adce2cca96fe0531b00f9bed6bed8352','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('154','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:13',150,'EXECUTED','8:7a1df4f7a679f47459ea1a1c0991cfba','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('155','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:14',151,'EXECUTED','8:3c78b79c784e3a3ce09a77db1b1d0374','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('156','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:14',152,'EXECUTED','8:51859ee6cca4aca9d141a3350eb5d6b1','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('157','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:14',153,'EXECUTED','8:0197c46bf8536a75dbf7e9aee731f3b2','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('158','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:14',154,'EXECUTED','8:2ebdd5a179ce2487b2e23b6be74a407c','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('159','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:14',155,'EXECUTED','8:c62719dad239c51f045315273b56e2a9','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('16','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:15',15,'EXECUTED','8:b81df46fe16c3e8659a81798b97a4793','dropNotNullConstraint columnName=last_login, tableName=core_user','',NULL,'4.10.0',NULL,NULL,'3885407059'),('160','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:14',156,'EXECUTED','8:1441c71af662abb809cba3b3b360ce81','sql','Added 0.34.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('162','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:14',157,'EXECUTED','8:c37f015ad11d77d66e09925eed605cdf','dropTable tableName=query_queryexecution','Added 0.23.0 as a data migration; converted to Liquibase migration in 0.35.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('163','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:14',158,'EXECUTED','8:9ef66a82624d70738fc89807a2398ed1','dropColumn columnName=read_permissions, tableName=report_card','Added 0.35.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('164','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:14',159,'EXECUTED','8:f19470701bbb33f19f91b1199a915881','addColumn tableName=core_user','Added 0.35.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('165','sb','migrations/000_migrations.yaml','2023-01-16 16:11:15',160,'EXECUTED','8:b3ae2b90db5c4264ea2ac50d304d6ad4','addColumn tableName=metabase_field; addColumn tableName=metabase_field; addColumn tableName=metabase_table; sql','Added field_order to Table and database_position to Field',NULL,'4.10.0',NULL,NULL,'3885407059'),('166','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:16',161,'EXECUTED','8:cd87d40358297ca4a3a644f92a03c377','modifyDataType columnName=updated_at, tableName=metabase_fieldvalues; modifyDataType columnName=updated_at, tableName=query_cache','Added 0.36.0/1.35.4',NULL,'4.10.0',NULL,NULL,'3885407059'),('167','walterl, camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:17',162,'EXECUTED','8:7a72d33ad676364d06a83b641f8dc26f','sql; createTable tableName=native_query_snippet; createIndex indexName=idx_snippet_name, tableName=native_query_snippet','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('168','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:17',163,'EXECUTED','8:c4ba88582a69b4695512d5f1e114b6da','modifyDataType columnName=started_at, tableName=query_execution','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('169','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:17',164,'EXECUTED','8:2b97e6eaa7854e179abb9f3749f73b18','dropColumn columnName=rows, tableName=metabase_table','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('17','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:15',16,'EXECUTED','8:051c23cd15359364b9895c1569c319e7','addColumn tableName=metabase_database; sql','',NULL,'4.10.0',NULL,NULL,'3885407059'),('170','sb','migrations/000_migrations.yaml','2023-01-16 16:11:17',165,'EXECUTED','8:dbd6ee52b0f9195e449a6d744606b599','dropColumn columnName=fields_hash, tableName=metabase_table','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('171','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:19',166,'EXECUTED','8:57f4fb33fe80309af71dc8c0c8d90362','addColumn tableName=native_query_snippet; createIndex indexName=idx_snippet_collection_id, tableName=native_query_snippet','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('172','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:19',167,'EXECUTED','8:212f4010b504e358853fd017032f844f','addColumn tableName=collection','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('173','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:19',168,'EXECUTED','8:4d32b4b7be3f4801e51aeffa5dd47649','dropForeignKeyConstraint baseTableName=activity, constraintName=fk_activity_ref_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('174','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:19',169,'EXECUTED','8:66f31503ba532702e54ea531af668531','addForeignKeyConstraint baseTableName=activity, constraintName=fk_activity_ref_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('175','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:20',170,'EXECUTED','8:c3ceddfca8827d73474cd9a70ea01d1c','dropForeignKeyConstraint baseTableName=card_label, constraintName=fk_card_label_ref_card_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('176','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:21',171,'EXECUTED','8:89c918faa84b7f3f5fa291d4da74414c','addForeignKeyConstraint baseTableName=card_label, constraintName=fk_card_label_ref_card_id, referencedTableName=report_card','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('177','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:21',172,'EXECUTED','8:d45f2198befc83de1f1f963c750607af','dropForeignKeyConstraint baseTableName=card_label, constraintName=fk_card_label_ref_label_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('178','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:21',173,'EXECUTED','8:63d396999449da2d42b3d3e22f3454fa','addForeignKeyConstraint baseTableName=card_label, constraintName=fk_card_label_ref_label_id, referencedTableName=label','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('179','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:21',174,'EXECUTED','8:2a0a7956402ef074e5d54c73ac2d5405','dropForeignKeyConstraint baseTableName=collection, constraintName=fk_collection_personal_owner_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('18','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:15',17,'EXECUTED','8:62a0483dde183cfd18dd0a86e9354288','createTable tableName=data_migrations; createIndex indexName=idx_data_migrations_id, tableName=data_migrations','',NULL,'4.10.0',NULL,NULL,'3885407059'),('180','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:22',175,'EXECUTED','8:b02225e5940a2bcca3d550f24f80123e','addForeignKeyConstraint baseTableName=collection, constraintName=fk_collection_personal_owner_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('181','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:23',176,'EXECUTED','8:16923f06b2bbb60c6ac78a0c4b7e4d4f','dropForeignKeyConstraint baseTableName=collection_revision, constraintName=fk_collection_revision_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('182','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:23',177,'EXECUTED','8:d59d864c038c530a49056704c93f231d','addForeignKeyConstraint baseTableName=collection_revision, constraintName=fk_collection_revision_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('183','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:23',178,'EXECUTED','8:c5ed9a4f44ee92af620a47c80e010a6b','dropForeignKeyConstraint baseTableName=computation_job, constraintName=fk_computation_job_ref_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('184','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:23',179,'EXECUTED','8:70317e2bdaac90b9ddc33b1b93ada479','addForeignKeyConstraint baseTableName=computation_job, constraintName=fk_computation_job_ref_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('185','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:24',180,'EXECUTED','8:12e7457ec2d2b1a99a3fadfc64d7b7f9','dropForeignKeyConstraint baseTableName=computation_job_result, constraintName=fk_computation_result_ref_job_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('186','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:24',181,'EXECUTED','8:526987d0f6b2f01d7bfc9e3179721be6','addForeignKeyConstraint baseTableName=computation_job_result, constraintName=fk_computation_result_ref_job_id, referencedTableName=computation_job','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('187','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:24',182,'EXECUTED','8:3fbb75c0c491dc6628583184202b8f39','dropForeignKeyConstraint baseTableName=core_session, constraintName=fk_session_ref_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('188','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:24',183,'EXECUTED','8:4dc500830cd4c5715ca8b0956e37b3d5','addForeignKeyConstraint baseTableName=core_session, constraintName=fk_session_ref_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('189','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:24',184,'EXECUTED','8:e07396e0ee587dcf321d21cffa9eec29','dropForeignKeyConstraint baseTableName=dashboardcard_series, constraintName=fk_dashboardcard_series_ref_card_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('19','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:15',18,'EXECUTED','8:269b129dbfc39a6f9e0d3bc61c3c3b70','addColumn tableName=metabase_table','',NULL,'4.10.0',NULL,NULL,'3885407059'),('190','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:25',185,'EXECUTED','8:eded791094a16bf398896c790645c411','addForeignKeyConstraint baseTableName=dashboardcard_series, constraintName=fk_dashboardcard_series_ref_card_id, referencedTableName=report_card','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('191','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:25',186,'EXECUTED','8:bb5b9a3d64b2e44318e159e7f1fecde2','dropForeignKeyConstraint baseTableName=dashboardcard_series, constraintName=fk_dashboardcard_series_ref_dashboardcard_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('192','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:26',187,'EXECUTED','8:7d96911036dec2fee64fe8ae57c131b3','addForeignKeyConstraint baseTableName=dashboardcard_series, constraintName=fk_dashboardcard_series_ref_dashboardcard_id, referencedTableName=report_dashboardcard','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('193','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:26',188,'EXECUTED','8:db171179fe094db9fee7e2e7df60fa4e','dropForeignKeyConstraint baseTableName=group_table_access_policy, constraintName=fk_gtap_card_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('194','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:26',189,'EXECUTED','8:fccb724d7ae7606e2e7638de1791392a','addForeignKeyConstraint baseTableName=group_table_access_policy, constraintName=fk_gtap_card_id, referencedTableName=report_card','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('195','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:26',190,'EXECUTED','8:1d720af9f917007024c91d40410bc91d','dropForeignKeyConstraint baseTableName=metabase_field, constraintName=fk_field_parent_ref_field_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('196','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:27',191,'EXECUTED','8:c52f5dbf742feef12a3803bda92a425b','addForeignKeyConstraint baseTableName=metabase_field, constraintName=fk_field_parent_ref_field_id, referencedTableName=metabase_field','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('197','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:27',192,'EXECUTED','8:9c1c950b709050abe91cea17fd5970cc','dropForeignKeyConstraint baseTableName=metabase_field, constraintName=fk_field_ref_table_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('198','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:28',193,'EXECUTED','8:e24198ff4825a41d17ceaebd71692103','addForeignKeyConstraint baseTableName=metabase_field, constraintName=fk_field_ref_table_id, referencedTableName=metabase_table','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('199','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:28',194,'EXECUTED','8:146efae3f2938538961835fe07433ee1','dropForeignKeyConstraint baseTableName=metabase_fieldvalues, constraintName=fk_fieldvalues_ref_field_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('2','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:12',2,'EXECUTED','8:b93383f26ef8fd74b0d0c79f71f6dafb','createTable tableName=core_session','',NULL,'4.10.0',NULL,NULL,'3885407059'),('20','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:16',19,'EXECUTED','8:40b0729e80f3f66f92c590268ce390dd','createTable tableName=pulse; createIndex indexName=idx_pulse_creator_id, tableName=pulse; createTable tableName=pulse_card; createIndex indexName=idx_pulse_card_pulse_id, tableName=pulse_card; createIndex indexName=idx_pulse_card_card_id, tableNam...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('200','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:28',195,'EXECUTED','8:f5e7e79cb81b8d2245663c482746c853','addForeignKeyConstraint baseTableName=metabase_fieldvalues, constraintName=fk_fieldvalues_ref_field_id, referencedTableName=metabase_field','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('201','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:28',196,'EXECUTED','8:2d79321a27fde6cb3c4fabdb86dc60ec','dropForeignKeyConstraint baseTableName=metabase_table, constraintName=fk_table_ref_database_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('202','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:29',197,'EXECUTED','8:d0cefed061c4abbf2b0a0fd2a66817cb','addForeignKeyConstraint baseTableName=metabase_table, constraintName=fk_table_ref_database_id, referencedTableName=metabase_database','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('203','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:29',198,'EXECUTED','8:28b4ec07bfbf4b86532fe9357effdb8b','dropForeignKeyConstraint baseTableName=metric, constraintName=fk_metric_ref_creator_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('204','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:29',199,'EXECUTED','8:7195937fd2144533edfa2302ba2ae653','addForeignKeyConstraint baseTableName=metric, constraintName=fk_metric_ref_creator_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('205','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:29',200,'EXECUTED','8:4b2d5f1458641dd1b9dbc5f41600be8e','dropForeignKeyConstraint baseTableName=metric, constraintName=fk_metric_ref_table_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('206','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:29',201,'EXECUTED','8:959ef448c23aaf3acf5b69f297fe4b2f','addForeignKeyConstraint baseTableName=metric, constraintName=fk_metric_ref_table_id, referencedTableName=metabase_table','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('207','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:30',202,'EXECUTED','8:18135d674f2fe502313adb0475f5f139','dropForeignKeyConstraint baseTableName=metric_important_field, constraintName=fk_metric_important_field_metabase_field_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('208','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:30',203,'EXECUTED','8:4c86c17a00a81dfdf35a181e3dd3b08f','addForeignKeyConstraint baseTableName=metric_important_field, constraintName=fk_metric_important_field_metabase_field_id, referencedTableName=metabase_field','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('209','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:30',204,'EXECUTED','8:1b9c3544bf89093fc9e4f7f191fdc6df','dropForeignKeyConstraint baseTableName=metric_important_field, constraintName=fk_metric_important_field_metric_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('21','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:16',20,'EXECUTED','8:625a55f4f516a883eae4933528ac08fd','createTable tableName=segment; createIndex indexName=idx_segment_creator_id, tableName=segment; createIndex indexName=idx_segment_table_id, tableName=segment','',NULL,'4.10.0',NULL,NULL,'3885407059'),('210','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:31',205,'EXECUTED','8:842d166cdf7b0a29c88efdaf95c9d0bf','addForeignKeyConstraint baseTableName=metric_important_field, constraintName=fk_metric_important_field_metric_id, referencedTableName=metric','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('211','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:31',206,'EXECUTED','8:91c64815a1aefb07dd124d493bfeeea9','dropForeignKeyConstraint baseTableName=native_query_snippet, constraintName=fk_snippet_collection_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('212','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:31',207,'EXECUTED','8:b25064ee26b71f61906a833bc22ebbc2','addForeignKeyConstraint baseTableName=native_query_snippet, constraintName=fk_snippet_collection_id, referencedTableName=collection','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('213','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:31',208,'EXECUTED','8:60a7d628e4f68ee4c85f5f298b1d9865','dropForeignKeyConstraint baseTableName=permissions, constraintName=fk_permissions_group_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('214','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:32',209,'EXECUTED','8:1c3c480313967a2d9f324a094ba25f4d','addForeignKeyConstraint baseTableName=permissions, constraintName=fk_permissions_group_id, referencedTableName=permissions_group','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('215','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:32',210,'EXECUTED','8:5d2c67ccead52970e9d85beb7eda48b9','dropForeignKeyConstraint baseTableName=permissions_group_membership, constraintName=fk_permissions_group_group_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('216','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:33',211,'EXECUTED','8:35fcd5d48600e887188eb1b990e6cc35','addForeignKeyConstraint baseTableName=permissions_group_membership, constraintName=fk_permissions_group_group_id, referencedTableName=permissions_group','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('217','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:33',212,'EXECUTED','8:da7460a35a724109ae9b5096cd18666b','dropForeignKeyConstraint baseTableName=permissions_group_membership, constraintName=fk_permissions_group_membership_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('218','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:34',213,'EXECUTED','8:dc04b7eb04cd870c53102cb37fd75a5f','addForeignKeyConstraint baseTableName=permissions_group_membership, constraintName=fk_permissions_group_membership_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('219','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:34',214,'EXECUTED','8:02c690f34fe8803e42441f5037d33017','dropForeignKeyConstraint baseTableName=permissions_revision, constraintName=fk_permissions_revision_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('22','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:16',21,'EXECUTED','8:80bc8a62a90791a79adedcf1ac3c6f08','addColumn tableName=revision','',NULL,'4.10.0',NULL,NULL,'3885407059'),('220','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:34',215,'EXECUTED','8:8b8447405d7b2b52358c9676d64b7651','addForeignKeyConstraint baseTableName=permissions_revision, constraintName=fk_permissions_revision_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('221','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:35',216,'EXECUTED','8:54a4c0d8a4eda80dc81fb549a629d075','dropForeignKeyConstraint baseTableName=pulse, constraintName=fk_pulse_collection_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('222','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:36',217,'EXECUTED','8:c5f22e925be3a8fd0e4f47a491f599ee','addForeignKeyConstraint baseTableName=pulse, constraintName=fk_pulse_collection_id, referencedTableName=collection','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('223','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:36',218,'EXECUTED','8:de743e384ff90a6a31a3caebe0abb775','dropForeignKeyConstraint baseTableName=pulse, constraintName=fk_pulse_ref_creator_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('224','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:37',219,'EXECUTED','8:b8fdf9c14d7ea3131a0a6b1f1036f91a','addForeignKeyConstraint baseTableName=pulse, constraintName=fk_pulse_ref_creator_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('225','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:37',220,'EXECUTED','8:495a4e12cf75cac5ff54738772e6a998','dropForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_card_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('226','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:37',221,'EXECUTED','8:cf383d74bc407065c78c060203ba4560','addForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_card_id, referencedTableName=report_card','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('227','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:37',222,'EXECUTED','8:e23eaf74ab7edacfb34bd5caf05cf66f','dropForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_pulse_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('228','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:37',223,'EXECUTED','8:d458ddb160f61e93bb69738f262de2b4','addForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_pulse_id, referencedTableName=pulse','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('229','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:38',224,'EXECUTED','8:1cb939d172989cb1629e9a3da768596d','dropForeignKeyConstraint baseTableName=pulse_channel, constraintName=fk_pulse_channel_ref_pulse_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('23','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:17',22,'EXECUTED','8:b6f054835db2b2688a1be1de3707f9a9','modifyDataType columnName=rows, tableName=metabase_table','',NULL,'4.10.0',NULL,NULL,'3885407059'),('230','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:38',225,'EXECUTED','8:62baea3334ac5f21feac84497f6bf643','addForeignKeyConstraint baseTableName=pulse_channel, constraintName=fk_pulse_channel_ref_pulse_id, referencedTableName=pulse','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('231','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:38',226,'EXECUTED','8:d096a9ce70fc0b7dfbc67ee1be4c3e31','dropForeignKeyConstraint baseTableName=pulse_channel_recipient, constraintName=fk_pulse_channel_recipient_ref_pulse_channel_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('232','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:38',227,'EXECUTED','8:be2457ae1e386c9d5ec5bfa4ae681fd6','addForeignKeyConstraint baseTableName=pulse_channel_recipient, constraintName=fk_pulse_channel_recipient_ref_pulse_channel_id, referencedTableName=pulse_channel','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('233','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:38',228,'EXECUTED','8:d5c018882af16093de446e025e2599b7','dropForeignKeyConstraint baseTableName=pulse_channel_recipient, constraintName=fk_pulse_channel_recipient_ref_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('234','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:39',229,'EXECUTED','8:edb6ced6c353064c46fa00b54e187aef','addForeignKeyConstraint baseTableName=pulse_channel_recipient, constraintName=fk_pulse_channel_recipient_ref_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('235','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:39',230,'EXECUTED','8:550c64e41e55233d52ac3ef24d664be1','dropForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_collection_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('236','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:39',231,'EXECUTED','8:04300b298b663fc2a2f3a324d1051c3c','addForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_collection_id, referencedTableName=collection','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('237','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:39',232,'EXECUTED','8:227a9133cdff9f1b60d8af53688ab12e','dropForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_made_public_by_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('238','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:40',233,'EXECUTED','8:7000766ddca2c914ac517611e7d86549','addForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_made_public_by_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('239','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:40',234,'EXECUTED','8:672f4972653f70464982008a7abea3e1','dropForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_ref_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('24','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:17',23,'EXECUTED','8:5e7354b3f92782d1151be0aa9d3fe625','createTable tableName=dependency; createIndex indexName=idx_dependency_model, tableName=dependency; createIndex indexName=idx_dependency_model_id, tableName=dependency; createIndex indexName=idx_dependency_dependent_on_model, tableName=dependency;...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('240','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:43',235,'EXECUTED','8:165b07c8ceb004097c83ee1b689164e4','addForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_ref_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('241','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:44',236,'EXECUTED','8:b0a9e3d801e64e0a66c3190e458c01ae','dropForeignKeyConstraint baseTableName=report_card, constraintName=fk_report_card_ref_database_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('242','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:45',237,'EXECUTED','8:bf10f944715f87c3ad0dd7472d84df62','addForeignKeyConstraint baseTableName=report_card, constraintName=fk_report_card_ref_database_id, referencedTableName=metabase_database','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('243','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:45',238,'EXECUTED','8:cba5d2bfb36e13c60d82cc6cca659b61','dropForeignKeyConstraint baseTableName=report_card, constraintName=fk_report_card_ref_table_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('244','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:45',239,'EXECUTED','8:4d40104eaa47d01981644462ef56f369','addForeignKeyConstraint baseTableName=report_card, constraintName=fk_report_card_ref_table_id, referencedTableName=metabase_table','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('245','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:45',240,'EXECUTED','8:a8f9206dadfe23662d547035f71e3846','dropForeignKeyConstraint baseTableName=report_cardfavorite, constraintName=fk_cardfavorite_ref_card_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('246','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:46',241,'EXECUTED','8:e5db34b9db22254f7445fd65ecf45356','addForeignKeyConstraint baseTableName=report_cardfavorite, constraintName=fk_cardfavorite_ref_card_id, referencedTableName=report_card','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('247','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:46',242,'EXECUTED','8:76de7337a12a5ef42dcbb9274bd2d70f','dropForeignKeyConstraint baseTableName=report_cardfavorite, constraintName=fk_cardfavorite_ref_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('248','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:46',243,'EXECUTED','8:0640fb00a090cbe5dc545afbe0d25811','addForeignKeyConstraint baseTableName=report_cardfavorite, constraintName=fk_cardfavorite_ref_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('249','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:46',244,'EXECUTED','8:16ef5909a72ac4779427e432b3b3ce18','dropForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_collection_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('25','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:17',24,'EXECUTED','8:d4523147fa777867f757fb1b5a83969a','createTable tableName=metric; createIndex indexName=idx_metric_creator_id, tableName=metric; createIndex indexName=idx_metric_table_id, tableName=metric','',NULL,'4.10.0',NULL,NULL,'3885407059'),('250','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:48',245,'EXECUTED','8:2e80ebe19816b7bde99050638772cf99','addForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_collection_id, referencedTableName=collection','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('251','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:48',246,'EXECUTED','8:c12aa099f293b1e3d71da5e3edb3c45a','dropForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_made_public_by_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('252','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:49',247,'EXECUTED','8:26b16d4d0cf7a77c1d687f49b029f421','addForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_made_public_by_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('253','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:49',248,'EXECUTED','8:bbf118edaa88a8ad486ec0d6965504b6','dropForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_ref_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('254','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:50',249,'EXECUTED','8:7fc35d78c63f41eb4dbd23cfd1505f0b','addForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_ref_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('255','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:50',250,'EXECUTED','8:f6564a7516ace55104a3173eebf4c629','dropForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_dashboardcard_ref_card_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('256','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:50',251,'EXECUTED','8:61db9be3b4dd7ed1e9d01a7254e87544','addForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_dashboardcard_ref_card_id, referencedTableName=report_card','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('257','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:51',252,'EXECUTED','8:c8b51dc7ba4da9f7995a0b0c17fadad2','dropForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_dashboardcard_ref_dashboard_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('258','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:51',253,'EXECUTED','8:58974c6ad8aee63f09e6e48b1a78c267','addForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_dashboardcard_ref_dashboard_id, referencedTableName=report_dashboard','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('259','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:51',254,'EXECUTED','8:be4a52feb3b12e655c0bbd34477749b0','dropForeignKeyConstraint baseTableName=revision, constraintName=fk_revision_ref_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('26','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:18',25,'EXECUTED','8:ddef40b95c55cf4ac0e6a5161911a4cb','addColumn tableName=metabase_database; sql','',NULL,'4.10.0',NULL,NULL,'3885407059'),('260','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:51',255,'EXECUTED','8:4b370f9c9073a6f8f585aab713c57f47','addForeignKeyConstraint baseTableName=revision, constraintName=fk_revision_ref_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('261','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:52',256,'EXECUTED','8:173fe552fdf72fdb4efbc01a6ac4f7ad','dropForeignKeyConstraint baseTableName=segment, constraintName=fk_segment_ref_creator_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('262','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:53',257,'EXECUTED','8:50927b8b1d1809f32c11d2e649dbcb94','addForeignKeyConstraint baseTableName=segment, constraintName=fk_segment_ref_creator_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('263','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:53',258,'EXECUTED','8:0b10c8664506917cc50359e9634c121c','dropForeignKeyConstraint baseTableName=segment, constraintName=fk_segment_ref_table_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('264','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:53',259,'EXECUTED','8:b132aedf6fbdcc5d956a2d3a154cc035','addForeignKeyConstraint baseTableName=segment, constraintName=fk_segment_ref_table_id, referencedTableName=metabase_table','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('265','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:53',260,'EXECUTED','8:2e339ecb05463b3765f9bb266bd28297','dropForeignKeyConstraint baseTableName=view_log, constraintName=fk_view_log_ref_user_id','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('266','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:54',261,'EXECUTED','8:31506e118764f5e520f755f26c696bb8','addForeignKeyConstraint baseTableName=view_log, constraintName=fk_view_log_ref_user_id, referencedTableName=core_user','Added 0.36.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('268','rlotun','migrations/000_migrations.yaml','2023-01-16 16:11:54',262,'MARK_RAN','8:4ccc4d50f9b233bc6515780d9cae360b','createIndex indexName=idx_lower_email, tableName=core_user','Added 0.37.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('269','rlotun','migrations/000_migrations.yaml','2023-01-16 16:11:54',263,'EXECUTED','8:215609ca9dce2181687b4fa65e7351ba','sql','Added 0.37.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('27','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:18',26,'EXECUTED','8:522ded869baeb030fa3889e16e28cbad','createTable tableName=dashboardcard_series; createIndex indexName=idx_dashboardcard_series_dashboardcard_id, tableName=dashboardcard_series; createIndex indexName=idx_dashboardcard_series_card_id, tableName=dashboardcard_series','',NULL,'4.10.0',NULL,NULL,'3885407059'),('270','rlotun','migrations/000_migrations.yaml','2023-01-16 16:11:54',264,'MARK_RAN','8:17001a192ba1df02104cc0d15569cbe5','sql','Added 0.37.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('271','rlotun','migrations/000_migrations.yaml','2023-01-16 16:11:54',265,'MARK_RAN','8:ce8ddb253a303d4f8924ff5a187080c0','modifyDataType columnName=email, tableName=core_user','Added 0.37.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('272','rlotun','migrations/000_migrations.yaml','2023-01-16 16:11:54',266,'MARK_RAN','8:54ad09ee0c67d58e78ccafe9b1499379','modifyDataType columnName=email, tableName=core_user','Added 0.37.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('273','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:54',267,'EXECUTED','8:5348576bb9852f6f947e1aa39cd1626f','addDefaultValue columnName=is_superuser, tableName=core_user','Added 0.37.1',NULL,'4.10.0',NULL,NULL,'3885407059'),('274','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:54',268,'EXECUTED','8:11a8a84b9ba7634aeda625ff3f487d22','addDefaultValue columnName=is_active, tableName=core_user','Added 0.37.1',NULL,'4.10.0',NULL,NULL,'3885407059'),('275','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:11:54',269,'EXECUTED','8:447d9e294f59dd1058940defec7e0f40','addColumn tableName=metabase_database','Added 0.38.0 refingerprint to Database',NULL,'4.10.0',NULL,NULL,'3885407059'),('276','robroland','migrations/000_migrations.yaml','2023-01-16 16:11:55',270,'EXECUTED','8:ae43765761ef0f32c8a6f1fb88ead0ca','addColumn tableName=pulse_card','Added 0.38.0 - Dashboard subscriptions',NULL,'4.10.0',NULL,NULL,'3885407059'),('277','tsmacdonald','migrations/000_migrations.yaml','2023-01-16 16:11:55',271,'EXECUTED','8:367180f0820b72ad2c60212e67ae53e7','dropForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_pulse_card_id','Added 0.38.0 - Dashboard subscriptions',NULL,'4.10.0',NULL,NULL,'3885407059'),('278','tsmacdonald','migrations/000_migrations.yaml','2023-01-16 16:11:56',272,'EXECUTED','8:fc4fb1c1e3344374edd7b9f1f0d34c89','addForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_pulse_card_id, referencedTableName=report_dashboardcard','Added 0.38.0 - Dashboard subscrptions',NULL,'4.10.0',NULL,NULL,'3885407059'),('279','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:57',273,'EXECUTED','8:63dfccd51b62b939da71fe4435f58679','addColumn tableName=pulse','Added 0.38.0 - Dashboard subscriptions',NULL,'4.10.0',NULL,NULL,'3885407059'),('28','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:18',27,'EXECUTED','8:428e4eb05e4e29141735adf9ae141a0b','addColumn tableName=core_user','',NULL,'4.10.0',NULL,NULL,'3885407059'),('280','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:58',274,'EXECUTED','8:ae966ee1e40f20ea438daba954a8c2a6','addForeignKeyConstraint baseTableName=pulse, constraintName=fk_pulse_ref_dashboard_id, referencedTableName=report_dashboard','Added 0.38.0 - Dashboard subscriptions',NULL,'4.10.0',NULL,NULL,'3885407059'),('281','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:11:58',275,'EXECUTED','8:3039286581c58eee7cca9c25fdf6d792','renameColumn newColumnName=semantic_type, oldColumnName=special_type, tableName=metabase_field','Added 0.39 - Semantic type system - rename special_type',NULL,'4.10.0',NULL,NULL,'3885407059'),('282','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:58',276,'EXECUTED','8:d4b8566ee11d9f8a3d6c8c9539f6526d','sql; sql; sql','Added 0.39.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('283','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:58',277,'EXECUTED','8:2220e1b1cdb57212820b96fa3107f7c3','sql; sql; sql','Added 0.39.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('284','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:11:58',278,'EXECUTED','8:c7dc9a60bcaf9b2ffcbaabd650c959b2','addColumn tableName=metabase_field','Added 0.39 - Semantic type system - add effective type',NULL,'4.10.0',NULL,NULL,'3885407059'),('285','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:11:58',279,'EXECUTED','8:cf7d6f5135fa3397a7dc67509d1c286e','addColumn tableName=metabase_field','Added 0.39 - Semantic type system - add coercion column',NULL,'4.10.0',NULL,NULL,'3885407059'),('286','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:11:58',280,'EXECUTED','8:bce9ab328411f05d8c52d64bff5bded0','sql','Added 0.39 - Semantic type system - set effective_type default',NULL,'4.10.0',NULL,NULL,'3885407059'),('287','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:11:58',281,'EXECUTED','8:0679eedae767a8648383aac2f923e413','sql','Added 0.39 - Semantic type system - migrate ISO8601 strings',NULL,'4.10.0',NULL,NULL,'3885407059'),('288','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:11:58',282,'EXECUTED','8:943c6dd0c9339729fefcee9207227849','sql','Added 0.39 - Semantic type system - migrate unix timestamps',NULL,'4.10.0',NULL,NULL,'3885407059'),('289','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:11:58',283,'EXECUTED','8:9f7f2e9bbf3236f204c644dc8ea7abef','sql','Added 0.39 - Semantic type system - migrate unix timestamps (corrects typo- seconds was migrated correctly, not millis and micros)',NULL,'4.10.0',NULL,NULL,'3885407059'),('29','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:18',28,'EXECUTED','8:8b02731cc34add3722c926dfd7376ae0','addColumn tableName=pulse_channel','',NULL,'4.10.0',NULL,NULL,'3885407059'),('290','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:11:58',284,'EXECUTED','8:98ea7254bc843302db4afe493c4c75e6','sql','Added 0.39 - Semantic type system - Clobber semantic_type where there was a coercion',NULL,'4.10.0',NULL,NULL,'3885407059'),('291','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:59',285,'EXECUTED','8:21c1a0457ea0353a8b1a852918bb9032','createTable tableName=login_history','Added 0.39.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('292','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:59',286,'EXECUTED','8:e4ac005f4d4e73d5e1176bcbde510d6e','createIndex indexName=idx_user_id, tableName=login_history','Added 0.39.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('293','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:00',287,'EXECUTED','8:7ba1bd887f8ae11a186b0e3fe69ab3e0','addForeignKeyConstraint baseTableName=login_history, constraintName=fk_login_history_session_id, referencedTableName=core_session','Added 0.39.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('294','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:00',288,'EXECUTED','8:88d7a9c88866af42b9f0e7c1df9c2fd0','createIndex indexName=idx_session_id, tableName=login_history','Added 0.39.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('295','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:00',289,'EXECUTED','8:501e85a50912649416ec22b2871af087','createIndex indexName=idx_timestamp, tableName=login_history','Added 0.39.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('296','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:00',290,'EXECUTED','8:f9eb8b15c2c889334f3848a6bb4ebdb4','createIndex indexName=idx_user_id_device_id, tableName=login_history','Added 0.39.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('297','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:00',291,'EXECUTED','8:06c180e4c8361f7550f6f4deaf9fc855','createIndex indexName=idx_user_id_timestamp, tableName=login_history','Added 0.39.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('298','tsmacdonald','migrations/000_migrations.yaml','2023-01-16 16:12:01',292,'EXECUTED','8:3c73f77d8d939d14320964a35aeaad5e','addColumn tableName=pulse','Added 0.39.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('299','tsmacdonald','migrations/000_migrations.yaml','2023-01-16 16:12:02',293,'EXECUTED','8:ee3a96e30b07f37240a933e2f0710082','addNotNullConstraint columnName=parameters, tableName=pulse','Added 0.39.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('30','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:18',29,'EXECUTED','8:2c3a50cef177cb90d47a9973cd5934e5','addColumn tableName=metabase_field; addNotNullConstraint columnName=visibility_type, tableName=metabase_field','',NULL,'4.10.0',NULL,NULL,'3885407059'),('300','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:12:02',294,'EXECUTED','8:8b142aea1e3697d8630a4620ae763c4d','renameTable newTableName=collection_permission_graph_revision, oldTableName=collection_revision','Added 0.40.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('301','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:12:02',295,'MARK_RAN','8:aaf1a546a6f5932a157d016f72c02f8a','sql','Added 0.40.0 renaming collection_revision to collection_permission_graph_revision',NULL,'4.10.0',NULL,NULL,'3885407059'),('303','tsmacdonald','migrations/000_migrations.yaml','2023-01-16 16:12:02',296,'EXECUTED','8:bfa9e69eaeed6b1949670730cbda96f8','createTable tableName=moderation_review','Added 0.40.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('304','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:02',297,'EXECUTED','8:35960cd7ee3081be719bfb5267ae1a83','sql','Added 0.40.0 (replaces a data migration dating back to 0.20.0)',NULL,'4.10.0',NULL,NULL,'3885407059'),('305','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:02',298,'EXECUTED','8:0a0c65f58b80bf74c149a3854cbeeae4','sql','Added 0.40.0 (replaces a data migration dating back to 0.20.0)',NULL,'4.10.0',NULL,NULL,'3885407059'),('308','howonlee','migrations/000_migrations.yaml','2023-01-16 16:12:02',299,'EXECUTED','8:4a52c3a0391a0313a062b60a52c0d7de','addColumn tableName=query_execution','Added 0.40.0 Track cache hits in query_execution table',NULL,'4.10.0',NULL,NULL,'3885407059'),('309','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:12:02',300,'EXECUTED','8:26cc1f3ba949d8ce0d56350caacffbd8','addColumn tableName=collection','Added 0.40.0 - Add type to collections',NULL,'4.10.0',NULL,NULL,'3885407059'),('31','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:19',30,'EXECUTED','8:30a33a82bab0bcbb2ccb6738d48e1421','addColumn tableName=metabase_field','',NULL,'4.10.0',NULL,NULL,'3885407059'),('310','howonlee','migrations/000_migrations.yaml','2023-01-16 16:12:02',301,'EXECUTED','8:eeba2296f23236d035812360122fd065','update tableName=setting','Added 0.40.0 Migrate friendly field names',NULL,'4.10.0',NULL,NULL,'3885407059'),('311','howonlee','migrations/000_migrations.yaml','2023-01-16 16:12:02',302,'EXECUTED','8:a26e31914822a5176848abbb7c5415bd','sql; sql','Added 0.40.0 Migrate friendly field names, not noop',NULL,'4.10.0',NULL,NULL,'3885407059'),('312','noahmoss','migrations/000_migrations.yaml','2023-01-16 16:12:02',303,'EXECUTED','8:77ef89ba2e7bc19231d9364492091764','sql; sql; sql','Added 0.41.0 Backfill collection_id for dashboard subscriptions',NULL,'4.10.0',NULL,NULL,'3885407059'),('313','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:03',304,'EXECUTED','8:d56afe268ba878cfa474c2d12c385623','createTable tableName=secret','Added 0.42.0 - Secret domain object.',NULL,'4.10.0',NULL,NULL,'3885407059'),('314','howonlee','migrations/000_migrations.yaml','2023-01-16 16:12:03',305,'EXECUTED','8:c9ad2637412d91b26b616a4df4190704','addColumn tableName=metabase_database','Added 0.41.0 Fine grained caching controls',NULL,'4.10.0',NULL,NULL,'3885407059'),('315','howonlee','migrations/000_migrations.yaml','2023-01-16 16:12:03',306,'EXECUTED','8:5b186b8ab743cde5a7f4bf5eadcd520c','addColumn tableName=report_dashboard','Added 0.41.0 Fine grained caching controls, pt 2',NULL,'4.10.0',NULL,NULL,'3885407059'),('316','howonlee','migrations/000_migrations.yaml','2023-01-16 16:12:03',307,'EXECUTED','8:1b7c340684b27af9179613bc351e444f','addColumn tableName=view_log','Added 0.41.0 Fine grained caching controls, pt 3',NULL,'4.10.0',NULL,NULL,'3885407059'),('32','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:21',32,'EXECUTED','8:ccbc51ac2b9446103414e98e68332036','createTable tableName=raw_table; createIndex indexName=idx_rawtable_database_id, tableName=raw_table; addUniqueConstraint constraintName=uniq_raw_table_db_schema_name, tableName=raw_table; createTable tableName=raw_column; createIndex indexName=id...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('32','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:20',31,'EXECUTED','8:28afcfc9b7f1bd1b08caa9d527355c48','createTable tableName=label; createIndex indexName=idx_label_slug, tableName=label; createTable tableName=card_label; addUniqueConstraint constraintName=unique_card_label_card_id_label_id, tableName=card_label; createIndex indexName=idx_card_label...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('34','tlrobinson','migrations/000_migrations.yaml','2023-01-16 16:10:21',33,'EXECUTED','8:52b082600b05bbbc46bfe837d1f37a82','addColumn tableName=pulse_channel','',NULL,'4.10.0',NULL,NULL,'3885407059'),('35','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:22',34,'EXECUTED','8:91b72167fca724e6b6a94b64f886cf09','modifyDataType columnName=value, tableName=setting','',NULL,'4.10.0',NULL,NULL,'3885407059'),('36','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:22',35,'EXECUTED','8:252e08892449dceb16c3d91337bd9573','addColumn tableName=report_dashboard; addNotNullConstraint columnName=parameters, tableName=report_dashboard; addColumn tableName=report_dashboardcard; addNotNullConstraint columnName=parameter_mappings, tableName=report_dashboardcard','',NULL,'4.10.0',NULL,NULL,'3885407059'),('37','tlrobinson','migrations/000_migrations.yaml','2023-01-16 16:10:23',36,'EXECUTED','8:07d959eff81777e5690e2920583cfe5f','addColumn tableName=query_queryexecution; addNotNullConstraint columnName=query_hash, tableName=query_queryexecution; createIndex indexName=idx_query_queryexecution_query_hash, tableName=query_queryexecution; createIndex indexName=idx_query_querye...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('38','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:27',37,'EXECUTED','8:c9251b99ab1122ef441117d5d9852d29','addColumn tableName=metabase_database; addColumn tableName=metabase_table; addColumn tableName=metabase_field; addColumn tableName=report_dashboard; addColumn tableName=metric; addColumn tableName=segment; addColumn tableName=metabase_database; ad...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('381','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:03',308,'EXECUTED','8:048be5b22042724ab3db240e14e43886','createIndex indexName=idx_query_execution_card_id, tableName=query_execution','Added 0.41.2 Add index to QueryExecution card_id to fix performance issues (#18759)',NULL,'4.10.0',NULL,NULL,'3885407059'),('382','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:03',309,'EXECUTED','8:e8c01b2cf428b1e8968393cf31afb188','createIndex indexName=idx_moderation_review_item_type_item_id, tableName=moderation_review','Added 0.41.2 Add index to ModerationReview moderated_item_type + moderated_item_id to fix performance issues (#18759)',NULL,'4.10.0',NULL,NULL,'3885407059'),('383','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:04',310,'EXECUTED','8:eacd3281e0397c61047e4a69e725a5ec','createIndex indexName=idx_query_execution_card_id_started_at, tableName=query_execution','Added 0.41.3 -- Add index to QueryExecution card_id + started_at to fix performance issue',NULL,'4.10.0',NULL,NULL,'3885407059'),('39','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:30',38,'EXECUTED','8:334adc22af5ded71ff27759b7a556951','addColumn tableName=core_user','',NULL,'4.10.0',NULL,NULL,'3885407059'),('4','cammsaul','migrations/000_migrations.yaml','2023-01-16 16:10:12',3,'EXECUTED','8:a8e7822a91ea122212d376f5c2d4158f','createTable tableName=setting','',NULL,'4.10.0',NULL,NULL,'3885407059'),('40','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:31',39,'EXECUTED','8:69326196bb1696f76fbce059b6d7520e','createTable tableName=permissions_group; createIndex indexName=idx_permissions_group_name, tableName=permissions_group; createTable tableName=permissions_group_membership; addUniqueConstraint constraintName=unique_permissions_group_membership_user...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('41','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:31',40,'EXECUTED','8:fae0855adf2f702f1133e32fc98d02a5','dropColumn columnName=field_type, tableName=metabase_field; addDefaultValue columnName=active, tableName=metabase_field; addDefaultValue columnName=preview_display, tableName=metabase_field; addDefaultValue columnName=position, tableName=metabase_...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('42','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:33',41,'EXECUTED','8:e32b3a1624fa289a6ee1f3f0a2dac1f6','dropForeignKeyConstraint baseTableName=query_queryexecution, constraintName=fk_queryexecution_ref_query_id; dropColumn columnName=query_id, tableName=query_queryexecution; dropColumn columnName=is_staff, tableName=core_user; dropColumn columnName=...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('43','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:33',42,'EXECUTED','8:3cf48c3e52ea315379a8ed538c9f2624','createTable tableName=permissions_revision','',NULL,'4.10.0',NULL,NULL,'3885407059'),('44','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:33',43,'EXECUTED','8:2e356e8a1049286f1c78324828ee7867','dropColumn columnName=public_perms, tableName=report_card; dropColumn columnName=public_perms, tableName=report_dashboard; dropColumn columnName=public_perms, tableName=pulse','',NULL,'4.10.0',NULL,NULL,'3885407059'),('45','tlrobinson','migrations/000_migrations.yaml','2023-01-16 16:10:33',44,'EXECUTED','8:421edd38ee0cb0983162f57193f81b0b','addColumn tableName=report_dashboardcard; addNotNullConstraint columnName=visualization_settings, tableName=report_dashboardcard','',NULL,'4.10.0',NULL,NULL,'3885407059'),('46','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:33',45,'EXECUTED','8:131df3cdd9a8c67b32c5988a3fb7fe3d','addNotNullConstraint columnName=row, tableName=report_dashboardcard; addNotNullConstraint columnName=col, tableName=report_dashboardcard; addDefaultValue columnName=row, tableName=report_dashboardcard; addDefaultValue columnName=col, tableName=rep...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('47','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:34',46,'EXECUTED','8:717ed16b2f279bd4fdf5c4aa2b5f5857','createTable tableName=collection; createIndex indexName=idx_collection_slug, tableName=collection; addColumn tableName=report_card; createIndex indexName=idx_card_collection_id, tableName=report_card','',NULL,'4.10.0',NULL,NULL,'3885407059'),('48','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:34',47,'EXECUTED','8:b3b418a4bbcf558e40f5d32effd2c7da','createTable tableName=collection_revision','',NULL,'4.10.0',NULL,NULL,'3885407059'),('49','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:37',48,'EXECUTED','8:a9a777c7ecd1c6a338126b800a8b46e8','addColumn tableName=report_card; addColumn tableName=report_card; createIndex indexName=idx_card_public_uuid, tableName=report_card; addColumn tableName=report_dashboard; addColumn tableName=report_dashboard; createIndex indexName=idx_dashboard_pu...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('5','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:12',4,'EXECUTED','8:4f8653d16f4b102b3dff647277b6b988','addColumn tableName=core_organization','',NULL,'4.10.0',NULL,NULL,'3885407059'),('50','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:37',49,'EXECUTED','8:98a6ab6428ea7a589507464e34ade58a','addColumn tableName=report_card; addColumn tableName=report_card; addColumn tableName=report_dashboard; addColumn tableName=report_dashboard','',NULL,'4.10.0',NULL,NULL,'3885407059'),('51','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:37',50,'EXECUTED','8:43c90b5b9f6c14bfd0e41cc0b184617e','createTable tableName=query_execution; createIndex indexName=idx_query_execution_started_at, tableName=query_execution; createIndex indexName=idx_query_execution_query_hash_started_at, tableName=query_execution','',NULL,'4.10.0',NULL,NULL,'3885407059'),('52','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:38',51,'EXECUTED','8:329695cb161ceb86f6d9473819359351','createTable tableName=query_cache; createIndex indexName=idx_query_cache_updated_at, tableName=query_cache; addColumn tableName=report_card','',NULL,'4.10.0',NULL,NULL,'3885407059'),('53','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:38',52,'EXECUTED','8:78d015c5090c57cd6972eb435601d3d0','createTable tableName=query','',NULL,'4.10.0',NULL,NULL,'3885407059'),('54','tlrobinson','migrations/000_migrations.yaml','2023-01-16 16:10:38',53,'EXECUTED','8:e410005b585f5eeb5f202076ff9468f7','addColumn tableName=pulse','',NULL,'4.10.0',NULL,NULL,'3885407059'),('55','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:39',54,'EXECUTED','8:088fee4d7555e104bc96fed923bce9aa','addColumn tableName=report_dashboard; addColumn tableName=report_dashboard; createTable tableName=dashboard_favorite; addUniqueConstraint constraintName=unique_dashboard_favorite_user_id_dashboard_id, tableName=dashboard_favorite; createIndex inde...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('56','wwwiiilll','migrations/000_migrations.yaml','2023-01-16 16:10:39',55,'EXECUTED','8:9f46051abaee599e2838733512a32ad0','addColumn tableName=core_user','Added 0.25.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('57','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:40',56,'EXECUTED','8:aab81d477e2d19a9ab18c58b78c9af88','addColumn tableName=report_card','Added 0.25.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('58','senior','migrations/000_migrations.yaml','2023-01-16 16:10:41',57,'EXECUTED','8:9e6d48acacceb109e0bd27e4e44a8cb4','createTable tableName=dimension; addUniqueConstraint constraintName=unique_dimension_field_id_name, tableName=dimension; createIndex indexName=idx_dimension_field_id, tableName=dimension','Added 0.25.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('59','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:41',58,'EXECUTED','8:5b6ce52371e0e9eee88e6d766225a94b','addColumn tableName=metabase_field','Added 0.26.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('6','agilliland','migrations/000_migrations.yaml','2023-01-16 16:10:13',5,'EXECUTED','8:2d2f5d1756ecb81da7c09ccfb9b1565a','dropNotNullConstraint columnName=organization_id, tableName=metabase_database; dropForeignKeyConstraint baseTableName=metabase_database, constraintName=fk_database_ref_organization_id; dropNotNullConstraint columnName=organization_id, tableName=re...','',NULL,'4.10.0',NULL,NULL,'3885407059'),('60','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:41',59,'EXECUTED','8:2141162a1c99a5dd95e5a67c5595e6d7','addColumn tableName=metabase_database; addColumn tableName=metabase_database','Added 0.26.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('61','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:42',60,'EXECUTED','8:7dded6fd5bf74d79b9a0b62511981272','addColumn tableName=metabase_field','Added 0.26.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('62','senior','migrations/000_migrations.yaml','2023-01-16 16:10:42',61,'EXECUTED','8:cb32e6eaa1a2140703def2730f81fef2','addColumn tableName=metabase_database','Added 0.26.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('63','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:42',62,'EXECUTED','8:226f73b9f6617495892d281b0f8303db','addColumn tableName=metabase_database','Added 0.26.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('64','senior','migrations/000_migrations.yaml','2023-01-16 16:10:42',63,'EXECUTED','8:4dcc8ffd836b56756f494d5dfce07b50','dropForeignKeyConstraint baseTableName=raw_table, constraintName=fk_rawtable_ref_database','Added 0.26.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('66','senior','migrations/000_migrations.yaml','2023-01-16 16:10:42',64,'EXECUTED','8:e77d66af8e3b83d46c5a0064a75a1aac','sql; sql','Added 0.26.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('67','attekei','migrations/000_migrations.yaml','2023-01-16 16:10:42',65,'EXECUTED','8:a03608d97e19b8a716989e918efad0a6','createTable tableName=computation_job; createTable tableName=computation_job_result','Added 0.27.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('68','sbelak','migrations/000_migrations.yaml','2023-01-16 16:10:42',66,'EXECUTED','8:b4ac06d133dfbdc6567d992c7e18c6ec','addColumn tableName=computation_job; addColumn tableName=computation_job','Added 0.27.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('69','senior','migrations/000_migrations.yaml','2023-01-16 16:10:43',67,'EXECUTED','8:eadbe00e97eb53df4b3df60462f593f6','addColumn tableName=pulse; addColumn tableName=pulse; addColumn tableName=pulse; dropNotNullConstraint columnName=name, tableName=pulse','Added 0.27.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('7','cammsaul','migrations/000_migrations.yaml','2023-01-16 16:10:13',6,'EXECUTED','8:4f23ddbddd447461588462fa8bb443dd','addColumn tableName=metabase_field','',NULL,'4.10.0',NULL,NULL,'3885407059'),('70','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:43',68,'EXECUTED','8:4e4eff7abb983b1127a32ba8107e7fb8','addColumn tableName=metabase_field; addNotNullConstraint columnName=database_type, tableName=metabase_field','Added 0.28.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('71','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:44',69,'EXECUTED','8:755e5c3dd8a55793f29b2c95cb79c211','dropNotNullConstraint columnName=card_id, tableName=report_dashboardcard','Added 0.28.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('72','senior','migrations/000_migrations.yaml','2023-01-16 16:10:44',70,'EXECUTED','8:4dc6debdf779ab9273cf2158a84bb154','addColumn tableName=pulse_card; addColumn tableName=pulse_card','Added 0.28.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('73','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:44',71,'EXECUTED','8:3c0f03d18ff78a0bcc9915e1d9c518d6','addColumn tableName=metabase_database','Added 0.29.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('74','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:44',72,'EXECUTED','8:16726d6560851325930c25caf3c8ab96','addColumn tableName=metabase_field','Added 0.29.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('75','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:44',73,'EXECUTED','8:6072cabfe8188872d8e3da9a675f88c1','addColumn tableName=report_card','Added 0.28.2',NULL,'4.10.0',NULL,NULL,'3885407059'),('76','senior','migrations/000_migrations.yaml','2023-01-16 16:10:44',74,'EXECUTED','8:9b7190c9171ccca72617d508875c3c82','addColumn tableName=metabase_table','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('77','senior','migrations/000_migrations.yaml','2023-01-16 16:10:44',75,'EXECUTED','8:07f0a6cd8dbbd9b89be0bd7378f7bdc8','addColumn tableName=core_user','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('78','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:45',76,'EXECUTED','8:8ea54a54fa04fe657b0b8072125981af','createTable tableName=group_table_access_policy; createIndex indexName=idx_gtap_table_id_group_id, tableName=group_table_access_policy; addUniqueConstraint constraintName=unique_gtap_table_id_group_id, tableName=group_table_access_policy','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('79','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:46',77,'EXECUTED','8:37825e0d48bd4ed5cf1a068de30edc60','addColumn tableName=report_dashboard; createIndex indexName=idx_dashboard_collection_id, tableName=report_dashboard; addColumn tableName=pulse; createIndex indexName=idx_pulse_collection_id, tableName=pulse','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('8','tlrobinson','migrations/000_migrations.yaml','2023-01-16 16:10:13',7,'EXECUTED','8:960ec59bbcb4c9f3fa8362eca9af4075','addColumn tableName=metabase_table; addColumn tableName=metabase_field','',NULL,'4.10.0',NULL,NULL,'3885407059'),('80','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:46',78,'EXECUTED','8:199d0ce28955117819ca15bcc29323e5','addColumn tableName=collection; createIndex indexName=idx_collection_location, tableName=collection','',NULL,'4.10.0',NULL,NULL,'3885407059'),('81','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:46',79,'EXECUTED','8:3a6dc22403660529194d004ca7f7ad39','addColumn tableName=report_dashboard; addColumn tableName=report_card; addColumn tableName=pulse','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('82','senior','migrations/000_migrations.yaml','2023-01-16 16:10:46',80,'EXECUTED','8:ac4b94df8c648f88cfff661284d6392d','addColumn tableName=core_user; sql','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('83','senior','migrations/000_migrations.yaml','2023-01-16 16:10:47',81,'EXECUTED','8:ccd897d737737c05248293c7d56efe96','dropNotNullConstraint columnName=card_id, tableName=group_table_access_policy','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('84','senior','migrations/000_migrations.yaml','2023-01-16 16:10:48',82,'EXECUTED','8:58afc10c3e283a8050ea471aac447a97','renameColumn newColumnName=archived, oldColumnName=is_active, tableName=metric; addDefaultValue columnName=archived, tableName=metric; renameColumn newColumnName=archived, oldColumnName=is_active, tableName=segment; addDefaultValue columnName=arch...','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('85','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:49',83,'EXECUTED','8:624bb71d09dc2bef7c16c025f57edff0','addColumn tableName=collection; createIndex indexName=idx_collection_personal_owner_id, tableName=collection; addColumn tableName=collection; sql; addNotNullConstraint columnName=_slug, tableName=collection; dropColumn columnName=slug, tableName=c...','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('86','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:49',84,'EXECUTED','8:50c75bb29f479e0b3fb782d89f7d6717','sql','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('87','camsaul','migrations/000_migrations.yaml','2023-01-16 16:10:50',85,'EXECUTED','8:0eccf19a93cb0ba4017aafd1d308c097','dropTable tableName=raw_column; dropTable tableName=raw_table','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('88','senior','migrations/000_migrations.yaml','2023-01-16 16:10:50',86,'EXECUTED','8:04ff5a0738473938fc31d68c1d9952e1','addColumn tableName=core_user','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('89','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:00',87,'EXECUTED','8:ab526907b26b1bb43ac9f9548043f2a7','createTable tableName=QRTZ_JOB_DETAILS; addPrimaryKey constraintName=PK_QRTZ_JOB_DETAILS, tableName=QRTZ_JOB_DETAILS; createTable tableName=QRTZ_TRIGGERS; addPrimaryKey constraintName=PK_QRTZ_TRIGGERS, tableName=QRTZ_TRIGGERS; addForeignKeyConstra...','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('9','tlrobinson','migrations/000_migrations.yaml','2023-01-16 16:10:14',8,'EXECUTED','8:d560283a190e3c60802eb04f5532a49d','addColumn tableName=metabase_table','',NULL,'4.10.0',NULL,NULL,'3885407059'),('90','senior','migrations/000_migrations.yaml','2023-01-16 16:11:00',88,'EXECUTED','8:8562a72a1190deadc5fa59a23a6396dc','addColumn tableName=core_user; sql; dropColumn columnName=saml_auth, tableName=core_user','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('91','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:01',89,'EXECUTED','8:9b8831e1e409f08e874c4ece043d0340','dropColumn columnName=raw_table_id, tableName=metabase_table; dropColumn columnName=raw_column_id, tableName=metabase_field','Added 0.30.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('92','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:01',90,'EXECUTED','8:1e5bc2d66778316ea640a561862c23b4','addColumn tableName=query_execution','Added 0.31.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('93','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:01',91,'EXECUTED','8:93b0d408a3970e30d7184ed1166b5476','addColumn tableName=query','Added 0.31.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('94','senior','migrations/000_migrations.yaml','2023-01-16 16:11:02',92,'EXECUTED','8:a2a1eedf1e8f8756856c9d49c7684bfe','createTable tableName=task_history; createIndex indexName=idx_task_history_end_time, tableName=task_history; createIndex indexName=idx_task_history_db_id, tableName=task_history','Added 0.31.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('95','senior','migrations/000_migrations.yaml','2023-01-16 16:11:02',93,'EXECUTED','8:9824808283004e803003b938399a4cf0','addUniqueConstraint constraintName=idx_databasechangelog_id_author_filename, tableName=DATABASECHANGELOG','Added 0.31.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('96','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:02',94,'EXECUTED','8:5cb2f36edcca9c6e14c5e109d6aeb68b','addColumn tableName=metabase_field','Added 0.31.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('97','senior','migrations/000_migrations.yaml','2023-01-16 16:11:02',95,'EXECUTED','8:9169e238663c5d036bd83428d2fa8e4b','modifyDataType columnName=results, tableName=query_cache','Added 0.32.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('98','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:02',96,'EXECUTED','8:f036d20a4dc86fb60ffb64ea838ed6b9','addUniqueConstraint constraintName=idx_uniq_table_db_id_schema_name, tableName=metabase_table; sql','Added 0.32.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('99','camsaul','migrations/000_migrations.yaml','2023-01-16 16:11:02',97,'EXECUTED','8:274bb516dd95b76c954b26084eed1dfe','addUniqueConstraint constraintName=idx_uniq_field_table_id_parent_id_name, tableName=metabase_field; sql','Added 0.32.0',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-000','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:05',311,'EXECUTED','8:5500782a64248810f4a5ca1dc9a6144d','dropColumn columnName=entity_name, tableName=metabase_table','Added 0.42.0 Remove unused column (#5240)',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-001','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:06',312,'EXECUTED','8:9952153cbff16147bcb47b4a26e02089','sql; sql; sql','Added 0.42.0 Attempt to add Card.database_id (by parsing query) to rows that are missing it (#5999)',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-002','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:07',313,'EXECUTED','8:81e0ab53dd2e20cde32e7449155551c2','addNotNullConstraint columnName=database_id, tableName=report_card','Added 0.42.0 Added constraint we should have had all along (#5999)',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-003','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:12:07',314,'EXECUTED','8:4a2036164dac96df6066a0d633fab7b5','addColumn tableName=report_card','Added 0.42.0 Initial support for datasets based on questions',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-004','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:07',315,'EXECUTED','8:b87007340c01509f7645d623f484bc35','modifyDataType columnName=details, tableName=activity','Added 0.42.0 - modify type of activity.details from text to longtext',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-005','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:09',316,'EXECUTED','8:4fc93bf45ab81d53575756ca7e380b09','modifyDataType columnName=description, tableName=collection','Added 0.42.0 - modify type of collection.description from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-006','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:10',317,'EXECUTED','8:482f1edc95984d97ead770380d1b537c','modifyDataType columnName=name, tableName=collection','Added 0.42.0 - modify type of collection.name from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-007','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:10',318,'EXECUTED','8:6bb28eb9953ece5689e2f8e2c8f70e40','modifyDataType columnName=context, tableName=computation_job','Added 0.42.0 - modify type of computation_job.context from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-008','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:10',319,'EXECUTED','8:f0655d1b838de73a10a1a87855542231','modifyDataType columnName=payload, tableName=computation_job_result','Added 0.42.0 - modify type of computation_job_result.payload from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-009','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:11',320,'EXECUTED','8:ed9bedd9b1dbe2f4f032ba7952f6cc42','modifyDataType columnName=anti_csrf_token, tableName=core_session','Added 0.42.0 - modify type of core_session.anti_csrf_token from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-010','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:12',321,'EXECUTED','8:0071b214b07c1986efe4ef376174283f','modifyDataType columnName=login_attributes, tableName=core_user','Added 0.42.0 - modify type of core_user.login_attributes from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-011','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:12',322,'EXECUTED','8:fac89cb5a76acd8b09b4d0dfd025277b','modifyDataType columnName=attribute_remappings, tableName=group_table_access_policy','Added 0.42.0 - modify type of group_table_access_policy.attribute_remappings from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-012','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:13',323,'EXECUTED','8:c36c26ca3fe17cfcc37de94f7a69df99','modifyDataType columnName=device_description, tableName=login_history','Added 0.42.0 - modify type of login_history.device_description from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-013','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:15',324,'EXECUTED','8:68395b6f5066f1bc01c57c61cf16e94d','modifyDataType columnName=ip_address, tableName=login_history','Added 0.42.0 - modify type of login_history.ip_address from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-014','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:16',325,'EXECUTED','8:350ba4d3f1a091bcc9d58d5f7bb5a323','modifyDataType columnName=caveats, tableName=metabase_database','Added 0.42.0 - modify type of metabase_database.caveats from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-015','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:16',326,'EXECUTED','8:5d2272bd598f45699fa72d25d76bc93e','modifyDataType columnName=description, tableName=metabase_database','Added 0.42.0 - modify type of metabase_database.description from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-016','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:16',327,'EXECUTED','8:a3a2edd6d924acef9e552c88a16da5ff','modifyDataType columnName=details, tableName=metabase_database','Added 0.42.0 - modify type of metabase_database.details from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-017','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:17',328,'EXECUTED','8:06d03a4e17109c3393168b5c9f89165b','modifyDataType columnName=options, tableName=metabase_database','Added 0.42.0 - modify type of metabase_database.options from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-018','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:18',329,'EXECUTED','8:77e12da960def76ab529e11170f0b1cd','modifyDataType columnName=points_of_interest, tableName=metabase_database','Added 0.42.0 - modify type of metabase_database.points_of_interest from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-019','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:19',330,'EXECUTED','8:7cd95b97e28834a6c713ca0f2c86427d','modifyDataType columnName=caveats, tableName=metabase_field','Added 0.42.0 - modify type of metabase_field.caveats from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-020','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:19',331,'EXECUTED','8:a1782977481866189befb3b2e8d6a4ef','modifyDataType columnName=database_type, tableName=metabase_field','Added 0.42.0 - modify type of metabase_field.database_type from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-021','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:20',332,'EXECUTED','8:b92ca263a9ac9dca4e31b74f0ac934a6','modifyDataType columnName=description, tableName=metabase_field','Added 0.42.0 - modify type of metabase_field.description from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-022','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:20',333,'EXECUTED','8:629f6079c2f389953dfc236f2db05060','modifyDataType columnName=fingerprint, tableName=metabase_field','Added 0.42.0 - modify type of metabase_field.fingerprint from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-023','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:22',334,'EXECUTED','8:6130da3b1c6263b416ec35a8502239b4','modifyDataType columnName=has_field_values, tableName=metabase_field','Added 0.42.0 - modify type of metabase_field.has_field_values from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-024','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:22',335,'EXECUTED','8:1da25b4f80ad9a8076c9632186c7f003','modifyDataType columnName=points_of_interest, tableName=metabase_field','Added 0.42.0 - modify type of metabase_field.points_of_interest from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-025','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:23',336,'EXECUTED','8:b5a977cfb031df32653a2ef42b6b599a','modifyDataType columnName=settings, tableName=metabase_field','Added 0.42.0 - modify type of metabase_field.settings from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-026','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:24',337,'EXECUTED','8:c2bbd6a83d894ea37486ce4420b53dc2','modifyDataType columnName=human_readable_values, tableName=metabase_fieldvalues','Added 0.42.0 - modify type of metabase_fieldvalues.human_readable_values from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-027','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:25',338,'EXECUTED','8:e18cf828c28368e1baebab38c515771f','modifyDataType columnName=values, tableName=metabase_fieldvalues','Added 0.42.0 - modify type of metabase_fieldvalues.values from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-028','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:25',339,'EXECUTED','8:c8f0fd1991b4e1672931bc7d868f7260','modifyDataType columnName=caveats, tableName=metabase_table','Added 0.42.0 - modify type of metabase_table.caveats from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-029','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:25',340,'EXECUTED','8:1a0be77c71c2e16fe34327fd922a182a','modifyDataType columnName=description, tableName=metabase_table','Added 0.42.0 - modify type of metabase_table.description from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-030','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:27',341,'EXECUTED','8:b4638f5fd85e2b1ed6c89122b5fd8eef','modifyDataType columnName=points_of_interest, tableName=metabase_table','Added 0.42.0 - modify type of metabase_table.points_of_interest from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-031','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:27',342,'EXECUTED','8:05ced2c358e9ba23c6867e6bff14b5c4','modifyDataType columnName=caveats, tableName=metric','Added 0.42.0 - modify type of metric.caveats from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-032','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:27',343,'EXECUTED','8:49fd3ff0466814e2b0fa700a3006afb2','modifyDataType columnName=definition, tableName=metric','Added 0.42.0 - modify type of metric.definition from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-033','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:28',344,'EXECUTED','8:5a520af925c18dd305e18b01330bf671','modifyDataType columnName=description, tableName=metric','Added 0.42.0 - modify type of metric.description from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-034','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:28',345,'EXECUTED','8:7531d31f1fbe5bf808df9a9551b6f586','modifyDataType columnName=how_is_this_calculated, tableName=metric','Added 0.42.0 - modify type of metric.how_is_this_calculated from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-035','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:28',346,'EXECUTED','8:0685062caeb6c074dc81dc3f5bf21326','modifyDataType columnName=points_of_interest, tableName=metric','Added 0.42.0 - modify type of metric.points_of_interest from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-036','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:28',347,'EXECUTED','8:aee58a7ddf2c6273b67108aa23e6ac05','modifyDataType columnName=text, tableName=moderation_review','Added 0.42.0 - modify type of moderation_review.text from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-037','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:29',348,'EXECUTED','8:4e5ec728122fd816fdbf61964ca9ce5d','modifyDataType columnName=content, tableName=native_query_snippet','Added 0.42.0 - modify type of native_query_snippet.content from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-038','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:30',349,'EXECUTED','8:88f9cb8c5e9abdc1af7e1295105d65a2','modifyDataType columnName=description, tableName=native_query_snippet','Added 0.42.0 - modify type of native_query_snippet.description from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-039','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:30',350,'EXECUTED','8:e9e593b35f298880a87db5247d3b8356','modifyDataType columnName=parameters, tableName=pulse','Added 0.42.0 - modify type of pulse.parameters from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-040','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:31',351,'EXECUTED','8:1664f4d4acef7a5565f3d71a78d814a0','modifyDataType columnName=details, tableName=pulse_channel','Added 0.42.0 - modify type of pulse_channel.details from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-041','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:31',352,'EXECUTED','8:0165a45f49bf1a5b3e0b05e915170a74','modifyDataType columnName=query, tableName=query','Added 0.42.0 - modify type of query.query from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-042','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:32',353,'EXECUTED','8:902f2276a34bbee488a2e46d3dcda7f6','modifyDataType columnName=error, tableName=query_execution','Added 0.42.0 - modify type of query_execution.error from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-043','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:33',354,'EXECUTED','8:47c373728e6cd9f8742dc0e6ea8769d8','modifyDataType columnName=dataset_query, tableName=report_card','Added 0.42.0 - modify type of report_card.dataset_query from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-044','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:38',355,'EXECUTED','8:e4867537d1fece86216c61352498e317','modifyDataType columnName=description, tableName=report_card','Added 0.42.0 - modify type of report_card.description from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-045','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:38',356,'EXECUTED','8:4aa291a4353d9346a386182f5d6b1905','modifyDataType columnName=embedding_params, tableName=report_card','Added 0.42.0 - modify type of report_card.embedding_params from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-046','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:39',357,'EXECUTED','8:53f56df51b713cd3e56bd574a853c504','modifyDataType columnName=result_metadata, tableName=report_card','Added 0.42.0 - modify type of report_card.result_metadata from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-047','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:39',358,'EXECUTED','8:2215350a91cfa9143c3333bccf5ae154','modifyDataType columnName=visualization_settings, tableName=report_card','Added 0.42.0 - modify type of report_card.visualization_settings from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-048','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:39',359,'EXECUTED','8:9531e436ed8de044cc9bfbaf7f822f21','modifyDataType columnName=caveats, tableName=report_dashboard','Added 0.42.0 - modify type of report_dashboard.caveats from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-049','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:40',360,'EXECUTED','8:d85a05f002856a795173ff1909241b32','modifyDataType columnName=description, tableName=report_dashboard','Added 0.42.0 - modify type of report_dashboard.description from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-050','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:40',361,'EXECUTED','8:903f85a351e3a6766b234c8acc2bb98c','modifyDataType columnName=embedding_params, tableName=report_dashboard','Added 0.42.0 - modify type of report_dashboard.embedding_params from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-051','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:40',362,'EXECUTED','8:c32e749cdce46beac8f5fd053278d003','modifyDataType columnName=parameters, tableName=report_dashboard','Added 0.42.0 - modify type of report_dashboard.parameters from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-052','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:41',363,'EXECUTED','8:1ed02373e6d26566587c02340035fa12','modifyDataType columnName=points_of_interest, tableName=report_dashboard','Added 0.42.0 - modify type of report_dashboard.points_of_interest from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-053','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:41',364,'EXECUTED','8:df66263027a7822b188e2ad26000590b','modifyDataType columnName=parameter_mappings, tableName=report_dashboardcard','Added 0.42.0 - modify type of report_dashboardcard.parameter_mappings from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-054','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:41',365,'EXECUTED','8:52a31c3d4568779e6410f0d9a73b655c','modifyDataType columnName=visualization_settings, tableName=report_dashboardcard','Added 0.42.0 - modify type of report_dashboardcard.visualization_settings from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-055','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:41',366,'EXECUTED','8:0cf9267ee9561810ea430bd46e08f41f','modifyDataType columnName=message, tableName=revision','Added 0.42.0 - modify type of revision.message from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-056','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:42',367,'EXECUTED','8:b2fbc221760632b705f884454b499e94','modifyDataType columnName=object, tableName=revision','Added 0.42.0 - modify type of revision.object from text to longtext',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-057','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:42',368,'EXECUTED','8:20ac361a17ed14d45cbe460371113c13','modifyDataType columnName=caveats, tableName=segment','Added 0.42.0 - modify type of segment.caveats from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-058','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:42',369,'EXECUTED','8:71b7e5c262d556f339c0401410ab930a','modifyDataType columnName=definition, tableName=segment','Added 0.42.0 - modify type of segment.definition from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-059','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:43',370,'EXECUTED','8:4b4e7cd8d8515274b3bd2e3fd79a53d9','modifyDataType columnName=description, tableName=segment','Added 0.42.0 - modify type of segment.description from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-060','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:43',371,'EXECUTED','8:d7cc05ab540d4c81a837187e4db172b9','modifyDataType columnName=points_of_interest, tableName=segment','Added 0.42.0 - modify type of segment.points_of_interest from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-061','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:47',372,'EXECUTED','8:4747d84c38854d7a588215684355b78a','modifyDataType columnName=value, tableName=setting','Added 0.42.0 - modify type of setting.value from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-062','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:53',373,'EXECUTED','8:fdab93c50c3432e2f5e58bedd9ac8a56','modifyDataType columnName=task_details, tableName=task_history','Added 0.42.0 - modify type of task_history.task_details from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-063','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:54',374,'EXECUTED','8:b6b211459388818f7b5a738245c2ebc0','modifyDataType columnName=metadata, tableName=view_log','Added 0.42.0 - modify type of view_log.metadata from text to longtext on mysql,mariadb',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-064','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:54',375,'EXECUTED','8:9169e238663c5d036bd83428d2fa8e4b','modifyDataType columnName=results, tableName=query_cache','Added 0.42.0 - fix type of query_cache.results on upgrade (in case changeSet 97 was run before #16095)',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-065','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:12:54',376,'EXECUTED','8:5befdc16aff1cda15744a577889f242a','addColumn tableName=core_user','Added 0.42.0 - Another modal dismissed state on user. Retaining the same suffix and boolean style to ease an eventual migration.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-066','noahmoss','migrations/000_migrations.yaml','2023-01-16 16:12:54',377,'EXECUTED','8:b43c6357a5dacd4f7eb3b49c7372b908','addColumn tableName=metabase_database','Added 0.42.0 - new columns for initial DB sync progress UX. Indicates whether a database has succesfully synced at least one time.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-067','noahmoss','migrations/000_migrations.yaml','2023-01-16 16:12:54',378,'EXECUTED','8:cc9373fbb8ae35f5599105b1612f762c','addColumn tableName=metabase_table','Added 0.42.0 - new columns for initial DB sync progress UX. Indicates whether a table has succesfully synced at least one time.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-068','noahmoss','migrations/000_migrations.yaml','2023-01-16 16:12:54',379,'EXECUTED','8:5f3144422c5fa86d1344f6fe0cf2049f','addColumn tableName=metabase_database','Added 0.42.0 - new columns for initial DB sync progress UX. Records the ID of the admin who added a database. May be null for the sample dataset, or for databases added prior to 0.42.0.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-069','noahmoss','migrations/000_migrations.yaml','2023-01-16 16:12:54',380,'EXECUTED','8:1497ad69b4a6855a232a4ea121687ba2','addForeignKeyConstraint baseTableName=metabase_database, constraintName=fk_database_creator_id, referencedTableName=core_user','Added 0.42.0 - adds FK constraint for creator_id column, containing the ID of the admin who added a database.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-070','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:54',381,'EXECUTED','8:33e212129c66d20000d08e8951ac1740','addColumn tableName=metabase_database','Added 0.42.0 - add Database.settings column to implement Database-local Settings',NULL,'4.10.0',NULL,NULL,'3885407059'),('v42.00-071','noahmoss','migrations/000_migrations.yaml','2023-01-16 16:12:54',382,'EXECUTED','8:315c004fe2776340730f660504260575','sql','Added 0.42.0 - migrates the Sample Dataset to the name \"Sample Database\"',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-001','jeff303','migrations/000_migrations.yaml','2023-01-16 16:12:54',383,'EXECUTED','8:200f0cc5989f637c12a497a5cad56a58','sql','Added 0.43.0 - migrates any Database using the old bigquery driver to bigquery-cloud-sdk instead',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-002','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',384,'EXECUTED','8:f964db8e5d278f825b9eb6414195d54d','sql','Added 0.43.0. Create magic \'All Users\' Permissions Group if it does not already exist.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-003','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',385,'EXECUTED','8:d220feb098ef8e5c6bd44e94166a92d9','sql','Added 0.43.0. Create magic \'Administrators\' Permissions Group if it does not already exist.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-004','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',386,'EXECUTED','8:1c28c6de37700b0ae5f679b86d335764','sql','Added 0.43.0. Add existing Users to \'All Users\' magic Permissions Group if needed.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-005','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',387,'EXECUTED','8:17c0d62516f4af2090010ff9f0f1bf1c','sql','Added 0.43.0. Add existing Users with \'is_superuser\' flag to \'Administrators\' magic Permissions Group if needed.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-006','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',388,'EXECUTED','8:e83e560209f8aa4e57e10a6745715483','sql','Added 0.43.0. Create root \'/\' permissions entry for the \'Administrators\' magic Permissions Group if needed.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-007','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',389,'EXECUTED','8:134265766925f53d8da208089e4e1082','sql','Added 0.43.0. Grant permissions for existing Databases to \'All Users\' permissions group.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-008','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',390,'EXECUTED','8:32b1397273c60028aa633d23428527ef','sql; sql','Added 0.43.0. Migrate legacy \'-site-url\' Setting to \'site-url\'. Trim trailing slashes.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-009','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',391,'EXECUTED','8:4042df2ae3ac452a896df3cd5f7a839e','sql; sql','Added 0.43.0. Make sure \'site-url\' Setting includes protocol.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-010','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',392,'EXECUTED','8:a26d3c4c474c13897e0d8a677b7443ae','sql; sql','Added 0.43.0. Migrates value of legacy enable-advanced-humanization Setting to humanization-strategy Setting added in 0.28.0.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-011','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',393,'EXECUTED','8:5760bcc26e036a34e918cf5eecd109ee','sql; sql','Added 0.43.0. Remove legacy enable-advanced-humanization Setting.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-012','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',394,'EXECUTED','8:a59acc0e562305bbef5721982deb2028','sql','Added 0.43.0. Set Field.has_field_values to \'list\' if semantic_type derives from :type/Category.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-014','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',395,'MARK_RAN','8:bf03710cb176dd7c720a3e2e47ae7782','sql','Added 0.43.0. Add \'Migrated Dashboards\' Collection if needed and there are any Dashboards not in a Collection.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-015','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',396,'MARK_RAN','8:f615da33f8be6bd251faac925bfc9bbd','sql','Added 0.43.0. Add \'Migrated Pulses\' Collection if needed and there are any Pulses not in a Collection.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-016','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',397,'MARK_RAN','8:d31ad47d1aa56ddee95c15726b6810d8','sql','Added 0.43.0. Add \'Migrated Questions\' Collection if needed and there are any Cards not in a Collection.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-017','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',398,'EXECUTED','8:969b947a5066941617a9add82975de9a','sql','Added 0.43.0. Move Dashboards not in a Collection to \'Migrated Dashboards\'.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-018','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',399,'EXECUTED','8:b105395ddb21d04c12756e8924ccba83','sql','Added 0.43.0. Move Pulses not in a Collection to \'Migrated Pulses\'.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-019','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',400,'EXECUTED','8:6b2e7344dbf0f3be8ec39b4efdb7a4d5','sql','Added 0.43.0. Move Cards not in a Collection to \'Migrated Questions\'.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-020','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:55',401,'EXECUTED','8:e3399a0ef504c5f5140e9e866a2e49fd','sql','Added 0.43.0. Grant the \'All Users\' Permissions Group readwrite perms for the Root Collection.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-021','adam-james','migrations/000_migrations.yaml','2023-01-16 16:12:55',402,'EXECUTED','8:58859cc020a64c444503b40c474059bf','createTable tableName=timeline','Added 0.43.0 - Timeline table for Events',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-022','adam-james','migrations/000_migrations.yaml','2023-01-16 16:12:56',403,'EXECUTED','8:3f632fca23faaf7da6f01ee51c0c75d2','createTable tableName=timeline_event','Added 0.43.0 - Events table',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-023','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:12:56',404,'EXECUTED','8:68ea023407382a8f54dc282f601ac6cb','createIndex indexName=idx_timeline_collection_id, tableName=timeline','Added 0.43.0 - Index on timeline collection_id',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-024','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:12:56',405,'EXECUTED','8:0056b773435253b7e8e40d5261897823','createIndex indexName=idx_timeline_event_timeline_id, tableName=timeline_event','Added 0.43.0 - Index on timeline_event timeline_id',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-025','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:12:56',406,'EXECUTED','8:8839ff170d1faac11237f79ce729d637','createIndex indexName=idx_timeline_event_timeline_id_timestamp, tableName=timeline_event','Added 0.43.0 - Index on timeline timestamp',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-026','noahmoss','migrations/000_migrations.yaml','2023-01-16 16:12:59',407,'EXECUTED','8:74fed8e37ec92d743b01ddc8a47c6f17','addColumn tableName=core_user','Added 0.43.0 - adds User.settings column to implement User-local Settings',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-027','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:59',408,'EXECUTED','8:141420f027b84d0d08e944ffc0d005df','dropNotNullConstraint columnName=password, tableName=core_user','Added 0.43.0. Drop NOT NULL constraint for core_user.password',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-028','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:59',409,'EXECUTED','8:c86e72e67598f29e10de00fe346095b3','dropNotNullConstraint columnName=password_salt, tableName=core_user','Added 0.43.0. Drop NOT NULL constraint for core_user.password_salt',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-029','camsaul','migrations/000_migrations.yaml','2023-01-16 16:12:59',410,'EXECUTED','8:4d5632ee6fae1f8d0d5e6068700ccb2e','sql','Added 0.43.0. Clear local password for Users using LDAP auth.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-030','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:00',411,'EXECUTED','8:64c206f51e156c7c787e539a7fdd6544','createTable tableName=dashboard_bookmark','Added 0.43.0 - Dashboard bookmarks table',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-031','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:00',412,'EXECUTED','8:1081aff22c7fef2be2c63cdec33aad06','addUniqueConstraint constraintName=unique_dashboard_bookmark_user_id_dashboard_id, tableName=dashboard_bookmark','Added 0.43.0 - Dashboard bookmarks table unique constraint',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-032','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:00',413,'EXECUTED','8:573e98bd0b8392f3c207ae49b1eb20ce','createIndex indexName=idx_dashboard_bookmark_user_id, tableName=dashboard_bookmark','Added 0.43.0 - Dashboard bookmarks table index on user_id',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-033','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:00',414,'EXECUTED','8:d9471b53e0666a6d3fc99e3c768ccafa','createIndex indexName=idx_dashboard_bookmark_dashboard_id, tableName=dashboard_bookmark','Added 0.43.0 - Dashboard bookmarks table index on dashboard_id',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-034','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:00',415,'EXECUTED','8:eb8c0526b63b786f1f005e8bf27eb39d','createTable tableName=card_bookmark','Added 0.43.0 - Card bookmarks table',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-035','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:00',416,'EXECUTED','8:9cce81eb78b0c25d01a23d2f74377eda','addUniqueConstraint constraintName=unique_card_bookmark_user_id_card_id, tableName=card_bookmark','Added 0.43.0 - Card bookmarks table unique constraint',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-036','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:00',417,'EXECUTED','8:a107c119de1ee902e9526a0413158093','createIndex indexName=idx_card_bookmark_user_id, tableName=card_bookmark','Added 0.43.0 - Card bookmarks table index on user_id',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-037','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:00',418,'EXECUTED','8:80b451e8506f3d3092347cb3f9a96c0c','createIndex indexName=idx_card_bookmark_card_id, tableName=card_bookmark','Added 0.43.0 - Card bookmarks table index on card_id',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-038','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:00',419,'EXECUTED','8:04df82a0b841fb20d772b9f4fea5687f','createTable tableName=collection_bookmark','Added 0.43.0 - Collection bookmarks table',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-039','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:01',420,'EXECUTED','8:88c30bdf22c1bcae694850d81a65b175','addUniqueConstraint constraintName=unique_collection_bookmark_user_id_collection_id, tableName=collection_bookmark','Added 0.43.0 - Collection bookmarks table unique constraint',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-040','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:01',421,'EXECUTED','8:455175f303c3f64cb9588aca5c6641e0','createIndex indexName=idx_collection_bookmark_user_id, tableName=collection_bookmark','Added 0.43.0 - Collection bookmarks table index on user_id',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-041','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:01',422,'EXECUTED','8:b3a84ea8c47896be2931fb73e07459ce','createIndex indexName=idx_collection_bookmark_collection_id, tableName=collection_bookmark','Added 0.43.0 - Collection bookmarks table index on collection_id',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-042','noahmoss','migrations/000_migrations.yaml','2023-01-16 16:13:01',423,'EXECUTED','8:e0b982be997b8e591172f4a7c9dab869','sql','Added 0.43.0. Grant download permissions for existing Databases to \'All Users\' permissions group',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-043','howonlee','migrations/000_migrations.yaml','2023-01-16 16:13:01',424,'EXECUTED','8:2b0195448dad18ba671d64a0c35ceb79','addColumn tableName=metabase_field','Added 0.43.0 - Nested field columns in fields',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-044','noahmoss','migrations/000_migrations.yaml','2023-01-16 16:13:01',425,'EXECUTED','8:537bbbdc3a39703e704e80d757d8cead','sql','Added 0.43.0 - Removes MetaBot permissions group',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-046','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:04',426,'EXECUTED','8:819a102fb2912fe83acb69d157a0af25','createTable tableName=general_permissions_revision','Added 0.43.0 - create General Permission Revision table',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-047','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:04',427,'EXECUTED','8:35c7324ab207528726cc332a5b433a58','sql','Added 0.43.0. Grant the \'All Users\' Group permissions to create/edit subscriptions and alerts',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-049','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:05',428,'EXECUTED','8:4bc3de3c17ad7d7667ef17d0de4089fb','modifyDataType columnName=timestamp, tableName=view_log','Added 0.43.0 - Unify datatype with query_execution.started_at so comparable (see 168).',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-050','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:06',429,'EXECUTED','8:d4bc347f147647b361bbe3740d035413','addColumn tableName=permissions_group_membership','Added 0.43.0. Add permissions_group_membership.is_group_manager',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-051','adam-james','migrations/000_migrations.yaml','2023-01-16 16:13:06',430,'EXECUTED','8:cd0b3deabba3be0abcabd7b8f7fe03c8','addColumn tableName=timeline','Added 0.43.0 - default boolean on timelines to indicate default timeline for a collection',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-052','snoe','migrations/000_migrations.yaml','2023-01-16 16:13:07',431,'EXECUTED','8:b3963d6c168f5c30f1288c222b8e0e83','createTable tableName=bookmark_ordering','Added 0.43.0 - bookmark ordering',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-053','snoe','migrations/000_migrations.yaml','2023-01-16 16:13:07',432,'EXECUTED','8:9660924a1b14881a4d5d11e535c6d838','addUniqueConstraint constraintName=unique_bookmark_user_id_type_item_id, tableName=bookmark_ordering','Added 0.43.0 - bookmark ordering',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-054','snoe','migrations/000_migrations.yaml','2023-01-16 16:13:07',433,'EXECUTED','8:b353fff839dde25895deba810f64c704','addUniqueConstraint constraintName=unique_bookmark_user_id_ordering, tableName=bookmark_ordering','Added 0.43.0 - bookmark ordering',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-055','snoe','migrations/000_migrations.yaml','2023-01-16 16:13:07',434,'EXECUTED','8:bd8dd0c8f4391a2ed375f369971b4023','createIndex indexName=idx_bookmark_ordering_user_id, tableName=bookmark_ordering','Added 0.43.0 - bookmark ordering',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-056','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:07',435,'EXECUTED','8:c418d33e471acbbcd9f86e57b1df4468','renameTable newTableName=application_permissions_revision, oldTableName=general_permissions_revision','Added 0.43.0 - Rename general permission revision table It\'s safe to rename this table without breaking downgrades compatibility because this table was also added in 0.43.0.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-057','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:07',436,'MARK_RAN','8:a96791b95827101abd2cb77361c847ce','sql','Added 0.43.0 - Rename general_permissions_revision_id_seq',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-058','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:07',437,'EXECUTED','8:bbef3f445957c95a3d42b74b7c8b1fa3','sql','Added 0.43.0 - Rename general permissios to application permissions',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-059','adam-james','migrations/000_migrations.yaml','2023-01-16 16:13:07',438,'EXECUTED','8:57fb18b8a2b231c107b4d138521166dd','addNotNullConstraint columnName=icon, tableName=timeline','Added 0.43.0 - disallow nil timeline icons',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-060','adam-james','migrations/000_migrations.yaml','2023-01-16 16:13:07',439,'EXECUTED','8:25978d2800f7e2dd6e8f4ad61027dfa3','addNotNullConstraint columnName=icon, tableName=timeline_event','Added 0.43.0 - disallow nil timeline event icons',NULL,'4.10.0',NULL,NULL,'3885407059'),('v43.00-062','snoe','migrations/000_migrations.yaml','2023-01-16 16:13:08',440,'EXECUTED','8:ac44080a30f519541a02888f5126e64b','modifyDataType columnName=timestamp, tableName=revision','Added 0.43.0 - Unify datatype with revision.timestamp for timezone info (see 17829).',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-000','dpsutton','migrations/000_migrations.yaml','2023-01-16 16:13:08',441,'EXECUTED','8:bfb6909d2dcfe7759414611cfce2890f','createTable tableName=persisted_info','Added 0.44.0 - Persisted Info for models',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-001','snoe','migrations/000_migrations.yaml','2023-01-16 16:13:08',442,'EXECUTED','8:ca1fe70c2560c013653bbc00b58e2964','dropNotNullConstraint columnName=creator_id, tableName=persisted_info','Added 0.44.0 - Remove not null constraint from persisted_info.creator_id',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-002','braden','migrations/000_migrations.yaml','2023-01-16 16:13:08',443,'EXECUTED','8:6dc28d92f89811023b6bcd9d77395634','addColumn tableName=metric','Added 0.44.0 - add entity_id column to all internal entities',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-003','braden','migrations/000_migrations.yaml','2023-01-16 16:13:08',444,'EXECUTED','8:9bd778cae47bb09833a901fdcf76fee8','addColumn tableName=segment','Added 0.44.0 - add entity_id column to all internal entities',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-004','braden','migrations/000_migrations.yaml','2023-01-16 16:13:09',445,'EXECUTED','8:4d9ac5fd2c5dbbb6768bb920bd2890cb','addColumn tableName=collection','Added 0.44.0 - add entity_id column to all internal entities',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-005','braden','migrations/000_migrations.yaml','2023-01-16 16:13:09',446,'EXECUTED','8:8a3712f3787b8c58c3c6f307d5b641c5','addColumn tableName=report_dashboard','Added 0.44.0 - add entity_id column to all internal entities',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-006','braden','migrations/000_migrations.yaml','2023-01-16 16:13:09',447,'EXECUTED','8:9d9eee07c7b8a7a3c87f6f98e4856b13','addColumn tableName=dimension','Added 0.44.0 - add entity_id column to all internal entities',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-007','braden','migrations/000_migrations.yaml','2023-01-16 16:13:09',448,'EXECUTED','8:007f472f4397fba9deb7731ddd4a2a9e','addColumn tableName=pulse','Added 0.44.0 - add entity_id column to all internal entities',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-008','braden','migrations/000_migrations.yaml','2023-01-16 16:13:09',449,'EXECUTED','8:ea3332f011482a9a9e709f922830ba95','addColumn tableName=report_card','Added 0.44.0 - add entity_id column to all internal entities',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-009','braden','migrations/000_migrations.yaml','2023-01-16 16:13:09',450,'EXECUTED','8:ef0054e0f1d1ac22ff1c81cf01519d0b','addColumn tableName=native_query_snippet','Added 0.44.0 - add entity_id column to all internal entities',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-010','braden','migrations/000_migrations.yaml','2023-01-16 16:13:10',451,'EXECUTED','8:0e58282581d53882d032811c4ea52c8d','addColumn tableName=timeline','Added 0.44.0 - add entity_id column to all internal entities',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-011','braden','migrations/000_migrations.yaml','2023-01-16 16:13:10',452,'EXECUTED','8:6a606a9c9351749947263fea4255dc1e','addColumn tableName=report_dashboardcard','Added 0.44.0 - add entity_id column to all internal entities',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-023','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:10',453,'EXECUTED','8:0823289b6576040c6dbc2b249a14f93c','addColumn tableName=report_card','Added 0.44.0 - Add parameters to report_card',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-025','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:10',454,'EXECUTED','8:5262b1e5c5aa3a836b334bf394baa857','addColumn tableName=report_card','Added 0.44.0 - Add parameter_mappings to report_card',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-027','adam-james','migrations/000_migrations.yaml','2023-01-16 16:13:10',455,'EXECUTED','8:4fb924ff28472bf113fd4abf5ec8cf1b','dropNotNullConstraint columnName=first_name, tableName=core_user','Added 0.44.0. Drop NOT NULL constraint for core_user.first_name',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-028','adam-james','migrations/000_migrations.yaml','2023-01-16 16:13:10',456,'EXECUTED','8:8c5c6b0342b7970e15fb93ed618a44c3','dropNotNullConstraint columnName=last_name, tableName=core_user','Added 0.44.0. Drop NOT NULL constraint for core_user.last_name',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-029','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:10',457,'EXECUTED','8:3380ac2de7c5c6a0b313c81c8a438f28','addColumn tableName=metabase_fieldvalues','Added 0.44.0 - Add has_more_values to metabase_fieldvalues',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-033','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:11',458,'EXECUTED','8:2407250e09ed3bd6e36f0fa340b206ac','sql','Added 0.43.0. Grant the \'All Users\' Permissions Group readwrite perms for the Root Snippets Collection.',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-035','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:11',459,'EXECUTED','8:38dcbf6c407d7a19591ea6c7baa287e3','addColumn tableName=metabase_fieldvalues','Added 0.44.0. Add type to fieldvalues',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-037','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:11',460,'EXECUTED','8:f8e787b067149fcce9dc880cbc7484b9','addColumn tableName=metabase_fieldvalues','Added 0.44.0. Add type to fieldvalues',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-038','metamben','migrations/000_migrations.yaml','2023-01-16 16:13:11',461,'EXECUTED','8:327897734fed2d9f16707cd16c0395f3','addColumn tableName=report_card','Added 0.44.0 - Add collection_preview to report_card',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-039','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:11',462,'EXECUTED','8:24c09df8d5fd1277460d56b635a724c1','addColumn tableName=native_query_snippet','Added 0.44.0 - Add template_tags to native_query_snippet',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-041','braden','migrations/000_migrations.yaml','2023-01-16 16:13:11',463,'EXECUTED','8:7fba8d5b9bfe7136d1a78c8d8d8fc402','addColumn tableName=pulse_card','Added 0.44.0 - add entity_id column to PulseCard, PulseChannel',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-042','braden','migrations/000_migrations.yaml','2023-01-16 16:13:11',464,'EXECUTED','8:ca3a5364fcac3da951d35f25d660144f','addColumn tableName=pulse_channel','Added 0.44.0 - add entity_id column to PulseCard, PulseChannel',NULL,'4.10.0',NULL,NULL,'3885407059'),('v44.00-044','qnkhuat','migrations/000_migrations.yaml','2023-01-16 16:13:11',465,'EXECUTED','8:601311f94a0587a67013e27d793d2cc2','dropColumn columnName=template_tags, tableName=native_query_snippet','Added 0.44.0 - drop native_query_snippet.template_tags added in v44.00-039',NULL,'4.10.0',NULL,NULL,'3885407059');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_BLOB_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_CRON_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('MetabaseScheduler','metabase.task.abandonment-emails.trigger','DEFAULT','0 0 12 * * ? *','GMT'),('MetabaseScheduler','metabase.task.anonymous-stats.trigger','DEFAULT','0 41 4 * * ? *','GMT'),('MetabaseScheduler','metabase.task.follow-up-emails.trigger','DEFAULT','0 0 12 * * ? *','GMT'),('MetabaseScheduler','metabase.task.refresh-channel-cache.trigger','DEFAULT','0 54 0/4 1/1 * ? *','GMT'),('MetabaseScheduler','metabase.task.send-pulses.trigger','DEFAULT','0 0 * * * ? *','GMT'),('MetabaseScheduler','metabase.task.sync-and-analyze.trigger.2','DEFAULT','0 50 * * * ? *','GMT'),('MetabaseScheduler','metabase.task.task-history-cleanup.trigger','DEFAULT','0 0 * * * ? *','GMT'),('MetabaseScheduler','metabase.task.update-field-values.trigger.2','DEFAULT','0 50 0 * * ? *','GMT'),('MetabaseScheduler','metabase.task.upgrade-checks.trigger','DEFAULT','0 15 6,18 * * ? *','GMT');
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ENTRY_ID` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FIRED_TIME` bigint NOT NULL,
  `SCHED_TIME` bigint DEFAULT NULL,
  `PRIORITY` int NOT NULL,
  `STATE` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IS_NONCONCURRENT` bit(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` bit(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_DURABLE` bit(1) NOT NULL,
  `IS_NONCONCURRENT` bit(1) NOT NULL,
  `IS_UPDATE_DATA` bit(1) NOT NULL,
  `REQUESTS_RECOVERY` bit(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LOCK_NAME` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
INSERT INTO `QRTZ_LOCKS` VALUES ('MetabaseScheduler','STATE_ACCESS'),('MetabaseScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('MetabaseScheduler','0958b77651541673885591581',1673887712707,7500);
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_SIMPLE_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INT_PROP_1` int DEFAULT NULL,
  `INT_PROP_2` int DEFAULT NULL,
  `LONG_PROP_1` bigint DEFAULT NULL,
  `LONG_PROP_2` bigint DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` bit(1) DEFAULT NULL,
  `BOOL_PROP_2` bit(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_SIMPROP_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint DEFAULT NULL,
  `PREV_FIRE_TIME` bigint DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `START_TIME` bigint NOT NULL,
  `END_TIME` bigint DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MISFIRE_INSTR` smallint DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `FK_QRTZ_TRIGGERS_JOB_DETAILS` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  `model` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` int DEFAULT NULL,
  `database_id` int DEFAULT NULL,
  `table_id` int DEFAULT NULL,
  `custom_id` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_activity_timestamp` (`timestamp`),
  KEY `idx_activity_user_id` (`user_id`),
  KEY `idx_activity_custom_id` (`custom_id`),
  CONSTRAINT `fk_activity_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'install','2023-01-16 16:13:12',NULL,'install',NULL,NULL,NULL,NULL,'{}'),(2,'user-joined','2023-01-16 16:47:57',1,'user',1,NULL,NULL,NULL,'{}');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_permissions_revision`
--

DROP TABLE IF EXISTS `application_permissions_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_permissions_revision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `before` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the permission graph before the changes.',
  `after` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the changes in permission graph.',
  `user_id` int NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` datetime NOT NULL COMMENT 'The timestamp of when these changes were made.',
  `remark` longtext COLLATE utf8mb4_unicode_ci COMMENT 'Optional remarks explaining why these changes were made.',
  PRIMARY KEY (`id`),
  KEY `fk_general_permissions_revision_user_id` (`user_id`),
  CONSTRAINT `fk_general_permissions_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to general permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_permissions_revision`
--

LOCK TABLES `application_permissions_revision` WRITE;
/*!40000 ALTER TABLE `application_permissions_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_permissions_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmark_ordering`
--

DROP TABLE IF EXISTS `bookmark_ordering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmark_ordering` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'ID of the User who ordered bookmarks',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'type of the Bookmark',
  `item_id` int NOT NULL COMMENT 'id of the item being bookmarked (Card, Collection, Dashboard, ...) no FK, so may no longer exist',
  `ordering` int NOT NULL COMMENT 'order of bookmark for user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_bookmark_user_id_type_item_id` (`user_id`,`type`,`item_id`),
  UNIQUE KEY `unique_bookmark_user_id_ordering` (`user_id`,`ordering`),
  KEY `idx_bookmark_ordering_user_id` (`user_id`),
  CONSTRAINT `fk_bookmark_ordering_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding ordering information for various bookmark tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark_ordering`
--

LOCK TABLES `bookmark_ordering` WRITE;
/*!40000 ALTER TABLE `bookmark_ordering` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmark_ordering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_bookmark`
--

DROP TABLE IF EXISTS `card_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'ID of the User who bookmarked the Card',
  `card_id` int NOT NULL COMMENT 'ID of the Card bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the bookmark was created',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_card_bookmark_user_id_card_id` (`user_id`,`card_id`),
  KEY `idx_card_bookmark_user_id` (`user_id`),
  KEY `idx_card_bookmark_card_id` (`card_id`),
  CONSTRAINT `fk_card_bookmark_dashboard_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_card_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on cards';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_bookmark`
--

LOCK TABLES `card_bookmark` WRITE;
/*!40000 ALTER TABLE `card_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_label`
--

DROP TABLE IF EXISTS `card_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_label` (
  `id` int NOT NULL AUTO_INCREMENT,
  `card_id` int NOT NULL,
  `label_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_card_label_card_id_label_id` (`card_id`,`label_id`),
  KEY `idx_card_label_card_id` (`card_id`),
  KEY `idx_card_label_label_id` (`label_id`),
  CONSTRAINT `fk_card_label_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_card_label_ref_label_id` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_label`
--

LOCK TABLES `card_label` WRITE;
/*!40000 ALTER TABLE `card_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `color` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Seven-character hex color for this Collection, including the preceding hash sign.',
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether this Collection has been archived and should be hidden from users.',
  `location` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/' COMMENT 'Directory-structure path of ancestor Collections. e.g. "/1/2/" means our Parent is Collection 2, and their parent is Collection 1.',
  `personal_owner_id` int DEFAULT NULL COMMENT 'If set, this Collection is a personal Collection, for exclusive use of the User with this ID.',
  `slug` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namespace` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The namespace (hierachy) this Collection belongs to. NULL means the Collection is in the default namespace.',
  `authority_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nullable column to incidate collection''s authority level. Initially values are "official" and nil.',
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_collection_personal_owner_id` (`personal_owner_id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_collection_location` (`location`),
  KEY `idx_collection_personal_owner_id` (`personal_owner_id`),
  CONSTRAINT `fk_collection_personal_owner_id` FOREIGN KEY (`personal_owner_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Collections are an optional way to organize Cards and handle permissions for them.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (1,'Admin Admin\'s Personal Collection',NULL,'#31698A',_binary '\0','/',1,'admin_admin_s_personal_collection',NULL,NULL,'mcxG_Svb97kaAJDKMH8wJ');
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_bookmark`
--

DROP TABLE IF EXISTS `collection_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'ID of the User who bookmarked the Collection',
  `collection_id` int NOT NULL COMMENT 'ID of the Card bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the bookmark was created',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_collection_bookmark_user_id_collection_id` (`user_id`,`collection_id`),
  KEY `idx_collection_bookmark_user_id` (`user_id`),
  KEY `idx_collection_bookmark_collection_id` (`collection_id`),
  CONSTRAINT `fk_collection_bookmark_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_collection_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on collections';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_bookmark`
--

LOCK TABLES `collection_bookmark` WRITE;
/*!40000 ALTER TABLE `collection_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_permission_graph_revision`
--

DROP TABLE IF EXISTS `collection_permission_graph_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_permission_graph_revision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `before` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the collections graph before the changes.',
  `after` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the collections graph after the changes.',
  `user_id` int NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` datetime NOT NULL COMMENT 'The timestamp of when these changes were made.',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT 'Optional remarks explaining why these changes were made.',
  PRIMARY KEY (`id`),
  KEY `fk_collection_revision_user_id` (`user_id`),
  CONSTRAINT `fk_collection_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to collections.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_permission_graph_revision`
--

LOCK TABLES `collection_permission_graph_revision` WRITE;
/*!40000 ALTER TABLE `collection_permission_graph_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_permission_graph_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computation_job`
--

DROP TABLE IF EXISTS `computation_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computation_job` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creator_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  `ended_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_computation_job_ref_user_id` (`creator_id`),
  CONSTRAINT `fk_computation_job_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores submitted async computation jobs.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computation_job`
--

LOCK TABLES `computation_job` WRITE;
/*!40000 ALTER TABLE `computation_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `computation_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computation_job_result`
--

DROP TABLE IF EXISTS `computation_job_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computation_job_result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `permanence` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `fk_computation_result_ref_job_id` (`job_id`),
  CONSTRAINT `fk_computation_result_ref_job_id` FOREIGN KEY (`job_id`) REFERENCES `computation_job` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores results of async computation jobs.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computation_job_result`
--

LOCK TABLES `computation_job_result` WRITE;
/*!40000 ALTER TABLE `computation_job_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `computation_job_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_session`
--

DROP TABLE IF EXISTS `core_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_session` (
  `id` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `anti_csrf_token` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `fk_session_ref_user_id` (`user_id`),
  CONSTRAINT `fk_session_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_session`
--

LOCK TABLES `core_session` WRITE;
/*!40000 ALTER TABLE `core_session` DISABLE KEYS */;
INSERT INTO `core_session` VALUES ('f95b13bb-aff8-4d20-966e-345b4b3d7b73',1,'2023-01-16 16:47:57',NULL);
/*!40000 ALTER TABLE `core_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user`
--

DROP TABLE IF EXISTS `core_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_salt` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_joined` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` bit(1) NOT NULL DEFAULT b'0',
  `is_active` bit(1) NOT NULL DEFAULT b'1',
  `reset_token` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_triggered` bigint DEFAULT NULL,
  `is_qbnewb` bit(1) NOT NULL DEFAULT b'1',
  `google_auth` bit(1) NOT NULL DEFAULT b'0',
  `ldap_auth` bit(1) NOT NULL DEFAULT b'0',
  `login_attributes` longtext COLLATE utf8mb4_unicode_ci,
  `updated_at` datetime DEFAULT NULL COMMENT 'When was this User last updated?',
  `sso_source` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'String to indicate the SSO backend the user is from',
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Preferred ISO locale (language/country) code, e.g "en" or "en-US", for this User. Overrides site default.',
  `is_datasetnewb` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Boolean flag to indicate if the dataset info modal has been dismissed.',
  `settings` longtext COLLATE utf8mb4_unicode_ci COMMENT 'Serialized JSON containing User-local Settings for this User',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user`
--

LOCK TABLES `core_user` WRITE;
/*!40000 ALTER TABLE `core_user` DISABLE KEYS */;
INSERT INTO `core_user` VALUES (1,'noreply@test.example','Admin','Admin','$2a$10$EsOdqTMEm8tUu0a7CKToB.jKp6vw4xu3RrKRSxUGNbGR8RPWKhYmm','4898849d-0edb-423c-8035-0aabf597163d','2023-01-16 16:47:57','2023-01-16 16:47:57',_binary '',_binary '',NULL,NULL,_binary '',_binary '\0',_binary '\0',NULL,'2023-01-16 16:47:57',NULL,NULL,_binary '',NULL);
/*!40000 ALTER TABLE `core_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_bookmark`
--

DROP TABLE IF EXISTS `dashboard_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'ID of the User who bookmarked the Dashboard',
  `dashboard_id` int NOT NULL COMMENT 'ID of the Dashboard bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the bookmark was created',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_dashboard_bookmark_user_id_dashboard_id` (`user_id`,`dashboard_id`),
  KEY `idx_dashboard_bookmark_user_id` (`user_id`),
  KEY `idx_dashboard_bookmark_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_dashboard_bookmark_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboard_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on dashboards';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_bookmark`
--

LOCK TABLES `dashboard_bookmark` WRITE;
/*!40000 ALTER TABLE `dashboard_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_favorite`
--

DROP TABLE IF EXISTS `dashboard_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_favorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'ID of the User who favorited the Dashboard.',
  `dashboard_id` int NOT NULL COMMENT 'ID of the Dashboard favorited by the User.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_dashboard_favorite_user_id_dashboard_id` (`user_id`,`dashboard_id`),
  KEY `idx_dashboard_favorite_user_id` (`user_id`),
  KEY `idx_dashboard_favorite_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_dashboard_favorite_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboard_favorite_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Presence of a row here indicates a given User has favorited a given Dashboard.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_favorite`
--

LOCK TABLES `dashboard_favorite` WRITE;
/*!40000 ALTER TABLE `dashboard_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboardcard_series`
--

DROP TABLE IF EXISTS `dashboardcard_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboardcard_series` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dashboardcard_id` int NOT NULL,
  `card_id` int NOT NULL,
  `position` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dashboardcard_series_dashboardcard_id` (`dashboardcard_id`),
  KEY `idx_dashboardcard_series_card_id` (`card_id`),
  CONSTRAINT `fk_dashboardcard_series_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboardcard_series_ref_dashboardcard_id` FOREIGN KEY (`dashboardcard_id`) REFERENCES `report_dashboardcard` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboardcard_series`
--

LOCK TABLES `dashboardcard_series` WRITE;
/*!40000 ALTER TABLE `dashboardcard_series` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboardcard_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_migrations`
--

DROP TABLE IF EXISTS `data_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_migrations` (
  `id` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_data_migrations_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_migrations`
--

LOCK TABLES `data_migrations` WRITE;
/*!40000 ALTER TABLE `data_migrations` DISABLE KEYS */;
INSERT INTO `data_migrations` VALUES ('migrate-click-through','2023-01-16 16:13:11'),('migrate-remove-admin-from-group-mapping-if-needed','2023-01-16 16:13:11');
/*!40000 ALTER TABLE `data_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependency`
--

DROP TABLE IF EXISTS `dependency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int NOT NULL,
  `dependent_on_model` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dependent_on_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dependency_model` (`model`),
  KEY `idx_dependency_model_id` (`model_id`),
  KEY `idx_dependency_dependent_on_model` (`dependent_on_model`),
  KEY `idx_dependency_dependent_on_id` (`dependent_on_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependency`
--

LOCK TABLES `dependency` WRITE;
/*!40000 ALTER TABLE `dependency` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimension`
--

DROP TABLE IF EXISTS `dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimension` (
  `id` int NOT NULL AUTO_INCREMENT,
  `field_id` int NOT NULL COMMENT 'ID of the field this dimension row applies to',
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Short description used as the display name of this new column',
  `type` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Either internal for a user defined remapping or external for a foreign key based remapping',
  `human_readable_field_id` int DEFAULT NULL COMMENT 'Only used with external type remappings. Indicates which field on the FK related table to use for display',
  `created_at` datetime NOT NULL COMMENT 'The timestamp of when the dimension was created.',
  `updated_at` datetime NOT NULL COMMENT 'The timestamp of when these dimension was last updated.',
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_dimension_field_id_name` (`field_id`,`name`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `fk_dimension_displayfk_ref_field_id` (`human_readable_field_id`),
  KEY `idx_dimension_field_id` (`field_id`),
  CONSTRAINT `fk_dimension_displayfk_ref_field_id` FOREIGN KEY (`human_readable_field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dimension_ref_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores references to alternate views of existing fields, such as remapping an integer to a description, like an enum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimension`
--

LOCK TABLES `dimension` WRITE;
/*!40000 ALTER TABLE `dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_table_access_policy`
--

DROP TABLE IF EXISTS `group_table_access_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_table_access_policy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL COMMENT 'ID of the Permissions Group this policy affects.',
  `table_id` int NOT NULL COMMENT 'ID of the Table that should get automatically replaced as query source for the Permissions Group.',
  `card_id` int DEFAULT NULL,
  `attribute_remappings` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_gtap_table_id_group_id` (`table_id`,`group_id`),
  KEY `fk_gtap_group_id` (`group_id`),
  KEY `idx_gtap_table_id_group_id` (`table_id`,`group_id`),
  KEY `fk_gtap_card_id` (`card_id`),
  CONSTRAINT `fk_gtap_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_gtap_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_gtap_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Records that a given Card (Question) should automatically replace a given Table as query source for a given a Perms Group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_table_access_policy`
--

LOCK TABLES `group_table_access_policy` WRITE;
/*!40000 ALTER TABLE `group_table_access_policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_table_access_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `label` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `idx_label_slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_history`
--

DROP TABLE IF EXISTS `login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'When this login occurred.',
  `user_id` int NOT NULL COMMENT 'ID of the User that logged in.',
  `session_id` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ID of the Session created by this login if one is currently active. NULL if Session is no longer active.',
  `device_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cookie-based unique identifier for the device/browser the user logged in from.',
  `device_description` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_session_id` (`session_id`),
  KEY `idx_timestamp` (`timestamp`),
  KEY `idx_user_id_device_id` (`session_id`,`device_id`),
  KEY `idx_user_id_timestamp` (`user_id`,`timestamp`),
  CONSTRAINT `fk_login_history_session_id` FOREIGN KEY (`session_id`) REFERENCES `core_session` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_login_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Keeps track of various logins for different users and additional info such as location and device';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_history`
--

LOCK TABLES `login_history` WRITE;
/*!40000 ALTER TABLE `login_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metabase_database`
--

DROP TABLE IF EXISTS `metabase_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_database` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `engine` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sample` bit(1) NOT NULL DEFAULT b'0',
  `is_full_sync` bit(1) NOT NULL DEFAULT b'1',
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci,
  `caveats` longtext COLLATE utf8mb4_unicode_ci,
  `metadata_sync_schedule` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0 50 * * * ? *' COMMENT 'The cron schedule string for when this database should undergo the metadata sync process (and analysis for new fields).',
  `cache_field_values_schedule` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0 50 0 * * ? *' COMMENT 'The cron schedule string for when FieldValues for eligible Fields should be updated.',
  `timezone` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Timezone identifier for the database, set by the sync process',
  `is_on_demand` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether we should do On-Demand caching of FieldValues for this DB. This means FieldValues are updated when their Field is used in a Dashboard or Card param.',
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `auto_run_queries` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Whether to automatically run queries when doing simple filtering and summarizing in the Query Builder.',
  `refingerprint` bit(1) DEFAULT NULL COMMENT 'Whether or not to enable periodic refingerprinting for this Database.',
  `cache_ttl` int DEFAULT NULL COMMENT 'Granular cache TTL for specific database.',
  `initial_sync_status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'complete' COMMENT 'String indicating whether a database has completed its initial sync and is ready to use',
  `creator_id` int DEFAULT NULL COMMENT 'ID of the admin who added the database',
  `settings` longtext COLLATE utf8mb4_unicode_ci COMMENT 'Serialized JSON containing Database-local Settings for this Database',
  PRIMARY KEY (`id`),
  KEY `fk_database_creator_id` (`creator_id`),
  CONSTRAINT `fk_database_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_database`
--

LOCK TABLES `metabase_database` WRITE;
/*!40000 ALTER TABLE `metabase_database` DISABLE KEYS */;
INSERT INTO `metabase_database` VALUES (2,'2023-01-16 16:47:57','2023-01-16 16:48:00','OpenPodcast',NULL,'{\"additional-options\":\"allowPublicKeyRetrieval=true\",\"ssl\":false,\"password\":\"password\",\"let-user-control-scheduling\":null,\"port\":null,\"advanced-options\":true,\"dbname\":\"openpodcast\",\"host\":\"db\",\"tunnel-enabled\":false,\"json-unfolding\":false,\"user\":\"openpodcast\"}','mysql',_binary '\0',_binary '',NULL,NULL,'0 50 * * * ? *','0 50 0 * * ? *','UTC',_binary '\0',NULL,_binary '',NULL,NULL,'complete',1,NULL);
/*!40000 ALTER TABLE `metabase_database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metabase_field`
--

DROP TABLE IF EXISTS `metabase_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_field` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semantic_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `preview_display` bit(1) NOT NULL DEFAULT b'1',
  `position` int NOT NULL DEFAULT '0',
  `table_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `display_name` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `fk_target_field_id` int DEFAULT NULL,
  `last_analyzed` datetime DEFAULT NULL,
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci,
  `caveats` longtext COLLATE utf8mb4_unicode_ci,
  `fingerprint` longtext COLLATE utf8mb4_unicode_ci,
  `fingerprint_version` int NOT NULL DEFAULT '0' COMMENT 'The version of the fingerprint for this Field. Used so we can keep track of which Fields need to be analyzed again when new things are added to fingerprints.',
  `database_type` longtext COLLATE utf8mb4_unicode_ci,
  `has_field_values` longtext COLLATE utf8mb4_unicode_ci,
  `settings` longtext COLLATE utf8mb4_unicode_ci,
  `database_position` int NOT NULL DEFAULT '0',
  `custom_position` int NOT NULL DEFAULT '0',
  `effective_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The effective type of the field after any coercions.',
  `coercion_strategy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'A strategy to coerce the base_type into the effective_type.',
  `nfc_path` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nested field column paths, flattened',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_field_table_id_parent_id_name` (`table_id`,`parent_id`,`name`),
  KEY `idx_field_table_id` (`table_id`),
  KEY `idx_field_parent_id` (`parent_id`),
  CONSTRAINT `fk_field_parent_ref_field_id` FOREIGN KEY (`parent_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_field_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_field`
--

LOCK TABLES `metabase_field` WRITE;
/*!40000 ALTER TABLE `metabase_field` DISABLE KEYS */;
INSERT INTO `metabase_field` VALUES (37,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_quarter2_median_listeners','type/Integer',NULL,_binary '',NULL,_binary '',12,8,NULL,'Aed Quarter2 Median Listeners','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,12,0,'type/Integer',NULL,NULL),(38,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_play_top_cities','type/SerializedJSON','type/SerializedJSON',_binary '',NULL,_binary '',8,8,NULL,'Aed Play Top Cities','normal',NULL,NULL,NULL,NULL,NULL,0,'JSON',NULL,NULL,8,0,'type/SerializedJSON',NULL,NULL),(39,'2023-01-16 16:47:58','2023-01-16 16:47:58','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,8,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(40,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_histogram_max_listeners','type/Integer',NULL,_binary '',NULL,_binary '',10,8,NULL,'Aed Histogram Max Listeners','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,10,0,'type/Integer',NULL,NULL),(41,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_uniquelistenerscount','type/Integer',NULL,_binary '',NULL,_binary '',5,8,NULL,'Aed Uniquelistenerscount','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,5,0,'type/Integer',NULL,NULL),(42,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_quarter3_median_listeners','type/Integer',NULL,_binary '',NULL,_binary '',13,8,NULL,'Aed Quarter3 Median Listeners','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,13,0,'type/Integer',NULL,NULL),(43,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_play_histogram','type/SerializedJSON','type/SerializedJSON',_binary '',NULL,_binary '',7,8,NULL,'Aed Play Histogram','normal',NULL,NULL,NULL,NULL,NULL,0,'JSON',NULL,NULL,7,0,'type/SerializedJSON',NULL,NULL),(44,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_totaltimelistened','type/BigInteger',NULL,_binary '',NULL,_binary '',3,8,NULL,'Aed Totaltimelistened','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,3,0,'type/BigInteger',NULL,NULL),(45,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_quarter4_median_listeners','type/Integer',NULL,_binary '',NULL,_binary '',14,8,NULL,'Aed Quarter4 Median Listeners','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,14,0,'type/Integer',NULL,NULL),(46,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_quarter1_median_listeners','type/Integer',NULL,_binary '',NULL,_binary '',11,8,NULL,'Aed Quarter1 Median Listeners','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,11,0,'type/Integer',NULL,NULL),(47,'2023-01-16 16:47:58','2023-01-16 16:47:58','episode_id','type/BigInteger','type/PK',_binary '',NULL,_binary '',1,8,NULL,'Episode ID','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,1,0,'type/BigInteger',NULL,NULL),(48,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_engagedplayscount','type/Integer',NULL,_binary '',NULL,_binary '',6,8,NULL,'Aed Engagedplayscount','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,6,0,'type/Integer',NULL,NULL),(49,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_uniqueengagedlistenerscount','type/Integer',NULL,_binary '',NULL,_binary '',4,8,NULL,'Aed Uniqueengagedlistenerscount','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,4,0,'type/Integer',NULL,NULL),(50,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_playscount','type/Integer',NULL,_binary '',NULL,_binary '',2,8,NULL,'Aed Playscount','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,2,0,'type/Integer',NULL,NULL),(51,'2023-01-16 16:47:58','2023-01-16 16:47:58','aed_play_top_countries','type/SerializedJSON','type/SerializedJSON',_binary '',NULL,_binary '',9,8,NULL,'Aed Play Top Countries','normal',NULL,NULL,NULL,NULL,NULL,0,'JSON',NULL,NULL,9,0,'type/SerializedJSON',NULL,NULL),(52,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_name','type/Text',NULL,_binary '',NULL,_binary '',2,18,NULL,'Ep Name','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,2,0,'type/Text',NULL,NULL),(53,'2023-01-16 16:47:59','2023-01-16 16:47:59','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,18,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(54,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_guid','type/Text',NULL,_binary '',NULL,_binary '',6,18,NULL,'Ep GUID','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,6,0,'type/Text',NULL,NULL),(55,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_number','type/Integer',NULL,_binary '',NULL,_binary '',7,18,NULL,'Ep Number','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,7,0,'type/Integer',NULL,NULL),(56,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_type','type/Text',NULL,_binary '',NULL,_binary '',8,18,NULL,'Ep Type','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,8,0,'type/Text',NULL,NULL),(57,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_release_datetime','type/DateTime',NULL,_binary '',NULL,_binary '',4,18,NULL,'Ep Release Datetime','normal',NULL,NULL,NULL,NULL,NULL,0,'DATETIME',NULL,NULL,4,0,'type/DateTime',NULL,NULL),(58,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_release_date','type/Date',NULL,_binary '',NULL,_binary '',5,18,NULL,'Ep Release Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,5,0,'type/Date',NULL,NULL),(59,'2023-01-16 16:47:59','2023-01-16 16:47:59','episode_id','type/BigInteger','type/PK',_binary '',NULL,_binary '',1,18,NULL,'Episode ID','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,1,0,'type/BigInteger',NULL,NULL),(60,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_collection_name','type/Text',NULL,_binary '',NULL,_binary '',3,18,NULL,'Ep Collection Name','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,3,0,'type/Text',NULL,NULL),(61,'2023-01-16 16:47:59','2023-01-16 16:47:59','atl_totaltimelistened','type/BigInteger',NULL,_binary '',NULL,_binary '',4,14,NULL,'Atl Totaltimelistened','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,4,0,'type/BigInteger',NULL,NULL),(62,'2023-01-16 16:47:59','2023-01-16 16:47:59','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,14,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(63,'2023-01-16 16:47:59','2023-01-16 16:47:59','atl_uniquelistenerscount','type/Integer',NULL,_binary '',NULL,_binary '',6,14,NULL,'Atl Uniquelistenerscount','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,6,0,'type/Integer',NULL,NULL),(64,'2023-01-16 16:47:59','2023-01-16 16:47:59','atl_playscount','type/Integer',NULL,_binary '',NULL,_binary '',3,14,NULL,'Atl Playscount','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,3,0,'type/Integer',NULL,NULL),(65,'2023-01-16 16:47:59','2023-01-16 16:47:59','atl_date','type/Date','type/PK',_binary '',NULL,_binary '',2,14,NULL,'Atl Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,2,0,'type/Date',NULL,NULL),(66,'2023-01-16 16:47:59','2023-01-16 16:47:59','episode_id','type/BigInteger','type/PK',_binary '',NULL,_binary '',1,14,NULL,'Episode ID','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,1,0,'type/BigInteger',NULL,NULL),(67,'2023-01-16 16:47:59','2023-01-16 16:47:59','atl_uniqueengagedlistenerscount','type/Integer',NULL,_binary '',NULL,_binary '',5,14,NULL,'Atl Uniqueengagedlistenerscount','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,5,0,'type/Integer',NULL,NULL),(68,'2023-01-16 16:47:59','2023-01-16 16:47:59','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,13,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(69,'2023-01-16 16:47:59','2023-01-16 16:47:59','atf_lost','type/Integer',NULL,_binary '',NULL,_binary '',4,13,NULL,'Atf Lost','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,4,0,'type/Integer',NULL,NULL),(70,'2023-01-16 16:47:59','2023-01-16 16:47:59','atf_gained','type/Integer',NULL,_binary '',NULL,_binary '',3,13,NULL,'Atf Gained','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,3,0,'type/Integer',NULL,NULL),(71,'2023-01-16 16:47:59','2023-01-16 16:47:59','atf_totalfollowers','type/Integer',NULL,_binary '',NULL,_binary '',2,13,NULL,'Atf Totalfollowers','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,2,0,'type/Integer',NULL,NULL),(72,'2023-01-16 16:47:59','2023-01-16 16:47:59','atf_date','type/Date','type/PK',_binary '',NULL,_binary '',1,13,NULL,'Atf Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,1,0,'type/Date',NULL,NULL),(73,'2023-01-16 16:47:59','2023-01-16 16:47:59','atl_totaltimelistened','type/BigInteger',NULL,_binary '',NULL,_binary '',3,16,NULL,'Atl Totaltimelistened','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,3,0,'type/BigInteger',NULL,NULL),(74,'2023-01-16 16:47:59','2023-01-16 16:47:59','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,16,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(75,'2023-01-16 16:47:59','2023-01-16 16:47:59','atl_playscount','type/Integer',NULL,_binary '',NULL,_binary '',2,16,NULL,'Atl Playscount','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,2,0,'type/Integer',NULL,NULL),(76,'2023-01-16 16:47:59','2023-01-16 16:47:59','atl_uniqueengagedlistenerscount','type/Integer',NULL,_binary '',NULL,_binary '',4,16,NULL,'Atl Uniqueengagedlistenerscount','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,4,0,'type/Integer',NULL,NULL),(77,'2023-01-16 16:47:59','2023-01-16 16:47:59','atl_date','type/Date','type/PK',_binary '',NULL,_binary '',1,16,NULL,'Atl Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,1,0,'type/Date',NULL,NULL),(78,'2023-01-16 16:47:59','2023-01-16 16:47:59','atl_uniquelistenerscount','type/Integer',NULL,_binary '',NULL,_binary '',5,16,NULL,'Atl Uniquelistenerscount','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,5,0,'type/Integer',NULL,NULL),(79,'2023-01-16 16:47:59','2023-01-16 16:47:59','ev_timestamp','type/DateTimeWithLocalTZ','type/PK',_binary '',NULL,_binary '',2,10,NULL,'Ev Timestamp','normal',NULL,NULL,NULL,NULL,NULL,0,'TIMESTAMP',NULL,NULL,2,0,'type/DateTimeWithLocalTZ',NULL,NULL),(80,'2023-01-16 16:47:59','2023-01-16 16:47:59','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,10,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(81,'2023-01-16 16:47:59','2023-01-16 16:47:59','ev_userhash','type/Text',NULL,_binary '',NULL,_binary '',1,10,NULL,'Ev Userhash','normal',NULL,NULL,NULL,NULL,NULL,0,'CHAR',NULL,NULL,1,0,'type/Text',NULL,NULL),(82,'2023-01-16 16:47:59','2023-01-16 16:47:59','ev_raw','type/SerializedJSON','type/SerializedJSON',_binary '',NULL,_binary '',3,10,NULL,'Ev Raw','normal',NULL,NULL,NULL,NULL,NULL,0,'JSON',NULL,NULL,3,0,'type/SerializedJSON',NULL,NULL),(83,'2023-01-16 16:47:59','2023-01-16 16:47:59','spa_facet_type','type/*','type/PK',_binary '',NULL,_binary '',4,12,NULL,'Spa Facet Type','normal',NULL,NULL,NULL,NULL,NULL,0,'ENUM',NULL,NULL,4,0,'type/*',NULL,NULL),(84,'2023-01-16 16:47:59','2023-01-16 16:47:59','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,12,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(85,'2023-01-16 16:47:59','2023-01-16 16:47:59','spa_gender_female','type/Integer',NULL,_binary '',NULL,_binary '',6,12,NULL,'Spa Gender Female','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,6,0,'type/Integer',NULL,NULL),(86,'2023-01-16 16:47:59','2023-01-16 16:47:59','spa_gender_not_specified','type/Integer',NULL,_binary '',NULL,_binary '',5,12,NULL,'Spa Gender Not Specified','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,5,0,'type/Integer',NULL,NULL),(87,'2023-01-16 16:47:59','2023-01-16 16:47:59','spa_facet','type/Text','type/PK',_binary '',NULL,_binary '',3,12,NULL,'Spa Facet','normal',NULL,NULL,NULL,NULL,NULL,0,'CHAR',NULL,NULL,3,0,'type/Text',NULL,NULL),(88,'2023-01-16 16:47:59','2023-01-16 16:47:59','spa_gender_male','type/Integer',NULL,_binary '',NULL,_binary '',7,12,NULL,'Spa Gender Male','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,7,0,'type/Integer',NULL,NULL),(89,'2023-01-16 16:47:59','2023-01-16 16:47:59','spa_date','type/Date','type/PK',_binary '',NULL,_binary '',2,12,NULL,'Spa Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,2,0,'type/Date',NULL,NULL),(90,'2023-01-16 16:47:59','2023-01-16 16:47:59','episode_id','type/Text','type/PK',_binary '',NULL,_binary '',1,12,NULL,'Episode ID','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,1,0,'type/Text',NULL,NULL),(91,'2023-01-16 16:47:59','2023-01-16 16:47:59','spa_gender_non_binary','type/Integer',NULL,_binary '',NULL,_binary '',8,12,NULL,'Spa Gender Non Binary','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,8,0,'type/Integer',NULL,NULL),(92,'2023-01-16 16:47:59','2023-01-16 16:47:59','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,11,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(93,'2023-01-16 16:47:59','2023-01-16 16:47:59','sps_date','type/Date','type/PK',_binary '',NULL,_binary '',2,11,NULL,'Sps Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,2,0,'type/Date',NULL,NULL),(94,'2023-01-16 16:47:59','2023-01-16 16:47:59','sps_streams','type/Integer',NULL,_binary '',NULL,_binary '',4,11,NULL,'Sps Streams','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,4,0,'type/Integer',NULL,NULL),(95,'2023-01-16 16:47:59','2023-01-16 16:47:59','episode_id','type/Text','type/PK',_binary '',NULL,_binary '',1,11,NULL,'Episode ID','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,1,0,'type/Text',NULL,NULL),(96,'2023-01-16 16:47:59','2023-01-16 16:47:59','sps_starts','type/Integer',NULL,_binary '',NULL,_binary '',3,11,NULL,'Sps Starts','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,3,0,'type/Integer',NULL,NULL),(97,'2023-01-16 16:47:59','2023-01-16 16:47:59','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,5,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(98,'2023-01-16 16:47:59','2023-01-16 16:47:59','spl_count','type/Integer',NULL,_binary '',NULL,_binary '',3,5,NULL,'Spl Count','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,3,0,'type/Integer',NULL,NULL),(99,'2023-01-16 16:47:59','2023-01-16 16:47:59','spl_date','type/Date','type/PK',_binary '',NULL,_binary '',2,5,NULL,'Spl Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,2,0,'type/Date',NULL,NULL),(100,'2023-01-16 16:47:59','2023-01-16 16:47:59','episode_id','type/Text','type/PK',_binary '',NULL,_binary '',1,5,NULL,'Episode ID','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,1,0,'type/Text',NULL,NULL),(101,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_name','type/Text',NULL,_binary '',NULL,_binary '',2,21,NULL,'Ep Name','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,2,0,'type/Text',NULL,NULL),(102,'2023-01-16 16:47:59','2023-01-16 16:47:59','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,21,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(103,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_url','type/Text',NULL,_binary '',NULL,_binary '',3,21,NULL,'Ep URL','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,3,0,'type/Text',NULL,NULL),(104,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_spark_line','type/SerializedJSON','type/SerializedJSON',_binary '',NULL,_binary '',10,21,NULL,'Ep Spark Line','normal',NULL,NULL,NULL,NULL,NULL,0,'JSON',NULL,NULL,10,0,'type/SerializedJSON',NULL,NULL),(105,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_artwork_url','type/Text',NULL,_binary '',NULL,_binary '',4,21,NULL,'Ep Artwork URL','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,4,0,'type/Text',NULL,NULL),(106,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_description','type/Text',NULL,_binary '',NULL,_binary '',6,21,NULL,'Ep Description','normal',NULL,NULL,NULL,NULL,NULL,0,'TEXT',NULL,NULL,6,0,'type/Text',NULL,NULL),(107,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_language','type/Text',NULL,_binary '',NULL,_binary '',9,21,NULL,'Ep Language','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,9,0,'type/Text',NULL,NULL),(108,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_has_video','type/Boolean',NULL,_binary '',NULL,_binary '',11,21,NULL,'Ep Has Video','normal',NULL,NULL,NULL,NULL,NULL,0,'BIT',NULL,NULL,11,0,'type/Boolean',NULL,NULL),(109,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_release_date','type/Date',NULL,_binary '',NULL,_binary '',5,21,NULL,'Ep Release Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,5,0,'type/Date',NULL,NULL),(110,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_duration','type/Integer',NULL,_binary '',NULL,_binary '',8,21,NULL,'Ep Duration','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,8,0,'type/Integer',NULL,NULL),(111,'2023-01-16 16:47:59','2023-01-16 16:47:59','episode_id','type/Text','type/PK',_binary '',NULL,_binary '',1,21,NULL,'Episode ID','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,1,0,'type/Text',NULL,NULL),(112,'2023-01-16 16:47:59','2023-01-16 16:47:59','ep_explicit','type/Boolean',NULL,_binary '',NULL,_binary '',7,21,NULL,'Ep Explicit','normal',NULL,NULL,NULL,NULL,NULL,0,'BIT',NULL,NULL,7,0,'type/Boolean',NULL,NULL),(113,'2023-01-16 16:47:59','2023-01-16 16:47:59','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,17,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(114,'2023-01-16 16:47:59','2023-01-16 16:47:59','epm_listeners','type/Integer',NULL,_binary '',NULL,_binary '',5,17,NULL,'Epm Listeners','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,5,0,'type/Integer',NULL,NULL),(115,'2023-01-16 16:47:59','2023-01-16 16:47:59','epm_streams','type/Integer',NULL,_binary '',NULL,_binary '',4,17,NULL,'Epm Streams','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,4,0,'type/Integer',NULL,NULL),(116,'2023-01-16 16:47:59','2023-01-16 16:47:59','epm_starts','type/Integer',NULL,_binary '',NULL,_binary '',3,17,NULL,'Epm Starts','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,3,0,'type/Integer',NULL,NULL),(117,'2023-01-16 16:47:59','2023-01-16 16:47:59','episode_id','type/Text','type/PK',_binary '',NULL,_binary '',1,17,NULL,'Episode ID','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,1,0,'type/Text',NULL,NULL),(118,'2023-01-16 16:47:59','2023-01-16 16:47:59','epm_date','type/Date','type/PK',_binary '',NULL,_binary '',2,17,NULL,'Epm Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,2,0,'type/Date',NULL,NULL),(119,'2023-01-16 16:47:59','2023-01-16 16:47:59','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,19,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(120,'2023-01-16 16:47:59','2023-01-16 16:47:59','spp_sample_rate','type/Integer',NULL,_binary '',NULL,_binary '',8,19,NULL,'Spp Sample Rate','normal',NULL,NULL,NULL,NULL,NULL,0,'MEDIUMINT UNSIGNED',NULL,NULL,8,0,'type/Integer',NULL,NULL),(121,'2023-01-16 16:47:59','2023-01-16 16:47:59','spp_percentile_75','type/Integer',NULL,_binary '',NULL,_binary '',6,19,NULL,'Spp Percentile 75','normal',NULL,NULL,NULL,NULL,NULL,0,'TINYINT UNSIGNED',NULL,NULL,6,0,'type/Integer',NULL,NULL),(122,'2023-01-16 16:47:59','2023-01-16 16:47:59','spp_sample_seconds','type/Integer',NULL,_binary '',NULL,_binary '',10,19,NULL,'Spp Sample Seconds','normal',NULL,NULL,NULL,NULL,NULL,0,'INT UNSIGNED',NULL,NULL,10,0,'type/Integer',NULL,NULL),(123,'2023-01-16 16:48:00','2023-01-16 16:48:00','spp_percentile_25','type/Integer',NULL,_binary '',NULL,_binary '',4,19,NULL,'Spp Percentile 25','normal',NULL,NULL,NULL,NULL,NULL,0,'TINYINT UNSIGNED',NULL,NULL,4,0,'type/Integer',NULL,NULL),(124,'2023-01-16 16:48:00','2023-01-16 16:48:00','spp_sample_max','type/Integer',NULL,_binary '',NULL,_binary '',9,19,NULL,'Spp Sample Max','normal',NULL,NULL,NULL,NULL,NULL,0,'INT UNSIGNED',NULL,NULL,9,0,'type/Integer',NULL,NULL),(125,'2023-01-16 16:48:00','2023-01-16 16:48:00','spp_samples','type/SerializedJSON','type/SerializedJSON',_binary '',NULL,_binary '',11,19,NULL,'Spp Samples','normal',NULL,NULL,NULL,NULL,NULL,0,'JSON',NULL,NULL,11,0,'type/SerializedJSON',NULL,NULL),(126,'2023-01-16 16:48:00','2023-01-16 16:48:00','spp_percentile_100','type/Integer',NULL,_binary '',NULL,_binary '',7,19,NULL,'Spp Percentile 100','normal',NULL,NULL,NULL,NULL,NULL,0,'TINYINT UNSIGNED',NULL,NULL,7,0,'type/Integer',NULL,NULL),(127,'2023-01-16 16:48:00','2023-01-16 16:48:00','spp_median_seconds','type/Integer',NULL,_binary '',NULL,_binary '',3,19,NULL,'Spp Median Seconds','normal',NULL,NULL,NULL,NULL,NULL,0,'MEDIUMINT UNSIGNED',NULL,NULL,3,0,'type/Integer',NULL,NULL),(128,'2023-01-16 16:48:00','2023-01-16 16:48:00','spp_median_percentage','type/Integer',NULL,_binary '',NULL,_binary '',2,19,NULL,'Spp Median Percentage','normal',NULL,NULL,NULL,NULL,NULL,0,'TINYINT UNSIGNED',NULL,NULL,2,0,'type/Integer',NULL,NULL),(129,'2023-01-16 16:48:00','2023-01-16 16:48:00','episode_id','type/Text','type/PK',_binary '',NULL,_binary '',1,19,NULL,'Episode ID','normal',NULL,NULL,NULL,NULL,NULL,0,'VARCHAR',NULL,NULL,1,0,'type/Text',NULL,NULL),(130,'2023-01-16 16:48:00','2023-01-16 16:48:00','spp_percentile_50','type/Integer',NULL,_binary '',NULL,_binary '',5,19,NULL,'Spp Percentile 50','normal',NULL,NULL,NULL,NULL,NULL,0,'TINYINT UNSIGNED',NULL,NULL,5,0,'type/Integer',NULL,NULL),(131,'2023-01-16 16:48:00','2023-01-16 16:48:00','spa_gender_not_specified','type/Integer',NULL,_binary '',NULL,_binary '',4,9,NULL,'Spa Gender Not Specified','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,4,0,'type/Integer',NULL,NULL),(132,'2023-01-16 16:48:00','2023-01-16 16:48:00','spa_facet_type','type/*','type/PK',_binary '',NULL,_binary '',3,9,NULL,'Spa Facet Type','normal',NULL,NULL,NULL,NULL,NULL,0,'ENUM',NULL,NULL,3,0,'type/*',NULL,NULL),(133,'2023-01-16 16:48:00','2023-01-16 16:48:00','spa_facet','type/Text','type/PK',_binary '',NULL,_binary '',2,9,NULL,'Spa Facet','normal',NULL,NULL,NULL,NULL,NULL,0,'CHAR',NULL,NULL,2,0,'type/Text',NULL,NULL),(134,'2023-01-16 16:48:00','2023-01-16 16:48:00','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,9,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(135,'2023-01-16 16:48:00','2023-01-16 16:48:00','spa_date','type/Date','type/PK',_binary '',NULL,_binary '',1,9,NULL,'Spa Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,1,0,'type/Date',NULL,NULL),(136,'2023-01-16 16:48:00','2023-01-16 16:48:00','spa_gender_male','type/Integer',NULL,_binary '',NULL,_binary '',6,9,NULL,'Spa Gender Male','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,6,0,'type/Integer',NULL,NULL),(137,'2023-01-16 16:48:00','2023-01-16 16:48:00','spa_gender_female','type/Integer',NULL,_binary '',NULL,_binary '',5,9,NULL,'Spa Gender Female','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,5,0,'type/Integer',NULL,NULL),(138,'2023-01-16 16:48:00','2023-01-16 16:48:00','spa_gender_non_binary','type/Integer',NULL,_binary '',NULL,_binary '',7,9,NULL,'Spa Gender Non Binary','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,7,0,'type/Integer',NULL,NULL),(139,'2023-01-16 16:48:00','2023-01-16 16:48:00','sps_streams','type/Integer',NULL,_binary '',NULL,_binary '',3,15,NULL,'Sps Streams','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,3,0,'type/Integer',NULL,NULL),(140,'2023-01-16 16:48:00','2023-01-16 16:48:00','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,15,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(141,'2023-01-16 16:48:00','2023-01-16 16:48:00','sps_date','type/Date','type/PK',_binary '',NULL,_binary '',1,15,NULL,'Sps Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,1,0,'type/Date',NULL,NULL),(142,'2023-01-16 16:48:00','2023-01-16 16:48:00','sps_starts','type/Integer',NULL,_binary '',NULL,_binary '',2,15,NULL,'Sps Starts','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,2,0,'type/Integer',NULL,NULL),(143,'2023-01-16 16:48:00','2023-01-16 16:48:00','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,6,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(144,'2023-01-16 16:48:00','2023-01-16 16:48:00','spf_date','type/Date','type/PK',_binary '',NULL,_binary '',1,6,NULL,'Spf Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,1,0,'type/Date',NULL,NULL),(145,'2023-01-16 16:48:00','2023-01-16 16:48:00','spf_count','type/Integer',NULL,_binary '',NULL,_binary '',2,6,NULL,'Spf Count','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,2,0,'type/Integer',NULL,NULL),(146,'2023-01-16 16:48:00','2023-01-16 16:48:00','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,20,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(147,'2023-01-16 16:48:00','2023-01-16 16:48:00','spl_count','type/Integer',NULL,_binary '',NULL,_binary '',2,20,NULL,'Spl Count','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,2,0,'type/Integer',NULL,NULL),(148,'2023-01-16 16:48:00','2023-01-16 16:48:00','spl_date','type/Date','type/PK',_binary '',NULL,_binary '',1,20,NULL,'Spl Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,1,0,'type/Date',NULL,NULL),(149,'2023-01-16 16:48:00','2023-01-16 16:48:00','account_id','type/Integer','type/PK',_binary '',NULL,_binary '',0,7,NULL,'Account ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL),(150,'2023-01-16 16:48:00','2023-01-16 16:48:00','spm_date','type/Date','type/PK',_binary '',NULL,_binary '',1,7,NULL,'Spm Date','normal',NULL,NULL,NULL,NULL,NULL,0,'DATE',NULL,NULL,1,0,'type/Date',NULL,NULL),(151,'2023-01-16 16:48:00','2023-01-16 16:48:00','spm_total_episodes','type/Integer',NULL,_binary '',NULL,_binary '',2,7,NULL,'Spm Total Episodes','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,2,0,'type/Integer',NULL,NULL),(152,'2023-01-16 16:48:00','2023-01-16 16:48:00','spm_listeners','type/Integer',NULL,_binary '',NULL,_binary '',5,7,NULL,'Spm Listeners','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,5,0,'type/Integer',NULL,NULL),(153,'2023-01-16 16:48:00','2023-01-16 16:48:00','spm_starts','type/Integer',NULL,_binary '',NULL,_binary '',3,7,NULL,'Spm Starts','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,3,0,'type/Integer',NULL,NULL),(154,'2023-01-16 16:48:00','2023-01-16 16:48:00','spm_streams','type/Integer',NULL,_binary '',NULL,_binary '',4,7,NULL,'Spm Streams','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,4,0,'type/Integer',NULL,NULL),(155,'2023-01-16 16:48:00','2023-01-16 16:48:00','spm_followers','type/Integer',NULL,_binary '',NULL,_binary '',6,7,NULL,'Spm Followers','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,6,0,'type/Integer',NULL,NULL);
/*!40000 ALTER TABLE `metabase_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metabase_fieldvalues`
--

DROP TABLE IF EXISTS `metabase_fieldvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_fieldvalues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `values` longtext COLLATE utf8mb4_unicode_ci,
  `human_readable_values` longtext COLLATE utf8mb4_unicode_ci,
  `field_id` int NOT NULL,
  `has_more_values` bit(1) DEFAULT b'0' COMMENT 'true if the stored values list is a subset of all possible values',
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full' COMMENT 'Type of FieldValues',
  `hash_key` longtext COLLATE utf8mb4_unicode_ci COMMENT 'Hash key for a cached fieldvalues',
  PRIMARY KEY (`id`),
  KEY `idx_fieldvalues_field_id` (`field_id`),
  CONSTRAINT `fk_fieldvalues_ref_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_fieldvalues`
--

LOCK TABLES `metabase_fieldvalues` WRITE;
/*!40000 ALTER TABLE `metabase_fieldvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `metabase_fieldvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metabase_table`
--

DROP TABLE IF EXISTS `metabase_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `entity_type` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `db_id` int NOT NULL,
  `display_name` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility_type` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci,
  `caveats` longtext COLLATE utf8mb4_unicode_ci,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `field_order` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'database',
  `initial_sync_status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'complete' COMMENT 'String indicating whether a table has completed its initial sync and is ready to use',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_table_db_id_schema_name` (`db_id`,`schema`,`name`),
  KEY `idx_table_db_id` (`db_id`),
  KEY `idx_metabase_table_show_in_getting_started` (`show_in_getting_started`),
  KEY `idx_metabase_table_db_id_schema` (`db_id`,`schema`),
  CONSTRAINT `fk_table_ref_database_id` FOREIGN KEY (`db_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_table`
--

LOCK TABLES `metabase_table` WRITE;
/*!40000 ALTER TABLE `metabase_table` DISABLE KEYS */;
INSERT INTO `metabase_table` VALUES (5,'2023-01-16 16:47:58','2023-01-16 16:48:01','spotifyEpisodeListeners',NULL,'entity/GenericTable',_binary '',2,'SpotifyEpisodeListeners',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(6,'2023-01-16 16:47:58','2023-01-16 16:48:01','spotifyPodcastFollowers',NULL,'entity/GenericTable',_binary '',2,'SpotifyPodcastFollowers',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(7,'2023-01-16 16:47:58','2023-01-16 16:48:01','spotifyPodcastMetadata',NULL,'entity/GenericTable',_binary '',2,'SpotifyPodcastMetadata',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(8,'2023-01-16 16:47:58','2023-01-16 16:48:01','appleEpisodeDetails',NULL,'entity/GenericTable',_binary '',2,'AppleEpisodeDetails',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(9,'2023-01-16 16:47:58','2023-01-16 16:48:01','spotifyPodcastAggregate',NULL,'entity/GenericTable',_binary '',2,'SpotifyPodcastAggregate',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(10,'2023-01-16 16:47:58','2023-01-16 16:48:01','events',NULL,'entity/EventTable',_binary '',2,'Events',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(11,'2023-01-16 16:47:58','2023-01-16 16:48:01','spotifyEpisodeDetailedStreams',NULL,'entity/GenericTable',_binary '',2,'SpotifyEpisodeDetailedStreams',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(12,'2023-01-16 16:47:58','2023-01-16 16:48:01','spotifyEpisodeAggregate',NULL,'entity/GenericTable',_binary '',2,'SpotifyEpisodeAggregate',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(13,'2023-01-16 16:47:58','2023-01-16 16:48:01','appleTrendsEpisodePodcastFollowers',NULL,'entity/GenericTable',_binary '',2,'AppleTrendsEpisodePodcastFollowers',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(14,'2023-01-16 16:47:58','2023-01-16 16:48:01','appleTrendsEpisodeListeners',NULL,'entity/GenericTable',_binary '',2,'AppleTrendsEpisodeListeners',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(15,'2023-01-16 16:47:58','2023-01-16 16:48:01','spotifyPodcastDetailedStreams',NULL,'entity/GenericTable',_binary '',2,'SpotifyPodcastDetailedStreams',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(16,'2023-01-16 16:47:58','2023-01-16 16:48:01','appleTrendsEpisodePodcastListeners',NULL,'entity/GenericTable',_binary '',2,'AppleTrendsEpisodePodcastListeners',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(17,'2023-01-16 16:47:58','2023-01-16 16:48:01','spotifyEpisodeMetadataHistory',NULL,'entity/GenericTable',_binary '',2,'SpotifyEpisodeMetadataHistory',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(18,'2023-01-16 16:47:58','2023-01-16 16:48:01','appleEpisodeMetadata',NULL,'entity/GenericTable',_binary '',2,'AppleEpisodeMetadata',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(19,'2023-01-16 16:47:58','2023-01-16 16:48:01','spotifyEpisodePerformance',NULL,'entity/GenericTable',_binary '',2,'SpotifyEpisodePerformance',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(20,'2023-01-16 16:47:58','2023-01-16 16:48:01','spotifyPodcastListeners',NULL,'entity/GenericTable',_binary '',2,'SpotifyPodcastListeners',NULL,NULL,NULL,NULL,_binary '\0','database','complete'),(21,'2023-01-16 16:47:58','2023-01-16 16:48:01','spotifyEpisodeMetadata',NULL,'entity/GenericTable',_binary '',2,'SpotifyEpisodeMetadata',NULL,NULL,NULL,NULL,_binary '\0','database','complete');
/*!40000 ALTER TABLE `metabase_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metric`
--

DROP TABLE IF EXISTS `metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metric` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_id` int NOT NULL,
  `creator_id` int NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `archived` bit(1) DEFAULT b'0',
  `definition` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci,
  `caveats` longtext COLLATE utf8mb4_unicode_ci,
  `how_is_this_calculated` longtext COLLATE utf8mb4_unicode_ci,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_metric_creator_id` (`creator_id`),
  KEY `idx_metric_table_id` (`table_id`),
  KEY `idx_metric_show_in_getting_started` (`show_in_getting_started`),
  CONSTRAINT `fk_metric_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_metric_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric`
--

LOCK TABLES `metric` WRITE;
/*!40000 ALTER TABLE `metric` DISABLE KEYS */;
/*!40000 ALTER TABLE `metric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metric_important_field`
--

DROP TABLE IF EXISTS `metric_important_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metric_important_field` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metric_id` int NOT NULL,
  `field_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_metric_important_field_metric_id_field_id` (`metric_id`,`field_id`),
  KEY `idx_metric_important_field_metric_id` (`metric_id`),
  KEY `idx_metric_important_field_field_id` (`field_id`),
  CONSTRAINT `fk_metric_important_field_metabase_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_metric_important_field_metric_id` FOREIGN KEY (`metric_id`) REFERENCES `metric` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric_important_field`
--

LOCK TABLES `metric_important_field` WRITE;
/*!40000 ALTER TABLE `metric_important_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `metric_important_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderation_review`
--

DROP TABLE IF EXISTS `moderation_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderation_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'most recent modification time',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'creation time',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'verified, misleading, confusing, not_misleading, pending',
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `moderated_item_id` int NOT NULL COMMENT 'either a document or question ID; the item that needs review',
  `moderated_item_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'whether it''s a question or dashboard',
  `moderator_id` int NOT NULL COMMENT 'ID of the user who did the review',
  `most_recent` bit(1) NOT NULL COMMENT 'tag for most recent review',
  PRIMARY KEY (`id`),
  KEY `idx_moderation_review_item_type_item_id` (`moderated_item_type`,`moderated_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Reviews (from moderators) for a given question/dashboard (BUCM)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderation_review`
--

LOCK TABLES `moderation_review` WRITE;
/*!40000 ALTER TABLE `moderation_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `moderation_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `native_query_snippet`
--

DROP TABLE IF EXISTS `native_query_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `native_query_snippet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the query snippet',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `creator_id` int NOT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `collection_id` int DEFAULT NULL COMMENT 'ID of the Snippet Folder (Collection) this Snippet is in, if any',
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `fk_snippet_creator_id` (`creator_id`),
  KEY `idx_snippet_name` (`name`),
  KEY `idx_snippet_collection_id` (`collection_id`),
  CONSTRAINT `fk_snippet_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_snippet_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Query snippets (raw text) to be substituted in native queries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `native_query_snippet`
--

LOCK TABLES `native_query_snippet` WRITE;
/*!40000 ALTER TABLE `native_query_snippet` DISABLE KEYS */;
/*!40000 ALTER TABLE `native_query_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`object`),
  KEY `idx_permissions_group_id` (`group_id`),
  KEY `idx_permissions_object` (`object`),
  KEY `idx_permissions_group_id_object` (`group_id`,`object`),
  CONSTRAINT `fk_permissions_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (3,'/application/subscription/',1),(4,'/collection/namespace/snippets/root/',1),(2,'/collection/root/',1),(8,'/db/2/',1),(9,'/download/db/2/',1),(10,'/download/db/2/native/',1),(1,'/',2);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_group`
--

DROP TABLE IF EXISTS `permissions_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_permissions_group_name` (`name`),
  KEY `idx_permissions_group_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_group`
--

LOCK TABLES `permissions_group` WRITE;
/*!40000 ALTER TABLE `permissions_group` DISABLE KEYS */;
INSERT INTO `permissions_group` VALUES (2,'Administrators'),(1,'All Users');
/*!40000 ALTER TABLE `permissions_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_group_membership`
--

DROP TABLE IF EXISTS `permissions_group_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_group_membership` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  `is_group_manager` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Boolean flag to indicate whether user is a group''s manager.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_permissions_group_membership_user_id_group_id` (`user_id`,`group_id`),
  KEY `idx_permissions_group_membership_group_id` (`group_id`),
  KEY `idx_permissions_group_membership_user_id` (`user_id`),
  KEY `idx_permissions_group_membership_group_id_user_id` (`group_id`,`user_id`),
  CONSTRAINT `fk_permissions_group_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_permissions_group_membership_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_group_membership`
--

LOCK TABLES `permissions_group_membership` WRITE;
/*!40000 ALTER TABLE `permissions_group_membership` DISABLE KEYS */;
INSERT INTO `permissions_group_membership` VALUES (1,1,1,_binary '\0'),(2,1,2,_binary '\0');
/*!40000 ALTER TABLE `permissions_group_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_revision`
--

DROP TABLE IF EXISTS `permissions_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_revision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `before` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the permissions before the changes.',
  `after` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the permissions after the changes.',
  `user_id` int NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` datetime NOT NULL COMMENT 'The timestamp of when these changes were made.',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT 'Optional remarks explaining why these changes were made.',
  PRIMARY KEY (`id`),
  KEY `fk_permissions_revision_user_id` (`user_id`),
  CONSTRAINT `fk_permissions_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_revision`
--

LOCK TABLES `permissions_revision` WRITE;
/*!40000 ALTER TABLE `permissions_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persisted_info`
--

DROP TABLE IF EXISTS `persisted_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persisted_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `database_id` int NOT NULL COMMENT 'ID of the database associated to the persisted card',
  `card_id` int NOT NULL COMMENT 'ID of the Card model persisted',
  `question_slug` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slug of the card which will form the persisted table name',
  `table_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the table persisted',
  `definition` longtext COLLATE utf8mb4_unicode_ci COMMENT 'JSON object that captures the state of the table when we persisted',
  `query_hash` longtext COLLATE utf8mb4_unicode_ci COMMENT 'Hash of the query persisted',
  `active` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Indicating whether the persisted table is active and can be swapped',
  `state` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Persisted table state (creating, persisted, refreshing, deleted)',
  `refresh_begin` timestamp(6) NOT NULL COMMENT 'The timestamp of when the most recent refresh was started',
  `refresh_end` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp of when the most recent refresh ended',
  `state_change_at` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp of when the most recent state changed',
  `error` longtext COLLATE utf8mb4_unicode_ci COMMENT 'Error message from persisting if applicable',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the model was first persisted',
  `creator_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_id` (`card_id`),
  KEY `fk_persisted_info_ref_creator_id` (`creator_id`),
  KEY `fk_persisted_info_database_id` (`database_id`),
  CONSTRAINT `fk_persisted_info_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_persisted_info_database_id` FOREIGN KEY (`database_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_persisted_info_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding information about persisted models';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persisted_info`
--

LOCK TABLES `persisted_info` WRITE;
/*!40000 ALTER TABLE `persisted_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `persisted_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pulse`
--

DROP TABLE IF EXISTS `pulse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creator_id` int NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `skip_if_empty` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Skip a scheduled Pulse if none of its questions have any results',
  `alert_condition` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Condition (i.e. "rows" or "goal") used as a guard for alerts',
  `alert_first_only` bit(1) DEFAULT NULL COMMENT 'True if the alert should be disabled after the first notification',
  `alert_above_goal` bit(1) DEFAULT NULL COMMENT 'For a goal condition, alert when above the goal',
  `collection_id` int DEFAULT NULL COMMENT 'Options ID of Collection this Pulse belongs to.',
  `collection_position` smallint DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `archived` bit(1) DEFAULT b'0' COMMENT 'Has this pulse been archived?',
  `dashboard_id` int DEFAULT NULL COMMENT 'ID of the Dashboard if this Pulse is a Dashboard Subscription.',
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_pulse_creator_id` (`creator_id`),
  KEY `idx_pulse_collection_id` (`collection_id`),
  KEY `fk_pulse_ref_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_pulse_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_pulse_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_ref_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse`
--

LOCK TABLES `pulse` WRITE;
/*!40000 ALTER TABLE `pulse` DISABLE KEYS */;
/*!40000 ALTER TABLE `pulse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pulse_card`
--

DROP TABLE IF EXISTS `pulse_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse_card` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pulse_id` int NOT NULL,
  `card_id` int NOT NULL,
  `position` int NOT NULL,
  `include_csv` bit(1) NOT NULL DEFAULT b'0' COMMENT 'True if a CSV of the data should be included for this pulse card',
  `include_xls` bit(1) NOT NULL DEFAULT b'0' COMMENT 'True if a XLS of the data should be included for this pulse card',
  `dashboard_card_id` int DEFAULT NULL COMMENT 'If this Pulse is a Dashboard subscription, the ID of the DashboardCard that corresponds to this PulseCard.',
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_pulse_card_pulse_id` (`pulse_id`),
  KEY `idx_pulse_card_card_id` (`card_id`),
  KEY `fk_pulse_card_ref_pulse_card_id` (`dashboard_card_id`),
  CONSTRAINT `fk_pulse_card_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_card_ref_pulse_card_id` FOREIGN KEY (`dashboard_card_id`) REFERENCES `report_dashboardcard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_card_ref_pulse_id` FOREIGN KEY (`pulse_id`) REFERENCES `pulse` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse_card`
--

LOCK TABLES `pulse_card` WRITE;
/*!40000 ALTER TABLE `pulse_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `pulse_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pulse_channel`
--

DROP TABLE IF EXISTS `pulse_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse_channel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pulse_id` int NOT NULL,
  `channel_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `schedule_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_hour` int DEFAULT NULL,
  `schedule_day` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `schedule_frame` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` bit(1) NOT NULL DEFAULT b'1',
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_pulse_channel_pulse_id` (`pulse_id`),
  KEY `idx_pulse_channel_schedule_type` (`schedule_type`),
  CONSTRAINT `fk_pulse_channel_ref_pulse_id` FOREIGN KEY (`pulse_id`) REFERENCES `pulse` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse_channel`
--

LOCK TABLES `pulse_channel` WRITE;
/*!40000 ALTER TABLE `pulse_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `pulse_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pulse_channel_recipient`
--

DROP TABLE IF EXISTS `pulse_channel_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse_channel_recipient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pulse_channel_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pulse_channel_recipient_ref_pulse_channel_id` (`pulse_channel_id`),
  KEY `fk_pulse_channel_recipient_ref_user_id` (`user_id`),
  CONSTRAINT `fk_pulse_channel_recipient_ref_pulse_channel_id` FOREIGN KEY (`pulse_channel_id`) REFERENCES `pulse_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_channel_recipient_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse_channel_recipient`
--

LOCK TABLES `pulse_channel_recipient` WRITE;
/*!40000 ALTER TABLE `pulse_channel_recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `pulse_channel_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query`
--

DROP TABLE IF EXISTS `query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `query` (
  `query_hash` binary(32) NOT NULL COMMENT 'The hash of the query dictionary. (This is a 256-bit SHA3 hash of the query dict.)',
  `average_execution_time` int NOT NULL COMMENT 'Average execution time for the query, round to nearest number of milliseconds. This is updated as a rolling average.',
  `query` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`query_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Information (such as average execution time) for different queries that have been previously ran.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query`
--

LOCK TABLES `query` WRITE;
/*!40000 ALTER TABLE `query` DISABLE KEYS */;
/*!40000 ALTER TABLE `query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query_cache`
--

DROP TABLE IF EXISTS `query_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_cache` (
  `query_hash` binary(32) NOT NULL COMMENT 'The hash of the query dictionary. (This is a 256-bit SHA3 hash of the query dict).',
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `results` longblob,
  PRIMARY KEY (`query_hash`),
  KEY `idx_query_cache_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cached results of queries are stored here when using the DB-based query cache.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_cache`
--

LOCK TABLES `query_cache` WRITE;
/*!40000 ALTER TABLE `query_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `query_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query_execution`
--

DROP TABLE IF EXISTS `query_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_execution` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hash` binary(32) NOT NULL COMMENT 'The hash of the query dictionary. This is a 256-bit SHA3 hash of the query.',
  `started_at` timestamp(6) NULL DEFAULT NULL,
  `running_time` int NOT NULL COMMENT 'The time, in milliseconds, this query took to complete.',
  `result_rows` int NOT NULL COMMENT 'Number of rows in the query results.',
  `native` bit(1) NOT NULL COMMENT 'Whether the query was a native query, as opposed to an MBQL one (e.g., created with the GUI).',
  `context` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Short string specifying how this query was executed, e.g. in a Dashboard or Pulse.',
  `error` longtext COLLATE utf8mb4_unicode_ci,
  `executor_id` int DEFAULT NULL COMMENT 'The ID of the User who triggered this query execution, if any.',
  `card_id` int DEFAULT NULL COMMENT 'The ID of the Card (Question) associated with this query execution, if any.',
  `dashboard_id` int DEFAULT NULL COMMENT 'The ID of the Dashboard associated with this query execution, if any.',
  `pulse_id` int DEFAULT NULL COMMENT 'The ID of the Pulse associated with this query execution, if any.',
  `database_id` int DEFAULT NULL COMMENT 'ID of the database this query was ran against.',
  `cache_hit` bit(1) DEFAULT NULL COMMENT 'Cache hit on query execution',
  PRIMARY KEY (`id`),
  KEY `idx_query_execution_started_at` (`started_at`),
  KEY `idx_query_execution_query_hash_started_at` (`hash`,`started_at`),
  KEY `idx_query_execution_card_id` (`card_id`),
  KEY `idx_query_execution_card_id_started_at` (`card_id`,`started_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A log of executed queries, used for calculating historic execution times, auditing, and other purposes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_execution`
--

LOCK TABLES `query_execution` WRITE;
/*!40000 ALTER TABLE `query_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `query_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_card`
--

DROP TABLE IF EXISTS `report_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_card` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `display` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset_query` longtext COLLATE utf8mb4_unicode_ci,
  `visualization_settings` longtext COLLATE utf8mb4_unicode_ci,
  `creator_id` int NOT NULL,
  `database_id` int NOT NULL,
  `table_id` int DEFAULT NULL,
  `query_type` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `collection_id` int DEFAULT NULL COMMENT 'Optional ID of Collection this Card belongs to.',
  `public_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique UUID used to in publically-accessible links to this Card.',
  `made_public_by_id` int DEFAULT NULL COMMENT 'The ID of the User who first publically shared this Card.',
  `enable_embedding` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Card allowed to be embedded in different websites (using a signed JWT)?',
  `embedding_params` longtext COLLATE utf8mb4_unicode_ci,
  `cache_ttl` int DEFAULT NULL COMMENT 'The maximum time, in seconds, to return cached results for this Card rather than running a new query.',
  `result_metadata` longtext COLLATE utf8mb4_unicode_ci,
  `collection_position` smallint DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `dataset` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Indicate whether question is a dataset',
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `parameters` longtext COLLATE utf8mb4_unicode_ci COMMENT 'List of parameter associated to a card',
  `parameter_mappings` longtext COLLATE utf8mb4_unicode_ci COMMENT 'List of parameter associated to a card',
  `collection_preview` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Indicating whether the card should be visualized in the collection preview',
  PRIMARY KEY (`id`),
  UNIQUE KEY `public_uuid` (`public_uuid`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_card_creator_id` (`creator_id`),
  KEY `idx_card_collection_id` (`collection_id`),
  KEY `idx_card_public_uuid` (`public_uuid`),
  KEY `fk_card_made_public_by_id` (`made_public_by_id`),
  KEY `fk_report_card_ref_database_id` (`database_id`),
  KEY `fk_report_card_ref_table_id` (`table_id`),
  CONSTRAINT `fk_card_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_card_made_public_by_id` FOREIGN KEY (`made_public_by_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_card_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_card_ref_database_id` FOREIGN KEY (`database_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_card_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_card`
--

LOCK TABLES `report_card` WRITE;
/*!40000 ALTER TABLE `report_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_cardfavorite`
--

DROP TABLE IF EXISTS `report_cardfavorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_cardfavorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `card_id` int NOT NULL,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_cardfavorite_card_id_owner_id` (`card_id`,`owner_id`),
  KEY `idx_cardfavorite_card_id` (`card_id`),
  KEY `idx_cardfavorite_owner_id` (`owner_id`),
  CONSTRAINT `fk_cardfavorite_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_cardfavorite_ref_user_id` FOREIGN KEY (`owner_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_cardfavorite`
--

LOCK TABLES `report_cardfavorite` WRITE;
/*!40000 ALTER TABLE `report_cardfavorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_cardfavorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_dashboard`
--

DROP TABLE IF EXISTS `report_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_dashboard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `creator_id` int NOT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci,
  `caveats` longtext COLLATE utf8mb4_unicode_ci,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `public_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique UUID used to in publically-accessible links to this Dashboard.',
  `made_public_by_id` int DEFAULT NULL COMMENT 'The ID of the User who first publically shared this Dashboard.',
  `enable_embedding` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Dashboard allowed to be embedded in different websites (using a signed JWT)?',
  `embedding_params` longtext COLLATE utf8mb4_unicode_ci,
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Dashboard archived (effectively treated as deleted?)',
  `position` int DEFAULT NULL COMMENT 'The position this Dashboard should appear in the Dashboards list, lower-numbered positions appearing before higher numbered ones.',
  `collection_id` int DEFAULT NULL COMMENT 'Optional ID of Collection this Dashboard belongs to.',
  `collection_position` smallint DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `cache_ttl` int DEFAULT NULL COMMENT 'Granular cache TTL for specific dashboard.',
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `public_uuid` (`public_uuid`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_dashboard_creator_id` (`creator_id`),
  KEY `idx_report_dashboard_show_in_getting_started` (`show_in_getting_started`),
  KEY `idx_dashboard_public_uuid` (`public_uuid`),
  KEY `idx_dashboard_collection_id` (`collection_id`),
  KEY `fk_dashboard_made_public_by_id` (`made_public_by_id`),
  CONSTRAINT `fk_dashboard_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_dashboard_made_public_by_id` FOREIGN KEY (`made_public_by_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboard_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_dashboard`
--

LOCK TABLES `report_dashboard` WRITE;
/*!40000 ALTER TABLE `report_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_dashboardcard`
--

DROP TABLE IF EXISTS `report_dashboardcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_dashboardcard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sizeX` int NOT NULL,
  `sizeY` int NOT NULL,
  `row` int NOT NULL DEFAULT '0',
  `col` int NOT NULL DEFAULT '0',
  `card_id` int DEFAULT NULL,
  `dashboard_id` int NOT NULL,
  `parameter_mappings` longtext COLLATE utf8mb4_unicode_ci,
  `visualization_settings` longtext COLLATE utf8mb4_unicode_ci,
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_dashboardcard_card_id` (`card_id`),
  KEY `idx_dashboardcard_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_dashboardcard_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboardcard_ref_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_dashboardcard`
--

LOCK TABLES `report_dashboardcard` WRITE;
/*!40000 ALTER TABLE `report_dashboardcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_dashboardcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revision`
--

DROP TABLE IF EXISTS `revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int NOT NULL,
  `user_id` int NOT NULL,
  `timestamp` timestamp(6) NULL DEFAULT NULL,
  `object` longtext COLLATE utf8mb4_unicode_ci,
  `is_reversion` bit(1) NOT NULL DEFAULT b'0',
  `is_creation` bit(1) NOT NULL DEFAULT b'0',
  `message` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_revision_model_model_id` (`model`,`model_id`),
  KEY `fk_revision_ref_user_id` (`user_id`),
  CONSTRAINT `fk_revision_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision`
--

LOCK TABLES `revision` WRITE;
/*!40000 ALTER TABLE `revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secret`
--

DROP TABLE IF EXISTS `secret`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secret` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Part of composite primary key for secret; this is the uniquely generted ID column',
  `version` int NOT NULL DEFAULT '1' COMMENT 'Part of composite primary key for secret; this is the version column',
  `creator_id` int DEFAULT NULL COMMENT 'User ID who created this secret instance',
  `created_at` timestamp(6) NOT NULL COMMENT 'Timestamp for when this secret instance was created',
  `updated_at` timestamp(6) NULL DEFAULT NULL COMMENT 'Timestamp for when this secret record was updated. Only relevant when non-value field changes since a value change will result in a new version being inserted.',
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The name of this secret record.',
  `kind` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The kind of secret this record represents; the value is interpreted as a Clojure keyword with a hierarchy. Ex: ''bytes'' means generic binary data, ''jks-keystore'' extends ''bytes'' but has a specific meaning.',
  `source` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The source of secret record, which controls how Metabase interprets the value (ex: ''file-path'' means the ''simple_value'' is not the real value, but a pointer to a file that contains the value).',
  `value` blob NOT NULL COMMENT 'The base64 encoded binary value of this secret record. If encryption is enabled, this will be the output of the encryption procedure on the plaintext. If not, it will be the base64 encoded plaintext.',
  PRIMARY KEY (`id`,`version`),
  KEY `fk_secret_ref_user_id` (`creator_id`),
  CONSTRAINT `fk_secret_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Storage for managed secrets (passwords, binary data, etc.)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secret`
--

LOCK TABLES `secret` WRITE;
/*!40000 ALTER TABLE `secret` DISABLE KEYS */;
/*!40000 ALTER TABLE `secret` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segment`
--

DROP TABLE IF EXISTS `segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `segment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_id` int NOT NULL,
  `creator_id` int NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `archived` bit(1) DEFAULT b'0',
  `definition` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci,
  `caveats` longtext COLLATE utf8mb4_unicode_ci,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_segment_creator_id` (`creator_id`),
  KEY `idx_segment_table_id` (`table_id`),
  KEY `idx_segment_show_in_getting_started` (`show_in_getting_started`),
  CONSTRAINT `fk_segment_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_segment_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segment`
--

LOCK TABLES `segment` WRITE;
/*!40000 ALTER TABLE `segment` DISABLE KEYS */;
/*!40000 ALTER TABLE `segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `key` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES ('admin-email','noreply@test.example'),('analytics-uuid','c8ab9547-ad24-40a3-b3af-5ea2c1450540'),('anon-tracking-enabled','false'),('instance-creation','2023-01-16T16:13:29.443865Z'),('redirect-all-requests-to-https','false'),('settings-last-updated','2023-01-16 16:48:01'),('setup-token','d0f5a50a-649e-4f72-a238-99e5d9082a31'),('site-locale','en'),('site-name','Test Department'),('site-url','http://localhost:3000'),('site-uuid','8ba9dbcf-43e0-4a8a-90c5-2f76e99616df'),('startup-time-millis','249384');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_history`
--

DROP TABLE IF EXISTS `task_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the task',
  `db_id` int DEFAULT NULL,
  `started_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `ended_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `duration` int NOT NULL,
  `task_details` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_task_history_end_time` (`ended_at`),
  KEY `idx_task_history_db_id` (`db_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Timing and metadata info about background/quartz processes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_history`
--

LOCK TABLES `task_history` WRITE;
/*!40000 ALTER TABLE `task_history` DISABLE KEYS */;
INSERT INTO `task_history` VALUES (1,'sync',1,'2023-01-16 16:13:12.304704','2023-01-16 16:13:28.989735',16685,NULL),(2,'sync-timezone',1,'2023-01-16 16:13:12.306231','2023-01-16 16:13:20.436982',8130,'{\"timezone-id\":\"UTC\"}'),(3,'sync-tables',1,'2023-01-16 16:13:20.437714','2023-01-16 16:13:23.310542',2872,'{\"updated-tables\":4,\"total-tables\":0}'),(4,'sync-fields',1,'2023-01-16 16:13:23.310677','2023-01-16 16:13:27.168828',3858,'{\"total-fields\":36,\"updated-fields\":36}'),(5,'sync-fks',1,'2023-01-16 16:13:27.168916','2023-01-16 16:13:27.361898',192,'{\"total-fks\":3,\"updated-fks\":3,\"total-failed\":0}'),(6,'sync-metabase-metadata',1,'2023-01-16 16:13:27.362060','2023-01-16 16:13:28.989642',1627,NULL),(7,'analyze',1,'2023-01-16 16:13:30.659943','2023-01-16 16:14:00.133011',29473,NULL),(8,'fingerprint-fields',1,'2023-01-16 16:13:30.659996','2023-01-16 16:13:52.232250',21572,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":32,\"fingerprints-attempted\":32}'),(9,'classify-fields',1,'2023-01-16 16:13:52.232366','2023-01-16 16:14:00.010840',7778,'{\"fields-classified\":32,\"fields-failed\":0}'),(10,'classify-tables',1,'2023-01-16 16:14:00.010971','2023-01-16 16:14:00.132922',121,'{\"total-tables\":4,\"tables-classified\":4}'),(11,'field values scanning',1,'2023-01-16 16:14:00.293490','2023-01-16 16:14:01.701391',1407,NULL),(12,'delete-expired-advanced-field-values',1,'2023-01-16 16:14:00.293529','2023-01-16 16:14:00.441838',148,'{\"deleted\":0}'),(13,'update-field-values',1,'2023-01-16 16:14:00.441934','2023-01-16 16:14:01.701302',1259,'{\"errors\":0,\"created\":8,\"updated\":0,\"deleted\":0}'),(14,'sync',2,'2023-01-16 16:47:57.404349','2023-01-16 16:48:00.340602',2936,NULL),(15,'sync-timezone',2,'2023-01-16 16:47:57.404405','2023-01-16 16:47:57.490592',86,'{\"timezone-id\":\"UTC\"}'),(16,'sync-tables',2,'2023-01-16 16:47:57.490707','2023-01-16 16:47:57.924238',433,'{\"updated-tables\":17,\"total-tables\":0}'),(17,'sync-fields',2,'2023-01-16 16:47:57.924380','2023-01-16 16:47:59.998771',2074,'{\"total-fields\":119,\"updated-fields\":119}'),(18,'sync-fks',2,'2023-01-16 16:47:59.998867','2023-01-16 16:48:00.321122',322,'{\"total-fks\":0,\"updated-fks\":0,\"total-failed\":0}'),(19,'sync-metabase-metadata',2,'2023-01-16 16:48:00.321220','2023-01-16 16:48:00.340555',19,NULL),(20,'analyze',2,'2023-01-16 16:48:00.464025','2023-01-16 16:48:01.492906',1028,NULL),(21,'fingerprint-fields',2,'2023-01-16 16:48:00.464049','2023-01-16 16:48:01.200513',736,'{\"no-data-fingerprints\":76,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":76}'),(22,'classify-fields',2,'2023-01-16 16:48:01.200597','2023-01-16 16:48:01.227629',27,'{\"fields-classified\":0,\"fields-failed\":0}'),(23,'classify-tables',2,'2023-01-16 16:48:01.227796','2023-01-16 16:48:01.492828',265,'{\"total-tables\":17,\"tables-classified\":17}'),(24,'field values scanning',2,'2023-01-16 16:48:01.557432','2023-01-16 16:48:02.290310',732,NULL),(25,'delete-expired-advanced-field-values',2,'2023-01-16 16:48:01.557473','2023-01-16 16:48:01.967219',409,'{\"deleted\":0}'),(26,'update-field-values',2,'2023-01-16 16:48:01.967307','2023-01-16 16:48:02.290223',322,'{\"errors\":0,\"created\":0,\"updated\":0,\"deleted\":0}');
/*!40000 ALTER TABLE `task_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeline`
--

DROP TABLE IF EXISTS `timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeline` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the timeline',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Optional description of the timeline',
  `icon` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_id` int DEFAULT NULL COMMENT 'ID of the collection containing the timeline',
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether or not the timeline has been archived',
  `creator_id` int NOT NULL COMMENT 'ID of the user who created the timeline',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the timeline was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the timeline was updated',
  `default` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Boolean value indicating if the timeline is the default one for the containing Collection',
  `entity_id` char(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `fk_timeline_creator_id` (`creator_id`),
  KEY `idx_timeline_collection_id` (`collection_id`),
  CONSTRAINT `fk_timeline_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_timeline_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Timeline table to organize events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeline`
--

LOCK TABLES `timeline` WRITE;
/*!40000 ALTER TABLE `timeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `timeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeline_event`
--

DROP TABLE IF EXISTS `timeline_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeline_event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timeline_id` int NOT NULL COMMENT 'ID of the timeline containing the event',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the event',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Optional markdown description of the event',
  `timestamp` timestamp(6) NOT NULL COMMENT 'When the event happened',
  `time_matters` bit(1) NOT NULL COMMENT 'Indicate whether the time component matters or if the timestamp should just serve to indicate the day of the event without any time associated to it.',
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Timezone to display the underlying UTC timestamp in for the client',
  `icon` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether or not the event has been archived',
  `creator_id` int NOT NULL COMMENT 'ID of the user who created the event',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the event was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the event was modified',
  PRIMARY KEY (`id`),
  KEY `fk_event_creator_id` (`creator_id`),
  KEY `idx_timeline_event_timeline_id` (`timeline_id`),
  KEY `idx_timeline_event_timeline_id_timestamp` (`timeline_id`,`timestamp`),
  CONSTRAINT `fk_event_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_events_timeline_id` FOREIGN KEY (`timeline_id`) REFERENCES `timeline` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Events table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeline_event`
--

LOCK TABLES `timeline_event` WRITE;
/*!40000 ALTER TABLE `timeline_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `timeline_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_log`
--

DROP TABLE IF EXISTS `view_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `view_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `model` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int NOT NULL,
  `timestamp` timestamp(6) NULL DEFAULT NULL,
  `metadata` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_view_log_user_id` (`user_id`),
  KEY `idx_view_log_timestamp` (`model_id`),
  CONSTRAINT `fk_view_log_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_log`
--

LOCK TABLES `view_log` WRITE;
/*!40000 ALTER TABLE `view_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `view_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-16 16:48:39

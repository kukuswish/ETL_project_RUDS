-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: etl_project
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `salary_region`
--

DROP TABLE IF EXISTS `salary_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `salary_region` (
  `salary_region_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_list_id` int(11) NOT NULL,
  `starting_median` float DEFAULT NULL,
  `mid_career_median` float DEFAULT NULL,
  `percentile_ten` float DEFAULT NULL,
  `percentile_twenty_five` float DEFAULT NULL,
  `percentile_seventy_five` float DEFAULT NULL,
  `perecentie_ninety` float DEFAULT NULL,
  PRIMARY KEY (`salary_region_id`),
  KEY `college_list_id_fk_idx` (`college_list_id`),
  CONSTRAINT `college_list_salaray_region_id_fk` FOREIGN KEY (`college_list_id`) REFERENCES `college_list` (`college_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_region`
--

LOCK TABLES `salary_region` WRITE;
/*!40000 ALTER TABLE `salary_region` DISABLE KEYS */;
INSERT INTO `salary_region` VALUES (1,7,70400,129000,68400,93100,184000,257000),(2,10,75500,123000,0,104000,161000,0),(3,312,71800,122000,0,96000,180000,0),(4,22,59900,112000,59500,81000,149000,201000),(5,313,51900,105000,0,54800,157000,0),(6,314,57200,101000,55000,74700,133000,178000),(7,315,52600,101000,51300,72500,139000,193000),(8,44,51100,101000,51700,75400,131000,177000),(9,316,48600,101000,0,63300,161000,0),(10,24,54800,99600,49700,73800,140000,201000),(11,48,52300,99600,52000,71600,135000,202000),(12,43,48300,96700,47800,66000,123000,172000),(13,317,53500,95600,50700,70500,122000,156000),(14,39,50500,95000,51300,71200,129000,173000),(15,318,47400,88100,46800,62800,122000,154000),(16,203,45700,87000,45400,62500,119000,158000),(17,262,47300,86400,45100,62700,114000,150000),(18,142,46200,85200,45500,61800,116000,158000),(19,319,45100,84700,47400,62500,113000,154000),(20,320,49200,84300,46000,62400,115000,155000),(21,85,44700,84100,46100,62000,121000,165000),(22,321,47800,82400,42900,59600,111000,154000),(23,129,46800,81300,37200,59900,109000,134000),(24,322,45500,80400,44500,57800,108000,153000),(25,323,42700,72100,30800,47000,92200,132000),(26,324,38000,71400,0,50500,94100,0),(27,325,42600,71300,36000,56300,94400,117000),(28,326,41500,67500,0,44600,93100,0),(29,76,58100,106000,62200,87900,142000,201000),(30,92,47100,97600,51600,69000,128000,187000),(31,327,51000,93400,0,67400,123000,0),(32,328,49400,88600,50600,68500,119000,164000),(33,128,47500,86100,44800,61700,117000,160000),(34,60,48800,85300,47000,59800,115000,149000),(35,144,45300,84700,43600,59000,113000,162000),(36,212,46100,84400,46400,58600,105000,144000),(37,329,47400,84100,44600,60700,114000,163000),(38,146,45100,83300,46900,64000,113000,146000),(39,114,45400,83200,43000,58400,116000,148000),(40,206,46500,82900,41900,54600,113000,143000),(41,330,48300,82800,50600,62400,110000,150000),(42,174,44900,82000,43000,56700,104000,142000),(43,195,41600,81600,41800,59100,105000,141000),(44,331,46600,81500,48900,60100,104000,137000),(45,332,38500,81400,0,43000,148000,0),(46,333,40500,81100,0,67400,101000,0),(47,334,43500,80100,0,64800,111000,0),(48,198,44300,79500,37400,53800,102000,131000),(49,125,44800,79000,43800,57100,112000,150000),(50,186,44500,78700,41500,54000,105000,145000),(51,222,43800,78700,41600,55400,101000,132000),(52,107,42200,78400,38100,56200,117000,186000),(53,335,46600,77500,40200,58100,111000,151000),(54,336,44900,76000,47000,57400,103000,138000),(55,337,43800,76000,40400,56300,104000,128000),(56,338,42700,75400,41300,56700,99200,119000),(57,339,48300,73800,41000,55500,94800,117000),(58,305,44900,73400,35400,49600,101000,143000),(59,340,45900,72600,39800,56600,99300,137000),(60,341,38900,72600,38200,53400,104000,140000),(61,214,37300,71900,37000,51500,96400,138000),(62,282,45200,71600,39000,52400,100000,128000),(63,258,42600,70900,40700,52300,94400,123000),(64,342,38600,70900,36000,50500,93100,117000),(65,343,42000,69800,0,55000,94000,0),(66,234,40800,69500,37400,48700,87500,110000),(67,344,42400,67100,0,44100,84900,0),(68,345,39500,63900,38800,47200,91600,120000),(69,346,41900,56500,0,39700,78400,0),(70,347,37900,50600,0,31800,78500,0),(71,18,56300,116000,66400,85100,163000,235000),(72,348,53400,113000,62200,83300,174000,255000),(73,349,47500,103000,0,69400,141000,0),(74,104,56000,97800,56100,77400,121000,165000),(75,38,56200,96500,54900,76500,123000,168000),(76,350,52900,96100,48200,68900,132000,177000),(77,13,52700,95900,51900,69100,144000,205000),(78,351,57100,95800,67600,80400,122000,166000),(79,352,55800,93400,71500,81900,122000,147000),(80,353,52700,93000,50900,69400,128000,182000),(81,354,51400,90500,49900,67400,121000,168000),(82,91,48500,88400,49500,67400,121000,184000),(83,355,41400,88200,49500,57400,133000,185000),(84,50,48900,87800,47400,62400,118000,170000),(85,356,47000,87300,45900,64900,113000,151000),(86,357,45300,86200,41300,61000,120000,185000),(87,83,46300,85300,44200,61500,119000,170000),(88,121,46400,84800,50300,63900,115000,160000),(89,116,45400,84600,44400,60000,109000,147000),(90,358,46200,84200,49000,63200,112000,148000),(91,90,46300,84000,43600,60400,119000,178000),(92,80,44700,83900,43300,61100,116000,163000),(93,359,44900,83700,45500,60700,116000,162000),(94,360,42000,83500,0,62100,122000,0),(95,361,47500,81700,44700,58800,110000,146000),(96,362,43400,81600,0,46400,128000,0),(97,118,42400,81600,44800,57200,115000,156000),(98,363,41700,81000,43500,57100,111000,156000),(99,364,45700,80900,42200,56600,113000,156000),(100,255,43600,80800,43900,60200,111000,161000),(101,365,44500,80600,0,49300,101000,0),(102,196,44000,80600,43400,56400,111000,157000),(103,145,43300,79000,37200,54100,106000,138000),(104,366,45800,78500,48400,61200,100000,139000),(105,367,39200,78200,0,54100,131000,0),(106,199,45100,77800,39000,55800,100000,123000),(107,368,42600,76600,0,65100,116000,0),(108,230,42800,76100,40100,56200,101000,139000),(109,294,43100,75900,40100,54100,100000,133000),(110,369,40800,75500,38200,53500,99300,150000),(111,370,43300,74700,39500,53800,95700,140000),(112,297,42300,74600,40600,54000,93700,123000),(113,215,42300,73800,40100,52500,103000,135000),(114,218,41100,73500,34100,49900,99400,129000),(115,153,42200,73400,36600,52800,106000,150000),(116,160,42000,73400,39100,55200,105000,142000),(117,237,43500,73100,39500,51600,97000,137000),(118,371,41500,72600,39500,54400,97400,126000),(119,372,43000,72500,38300,51300,99300,139000),(120,238,40300,72100,37900,52800,95400,135000),(121,202,39800,72100,38200,51800,101000,146000),(122,373,41800,71400,38700,49400,101000,126000),(123,374,40700,71400,40900,53100,84900,119000),(124,274,41100,70300,40600,53300,95200,127000),(125,375,36100,69500,33300,46900,102000,134000),(126,376,42200,69300,37500,47200,93100,133000),(127,377,43600,68300,40900,50600,91600,136000),(128,378,38500,68200,37300,47100,95000,128000),(129,280,41400,67100,36800,49600,97600,144000),(130,379,39300,66400,37700,49700,90100,138000),(131,221,38900,65800,36300,48100,95800,124000),(132,380,41400,64800,35000,47300,93100,125000),(133,188,39100,64500,35500,48200,89300,128000),(134,381,44300,64300,37200,45600,86400,113000),(135,382,39800,64000,38400,45100,95400,128000),(136,176,38700,62600,36100,45800,87000,124000),(137,383,35800,60600,35500,46800,81800,102000),(138,384,39800,58500,39600,47800,78600,93400),(139,385,40400,58200,25600,46000,84600,117000),(140,386,39700,46600,31600,38100,65600,85700),(141,387,35300,43900,0,32200,60900,0),(142,16,64000,110000,55900,82100,141000,216000),(143,20,55000,110000,60300,85800,174000,248000),(144,9,58900,106000,56000,77400,149000,218000),(145,35,58300,106000,67200,85200,137000,183000),(146,388,53600,104000,0,82800,146000,0),(147,17,51200,104000,49900,68100,147000,222000),(148,389,46100,104000,0,70500,146000,0),(149,26,52700,103000,52200,71800,146000,215000),(150,56,47000,97900,48400,69600,132000,194000),(151,390,49700,96100,51100,71300,131000,171000),(152,41,49100,95800,46500,64400,134000,185000),(153,391,53500,95400,50600,71400,124000,163000),(154,65,52000,95000,50400,68300,126000,166000),(155,392,48600,94600,44500,59400,151000,211000),(156,59,49700,93900,50100,67400,129000,188000),(157,21,52000,91600,52500,63300,128000,192000),(158,393,45300,90800,45200,62400,134000,169000),(159,89,42400,88700,42300,60300,120000,197000),(160,75,48300,88600,46300,60700,130000,200000),(161,45,47100,87900,45400,62900,120000,172000),(162,394,46900,87800,43700,61300,120000,165000),(163,140,47800,86900,51300,67200,114000,150000),(164,67,48400,86000,50500,61800,111000,150000),(165,55,44100,86000,43100,57800,118000,164000),(166,103,45400,84700,45400,62700,109000,145000),(167,86,45900,84500,44500,64000,119000,165000),(168,395,42600,83600,0,54100,123000,0),(169,396,47200,83300,49200,64800,112000,153000),(170,101,44700,82900,41200,60300,114000,167000),(171,137,44100,82800,43200,60700,113000,160000),(172,397,43100,82700,46100,67800,106000,132000),(173,110,46900,81800,43300,60000,109000,138000),(174,398,42900,81500,43400,57500,117000,155000),(175,399,41300,81400,40100,56500,117000,161000),(176,400,45400,80800,46400,61200,106000,138000),(177,156,42800,80700,40100,56500,114000,151000),(178,265,46200,80000,42100,62600,99500,121000),(179,194,46000,79900,42000,56200,106000,141000),(180,149,41400,79700,40400,53500,108000,186000),(181,247,46500,79400,38700,51600,114000,158000),(182,171,44500,79300,43300,58800,108000,151000),(183,139,42800,78300,43000,57300,107000,149000),(184,79,45100,78100,42600,56600,122000,183000),(185,191,43100,78100,39700,55700,106000,141000),(186,401,47000,77800,46900,59100,105000,130000),(187,402,41100,76300,42000,54500,107000,163000),(188,216,43200,75500,40500,55800,98200,136000),(189,109,43800,74600,41900,53200,106000,153000),(190,403,39200,74500,0,46100,110000,0),(191,404,43100,74000,38200,53200,99500,133000),(192,227,41800,74000,43000,55300,99900,145000),(193,405,49500,73800,41200,52700,95200,126000),(194,82,42100,73000,39600,52800,107000,156000),(195,406,43400,72100,37700,50400,99500,133000),(196,173,42600,71700,39500,51500,98400,125000),(197,108,40000,71700,36300,49900,98400,131000),(198,240,42600,71100,40700,53000,99500,137000),(199,143,41100,71100,39600,51500,98100,131000),(200,407,42500,70700,39100,49800,92700,121000),(201,408,39200,70100,43000,53400,91400,125000),(202,279,41400,69700,36100,49100,93500,127000),(203,409,40400,69100,37200,50400,90800,115000),(204,175,42000,68400,37400,51900,100000,123000),(205,208,40200,67500,38400,52000,98700,151000),(206,410,36900,66600,39000,49500,94400,133000),(207,411,46700,66200,36700,47200,88500,121000),(208,412,37500,64400,32100,46600,97100,129000),(209,413,40000,64300,0,45400,80600,0),(210,414,38700,63300,33600,45300,83900,118000),(211,415,40800,62400,32100,47400,80400,126000),(212,416,34800,60600,34300,46500,72000,91300),(213,417,35400,60400,0,43900,80400,0),(214,204,39400,60200,38500,50300,81800,98100),(215,418,37700,59200,32200,40500,73900,96200),(216,419,40900,57800,34400,41800,80600,113000),(217,420,36900,55500,36200,43000,87300,124000),(218,421,34600,54900,0,37100,88900,0),(219,422,34500,53900,0,44500,76800,0),(220,423,36600,51000,32800,36800,70400,102000),(221,11,58000,134000,63100,90200,234000,321000),(222,1,66500,131000,68900,100000,190000,261000),(223,6,72200,126000,76800,99200,168000,220000),(224,4,59100,126000,58000,80600,198000,326000),(225,2,63400,124000,54800,86200,179000,288000),(226,8,60900,120000,55900,79200,192000,282000),(227,424,62400,114000,66800,94300,143000,190000),(228,425,62200,114000,0,80200,142000,0),(229,66,61000,114000,80000,91200,137000,180000),(230,25,61800,111000,63300,80100,150000,209000),(231,42,61100,110000,71600,85500,140000,182000),(232,15,60300,110000,56800,79800,160000,210000),(233,426,54100,110000,62800,80600,156000,251000),(234,14,56200,109000,55400,74400,159000,228000),(235,427,52800,108000,60000,76700,167000,265000),(236,5,59400,107000,50300,71900,161000,241000),(237,428,54500,107000,0,84900,162000,0),(238,429,53900,107000,70600,79300,144000,204000),(239,430,48100,107000,0,74600,146000,0),(240,431,50200,106000,0,65600,143000,0),(241,71,60600,105000,68700,81900,138000,185000),(242,46,59200,105000,69500,85000,160000,229000),(243,432,49700,104000,0,67200,167000,0),(244,32,52700,103000,48900,70000,143000,195000),(245,433,51700,102000,0,76400,143000,0),(246,51,55800,101000,56800,76200,156000,226000),(247,62,47800,99900,48600,65900,142000,198000),(248,434,46500,97900,42000,62500,126000,215000),(249,435,53000,96700,55200,74000,117000,153000),(250,436,47300,96500,0,60700,162000,0),(251,437,53600,95900,50900,71200,146000,201000),(252,438,47200,95800,48700,75200,135000,230000),(253,30,50300,95600,47500,65000,142000,216000),(254,439,46000,94600,0,60600,123000,0),(255,440,47700,94200,0,69100,129000,0),(256,441,42400,94200,0,57100,131000,0),(257,37,49000,93900,48000,64900,130000,193000),(258,94,53400,93500,54900,72500,122000,161000),(259,442,48000,93400,48000,65400,124000,181000),(260,443,47300,93200,46300,62100,122000,169000),(261,444,49500,93000,47200,67100,129000,181000),(262,445,49100,92800,0,55800,185000,0),(263,132,46800,92700,48900,67000,135000,189000),(264,446,44500,92200,47000,63100,135000,209000),(265,447,50300,91800,48100,65100,128000,176000),(266,448,43800,89900,48600,65400,123000,155000),(267,190,53200,89700,44200,65400,129000,187000),(268,127,48900,89200,55700,70600,133000,195000),(269,449,43600,88900,47100,63100,127000,150000),(270,58,48000,88800,46100,66400,120000,162000),(271,450,48000,88600,42800,62900,138000,194000),(272,77,46600,88200,43100,61300,122000,168000),(273,451,42700,87400,50200,62400,128000,174000),(274,157,45400,86600,50900,65000,113000,158000),(275,40,50500,86400,47100,62700,117000,159000),(276,64,45700,85900,46400,59400,119000,178000),(277,452,46400,85800,0,63500,129000,0),(278,453,44700,85800,0,66300,132000,0),(279,454,49900,85700,46300,62000,117000,160000),(280,158,43900,85300,45400,60100,112000,157000),(281,455,45500,85200,38700,58400,129000,189000),(282,456,43400,84700,45300,57500,106000,151000),(283,97,48900,84600,45000,62100,112000,159000),(284,122,40700,84400,42600,59500,107000,131000),(285,457,47300,84200,50200,59800,110000,162000),(286,458,44000,83900,45100,59800,129000,184000),(287,459,49200,83700,0,51900,123000,0),(288,460,42800,83500,0,58600,125000,0),(289,197,52900,83400,42600,61400,106000,138000),(290,461,44400,82900,48500,66100,113000,157000),(291,462,41100,82800,46500,60600,117000,142000),(292,102,44800,82700,44700,58000,122000,194000),(293,463,46200,81700,45900,61400,110000,147000),(294,464,42300,81300,39300,47600,117000,173000),(295,465,42800,81000,38800,60500,106000,138000),(296,466,45100,80300,45800,61900,108000,141000),(297,467,42100,80000,35600,54300,100000,160000),(298,151,40600,79200,44200,54800,114000,160000),(299,468,41800,78900,0,67200,110000,0),(300,469,45700,78700,40200,56300,112000,171000),(301,106,41800,78300,41700,56400,114000,147000),(302,205,45600,78200,36300,53800,109000,151000),(303,470,38000,77800,40400,53000,115000,169000),(304,213,43200,77700,43300,56200,107000,132000),(305,471,37500,76700,40000,54300,97700,155000),(306,472,43000,76500,47900,57400,117000,155000),(307,473,40800,76200,38400,54100,105000,136000),(308,474,46000,75300,39700,54800,105000,150000),(309,475,41600,74600,0,42800,147000,0),(310,476,42500,74400,0,56700,94900,0),(311,477,45700,74000,44000,53100,104000,150000),(312,184,42100,74000,48700,57800,95100,145000),(313,478,42400,72600,43300,56100,99600,151000),(314,479,42000,72300,39800,48500,102000,138000),(315,480,41200,72100,41700,55600,99300,141000),(316,481,38000,70300,35100,51200,100000,179000),(317,482,36900,69700,44000,57000,92000,128000),(318,483,37800,66200,32800,44200,93300,181000),(319,484,39400,63600,40400,47900,85700,117000),(320,485,43700,62600,35600,47300,99000,134000);
/*!40000 ALTER TABLE `salary_region` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 20:25:32

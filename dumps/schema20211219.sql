-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: manufacturing
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
-- Table structure for table `customerCars`
--

DROP TABLE IF EXISTS `customerCars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customerCars` (
  `customerCar_id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_number` varchar(7) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `years` date NOT NULL,
  PRIMARY KEY (`customerCar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerCars`
--

LOCK TABLES `customerCars` WRITE;
/*!40000 ALTER TABLE `customerCars` DISABLE KEYS */;
INSERT INTO `customerCars` VALUES (51,'SJ2014','Dodge','Ram 2500','Puce','2020-06-27'),(52,'SJ2014','Aston Martin','DB9','Goldenrod','2019-06-28'),(53,'FJ2014','Chrysler','Town & Country','Goldenrod','2019-04-01'),(54,'WA2009','Cadillac','DTS','Purple','2021-09-14'),(55,'HJ2010','Volkswagen','Eurovan','Khaki','2021-09-14'),(56,'QJ2012','Pontiac','Grand Am','Fuscia','2021-07-17'),(57,'MA2003','Volkswagen','Jetta','Orange','2020-04-13'),(58,'ZA2009','Ford','Windstar','Orange','2018-12-19'),(59,'IA2002','Mercedes-Benz','SL-Class','Violet','2020-07-20'),(60,'AA2009','Buick','Century','Maroon','2019-08-22'),(61,'RJ2018','Audi','S4','Purple','2020-06-09'),(62,'WA2002','Chevrolet','Silverado 2500','Khaki','2019-03-12'),(63,'KA2007','Hyundai','XG300','Maroon','2019-03-25'),(64,'KA2007','Buick','Riviera','Purple','2019-09-19'),(65,'WA2005','Dodge','Neon','Goldenrod','2019-09-06'),(66,'YA2004','Mitsubishi','Challenger','Khaki','2021-07-31'),(67,'QJ2013','Chrysler','Prowler','Indigo','2019-01-11'),(68,'GA2006','Hyundai','Azera','Mauv','2020-11-06'),(69,'JA2009','Chevrolet','3500','Orange','2020-02-09'),(70,'HJ2010','Volvo','V40','Crimson','2021-03-15'),(71,'KJ2011','Ford','Escape','Orange','2021-06-17'),(72,'JA2008','Jaguar','XK','Goldenrod','2019-03-31'),(73,'HA2009','Infiniti','G','Maroon','2019-10-29'),(74,'MA2003','Pontiac','Torrent','Blue','2019-01-03'),(75,'GA2007','Maserati','GranSport','Fuscia','2021-07-31'),(76,'GA2006','Hyundai','XG350','Mauv','2019-01-04'),(77,'JA2009','Jeep','Cherokee','Fuscia','2019-02-14'),(78,'WA2004','Ford','Thunderbird','Mauv','2021-02-06'),(79,'GA2006','Chevrolet','Lumina','Pink','2019-09-08'),(80,'EJ2014','Dodge','Caravan','Indigo','2021-11-13'),(81,'KA2007','Jaguar','XK','Blue','2020-05-04'),(82,'YA2004','Lexus','IS F','Goldenrod','2020-10-26'),(83,'NJ2010','Ford','Econoline E250','Crimson','2020-12-14'),(84,'BA2009','Chevrolet','Monte Carlo','Aquamarine','2021-01-07'),(85,'GJ2011','Oldsmobile','Cutlass Supreme','Blue','2018-12-20'),(86,'WA2009','Ford','F250','Yellow','2020-05-31'),(87,'WA2005','Chevrolet','Corvette','Khaki','2020-02-14'),(88,'PA2004','Pontiac','Torrent','Orange','2020-01-03'),(89,'GJ2012','Pontiac','Grand Am','Fuscia','2021-05-27'),(90,'WA2005','Volkswagen','Golf','Violet','2021-09-12'),(91,'WA2009','Chevrolet','1500','Teal','2019-09-12'),(92,'FJ2014','Mitsubishi','Montero','Purple','2019-03-30'),(93,'KJ2017','Land Rover','Discovery','Khaki','2019-09-23'),(94,'WA2009','Nissan','Sentra','Purple','2020-04-14'),(95,'KJ2017','Bentley','Azure','Blue','2019-10-28'),(96,'KJ2011','Maserati','GranTurismo','Yellow','2021-03-02'),(97,'BA2009','Bentley','Continental GTC','Goldenrod','2019-05-13'),(98,'NJ2010','Chrysler','300','Crimson','2020-06-23'),(99,'HJ2011','Mitsubishi','Raider','Orange','2020-12-18'),(100,'DJ2010','Dodge','Durango','Pink','2020-05-22');
/*!40000 ALTER TABLE `customerCars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerCars_has_products1`
--

DROP TABLE IF EXISTS `customerCars_has_products1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customerCars_has_products1` (
  `customerCars_customerCar_id` int(11) NOT NULL,
  `products_product_id` int(11) NOT NULL,
  PRIMARY KEY (`customerCars_customerCar_id`,`products_product_id`),
  KEY `fk_customerCars_has_products1_products1_idx` (`products_product_id`),
  KEY `fk_customerCars_has_products1_customerCars1_idx` (`customerCars_customerCar_id`),
  CONSTRAINT `fk_customerCars_has_products1_customerCars1` FOREIGN KEY (`customerCars_customerCar_id`) REFERENCES `customercars` (`customercar_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_customerCars_has_products1_products1` FOREIGN KEY (`products_product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerCars_has_products1`
--

LOCK TABLES `customerCars_has_products1` WRITE;
/*!40000 ALTER TABLE `customerCars_has_products1` DISABLE KEYS */;
INSERT INTO `customerCars_has_products1` VALUES (51,568),(52,569),(53,570),(54,571),(55,572),(56,573),(57,574),(58,575),(59,576),(60,577),(61,578),(62,579),(63,580),(64,581),(65,582),(66,583),(67,584),(68,585),(69,586),(70,587),(71,588),(72,589),(73,590),(74,591),(75,592),(76,593),(77,594),(78,595),(79,596),(80,597),(81,598),(82,599),(83,600),(84,601),(85,602),(86,603),(87,604),(88,605),(89,606),(90,607),(91,608),(92,609),(93,610),(94,611),(95,612),(96,613),(97,614),(98,615),(99,616),(100,617);
/*!40000 ALTER TABLE `customerCars_has_products1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `employees_employee_id` int(11) NOT NULL,
  PRIMARY KEY (`customers_id`),
  KEY `fk_customers_employees1_idx` (`employees_employee_id`),
  CONSTRAINT `fk_customers_employees1` FOREIGN KEY (`employees_employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (53,'Danna','Lidgate','1 Hayes Court','879-758-0937','dlidgate0@marketwatch.com','Ngaoundéré','84168','Cameroon',51),(54,'Fernande','Hagergham','6 Transport Parkway','371-461-6697','fhagergham1@google.co.jp','Cherbourg-Octeville','46860','France',52),(55,'Tarah','Meecher','38 Loeprich Road','269-407-6814','tmeecher2@umich.edu','Lamovita','71140','Bosnia and Herzegovina',53),(56,'Elmo','Vaan','41218 Oneill Junction','580-234-0852','evaan3@dropbox.com','Ngorongoro','63697','Tanzania',54),(57,'Caitrin','Tipton','411 Homewood Circle','923-309-9506','ctipton4@stumbleupon.com','Velké Hoštice','64657','Czech Republic',55),(58,'Ezmeralda','Ganniclifft','3 Forest Pass','797-283-1006','eganniclifft5@etsy.com','Depapre','18358','Indonesia',56),(59,'Sonny','Tidcombe','07064 Stone Corner Center','607-497-8129','stidcombe6@techcrunch.com','Panitan','61240','Philippines',57),(60,'Marji','Abelevitz','014 Di Loreto Trail','601-652-3852','mabelevitz7@bbc.co.uk','Coruripe','34964','Brazil',58),(61,'Anthony','Christoffersen','4293 Warbler Place','430-375-9087','achristoffersen8@yahoo.co.jp','Kraljevo','90498','Serbia',59),(62,'Schuyler','Polin','21566 Killdeer Plaza','513-852-7552','spolin9@qq.com','Cincinnati','62198','United States',60),(63,'Odey','Pitcock','07585 Moland Center','257-894-8821','opitcocka@disqus.com','Damiao','27707','China',61),(64,'Itch','Jasiak','57478 Raven Junction','404-976-7359','ijasiakb@hp.com','Solor','60911','Indonesia',62),(65,'Ronni','Van Leijs','3 Ridgeview Parkway','896-486-1267','rvanleijsc@gov.uk','San Carlos','96607','Peru',63),(66,'Benetta','Simyson','5727 Bayside Junction','277-258-7398','bsimysond@diigo.com','Wagini','37674','Nigeria',64),(67,'Pollyanna','Wellman','129 Sullivan Trail','808-367-7379','pwellmane@stanford.edu','Honolulu','89634','United States',65),(68,'Molli','Hansom','1 Springview Terrace','327-229-0195','mhansomf@irs.gov','Anling','54431','China',66),(69,'Calli','Hacking','4631 Farragut Junction','397-988-2785','chackingg@ehow.com','Foros de Salvaterra','44942','Portugal',67),(70,'Wrennie','Jossum','21 Sommers Alley','132-573-4662','wjossumh@gizmodo.com','Vasyl\'evsky Ostrov','23036','Russia',68),(71,'Livia','Pitts','9062 Judy Avenue','340-812-7166','lpittsi@twitpic.com','Fenghuang','40418','China',69),(72,'Jasun','Hallad','4 Banding Hill','691-550-1775','jhalladj@umich.edu','Buzen','40492','Japan',70),(73,'Maynord','Abbatini','06730 Emmet Hill','200-991-6092','mabbatinik@smh.com.au','Pecna','28597','Poland',71),(74,'Ingar','Ghilks','5 Oxford Way','209-731-1100','ighilksl@gov.uk','Ceerigaabo','37846','Somalia',72),(75,'Ardeen','Northeast','317 Tony Plaza','544-448-9206','anortheastm@ehow.com','Kęty','26313','Poland',73),(76,'Quinlan','Krzysztofiak','8 Miller Alley','393-840-1418','qkrzysztofiakn@sitemeter.com','Kota Kinabalu','19776','Malaysia',74),(77,'Jan','MacNeilley','45450 Crowley Lane','578-807-0185','jmacneilleyo@flavors.me','Cercal','33367','Portugal',75),(78,'Meyer','Bick','43055 Cambridge Plaza','931-533-8294','mbickp@imgur.com','Xigou','67771','China',76),(79,'Mace','Garfirth','30 Helena Junction','782-383-6384','mgarfirthq@comcast.net','Vayk’','99949','Armenia',77),(80,'Ferguson','Braitling','48278 Melody Hill','617-367-0636','fbraitlingr@sun.com','Bayt Liqyā','16521','Palestinian Territory',78),(81,'Modestia','Durning','7235 Bowman Drive','924-746-4635','mdurnings@merriam-webster.com','København','91986','Denmark',79),(82,'Inigo','Fair','17 Bashford Alley','784-896-4068','ifairt@shareasale.com','Jiedu','90754','China',80),(83,'Merissa','Mallison','0920 Dixon Road','846-369-3027','mmallisonu@huffingtonpost.com','Ban Talat Bueng','63909','Thailand',81),(84,'Raul','Lipson','05 Main Plaza','261-810-0992','rlipsonv@eepurl.com','Sparwood','78727','Canada',82),(85,'Matt','Alenov','148 Butternut Lane','929-683-2637','malenovw@miitbeian.gov.cn','Huhe','96411','China',83),(86,'Kalindi','Lascelles','99 Debra Trail','936-693-1880','klascellesx@intel.com','Storozhnytsya','54829','Ukraine',84),(87,'Karen','Gartland','900 Old Shore Circle','258-595-5791','kgartlandy@plala.or.jp','Villefranche-sur-Saône','23170','France',85),(88,'Vern','Sunter','6 Melrose Street','469-460-9214','vsunterz@constantcontact.com','Balagon','93476','Philippines',86),(89,'Glenden','Thecham','135 Vera Pass','916-514-0039','gthecham10@free.fr','Kotes','98566','Indonesia',87),(90,'Tobi','Templar','568 Acker Drive','983-325-2416','ttemplar11@nifty.com','Nagrog','71712','Indonesia',88),(91,'Lynelle','Larsen','0 Paget Center','482-202-6698','llarsen12@bloglines.com','Basel','41030','Switzerland',89),(92,'Lucienne','Boutcher','96847 Bellgrove Trail','957-683-8339','lboutcher13@go.com','Panacan','23733','Philippines',80),(93,'Victor','Mitchenson','3 Pleasure Alley','336-274-4432','vmitchenson14@desdev.cn','Gumalang','23653','Philippines',81),(94,'Chet','Didsbury','6238 Merchant Center','639-823-0939','cdidsbury15@arstechnica.com','Pinheiro','53114','Portugal',82),(95,'Barty','Kreuzer','8914 Bobwhite Park','569-566-7370','bkreuzer16@instagram.com','San Rafael','44390','Mexico',83),(96,'Lura','McGahy','08388 Vahlen Parkway','827-336-4799','lmcgahy17@dell.com','Campo Grande','94131','Brazil',84),(97,'Cathe','Francescoccio','518 Buhler Junction','171-447-3068','cfrancescoccio18@ihg.com','Bambari','70827','Central African Republic',85),(98,'Hussein','Stelle','70 Del Sol Hill','944-862-5679','hstelle19@mapy.cz','Borne Sulinowo','26965','Poland',86),(99,'Mannie','MacArd','9 Clemons Hill','271-649-5796','mmacard1a@studiopress.com','Pindaré Mirim','55077','Brazil',87),(100,'Babbie','Winward','4790 Ramsey Street','952-543-2481','bwinward1b@wordpress.org','Tyresö','98759','Sweden',88),(101,'Ad','Grunnill','88403 Towne Drive','730-836-6409','agrunnill1c@chronoengine.com','Tagasilay','82270','Philippines',89),(102,'Arabelle','Fido','4765 Judy Drive','929-702-7260','afido1d@cbslocal.com','Sicheng','89824','China',90),(103,'Danna','Lidgate','1 Hayes Court','879-758-0937','dlidgate0@marketwatch.com','Ngaoundéré','84168','Cameroon',91),(104,'Fernande','Hagergham','6 Transport Parkway','371-461-6697','fhagergham1@google.co.jp','Cherbourg-Octeville','46860','France',92),(105,'Tarah','Meecher','38 Loeprich Road','269-407-6814','tmeecher2@umich.edu','Lamovita','71140','Bosnia and Herzegovina',93),(106,'Elmo','Vaan','41218 Oneill Junction','580-234-0852','evaan3@dropbox.com','Ngorongoro','63697','Tanzania',94),(107,'Caitrin','Tipton','411 Homewood Circle','923-309-9506','ctipton4@stumbleupon.com','Velké Hoštice','64657','Czech Republic',95),(108,'Ezmeralda','Ganniclifft','3 Forest Pass','797-283-1006','eganniclifft5@etsy.com','Depapre','18358','Indonesia',96),(109,'Sonny','Tidcombe','07064 Stone Corner Center','607-497-8129','stidcombe6@techcrunch.com','Panitan','61240','Philippines',97),(110,'Marji','Abelevitz','014 Di Loreto Trail','601-652-3852','mabelevitz7@bbc.co.uk','Coruripe','34964','Brazil',98),(111,'Anthony','Christoffersen','4293 Warbler Place','430-375-9087','achristoffersen8@yahoo.co.jp','Kraljevo','90498','Serbia',99),(112,'Schuyler','Polin','21566 Killdeer Plaza','513-852-7552','spolin9@qq.com','Cincinnati','62198','United States',100),(113,'Odey','Pitcock','07585 Moland Center','257-894-8821','opitcocka@disqus.com','Damiao','27707','China',101),(114,'Erike','Peter','07585 Moland Center','257-894-8821','opitcocka@disqus.com','Damiao','27707','China',102);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_has_customerCars1`
--

DROP TABLE IF EXISTS `customers_has_customerCars1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers_has_customerCars1` (
  `customers_customers_id` int(11) NOT NULL,
  `customerCars_customerCar_id` int(11) NOT NULL,
  PRIMARY KEY (`customers_customers_id`,`customerCars_customerCar_id`),
  KEY `fk_customers_has_customerCars_customerCars1_idx` (`customerCars_customerCar_id`),
  KEY `fk_customers_has_customerCars_customers1_idx` (`customers_customers_id`),
  CONSTRAINT `fk_customers_has_customerCars_customerCars1` FOREIGN KEY (`customerCars_customerCar_id`) REFERENCES `customercars` (`customercar_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_customers_has_customerCars_customers1` FOREIGN KEY (`customers_customers_id`) REFERENCES `customers` (`customers_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_has_customerCars1`
--

LOCK TABLES `customers_has_customerCars1` WRITE;
/*!40000 ALTER TABLE `customers_has_customerCars1` DISABLE KEYS */;
INSERT INTO `customers_has_customerCars1` VALUES (53,51),(54,52),(55,53),(56,54),(57,55),(58,56),(59,57),(60,58),(61,59),(62,60),(63,61),(64,62),(65,63),(66,64),(67,65),(68,66),(69,67),(70,68),(71,69),(72,70),(73,71),(74,72),(75,73),(76,74),(77,75),(78,76),(79,77),(80,78),(81,79),(82,80),(83,81),(82,82),(84,83),(85,84),(86,85),(87,86),(88,87),(89,88),(90,89),(91,90),(92,91),(93,92),(94,93),(95,94),(96,95),(97,96),(98,97),(99,98),(100,99),(101,100);
/*!40000 ALTER TABLE `customers_has_customerCars1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `offices_offices_id` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_employees_offices1_idx` (`offices_offices_id`),
  CONSTRAINT `fk_employees_offices1` FOREIGN KEY (`offices_offices_id`) REFERENCES `offices` (`offices_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (51,'Cly','Chape','cchape0@alibaba.com','832-564-0573',51),(52,'Reuven','Staries','rstaries1@geocities.jp','115-578-7190',52),(53,'Berthe','Smedmore','bsmedmore2@nature.com','602-161-5344',53),(54,'Agneta','Costerd','acosterd3@spiegel.de','316-771-5786',54),(55,'Tyrus','Hasser','thasser4@liveinternet.ru','110-956-6403',55),(56,'Myrwyn','Hegg','mhegg5@jiathis.com','232-347-6565',56),(57,'Kathryne','Lamberts','klamberts6@dagondesign.com','794-298-6640',57),(58,'Misha','Slatcher','mslatcher7@webeden.co.uk','477-177-9084',58),(59,'Emmie','Grinikhin','egrinikhin8@hugedomains.com','646-754-3590',59),(60,'Di','Yeomans','dyeomans9@macromedia.com','737-492-3738',60),(61,'Fionnula','Burnside','fburnsidea@creativecommons.org','956-359-4028',61),(62,'Gene','Bruton','gbrutonb@ustream.tv','588-915-2048',62),(63,'Forest','Summerrell','fsummerrellc@weather.com','993-186-1050',63),(64,'Dionysus','Savile','dsaviled@issuu.com','871-903-5653',64),(65,'Sonnie','Elgar','selgare@friendfeed.com','496-155-6755',65),(66,'Kaia','Farrer','kfarrerf@ezinearticles.com','328-923-8670',66),(67,'Obadias','Barnson','obarnsong@live.com','274-390-6114',67),(68,'Lyndsay','Grellier','lgrellierh@nih.gov','971-256-1508',68),(69,'Itch','Lyard','ilyardi@meetup.com','857-311-1518',69),(70,'Sholom','Ledbury','sledburyj@eventbrite.com','482-146-0654',70),(71,'Vicki','Seekings','vseekingsk@goo.ne.jp','773-429-3971',71),(72,'Evvie','Eagle','eeaglel@columbia.edu','509-778-4297',72),(73,'Antonin','Scutter','ascutterm@exblog.jp','369-341-0438',73),(74,'Neddie','Leed','nleedn@symantec.com','790-466-2077',74),(75,'Wilow','Sturge','wsturgeo@goo.gl','229-687-9558',75),(76,'Cornela','Forsaith','cforsaithp@lulu.com','562-847-3297',76),(77,'Jada','Comini','jcominiq@fda.gov','419-335-4884',77),(78,'Gill','Anyon','ganyonr@earthlink.net','302-946-5179',78),(79,'Larisa','Reeves','lreevess@xrea.com','833-811-0088',79),(80,'Enrique','Calyton','ecalytont@blogger.com','558-566-4687',80),(81,'Cristal','Dobell','cdobellu@gmpg.org','443-914-1110',81),(82,'Gaylor','Charette','gcharettev@examiner.com','630-477-7606',82),(83,'Sheilah','Corby','scorbyw@jigsy.com','543-785-1608',83),(84,'Robinette','Pulhoster','rpulhosterx@unesco.org','232-760-4634',84),(85,'Sergent','Winkell','swinkelly@yahoo.com','597-602-2712',85),(86,'Gerti','Canham','gcanhamz@weibo.com','642-143-0802',86),(87,'Kermy','Hamley','khamley10@google.com.au','436-972-3750',87),(88,'Tammara','O\'Currane','tocurrane11@surveymonkey.com','677-812-7933',88),(89,'Gray','Piddick','gpiddick12@freewebs.com','181-449-6417',89),(90,'Lynn','Calcutt','lcalcutt13@opensource.org','464-171-4551',90),(91,'Aluino','Hopfer','ahopfer14@themeforest.net','146-167-1199',91),(92,'Renate','Abramovici','rabramovici15@drupal.org','874-344-3420',92),(93,'Hildagarde','Silvester','hsilvester16@bluehost.com','235-361-6004',93),(94,'Ethelyn','Piddington','epiddington17@nydailynews.com','332-214-8351',94),(95,'Kameko','MacPike','kmacpike18@w3.org','173-950-9551',95),(96,'Janetta','Tame','jtame19@hao123.com','390-720-8139',96),(97,'Cherye','Lisciandro','clisciandro1a@java.com','684-221-5728',97),(98,'Tiffie','Mays','tmays1b@twitpic.com','615-803-8560',98),(99,'Neille','Pinckstone','npinckstone1c@youtu.be','802-401-5236',99),(100,'Lorinda','Farleigh','lfarleigh1d@howstuffworks.com','280-104-0923',99),(101,'Coarline','Marlspo','coarline@howstuffworks.com','289-194-0983',99),(102,'Linda','Mars','lindae@howstuffworks.com','289-194-0983',100);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `zip_code` varchar(100) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (2,'Realcube','8 Haas Lane','Ellene Delgardo','364-763-5617','edelgardo0@europa.eu','Quanzhou','China','46415');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offices`
--

DROP TABLE IF EXISTS `offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `offices` (
  `offices_id` int(11) NOT NULL AUTO_INCREMENT,
  `offices_code` int(11) NOT NULL,
  `offices_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `employee_phone` varchar(100) NOT NULL,
  `employee_email` varchar(100) NOT NULL,
  PRIMARY KEY (`offices_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offices`
--

LOCK TABLES `offices` WRITE;
/*!40000 ALTER TABLE `offices` DISABLE KEYS */;
INSERT INTO `offices` VALUES (51,71282,'McKenzie-Jerde','3 Manley Park','641-883-3223','Maridel Jack','579-975-3407','mjack0@howstuffworks.com'),(52,9321,'McLaughlin and Sons','1 Chive Court','232-573-1148','Carolan Wickett','110-520-0620','cwickett1@google.ru'),(53,73394,'Vandervort and Sons','41 Spaight Terrace','570-967-8136','Zach Jiricka','321-998-4003','zjiricka2@comcast.net'),(54,52572,'Hammes, Brakus and Wisozk','0 Sachtjen Street','285-120-5122','Tandy Heather','666-848-6535','theather3@wufoo.com'),(55,73026,'Schuppe, Harvey and Stiedemann','9 Reindahl Place','904-359-6971','Hill Pennazzi','540-413-6388','hpennazzi4@google.nl'),(56,28850,'Cummerata LLC','45836 Monterey Way','168-941-2164','Godiva Mattis','597-864-2228','gmattis5@usgs.gov'),(57,73088,'Mann, Gusikowski and Greenfelder','973 Merrick Plaza','167-685-4251','Giacomo Beaman','766-920-9945','gbeaman6@wordpress.com'),(58,66824,'Denesik-Farrell','62 West Center','780-406-8814','Monica Manketell','605-505-6535','mmanketell7@symantec.com'),(59,1871,'Grant-Zieme','23187 Golden Leaf Pass','870-944-9074','Tommie Briddock','950-200-8817','tbriddock8@hc360.com'),(60,56789,'Hirthe LLC','5 Buhler Parkway','696-150-3492','Osmund Drakeley','761-465-6886','odrakeley9@cam.ac.uk'),(61,38013,'Satterfield LLC','4 Claremont Pass','571-636-4687','Netti Kiggel','224-166-1907','nkiggela@earthlink.net'),(62,9848,'McGlynn-Bechtelar','1084 Kenwood Court','472-550-1284','Crosby Keane','727-602-8256','ckeaneb@kickstarter.com'),(63,1004,'Berge Inc','70 Muir Place','349-593-9000','Valeria Panchen','320-110-1796','vpanchenc@google.de'),(64,53021,'Stamm-Smitham','347 Algoma Terrace','101-219-2576','Noach Clarson','562-314-2488','nclarsond@usnews.com'),(65,33700,'Berge, Deckow and Murphy','2 Crescent Oaks Drive','109-161-1367','Matthew Klagge','864-669-0381','mklaggee@pinterest.com'),(66,1842,'Connelly-Smith','48948 Transport Terrace','690-846-5794','Fax Rymer','974-392-1954','frymerf@scientificamerican.com'),(67,48242,'Thompson Group','561 Fairview Junction','877-624-2604','Beau Slany','844-929-8098','bslanyg@addthis.com'),(68,9662,'Ernser-Schimmel','8545 Grim Crossing','512-987-7749','Danika Saddleton','549-141-6980','dsaddletonh@msn.com'),(69,8469,'Dietrich, Daniel and Stokes','8978 Meadow Ridge Trail','735-944-2891','Melina Molson','411-478-8459','mmolsoni@ucla.edu'),(70,1512,'Gerhold, Towne and Langosh','506 Amoth Center','817-318-2083','Dane Heskins','566-672-5857','dheskinsj@gizmodo.com'),(71,57491,'VonRueden-Witting','149 Gateway Plaza','715-776-6989','Florida Klemz','911-969-8845','fklemzk@imgur.com'),(72,80466,'Doyle, Dooley and Blick','207 Michigan Circle','198-863-1987','Meade Fernehough','466-998-9279','mfernehoughl@cnbc.com'),(73,87329,'Haag-Volkman','6528 Calypso Pass','195-157-9076','Haley Doding','360-227-9238','hdodingm@amazon.co.uk'),(74,5304,'Johnston-Frami','661 Nancy Way','206-340-3792','Maynord Dosedale','809-599-8887','mdosedalen@infoseek.co.jp'),(75,8661,'Jast-Lockman','6 Crownhardt Pass','377-390-6950','Zebulon Corballis','407-629-1659','zcorballiso@bizjournals.com'),(76,65110,'Leffler, Walsh and Heathcote','97477 Artisan Lane','103-886-4512','Vincent Twells','913-179-9895','vtwellsp@weebly.com'),(77,8744,'Nitzsche, Kutch and Pollich','4 Lunder Plaza','277-527-2991','Engelbert Warlawe','742-892-7852','ewarlaweq@vinaora.com'),(78,86544,'Kerluke, Zulauf and Kautzer','69 Caliangt Drive','198-190-5714','Jada Shepherdson','534-794-5097','jshepherdsonr@friendfeed.com'),(79,71699,'Weber Inc','43310 Mallard Terrace','465-131-8230','Stephannie MacRinn','393-395-8210','smacrinns@prlog.org'),(80,20590,'Abernathy, Barrows and O\'Reilly','2969 Tennessee Court','159-599-2538','Skipper Lethbrig','578-616-0550','slethbrigt@google.fr'),(81,59638,'Goldner-Pacocha','33 Beilfuss Alley','207-690-3639','Matteo Lappin','213-633-0758','mlappinu@washington.edu'),(82,2793,'Muller-Paucek','738 Shelley Pass','922-887-7408','Kirstyn Le Gallo','521-665-4842','klev@discovery.com'),(83,5964,'Barton-Braun','6 Ramsey Trail','634-361-5407','Hanna Petrosian','902-353-1881','hpetrosianw@usatoday.com'),(84,9723,'Green, Casper and Kuhlman','3 Karstens Court','343-832-1399','Shanie Treadway','516-351-7655','streadwayx@scribd.com'),(85,1882,'Nitzsche-Quitzon','46 Crescent Oaks Crossing','933-687-0399','Gayle Grinin','443-377-4709','ggrininy@wp.com'),(86,1322,'Heathcote, Lehner and Ratke','67425 Barby Center','822-981-2151','Gilberto Gaitung','821-853-2956','ggaitungz@blog.com'),(87,92710,'Schroeder Inc','210 Thackeray Alley','722-715-9423','Titus Arrol','595-192-4690','tarrol10@sciencedirect.com'),(88,29882,'Trantow and Sons','07085 Charing Cross Crossing','131-216-3017','Shea Brandts','714-480-9988','sbrandts11@naver.com'),(89,36217,'Kirlin, Bogan and Rempel','70788 Sunbrook Alley','168-110-6394','Adriana Heber','665-834-4537','aheber12@yellowbook.com'),(90,58404,'Ullrich, Farrell and Gerhold','8325 Acker Terrace','847-434-2495','Roxanne Hothersall','842-924-4904','rhothersall13@acquirethisname.com'),(91,39364,'Reynolds, Nienow and Connelly','9966 Lunder Avenue','955-519-8032','Jeannine Bennis','852-664-9546','jbennis14@sitemeter.com'),(92,37852,'Heaney-Fisher','32 Monument Center','451-516-6864','Elton Casillas','223-258-4926','ecasillas15@reference.com'),(93,20520,'Hermann, Bechtelar and Franecki','6111 Corben Parkway','229-984-0619','Ninnetta Prys','460-968-4486','nprys16@so-net.ne.jp'),(94,33690,'Schroeder, Corwin and Kiehn','2774 Eastwood Alley','302-252-9356','Eimile Ferriby','333-235-0589','eferriby17@mozilla.org'),(95,55321,'Brown-Gislason','3863 Hansons Terrace','118-270-4935','Halsy Earry','678-608-0797','hearry18@parallels.com'),(96,98168,'Veum-Kessler','574 Karstens Way','341-918-3448','Lorenzo Wordley','330-496-5362','lwordley19@sourceforge.net'),(97,30478,'Dach LLC','1108 Welch Avenue','396-997-9979','Tyler Palle','658-905-2489','tpalle1a@weebly.com'),(98,6141,'Legros, Powlowski and Murphy','8 Vidon Trail','514-232-9115','Ira Edwick','497-381-7822','iedwick1b@google.nl'),(99,20054,'Witting, O\'Kon and Altenwerth','264 Atwood Road','489-125-3740','Kiley Swindon','595-857-6765','kswindon1c@ameblo.jp'),(100,42491,'Schaefer-Johnson','81708 Mcbride Road','976-192-3586','Amby Abbett','765-537-2530','aabbett1d@bloomberg.com');
/*!40000 ALTER TABLE `offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity_ordered` int(11) DEFAULT NULL,
  `price_each` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shipped_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `customers_customers_id` int(11) NOT NULL,
  `products_product_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_orders_customers1_idx` (`customers_customers_id`),
  KEY `fk_orders_products1_idx` (`products_product_id`),
  CONSTRAINT `fk_orders_customers1` FOREIGN KEY (`customers_customers_id`) REFERENCES `customers` (`customers_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_products1` FOREIGN KEY (`products_product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (263,98,53.34,'2021-10-11 00:00:00','2021-08-18 00:00:00','2021-12-18 21:37:01',53,568),(264,62,88.93,'2021-03-09 00:00:00','2021-05-26 00:00:00','2021-12-18 21:37:01',54,569),(265,94,62.03,'2021-07-04 00:00:00','2021-05-04 00:00:00','2021-12-18 21:37:01',55,570),(266,44,33.23,'2021-05-08 00:00:00','2021-03-26 00:00:00','2021-12-18 21:37:01',56,571),(267,95,73.28,'2021-06-26 00:00:00','2021-03-27 00:00:00','2021-12-18 21:37:01',57,572),(268,95,98.91,'2021-01-27 00:00:00','2021-03-26 00:00:00','2021-12-18 21:37:01',58,573),(269,11,90.60,'2021-09-30 00:00:00','2021-07-02 00:00:00','2021-12-18 21:37:01',59,574),(270,77,73.70,'2021-10-20 00:00:00','2021-10-15 00:00:00','2021-12-18 21:37:01',60,575),(271,52,87.41,'2021-09-04 00:00:00','2021-07-29 00:00:00','2021-12-18 21:37:01',61,576),(272,58,42.72,'2021-09-28 00:00:00','2021-01-18 00:00:00','2021-12-18 21:37:01',62,577),(273,91,25.18,'2021-02-04 00:00:00','2021-06-12 00:00:00','2021-12-18 21:37:01',63,578),(274,97,34.65,'2021-10-23 00:00:00','2021-11-13 00:00:00','2021-12-18 21:37:01',64,579),(275,25,20.35,'2021-11-25 00:00:00','2021-01-13 00:00:00','2021-12-18 21:37:01',65,580),(276,99,64.72,'2021-05-12 00:00:00','2021-09-26 00:00:00','2021-12-18 21:37:01',66,581),(277,54,74.36,'2021-08-08 00:00:00','2021-08-09 00:00:00','2021-12-18 21:37:01',67,582),(278,31,18.23,'2020-12-16 00:00:00','2021-11-30 00:00:00','2021-12-18 21:37:01',68,583),(279,35,59.36,'2021-01-21 00:00:00','2021-06-25 00:00:00','2021-12-18 21:37:01',59,584),(280,69,60.53,'2021-09-27 00:00:00','2020-12-15 00:00:00','2021-12-18 21:37:01',70,585),(281,93,86.41,'2020-12-26 00:00:00','2021-07-11 00:00:00','2021-12-18 21:37:01',71,586),(282,15,81.14,'2021-01-17 00:00:00','2021-01-08 00:00:00','2021-12-18 21:37:01',72,587),(283,24,9.60,'2021-03-13 00:00:00','2021-11-26 00:00:00','2021-12-18 21:37:01',73,588),(284,64,76.72,'2021-07-18 00:00:00','2021-04-16 00:00:00','2021-12-18 21:37:01',74,589),(285,58,93.10,'2021-01-04 00:00:00','2021-01-13 00:00:00','2021-12-18 21:37:01',75,590),(286,70,1.86,'2021-07-20 00:00:00','2021-08-05 00:00:00','2021-12-18 21:37:01',76,591),(287,5,60.16,'2021-08-10 00:00:00','2021-11-24 00:00:00','2021-12-18 21:37:01',77,592),(288,68,17.19,'2021-07-24 00:00:00','2021-04-18 00:00:00','2021-12-18 21:37:01',78,593),(289,16,37.48,'2021-09-11 00:00:00','2020-12-10 00:00:00','2021-12-18 21:37:01',79,594),(290,7,1.51,'2021-08-13 00:00:00','2021-06-10 00:00:00','2021-12-18 21:37:01',80,595),(291,20,66.51,'2021-06-08 00:00:00','2021-09-25 00:00:00','2021-12-18 21:37:01',81,596),(292,89,66.96,'2021-09-07 00:00:00','2021-08-22 00:00:00','2021-12-18 21:37:01',82,597),(293,54,89.15,'2021-07-23 00:00:00','2021-09-07 00:00:00','2021-12-18 21:37:01',83,598),(294,3,38.19,'2021-09-28 00:00:00','2021-03-04 00:00:00','2021-12-18 21:37:01',84,599),(295,30,32.83,'2021-05-25 00:00:00','2021-08-12 00:00:00','2021-12-18 21:37:01',85,600),(296,94,20.12,'2021-01-02 00:00:00','2020-12-25 00:00:00','2021-12-18 21:37:01',86,601),(297,91,92.68,'2021-06-30 00:00:00','2021-04-10 00:00:00','2021-12-18 21:37:01',87,602),(298,24,78.13,'2021-07-02 00:00:00','2021-06-26 00:00:00','2021-12-18 21:37:01',88,603),(299,87,71.62,'2020-12-27 00:00:00','2021-01-22 00:00:00','2021-12-18 21:37:01',89,604),(300,6,32.45,'2021-11-03 00:00:00','2021-02-18 00:00:00','2021-12-18 21:37:01',90,605),(301,21,42.32,'2021-10-19 00:00:00','2021-10-05 00:00:00','2021-12-18 21:37:01',91,606),(302,41,63.13,'2020-12-11 00:00:00','2021-10-05 00:00:00','2021-12-18 21:37:01',92,607),(303,32,85.61,'2021-06-24 00:00:00','2021-11-26 00:00:00','2021-12-18 21:37:01',93,608),(304,89,27.97,'2021-03-22 00:00:00','2021-07-17 00:00:00','2021-12-18 21:37:01',94,609),(305,84,32.59,'2021-06-06 00:00:00','2021-10-05 00:00:00','2021-12-18 21:37:01',95,610),(306,78,40.05,'2021-02-25 00:00:00','2021-07-08 00:00:00','2021-12-18 21:37:01',96,611),(307,38,85.63,'2021-06-11 00:00:00','2021-04-26 00:00:00','2021-12-18 21:37:01',97,612),(308,76,22.35,'2021-08-30 00:00:00','2021-01-22 00:00:00','2021-12-18 21:37:01',98,613),(309,54,46.25,'2021-07-28 00:00:00','2021-11-19 00:00:00','2021-12-18 21:37:01',99,614),(310,43,57.11,'2021-10-08 00:00:00','2021-02-04 00:00:00','2021-12-18 21:37:01',100,615),(311,37,80.23,'2021-02-26 00:00:00','2021-01-12 00:00:00','2021-12-18 21:37:01',101,616),(312,86,70.69,'2021-04-06 00:00:00','2021-02-17 00:00:00','2021-12-18 21:37:01',102,617),(313,3,50.20,'2021-12-13 00:00:00','2021-07-13 00:00:00','2021-12-18 23:25:06',53,568),(314,12,30.93,'2021-04-09 00:00:00','2021-03-21 00:00:00','2021-12-18 23:25:06',54,569),(315,4,30.03,'2021-01-25 00:00:00','2021-05-11 00:00:00','2021-12-18 23:25:06',55,570);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_quantity_update` AFTER INSERT ON `orders` FOR EACH ROW BEGIN
UPDATE products
SET products.quantityin_stock = products.quantityin_stock - NEW.quantity_ordered
WHERE products.product_id = NEW.products_product_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_number` varchar(100) NOT NULL,
  `product_vendor` varchar(100) NOT NULL,
  `product_description` longtext NOT NULL,
  `quantityin_stock` int(11) NOT NULL,
  `buy_price` decimal(10,2) NOT NULL,
  `resellers_reseller_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_products_resellers1_idx` (`resellers_reseller_id`),
  CONSTRAINT `fk_products_resellers1` FOREIGN KEY (`resellers_reseller_id`) REFERENCES `resellers` (`reseller_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=618 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (568,'Shrimp - Prawn','43','Schneider-Marvin','potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus',-69,137.13,101),(569,'Daves Island Stinger','80','Tromp-Schuster','orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum',-26,133.39,102),(570,'Pork - Bacon Cooked Slcd','89','Rolfson, Mills and Mitchell','convallis nulla neque libero convallis eget eleifend luctus ultricies eu',-67,180.42,103),(571,'Lamb - Leg, Bone In','54','Hermiston Group','vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum',-8,100.31,104),(572,'Vegetable - Base','82','Gorczany Inc','nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin',-64,154.66,105),(573,'Soup - Campbells - Chicken Noodle','98','Anderson and Sons','duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus',-45,160.09,106),(574,'Momiji Oroshi Chili Sauce','27','Gottlieb, Ernser and Romaguera','nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit',6,107.04,107),(575,'Appetizer - Spring Roll, Veg','29','Koelpin, Grimes and Reilly','enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in',-32,149.87,108),(576,'Bar Special K','100','Hyatt-Kihn','sollicitudin ut suscipit a feugiat et eros vestibulum ac est',-42,175.17,109),(577,'Wine - Red, Gallo, Merlot','89','Prohaska Inc','nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta',-13,138.61,110),(578,'Wine - Fino Tio Pepe Gonzalez','30','Gibson-Mann','imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing',-69,136.68,111),(579,'Sugar - Crumb','56','Leannon Group','phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in',-91,125.59,112),(580,'Napkin - Cocktail,beige 2 - Ply','57','Kemmer Group','facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget',1,173.53,113),(581,'Potatoes - Yukon Gold, 80 Ct','22','Kerluke LLC','lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus',-67,167.97,114),(582,'Edible Flower - Mixed','67','Prosacco, Monahan and Gaylord','eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem',-16,130.47,115),(583,'Oil - Avocado','36','Auer, Kozey and Schultz','ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam',-15,186.98,116),(584,'Transfer Sheets','45','Hettinger LLC','viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis',12,184.12,117),(585,'Mayonnaise - Individual Pkg','16','Pollich Group','feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst',-56,157.57,118),(586,'Glycerine','43','Windler, Schiller and Wehner','vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra',-60,100.74,119),(587,'Bread - Rolls, Rye','36','Cole, Daugherty and Reilly','tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim',-5,108.04,120),(588,'Sauce - White, Mix','69','Cormier, Hyatt and Bins','quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie',20,110.24,121),(589,'Muffin Batt - Ban Dream Zero','28','Dibbert, Dooley and Flatley','ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae',-57,196.96,122),(590,'Smoked Tongue','17','Kassulke-Hilpert','ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante',-21,150.86,123),(591,'Bandage - Flexible Neon','70','Carter-Glover','luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat',-26,156.40,124),(592,'Ham - Smoked, Bone - In','97','Effertz Group','enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae',45,112.61,125),(593,'Beef - Tongue, Fresh','8','Welch Inc','et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque',-37,169.69,126),(594,'Taro Leaves','28','O\'Keefe, Schmidt and Simonis','sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo',-15,131.29,127),(595,'Ecolab Silver Fusion','47','Quitzon, Wuckert and Bogan','nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse',6,152.14,128),(596,'Parsnip','87','Pacocha-Rogahn','cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus',21,121.44,129),(597,'Onions - Dried, Chopped','74','Kovacek, Walsh and Schmidt','ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et',-54,148.81,130),(598,'Wine - Vovray Sec Domaine Huet','7','Wolff and Sons','consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in',-15,106.30,131),(599,'Rice - Brown','84','Schneider-Reilly','neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac',13,193.10,132),(600,'Cake - Dulce De Leche','26','Thompson, Torphy and Jacobi','augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac',-22,131.71,133),(601,'Vegetable - Base','35','Kuhic Group','vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit',-51,118.09,134),(602,'Pasta - Elbows, Macaroni, Dry','8','Bayer LLC','convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia',-75,125.75,135),(603,'Cheese Cloth No 100','24','Barton and Sons','in libero ut massa volutpat convallis morbi odio odio elementum',5,182.93,136),(604,'Soup - Campbells Tomato Ravioli','96','Frami Group','magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci',-75,195.24,137),(605,'Grand Marnier','11','Parisian, Borer and Considine','nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at',6,127.56,138),(606,'Sauce - Vodka Blush','39','Schamberger-Aufderhar','tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl',25,197.44,139),(607,'Kellogs Raisan Bran Bars','8','Mante, Hoeger and Howe','posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel',2,120.13,140),(608,'Pasta - Bauletti, Chicken White','48','Rath-Labadie','venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo',2,190.45,141),(609,'Table Cloth 62x114 Colour','12','Denesik Inc','dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus',-61,141.98,142),(610,'Sauce - Salsa','42','Gleason, Will and Maggio','eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer',-63,102.15,143),(611,'Ecolab - Balanced Fusion','33','Moen Inc','suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum',-50,183.23,144),(612,'Gloves - Goldtouch Disposable','72','Pouros, Frami and Leuschke','rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem',-33,177.16,145),(613,'Mix - Cocktail Strawberry Daiquiri','93','Schmidt and Sons','consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent',-31,174.02,146),(614,'Sobe - Lizard Fuel','99','Stamm-Marvin','eget congue eget semper rutrum nulla nunc purus phasellus in felis',-43,146.02,147),(615,'Soup - Campbells, Minestrone','40','Rice-Harvey','imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum',3,192.95,148),(616,'Cheese - Brie Roitelet','73','Nicolas and Sons','etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean',-11,140.73,149),(617,'Shrimp - Prawn','43','Schneider-Marvin','potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus',-54,137.13,150);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resellers`
--

DROP TABLE IF EXISTS `resellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resellers` (
  `reseller_id` int(11) NOT NULL AUTO_INCREMENT,
  `reseller_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `manufacturer_manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`reseller_id`),
  KEY `fk_reseller_manufacturer1_idx` (`manufacturer_manufacturer_id`),
  CONSTRAINT `fk_reseller_manufacturer1` FOREIGN KEY (`manufacturer_manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resellers`
--

LOCK TABLES `resellers` WRITE;
/*!40000 ALTER TABLE `resellers` DISABLE KEYS */;
INSERT INTO `resellers` VALUES (101,'Topiclounge','27 Northview Drive','Matelda Breazeall','266-740-9056','mbreazeall0@washingtonpost.com',2),(102,'Skippad','5794 Arapahoe Road','Annelise Sweet','934-587-5302','asweet1@imgur.com',2),(103,'Tavu','558 Dawn Hill','Rosabelle Cheake','859-632-7855','rcheake2@census.gov',2),(104,'Zoovu','689 Judy Hill','Nora Pridham','817-478-8789','npridham3@disqus.com',2),(105,'Divape','758 Derek Lane','Zuzana Harmant','380-460-2503','zharmant4@goo.gl',2),(106,'Browsecat','020 Warner Way','Sam Edworthie','883-598-8937','sedworthie5@dyndns.org',2),(107,'BlogXS','84 Huxley Pass','Ellissa Sackett','887-118-0625','esackett6@pen.io',2),(108,'Buzzbean','7021 Merchant Terrace','Jedidiah Ruben','612-422-3302','jruben7@amazon.de',2),(109,'Jaxnation','74 Schmedeman Lane','Franzen Test','233-194-7240','ftest8@csmonitor.com',2),(110,'Mita','2 Stang Circle','Ranna Schott','767-954-1953','rschott9@webs.com',2),(111,'Yakijo','7 Grayhawk Street','Penrod Jepensen','989-400-7815','pjepensena@timesonline.co.uk',2),(112,'Dabjam','6 Thierer Terrace','Giffer Gabbot','629-531-7400','ggabbotb@dyndns.org',2),(113,'Twitternation','83067 Swallow Point','Nelle Nalder','952-282-0756','nnalderc@spiegel.de',2),(114,'Lazz','49471 Harper Terrace','Philis le Keux','388-438-3685','pled@homestead.com',2),(115,'Leenti','29493 Crescent Oaks Junction','Consuelo Grafton-Herbert','951-173-7198','cgraftonherberte@google.com.br',2),(116,'Meemm','832 Bobwhite Court','Kylila Pesticcio','848-306-1568','kpesticciof@blogtalkradio.com',2),(117,'Katz','882 Luster Center','Sloane Galland','150-703-7939','sgallandg@pen.io',2),(118,'Izio','24 Hudson Park','Halimeda Wilcox','267-417-2044','hwilcoxh@answers.com',2),(119,'Kamba','85370 Forest Run Court','Sibel Sheddan','859-216-5611','ssheddani@shop-pro.jp',2),(120,'Kare','60 Memorial Place','Stella Shoebotham','478-565-0575','sshoebothamj@wired.com',2),(121,'Chatterbridge','35 Bunker Hill Hill','Vicky Jordan','578-505-1290','vjordank@ning.com',2),(122,'Izio','4 Mallory Place','Gussy Titterington','902-224-8803','gtitteringtonl@narod.ru',2),(123,'Voonder','763 Park Meadow Plaza','Vincenz Lorenzini','869-127-0761','vlorenzinim@walmart.com',2),(124,'Shuffledrive','3884 Loomis Court','Lisle Bowdrey','201-272-5100','lbowdreyn@instagram.com',2),(125,'Oyonder','0818 International Center','Nil Echallier','861-328-6131','nechalliero@is.gd',2),(126,'Edgepulse','31 Harbort Center','Harley Hardwick','169-267-2776','hhardwickp@twitter.com',2),(127,'Trilith','526 Lien Hill','Timothee Middell','951-755-8449','tmiddellq@who.int',2),(128,'Zoovu','8561 Butternut Terrace','Colan Dray','328-657-6770','cdrayr@marketwatch.com',2),(129,'Thoughtmix','15112 Anniversary Terrace','Emile McIlvaney','679-901-2152','emcilvaneys@state.gov',2),(130,'Realbridge','18 6th Avenue','Guenevere Waugh','600-511-0194','gwaught@aol.com',2),(131,'Linklinks','38 Elgar Crossing','Tiertza Beacon','588-198-9196','tbeaconu@narod.ru',2),(132,'Rhybox','680 Sherman Alley','Merline Coch','598-134-5975','mcochv@bloglines.com',2),(133,'Devpulse','73738 Glendale Way','Noelani Macak','494-261-4943','nmacakw@cpanel.net',2),(134,'Edgewire','4 Summerview Junction','Caspar Willshere','197-373-1954','cwillsherex@harvard.edu',2),(135,'Jaxbean','4 Monument Lane','Montgomery Kopman','105-474-1979','mkopmany@wordpress.com',2),(136,'Jayo','03798 Barnett Hill','Loydie Brewett','654-849-1461','lbrewettz@g.co',2),(137,'Babblestorm','164 Anderson Place','Robert Busch','959-131-1433','rbusch10@ehow.com',2),(138,'Buzzster','75 Barnett Alley','Vite Garwill','423-877-0726','vgarwill11@godaddy.com',2),(139,'Youspan','267 Eggendart Pass','Johannes Kalvin','464-257-3694','jkalvin12@bbc.co.uk',2),(140,'Vidoo','991 Iowa Park','Devlin Fine','688-938-8740','dfine13@exblog.jp',2),(141,'Rhynoodle','077 Ludington Way','Lanny Please','265-523-6012','lplease14@edublogs.org',2),(142,'Meezzy','12745 Banding Junction','Wendy Yukhin','719-863-1316','wyukhin15@newyorker.com',2),(143,'Edgetag','5360 Division Plaza','Glenn Versey','425-260-9690','gversey16@canalblog.com',2),(144,'Skyble','879 Green Ridge Trail','Cyndia Clemett','779-559-4234','cclemett17@shareasale.com',2),(145,'Twiyo','2874 Duke Way','Cathi Swash','747-124-1419','cswash18@reverbnation.com',2),(146,'Zoovu','17795 Claremont Place','Raymund Toderbrugge','346-239-7936','rtoderbrugge19@cpanel.net',2),(147,'Skilith','04626 Sloan Road','Flemming Sloper','543-977-4769','fsloper1a@posterous.com',2),(148,'Kwideo','90563 Blaine Point','Jorgan Ronayne','947-819-2261','jronayne1b@sohu.com',2),(149,'LiveZ','37 Butternut Way','Adolpho Remmers','112-944-6229','aremmers1c@jigsy.com',2),(150,'Babblestorm','4 Barby Place','Yvonne Greed','805-519-1386','ygreed1d@gnu.org',2);
/*!40000 ALTER TABLE `resellers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-19  2:30:26

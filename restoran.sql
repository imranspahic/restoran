-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: restoran
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adrese`
--

DROP TABLE IF EXISTS `adrese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese` (
  `idAdrese` varchar(20) NOT NULL,
  `idKorisnika` varchar(20) DEFAULT NULL,
  `idRestorana` varchar(20) DEFAULT NULL,
  `ulica` varchar(50) NOT NULL,
  `brojUlice` int(11) DEFAULT NULL,
  `grad` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `poštanskiBroj` int(11) NOT NULL,
  `upute` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idAdrese`),
  KEY `idKorisnika` (`idKorisnika`),
  KEY `idRestorana` (`idRestorana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese`
--

LOCK TABLES `adrese` WRITE;
/*!40000 ALTER TABLE `adrese` DISABLE KEYS */;
INSERT INTO `adrese` VALUES ('0c25n5d9mkzevqnv7hwo','o0qtbt1w97n2jdbjv5kb',NULL,'Obala',1,'Tešanj','Tešanj',74260,'Pored restorana Metropolis'),('1yq5ys18wwnexclviukn',NULL,'eb3hb4el990rapy8v7x0','Marka Marulića',88,'Sarajevo','Pofalići',71000,NULL),('2e47p7fbnl1gxspx9jyp',NULL,'dpgj0jqmzxds9319kva1','12. mart',5,'Ilidža','Centar',71210,NULL),('85xb5y8f33ul3js2p1ru','wtlzsmv3rqi8r6fpcoeh',NULL,'Jošanička',18,'Sarajevo','Vogošća',71000,'Iza prodavnice BEST'),('8p0uj79n7ajq5e5wfutd','vdni7uwaux7es2tj2ih0',NULL,'Kazandžijska',3,'Tuzla','Bulevar',75000,'ispred ćevabdžinice, sa desne strane ulaz'),('9knpj0b6vikyilvsgq77','x8ac7oyti67m59ig4dvv',NULL,'Svetog luke',11,'Jajce','Centar',70101,'kod tvrđave'),('9r1wl9ao8bls7g7ygwvf',NULL,'l2d8xkm0knx4isj9s87q','Adija Mulabegovića',200,'Sarajevo','Vojničko polje',71000,'Kod Unicredit bankomata'),('a7zd60ah55wm5lt3q2tv',NULL,'liapiclsgg7yhw5f2e47','Đure Daničića',16,'Bijeljina','Bogdanovića plac',76300,'Treći sprat poslovna zgrada'),('c42ya8o3koluw6lmszwg','zrplywbr8c9hjt89gnj3',NULL,'Hasana Brkića',91,'Sarajevo','Grbavica',71000,'zgrade parnjače, 4. sprat'),('d53zcaq5mqnvx8mnu1xi',NULL,'phfbol1gx1z79jyz6d9t','Bulevar Meše Selimovića',104,'Sarajevo','Otoka',71000,'Pored glavne raskrsnice'),('he6kd7hocc3tcs0ax902','85xc5z8f33ul4js2p1ru',NULL,'Tuzlanska bb',NULL,'Zenica','Zeničko-Dobojski kanton',72450,'Iznad benziske pumpe, pored parkinga sa lijeve strane, stan bez lifta'),('itwys9kf4rt7ru41pzgg',NULL,'ny02weoj8wxbvy86u3ll','Jovana Dučića',91,'Banja Luka','Nova Varoš',78000,'Kod Nove Banke'),('jtyz6mi34rv8e7tpqosi','6gmnt96qseiw1ugddcf5',NULL,'Ukrinska',1,'Derventa','Lug',74400,NULL),('mr3llwprl2m86um0tnx4','afq98jce8qavuh9nhakr',NULL,'Jelik',16,'Olovo','Centar',71340,NULL),('qw5o2o4hzhpkxl1qx1z7','ekscpbs4m4c8k9pdlpmu',NULL,'Mehmed Spahe',67,'Bihać','Ozimice II',77000,'U blizini caffe bar Piramida'),('r278fvrcd04hng1yzx1q',NULL,'w6bcjzwgh48mrk63325v','Aleja Konzula bb',NULL,'Travnik','Kalibunar',72270,NULL),('r4ivrk6ccbf4z4pyy9ce','er5jf7tz0z2snsdmlxz1',NULL,'Kulina bana',NULL,'Tuzla','Centar',75000,'pored Šarene džamije'),('s5jxtl7eedg616r00bdf',NULL,'4hv84xjpqpsidi3cbmpr','Nerkeza Smailagića',88,'Sarajevo','Alipašino polje',71000,'Zgrada Elektroprivrede'),('ub7rtftx3vhnonq6bg1a','iyufg3hkqj5bbaeuy3ox',NULL,'Bašbunar bb',NULL,'Travnik','Babunar',72270,'Iznad novoizgrađene zgrade, prekoputa šehidskog'),('v0cuu5y0ubvhf3v92w5d',NULL,'05gzy924yg0lk7zd70ah','Donja Čaršija',NULL,'Travnik','Žitarnica',72270,'Ispod Šarene džamije, pored kafića'),('wc9tuo26b4qwxwzfkpaj',NULL,'8ok56t6ag9u1103joten','Kralja Tvrtka',91,'Livno','Centar',80101,NULL),('z5exbwdq7qxt6uaz6a8g',NULL,'49i2f1iucu2yaze3bfck','Tabhanska',12,'Visoko','Centar',71300,NULL);
/*!40000 ALTER TABLE `adrese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalji_narudžbe`
--

DROP TABLE IF EXISTS `detalji_narudžbe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalji_narudžbe` (
  `idNarudžbe` int(11) NOT NULL,
  `šifraProizvoda` varchar(10) NOT NULL,
  `količina` int(11) NOT NULL,
  PRIMARY KEY (`idNarudžbe`,`šifraProizvoda`),
  KEY `šifraProizvoda` (`šifraProizvoda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalji_narudžbe`
--

LOCK TABLES `detalji_narudžbe` WRITE;
/*!40000 ALTER TABLE `detalji_narudžbe` DISABLE KEYS */;
INSERT INTO `detalji_narudžbe` VALUES (1382204,'p-ur7m375d',3),(1382204,'p-vuxnin8h',1),(1382204,'p-zxds9dai',1),(1841596,'p-769puzkt',1),(1841596,'p-oxofxdcv',3),(1841596,'p-ssj9s8gq',1),(1918535,'p-42ixe96e',2),(1918535,'p-ep34biez',2),(1918535,'p-xum0unx4',2),(2208793,'p-rogvoiry',1),(3738520,'p-3qs6qt3a',20),(3738520,'p-ssj9s8gq',18),(4249039,'p-vuxnin8h',8),(5505494,'p-eqgj1srm',3),(5505494,'p-ssj9s8gq',2),(6372669,'p-wvyojo9i',3),(6384962,'p-ep34biez',1),(6384962,'p-mld3m1ak',1),(6557019,'p-7jacumkg',2),(6557019,'p-mld3m1ak',1),(6557019,'p-rogunhqy',1),(7339340,'p-q1g7euqb',1),(7339340,'p-xum0unx4',4),(8710868,'p-42ixe96e',3),(8710868,'p-8kadvnlh',3),(8710868,'p-eqgj1srm',3),(9114179,'p-7jacumkg',3),(9114179,'p-jvlo6owr',6),(9114179,'p-vuxnin8h',6),(9453152,'p-jvlo6owr',7),(9886969,'p-9m0ea2ov',3),(9886969,'p-mmd4n2bl',8),(9886969,'p-ssj9s8gq',11);
/*!40000 ALTER TABLE `detalji_narudžbe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iskorišteni_kuponi`
--

DROP TABLE IF EXISTS `iskorišteni_kuponi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iskorišteni_kuponi` (
  `idKorisnika` varchar(20) NOT NULL,
  `brojKupona` int(11) NOT NULL,
  `datumKorištenja` timestamp NOT NULL,
  PRIMARY KEY (`idKorisnika`,`brojKupona`),
  KEY `brojKupona` (`brojKupona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iskorišteni_kuponi`
--

LOCK TABLES `iskorišteni_kuponi` WRITE;
/*!40000 ALTER TABLE `iskorišteni_kuponi` DISABLE KEYS */;
/*!40000 ALTER TABLE `iskorišteni_kuponi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorije_proizvoda`
--

DROP TABLE IF EXISTS `kategorije_proizvoda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorije_proizvoda` (
  `idKategorije` varchar(10) NOT NULL,
  `nazivKategorije` varchar(50) NOT NULL,
  `opisKategorije` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idKategorije`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorije_proizvoda`
--

LOCK TABLES `kategorije_proizvoda` WRITE;
/*!40000 ALTER TABLE `kategorije_proizvoda` DISABLE KEYS */;
INSERT INTO `kategorije_proizvoda` VALUES ('eb3ib5el99','Domaća kuhinja','Bosanska tradicionalna jela'),('0rapy8v7x0','Kuhana jela',NULL),('ia84geu9qu','Roštilj',NULL),('s02crsz52m','Piletina',NULL),('xao1xqcijh','Brza hrana',NULL),('lb6bw54fik','Turska kuhinja',NULL),('ev61qdftdg','Pice',NULL),('qxblc2l10j','Palačinci',NULL),('6i9btcjfsq','Povrće',NULL),('6l2wu2do2u','Ribe',NULL),('a7zd60ah55','Pite',NULL),('wm5lt3q2tw','Paste',NULL),('qnftmgpxlk','Pića',NULL);
/*!40000 ALTER TABLE `kategorije_proizvoda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korisnici`
--

DROP TABLE IF EXISTS `korisnici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `korisnici` (
  `id` varchar(20) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `brojTelefona` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korisnici`
--

LOCK TABLES `korisnici` WRITE;
/*!40000 ALTER TABLE `korisnici` DISABLE KEYS */;
INSERT INTO `korisnici` VALUES ('6gmnt96qseiw1ugddcf5','Amina','Alagić','amina_alagic@gmail.com','+38762111331'),('85xc5z8f33ul4js2p1ru','Nedim','Haskić','nedimhaskic122@hotmail.com','+38764445901'),('afq98jce8qavuh9nhakr','Srđan','Kostov','srdjan@gmail.com','+387604451123'),('ekscpbs4m4c8k9pdlpmu','Emel','Bošnjak','emel_bosnjak_009@web.devs.com','+38763509861'),('er5jf7tz0z2snsdmlxz1','Omer','Spahić','os991@gmail.com','+38762344351'),('iyufg3hkqj5bbaeuy3ox','Emina','Topoljak','eminaTopoljak@yahoo.com','+38761114355'),('o0qtbt1w97n2jdbjv5kb','Harun','Mudrov','harunmud4@gmail.com','+38764460091'),('sphwpjsznne5o3cm9lbe','Imran','Spahić','ispahic2@etf.unsa.ba','+387603331774'),('wtlzsmv3rqi8r6fpcoeh','Ajla','Dizdarević','ajla_39@gmail.com','+38760390951'),('x8ac7oyti67m59ig4dvv','Dario','Jovanović','dariojovanovic@etf.unsa.ba','+38761135699'),('zrplywbr8c9hjt89gnj3','Kenan','Selman','kenanselman@gmail.com','+38761990476');
/*!40000 ALTER TABLE `korisnici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kuponi`
--

DROP TABLE IF EXISTS `kuponi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kuponi` (
  `brojKupona` int(11) NOT NULL,
  `statusKupona` varchar(20) NOT NULL,
  `datumKreiranja` date NOT NULL,
  `datumIsteka` date NOT NULL,
  `iznosPopusta` int(11) NOT NULL,
  `imeAkcijskePonude` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`brojKupona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kuponi`
--

LOCK TABLES `kuponi` WRITE;
/*!40000 ALTER TABLE `kuponi` DISABLE KEYS */;
INSERT INTO `kuponi` VALUES (11767,'aktivan','2019-02-25','2023-12-31',5,'Svaki mjesec nagrađujemo!, prijavite se i ostvarite 5% '),(16484,'aktivan','2020-07-15','2021-01-30',20,'Ostanite kući i naručite online!'),(29271,'neaktivan','2016-10-01','2016-11-01',25,'Otvaranje novog objekta'),(37227,'neaktivan','2018-01-01','2019-01-01',30,'Naručite preko 30KM, ostvarite 30% sljedeći put'),(42647,'aktivan','2020-12-01','2020-12-31',15,'Novogodišnji popust na narudžbe'),(47967,'neaktivan','2020-04-23','2020-05-23',15,'Ramazanski popust'),(64979,'aktivan','2020-03-11','2020-12-31',30,'10. godišnjica restorana, 30% popusta na narudžbe');
/*!40000 ALTER TABLE `kuponi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `narudžbe`
--

DROP TABLE IF EXISTS `narudžbe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `narudžbe` (
  `idNarudžbe` int(11) NOT NULL,
  `adresaIsporuke` varchar(20) NOT NULL,
  `brojKupona` int(11) DEFAULT NULL,
  `vrijemeIsporuke` int(11) NOT NULL,
  `statusNarudžbe` varchar(20) NOT NULL,
  `datumNarudžbe` timestamp NOT NULL,
  PRIMARY KEY (`idNarudžbe`),
  KEY `adresaIsporuke` (`adresaIsporuke`),
  KEY `brojKupona` (`brojKupona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `narudžbe`
--

LOCK TABLES `narudžbe` WRITE;
/*!40000 ALTER TABLE `narudžbe` DISABLE KEYS */;
INSERT INTO `narudžbe` VALUES (1382204,'he6kd7hocc3tcs0ax902',NULL,30,'prihvaćeno','2020-11-26 09:52:00'),(1841596,'85xb5y8f33ul3js2p1ru',NULL,10,'odbijeno','2020-06-18 12:57:00'),(1918535,'8p0uj79n7ajq5e5wfutd',16484,80,'na čekanju','2020-11-03 09:25:00'),(2208793,'qw5o2o4hzhpkxl1qx1z7',42647,35,'na čekanju','2020-12-02 17:04:00'),(3738520,'mr3llwprl2m86um0tnx4',11767,100,'prihvaćeno','2020-10-24 14:22:00'),(4249039,'c42ya8o3koluw6lmszwg',64979,30,'na čekanju','2020-03-26 08:35:00'),(5505494,'ub7rtftx3vhnonq6bg1a',NULL,10,'odbijeno','2020-12-18 12:45:00'),(6372669,'he6kd7hocc3tcs0ax902',NULL,30,'prihvaćeno','2020-11-23 11:20:00'),(6384962,'85xb5y8f33ul3js2p1ru',NULL,30,'prihvaćeno','2020-12-05 11:01:00'),(6557019,'c42ya8o3koluw6lmszwg',NULL,25,'prihvaćeno','2020-02-28 09:00:00'),(7339340,'9knpj0b6vikyilvsgq77',16484,40,'prihvaćeno','2020-07-15 22:00:00'),(8710868,'r4ivrk6ccbf4z4pyy9ce',42647,20,'na čekanju','2020-12-19 12:49:00'),(9114179,'0c25n5d9mkzevqnv7hwo',16484,60,'prihvaćeno','2020-09-03 16:25:00'),(9453152,'jtyz6mi34rv8e7tpqosi',NULL,50,'prihvaćeno','2020-12-01 08:31:00'),(9886969,'ub7rtftx3vhnonq6bg1a',NULL,30,'prihvaćeno','2020-11-09 16:11:00');
/*!40000 ALTER TABLE `narudžbe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proizvodi`
--

DROP TABLE IF EXISTS `proizvodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proizvodi` (
  `šifraProizvoda` varchar(10) NOT NULL,
  `idKategorije` varchar(10) DEFAULT NULL,
  `nazivProizvoda` varchar(50) NOT NULL,
  `opisProizvoda` varchar(150) DEFAULT NULL,
  `cijenaProizvoda` double NOT NULL,
  `slikaProizvoda` varchar(300) DEFAULT NULL,
  `istaknuto` varchar(2) NOT NULL,
  `naStanju` varchar(2) NOT NULL,
  PRIMARY KEY (`šifraProizvoda`),
  KEY `idKategorije` (`idKategorije`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proizvodi`
--

LOCK TABLES `proizvodi` WRITE;
/*!40000 ALTER TABLE `proizvodi` DISABLE KEYS */;
INSERT INTO `proizvodi` VALUES ('p-2pr5ps29','6l2wu2do2u','Oslić',NULL,20,NULL,'ne','ne'),('p-3qs6qt3a','ia84geu9qu','Kobasice sa roštilja',NULL,4.5,NULL,'ne','da'),('p-42ixe96e','qxblc2l10j','Palačinci sa nutellom',NULL,5,NULL,'ne','da'),('p-53jyf97f','0rapy8v7x0','Kuhani grašak','Sa mesom i krompirom',3.5,'https://coolinarika.azureedge.net/images/_variations/8/6/865a40be8a236e654df791ac1585fdfa_header.jpg?v=1','ne','ne'),('p-769puzkt','eb3ib5el99','Teleća džigerica u saftu',NULL,18.5,'https://i.ytimg.com/vi/4UGRH94OwjU/maxresdefault.jpg','ne','da'),('p-7jacumkg','a7zd60ah55','Domaća sirnica','Od travničkog sira',4.8,'https://coolinarika.azureedge.net/images/_variations/6/a/6a825e08011cbe01b488dd4028cd4e9f_header.jpg?v=0','da','da'),('p-8kadvnlh','xao1xqcijh','Hamburger','srednji',2.5,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/RedDot_Burger.jpg/1200px-RedDot_Burger.jpg','ne','da'),('p-9m0ea2ov','wm5lt3q2tw','4 vrste sira',NULL,2.5,'https://coolinarika.azureedge.net/images/_variations/e/7/e7092254e6495ad655da8821cf4c18aa_listing_l.jpg?v=1','da','da'),('p-an1ea3pv','xao1xqcijh','Hot dog',NULL,2,NULL,'ne','da'),('p-czcgmf07','0rapy8v7x0','Bosanski lonac',NULL,12,'https://i.ytimg.com/vi/j9wMC8YOaKo/maxresdefault.jpg','da','da'),('p-ep34biez','wm5lt3q2tw','Tjestenina u finom umaku',NULL,8.5,'https://coolinarika.azureedge.net/images/_variations/c/7/c702a2c31644d685c4307c8eda2f3326_listing_l.jpg?v=3','ne','da'),('p-eqgj1srm','qnftmgpxlk','Orangina',NULL,2.5,'https://assets.sainsburys-groceries.co.uk/gol/7758372/1/640x640.jpg','ne','da'),('p-fp45cjfz','xao1xqcijh','Pileći fileti',NULL,2.5,NULL,'ne','da'),('p-gsuwq8id','6l2wu2do2u','Svježa pastrmka',NULL,20,NULL,'da','ne'),('p-hsvxr8je','s02crsz52m','Pohovani pileći fileti','Prilgo: kečap, majoneza, senf',3.5,NULL,'da','da'),('p-jvlo6owr','qxblc2l10j','Slani palačinci','Sa sirom',2.9,NULL,'ne','da'),('p-jvmp6pws','ia84geu9qu','Pljeskavice sa roštilja',NULL,7.5,NULL,'ne','ne'),('p-mld3m1ak','a7zd60ah55','Zeljanica',NULL,3.5,'https://coolinarika.azureedge.net/images/_variations/5/5/557c9db8a87e322eb48cac3751b91dbd_header.jpg?v=4','ne','da'),('p-mmd4n2bl','ev61qdftdg','Capricciosa','paradajz, sir, šunka, gljive',3,'https://www.didykitchen.com/wp-content/uploads/2018/06/pizza-capricciosa-1150x599.jpg','da','da'),('p-oxofxdcv','6i9btcjfsq','Povrće sa mesom','Mrkva, brokula, paprika, luk, krompi, faširano meso',7,NULL,'ne','da'),('p-oypfyedw','ia84geu9qu','Ćevapi','10 ćevapa',6.5,NULL,'da','da'),('p-q1g7euqb','0rapy8v7x0','Grah','Crni, domaći',7.5,'https://coolinarika.azureedge.net/images/_variations/8/f/8f33087bf0f882c91a7b6635fe51c165_view_l.jpg?v=13','ne','da'),('p-rogunhqy','a7zd60ah55','Burek','Slagani burek od najkvalitetnijeg mesa',5,'https://coolinarika.azureedge.net/images/_variations/5/9/59de2310369b36b0a62d81712aa6b37c_view_l.jpg?v=29','ne','da'),('p-rogvoiry','ev61qdftdg','Margarita','paradajz, sir',6.5,'https://img.taste.com.au/PwXf3RRU/w720-h480-cfill-q80/taste/2016/11/eat-pray-love-39581-3.jpeg','ne','da'),('p-ssj9s8gq','qnftmgpxlk','Fanta',NULL,1.5,'https://assets.sainsburys-groceries.co.uk/gol/3300510/1/640x640.jpg','ne','da'),('p-t4682kup','eb3ib5el99','Sogan dolma',NULL,15,'https://coolinarika.azureedge.net/images/_variations/1/f/1f9f91efcd2071ff9fc3526b3b972658_listing_l.jpg?v=10','da','da'),('p-tr6m374c','wm5lt3q2tw','Lazanje','Lazanje sa tunom',9,'https://coolinarika.azureedge.net/images/_variations/0/8/0809b37587d90287cc30eb813c271bbe_listing_l.jpg?v=2','ne','ne'),('p-ur7m375d','xao1xqcijh','Cheeseburger',NULL,2.5,'https://www.foodrepublic.com/wp-content/uploads/2012/03/033_FR11785.jpg','ne','da'),('p-vuxnin8h','6l2wu2do2u','Riblji fileti','Pohovani',13.5,'https://coolinarika.azureedge.net/images/_variations/3/c/3cff8d4ea25897b326a0b92eb58b68ee_listing_l.jpg?v=2','da','da'),('p-wvyojo9i','s02crsz52m','Piletina sa pomfritom','Sa sirom i umakom',4,NULL,'ne','da'),('p-xum0unx4','qnftmgpxlk','Coca-Cola',NULL,1.5,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/15-09-26-RalfR-WLC-0098.jpg/1200px-15-09-26-RalfR-WLC-0098.jpg','ne','da'),('p-zxds9dai','qnftmgpxlk','Senzacija','Limeta Kiwano 1.5L',1,'https://d17zv3ray5yxvp.cloudfront.net/variants/Bqp9aNVveoeXjjGBbDsx2nRc/57ed05bea98bceae5f0eaada26b69cee6c61471d3030f7123d212844a35eba04','ne','da');
/*!40000 ALTER TABLE `proizvodi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restorani`
--

DROP TABLE IF EXISTS `restorani`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restorani` (
  `idRestorana` varchar(20) NOT NULL,
  `imeRestorana` varchar(100) NOT NULL,
  `radnoVrijeme` varchar(50) NOT NULL,
  `brojTelefona` varchar(50) NOT NULL,
  `dodatniBrojTelefona` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idRestorana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restorani`
--

LOCK TABLES `restorani` WRITE;
/*!40000 ALTER TABLE `restorani` DISABLE KEYS */;
INSERT INTO `restorani` VALUES ('05gzy924yg0lk7zd70ah','Buregdžinica Asim 2','10:00 - 19:00','+38780335651',NULL),('49i2f1iucu2yaze3bfck','Ćevabdžinica Hari','07:00 - 22:00','+38733156331','+38765778901'),('4hv84xjpqpsidi3cbmpr','Mazića Han','08:00 - 18:30','+38733441311',NULL),('8ok56t6ag9u1103joten','Restoran Pet jezera','09:00 - 14:30','+38733091563','+387330981123'),('dpgj0jqmzxds9319kva1','Restoran Brkić','09:00 - 20:30','+387605567543','+38765778902'),('eb3hb4el990rapy8v7x0','Lutvina kahva','08:00 - 16:00','+38733565197',NULL),('l2d8xkm0knx4isj9s87q','Express restoran','09:00 - 16:30','+38733145332',NULL),('liapiclsgg7yhw5f2e47','BistroNomie','08:00 - 16:00','+38733112337','+38733888988'),('ny02weoj8wxbvy86u3ll','Grill Željo','09:00 - 18:30','+38733098331','+38733345560'),('phfbol1gx1z79jyz6d9t','Mrkva','08:00 - 21:00','+38761224311','+38761344980'),('w6bcjzwgh48mrk63325v','Ćevabdžinica Konjalić','07:30 - 16:30','+38733678331','+387333478901');
/*!40000 ALTER TABLE `restorani` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08 19:27:46

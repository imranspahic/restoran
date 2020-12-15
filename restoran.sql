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
  KEY `caidKorisnika` (`idKorisnika`),
  KEY `caidRestorana` (`idRestorana`),
  CONSTRAINT `caidKorisnika` FOREIGN KEY (`idKorisnika`) REFERENCES `korisnici` (`id`) ON DELETE CASCADE,
  CONSTRAINT `caidRestorana` FOREIGN KEY (`idRestorana`) REFERENCES `restorani` (`idRestorana`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese`
--

LOCK TABLES `adrese` WRITE;
/*!40000 ALTER TABLE `adrese` DISABLE KEYS */;
INSERT INTO `adrese` VALUES ('0c25n5d9mkzevqnv7hwo','o0qtbt1w97n2jdbjv5kb',NULL,'Obala',1,'Tešanj','Tešanj',74260,'Pored restorana Metropolis'),('0isncz1fz2c9y7op7dm5','tljfrp5k153bdn23agdx',NULL,'Skendera Kulenovića',11,'Sarajevo','Vogošća',71000,'Blizu restorana Orah'),('153bdn23agdx8lzc81nt','ihka5ave4fhjevf0pmet',NULL,'Stari drum',33,'Sarajevo','Hrasnica',71000,'Kod Caffe Piano'),('1yq5ys18wwnexclviukn',NULL,'eb3hb4el990rapy8v7x0','Marka Marulića',88,'Sarajevo','Pofalići',71000,NULL),('2d682j4pnb3ha4el9900','qurzbcrsyf1mxjo17zli',NULL,'Donja Mahala',13,'Travnik','Kalibunar',72270,NULL),('2e47p7fbnl1gxspx9jyp',NULL,'dpgj0jqmzxds9319kva1','12. mart',5,'Ilidža','Centar',71210,NULL),('5ave4fhjevf0pmetmfpw','p6hc1oq4or08mvndwcbu',NULL,'Izeta Mušića',199,'Sarajevo','Hrasnica',71000,NULL),('6oyti67l58ip4d4vetsc','8lzc81ntuswmhm7gfqtv',NULL,'Splitska',6,'Mostar','Centar',88000,'kod raskrsnice glavne'),('74wa3x7e22tj2iq0nzqt','awaekcy5547nsxirq246',NULL,'Anđelka Lažetića',110,'Hadžići','Kukice',71240,NULL),('85xb5y8f33ul3js2p1ru','wtlzsmv3rqi8r6fpcoeh',NULL,'Jošanička',18,'Sarajevo','Vogošća',71000,'Iza prodavnice BEST'),('8jmoiza5uhjxhktrfo66','4nuq31hwd74dozd5bso9',NULL,'Maršala Tita',116,'Konjic','Centar',88400,NULL),('8p0uj79n7ajq5e5wfutd','vdni7uwaux7es2tj2ih0',NULL,'Kazandžijska',3,'Tuzla','Bulevar',75000,'ispred ćevabdžinice, sa desne strane ulaz'),('9knpj0b6vikyilvsgq77','x8ac7oyti67m59ig4dvv',NULL,'Svetog luke',11,'Jajce','Centar',70101,'kod tvrđave'),('9r1wl9ao8bls7g7ygwvf',NULL,'l2d8xkm0knx4isj9s87q','Adija Mulabegovića',200,'Sarajevo','Vojničko polje',71000,'Kod Unicredit bankomata'),('a20w97n2jnksu5klryuf','awaekcy5547nsxirq246',NULL,'Fra Franje Miličevića',1,'Mostar','Dum',88000,'u blizini Starog mosta'),('a7zd60ah55wm5lt3q2tv',NULL,'liapiclsgg7yhw5f2e47','Đure Daničića',16,'Bijeljina','Bogdanovića plac',76300,'Treći sprat poslovna zgrada'),('bcrsyf1mxjo17zliihka','pmetmfpwkkb2l09j6i8b',NULL,'Izeta Mušića',19,'Sarajevo','Hrasnica',71000,NULL),('c42ya8o3koluw6lmszwg','zrplywbr8c9hjt89gnj3',NULL,'Hasana Brkića',91,'Sarajevo','Grbavica',71000,'zgrade parnjače, 4. sprat'),('d53zcaq5mqnvx8mnu1xi',NULL,'phfbol1gx1z79jyz6d9t','Bulevar Meše Selimovića',104,'Sarajevo','Otoka',71000,'Pored glavne raskrsnice'),('he6kd7hocc3tcs0ax902','85xc5z8f33ul4js2p1ru',NULL,'Tuzlanska bb',NULL,'Zenica','Zeničko-Dobojski kanton',72450,'Iznad benziske pumpe, pored parkinga sa lijeve strane, stan bez lifta'),('hrxy4lh13pu7d5roonrg','0afgn30kl8cpvoa6769z',NULL,'Titova',23,'Sanski Most','Centar',79260,NULL),('itwys9kf4rt7ru41pzgg',NULL,'ny02weoj8wxbvy86u3ll','Jovana Dučića',91,'Banja Luka','Nova Varoš',78000,'Kod Nove Banke'),('j5lygy62e3i7ejgo0afg','sphwpjsznne5o3cm9lbe',NULL,'Zvijezde',11,'Travnik','Centar',72270,NULL),('jpxhugx9i983geuiqurz','q2460isncz1fz2c9y7op',NULL,'Donja Mahala',29,'Travnik','Kalibunar',72270,NULL),('jtyz6mi34rv8e7tpqosi','6gmnt96qseiw1ugddcf5',NULL,'Ukrinska',1,'Derventa','Lug',74400,NULL),('kkb2l09j6i8btljfrp5k','mfpwkkb2l09j6i8btljf',NULL,'Školska',NULL,'Sarajevo','Hrasnica',71000,'Kod druge osnovne'),('mr3llwprl2m86um0tnx4','afq98jce8qavuh9nhakr',NULL,'Jelik',16,'Olovo','Centar',71340,NULL),('n30kl8cpvoa6769z38k2','rp5k153bdn23agdx8lzc',NULL,'Zvijezde',13,'Travnik','Centar',72270,NULL),('or08mvndwcbuhtkm4nuq','bso9awaekcy5547nsxir',NULL,'Anđelka Lažetića',33,'Hadžići','Kukice',71240,NULL),('pv4n1m3fxfnjwk0pw0x5','38k22d682j4pnb3ha4el',NULL,'Bulevar VII korpusa',NULL,'Sanski Most','Centar',79260,NULL),('q3guqj4bbad3y3oxx8ac','9900jpxhugx9i983geui',NULL,'Fra Didaka Buntića',6,'Mostar','Dum',88000,'u blizini Starog mosta'),('qw5o2o4hzhpkxl1qx1z7','ekscpbs4m4c8k9pdlpmu',NULL,'Mehmed Spahe',67,'Bihać','Ozimice II',77000,'U blizini caffe bar Piramida'),('r278fvrcd04hng1yzx1q',NULL,'w6bcjzwgh48mrk63325v','Aleja Konzula bb',NULL,'Travnik','Kalibunar',72270,NULL),('r4ivrk6ccbf4z4pyy9ce','er5jf7tz0z2snsdmlxz1',NULL,'Kulina bana',NULL,'Tuzla','Centar',75000,'pored Šarene džamije'),('s5jxtl7eedg616r00bdf',NULL,'4hv84xjpqpsidi3cbmpr','Nerkeza Smailagića',88,'Sarajevo','Alipašino polje',71000,'Zgrada Elektroprivrede'),('t96qresw1ugmmlp5af09','7dm5j5lygy62e3i7ejgo',NULL,'Maršala Tita',176,'Konjic','Centar',88400,'Hotel Oaza'),('ub7rtftx3vhnonq6bg1a','iyufg3hkqj5bbaeuy3ox',NULL,'Bašbunar bb',NULL,'Travnik','Babunar',72270,'Iznad novoizgrađene zgrade, prekoputa šehidskog'),('uswmhm7gfqtvp6hc1oq4','htkm4nuq31hwd74dozd5',NULL,'Hadželi',33,'Hadžići','Centar',71240,NULL),('v0cuu5y0ubvhf3v92w5d',NULL,'05gzy924yg0lk7zd70ah','Donja Čaršija',NULL,'Travnik','Žitarnica',72270,'Ispod Šarene džamije, pored kafića'),('wc9tuo26b4qwxwzfkpaj',NULL,'8ok56t6ag9u1103joten','Kralja Tvrtka',91,'Livno','Centar',80101,NULL),('z5exbwdq7qxt6uaz6a8g',NULL,'49i2f1iucu2yaze3bfck','Tabhanska',12,'Visoko','Centar',71300,NULL),('zb14m4c8kiydupmu6gvm','81ntuswmhm7gfqtvp6hc',NULL,'Kralja Tomislava',76,'Mostar','Centar',88000,'Šetaonica, zgrada kod fontane');
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
  KEY `cdnšifraProizvoda` (`šifraProizvoda`),
  CONSTRAINT `cdnidNarudžbe` FOREIGN KEY (`idNarudžbe`) REFERENCES `narudžbe` (`idNarudžbe`) ON DELETE CASCADE,
  CONSTRAINT `cdnšifraProizvoda` FOREIGN KEY (`šifraProizvoda`) REFERENCES `proizvodi` (`šifraProizvoda`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalji_narudžbe`
--

LOCK TABLES `detalji_narudžbe` WRITE;
/*!40000 ALTER TABLE `detalji_narudžbe` DISABLE KEYS */;
INSERT INTO `detalji_narudžbe` VALUES (1127502,'p-rogunhqy',3),(1127502,'p-rogvoiry',2),(1256077,'p-ep34biez',4),(1256077,'p-eqgj1srm',2),(1256077,'p-fp45cjfz',6),(1382204,'p-ur7m375d',3),(1382204,'p-vuxnin8h',1),(1382204,'p-zxds9dai',1),(1841596,'p-769puzkt',1),(1841596,'p-oxofxdcv',3),(1841596,'p-ssj9s8gq',1),(1918535,'p-42ixe96e',2),(1918535,'p-ep34biez',2),(1918535,'p-xum0unx4',2),(1923547,'p-ur7m375d',7),(1923547,'p-vuxnin8h',5),(2186625,'p-eqgj1srm',3),(2186625,'p-fp45cjfz',1),(2194996,'p-wvyojo9i',8),(2194996,'p-xum0unx4',4),(2208793,'p-rogvoiry',1),(3237246,'p-hsvxr8je',5),(3237246,'p-jvlo6owr',7),(3738520,'p-3qs6qt3a',20),(3738520,'p-ssj9s8gq',18),(4249039,'p-vuxnin8h',8),(4902740,'p-ssj9s8gq',8),(4902740,'p-vuxnin8h',3),(4902740,'p-wvyojo9i',2),(5383726,'p-7jacumkg',4),(5383726,'p-8kadvnlh',3),(5505494,'p-eqgj1srm',3),(5505494,'p-ssj9s8gq',2),(6372669,'p-wvyojo9i',3),(6384962,'p-ep34biez',1),(6384962,'p-mld3m1ak',1),(6528239,'p-hsvxr8je',5),(6528239,'p-jvlo6owr',7),(6557019,'p-7jacumkg',2),(6557019,'p-mld3m1ak',1),(6557019,'p-rogunhqy',1),(6915804,'p-769puzkt',1),(6915804,'p-7jacumkg',3),(6915804,'p-8kadvnlh',6),(6915804,'p-9m0ea2ov',9),(7147461,'p-mld3m1ak',3),(7147461,'p-mmd4n2bl',1),(7163633,'p-3qs6qt3a',2),(7163633,'p-769puzkt',9),(7339340,'p-q1g7euqb',1),(7339340,'p-xum0unx4',4),(7558607,'p-wvyojo9i',4),(7558607,'p-zxds9dai',12),(7649711,'p-mld3m1ak',3),(7649711,'p-mmd4n2bl',1),(7649711,'p-rogunhqy',1),(7799780,'p-2pr5ps29',1),(7799780,'p-3qs6qt3a',3),(7799780,'p-42ixe96e',7),(8076992,'p-3qs6qt3a',8),(8076992,'p-42ixe96e',5),(8076992,'p-zxds9dai',9),(8405304,'p-oxofxdcv',5),(8405304,'p-oypfyedw',8),(8405304,'p-q1g7euqb',2),(8510381,'p-2pr5ps29',2),(8510381,'p-42ixe96e',1),(8510381,'p-7jacumkg',7),(8510381,'p-eqgj1srm',3),(8510381,'p-gsuwq8id',3),(8710868,'p-42ixe96e',3),(8710868,'p-8kadvnlh',3),(8710868,'p-eqgj1srm',3),(9034141,'p-oxofxdcv',1),(9034141,'p-q1g7euqb',3),(9034141,'p-rogunhqy',3),(9114179,'p-7jacumkg',3),(9114179,'p-jvlo6owr',6),(9114179,'p-vuxnin8h',6),(9122893,'p-an1ea3pv',3),(9122893,'p-czcgmf07',2),(9122893,'p-ep34biez',6),(9243220,'p-9m0ea2ov',2),(9243220,'p-an1ea3pv',5),(9243220,'p-czcgmf07',3),(9252683,'p-czcgmf07',4),(9252683,'p-oxofxdcv',4),(9252683,'p-oypfyedw',3),(9252683,'p-q1g7euqb',8),(9252683,'p-rogunhqy',6),(9252683,'p-rogvoiry',1),(9252683,'p-ssj9s8gq',8),(9252683,'p-t4682kup',4),(9453152,'p-jvlo6owr',7),(9478089,'p-wvyojo9i',2),(9886969,'p-9m0ea2ov',3),(9886969,'p-mmd4n2bl',8),(9886969,'p-ssj9s8gq',11);
/*!40000 ALTER TABLE `detalji_narudžbe` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER provjeriDostupnostProizvoda
BEFORE INSERT ON detalji_narudžbe
FOR EACH ROW
BEGIN
	 DECLARE porukaGreške varchar(255);
	 IF NEW.šifraProizvoda NOT IN(
            SELECT p.šifraProizvoda
            FROM proizvodi p
            WHERE p.šifraProizvoda = NEW.šifraProizvoda 
            AND p.naStanju = "da"
        )
        THEN SET porukaGreške = 'Greška: ovaj proizvod ne postoji ili nije na stanju!';
			 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = porukaGreške;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  KEY `cikbrojKupona` (`brojKupona`),
  CONSTRAINT `cikbrojKupona` FOREIGN KEY (`brojKupona`) REFERENCES `kuponi` (`brojKupona`) ON DELETE CASCADE,
  CONSTRAINT `cikidKorisnika` FOREIGN KEY (`idKorisnika`) REFERENCES `korisnici` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iskorišteni_kuponi`
--

LOCK TABLES `iskorišteni_kuponi` WRITE;
/*!40000 ALTER TABLE `iskorišteni_kuponi` DISABLE KEYS */;
INSERT INTO `iskorišteni_kuponi` VALUES ('0afgn30kl8cpvoa6769z',27869,'2020-10-30 10:18:00'),('38k22d682j4pnb3ha4el',11767,'2020-10-19 09:41:00'),('6gmnt96qseiw1ugddcf5',64979,'2020-12-12 13:03:00'),('afq98jce8qavuh9nhakr',11767,'2020-10-24 14:22:00'),('awaekcy5547nsxirq246',42647,'2020-09-09 12:41:00'),('ekscpbs4m4c8k9pdlpmu',42647,'2020-12-02 17:04:00'),('er5jf7tz0z2snsdmlxz1',42647,'2020-12-19 12:49:00'),('ihka5ave4fhjevf0pmet',12162,'2020-11-19 10:35:00'),('o0qtbt1w97n2jdbjv5kb',16484,'2020-09-03 16:25:00'),('p6hc1oq4or08mvndwcbu',27869,'2020-05-21 05:30:00'),('vdni7uwaux7es2tj2ih0',16484,'2020-11-03 09:25:00'),('wtlzsmv3rqi8r6fpcoeh',32608,'2020-03-25 13:27:00'),('x8ac7oyti67m59ig4dvv',16484,'2020-07-15 22:00:00'),('x8ac7oyti67m59ig4dvv',42647,'2020-08-18 11:14:00'),('zrplywbr8c9hjt89gnj3',11767,'2020-04-28 11:42:00'),('zrplywbr8c9hjt89gnj3',64979,'2020-03-26 08:35:00');
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
INSERT INTO `korisnici` VALUES ('0afgn30kl8cpvoa6769z','Neno','Borislav','nenobos@outlook.com','+38766509998'),('1oq4or08mvndwcbuhtkm','Hana','Razić','razicH@gmail.com','+38765984554'),('38k22d682j4pnb3ha4el','Andrea','Danijel','andreoo@outlook.com','+38763998161'),('4nuq31hwd74dozd5bso9','Slobodan','Simeon','simeonI@gmail.com','+38765490877'),('6gmnt96qseiw1ugddcf5','Amina','Alagić','amina_alagic@gmail.com','+38762111331'),('7dm5j5lygy62e3i7ejgo','Almir','Crnkić','almir4_56@outlook.com','+38761557860'),('81ntuswmhm7gfqtvp6hc','Demir','Demirović','demir.demirovic@gmail.com','+38763333111'),('85xc5z8f33ul4js2p1ru','Nedim','Haskić','nedimhaskic122@hotmail.com','+38764445901'),('8lzc81ntuswmhm7gfqtv','Alija','Hozić','hozicc@gmail.com','+38761981700'),('9900jpxhugx9i983geui','Hamza','Mehmedalija','mehmedalija.hamza.bussines@outlook.com','+387607165019'),('afq98jce8qavuh9nhakr','Srđan','Kostov','srdjan@gmail.com','+387604451123'),('awaekcy5547nsxirq246','Irena','Danka','iren9901@gmail.com','+38762559018'),('bso9awaekcy5547nsxir','Enes','Zec','eneszec@outlook.com','+387606667766'),('ekscpbs4m4c8k9pdlpmu','Emel','Bošnjak','emel_bosnjak_009@web.devs.com','+38763509861'),('er5jf7tz0z2snsdmlxz1','Omer','Spahić','os991@gmail.com','+38762344351'),('htkm4nuq31hwd74dozd5','Emina','Haskić','emina4@yahoo.com','+38764431187'),('ihka5ave4fhjevf0pmet','Adela','Delić','unknownGuest1@outlook.com','+38763098000'),('iyufg3hkqj5bbaeuy3ox','Emina','Topoljak','eminaTopoljak@yahoo.com','+38761114355'),('mfpwkkb2l09j6i8btljf','Katarina','Goran','kat3@outlook.com','+38763111341'),('o0qtbt1w97n2jdbjv5kb','Harun','Mudrov','harunmud4@gmail.com','+38764460091'),('p6hc1oq4or08mvndwcbu','Imran','Botić','imranbotic@hotmail.com','+38761359987'),('pmetmfpwkkb2l09j6i8b','Srđan','Alagić','srdjan55@gmail.com','+38760445134'),('q2460isncz1fz2c9y7op','Almir','Kasumović','almirkasumovic76@outlook.com','+38761554120'),('qurzbcrsyf1mxjo17zli','Almina','Selimović','almina.selimovic@outlook.com','+38761658767'),('rp5k153bdn23agdx8lzc','Larisa','Lazarević','ll76@outlook.com','+38761766890'),('sphwpjsznne5o3cm9lbe','Imran','Spahić','ispahic2@etf.unsa.ba','+387603331774'),('tljfrp5k153bdn23agdx','Alija','Memić','alija_9999@gmail.com','+38761433311'),('vdni7uwaux7es2tj2ih0','Zoran','Hamzagalić','zorko@gmail.com','+38761989091'),('wtlzsmv3rqi8r6fpcoeh','Ajla','Dizdarević','ajla_39@gmail.com','+38760390951'),('x8ac7oyti67m59ig4dvv','Dario','Jovanović','dariojovanovic@etf.unsa.ba','+38761135699'),('zrplywbr8c9hjt89gnj3','Kenan','Selman','kenanselman@gmail.com','+38761990476');
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
INSERT INTO `kuponi` VALUES (11767,'aktivan','2019-02-25','2023-12-31',5,'Svaki mjesec nagrađujemo!, prijavite se i ostvarite 5% '),(12162,'aktivan','2020-12-13','2020-01-13',15,'Nova jela u ponudi'),(16484,'aktivan','2020-07-15','2021-01-30',20,'Ostanite kući i naručite online!'),(18527,'neaktivan','2019-04-19','2019-07-30',35,NULL),(19952,'neaktivan','2020-03-11','2020-08-21',10,NULL),(20017,'neaktivan','2020-11-15','2020-11-18',5,NULL),(21583,'neaktivan','2018-06-01','2019-05-11',10,NULL),(24956,'neaktivan','2019-09-10','2019-09-20',20,NULL),(25041,'neaktivan','2020-10-21','2020-10-23',60,NULL),(27869,'aktivan','2020-10-13','2024-10-13',3,'Popust za sve nove korisnike'),(29271,'neaktivan','2016-10-01','2016-11-01',25,'Otvaranje novog objekta'),(32608,'aktivan','2019-01-01','2020-01-01',20,'Ove godine nagrađujemo svaka tri mjeseca sa 20%'),(32736,'neaktivan','2020-11-19','2020-11-21',5,NULL),(37227,'neaktivan','2018-01-01','2019-01-01',30,'Naručite preko 30KM, ostvarite 30% sljedeći put'),(42647,'aktivan','2020-12-01','2020-12-31',15,'Novogodišnji popust na narudžbe'),(47967,'neaktivan','2020-04-23','2020-05-23',15,'Ramazanski popust'),(62891,'neaktivan','2017-03-27','2017-04-10',30,'Dvije sedmice 30% na nove korisnike kartice'),(64979,'aktivan','2020-03-11','2020-12-31',30,'10. godišnjica restorana, 30% popusta na narudžbe'),(80584,'neaktivan','2018-02-24','2018-05-23',5,'Nagradna igra za 100 korisnika'),(83342,'neaktivan','2018-07-11','2018-08-10',10,'Mjesec juli, mjesec ponude'),(87051,'neaktivan','2019-12-01','2020-01-01',10,'Decembarski popust na svaku narudžbu'),(88763,'neaktivan','2020-02-16','2020-10-16',4,NULL),(89197,'neaktivan','2018-04-01','2018-04-30',10,'Ovog aprila ne propustite!');
/*!40000 ALTER TABLE `kuponi` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER validacijaKupona
BEFORE INSERT ON kuponi
FOR EACH ROW
BEGIN
	DECLARE porukaGreške VARCHAR(255);
	IF NEW.datumIsteka <= NEW.datumKreiranja
	   THEN SET porukaGreške = "Greška: datum isteka manji od datuma kreiranja!";
       SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = porukaGreške;
	ELSEIF NEW.datumIsteka < CURDATE() AND NEW.statusKupona = "aktivan"
	   THEN SET porukaGreške = "Greška: kupon ne može bit aktivan sa isteknutim datumom!";
       SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = porukaGreške;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  KEY `cnadresaIsporuke` (`adresaIsporuke`),
  KEY `cnbrojKupona` (`brojKupona`),
  CONSTRAINT `cnadresaIsporuke` FOREIGN KEY (`adresaIsporuke`) REFERENCES `adrese` (`idAdrese`) ON DELETE CASCADE,
  CONSTRAINT `cnbrojKupona` FOREIGN KEY (`brojKupona`) REFERENCES `kuponi` (`brojKupona`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `narudžbe`
--

LOCK TABLES `narudžbe` WRITE;
/*!40000 ALTER TABLE `narudžbe` DISABLE KEYS */;
INSERT INTO `narudžbe` VALUES (1127502,'hrxy4lh13pu7d5roonrg',NULL,20,'na čekanju','2020-04-18 16:47:00'),(1256077,'2d682j4pnb3ha4el9900',16484,20,'prihvaćeno','2020-09-15 08:50:00'),(1382204,'he6kd7hocc3tcs0ax902',NULL,30,'prihvaćeno','2020-11-26 09:52:00'),(1841596,'85xb5y8f33ul3js2p1ru',NULL,10,'odbijeno','2020-06-18 12:57:00'),(1918535,'8p0uj79n7ajq5e5wfutd',16484,80,'na čekanju','2020-11-03 09:25:00'),(1923547,'85xb5y8f33ul3js2p1ru',32608,30,'odbijeno','2020-03-25 13:27:00'),(2186625,'or08mvndwcbuhtkm4nuq',NULL,30,'prihvaćeno','2020-10-09 15:31:00'),(2194996,'8jmoiza5uhjxhktrfo66',NULL,20,'prihvaćeno','2020-03-27 12:38:00'),(2208793,'qw5o2o4hzhpkxl1qx1z7',42647,35,'na čekanju','2020-12-02 17:04:00'),(3237246,'2d682j4pnb3ha4el9900',NULL,10,'odbijeno','2020-10-19 06:20:00'),(3309934,'6oyti67l58ip4d4vetsc',NULL,30,'prihvaćeno','2020-06-18 12:52:00'),(3738520,'mr3llwprl2m86um0tnx4',11767,100,'prihvaćeno','2020-10-24 14:22:00'),(4249039,'c42ya8o3koluw6lmszwg',64979,30,'na čekanju','2020-03-26 08:35:00'),(4902740,'jtyz6mi34rv8e7tpqosi',NULL,15,'odbijeno','2020-11-08 16:53:00'),(5383726,'153bdn23agdx8lzc81nt',12162,30,'odbijeno','2020-11-19 10:35:00'),(5505494,'ub7rtftx3vhnonq6bg1a',NULL,10,'odbijeno','2020-12-18 12:45:00'),(6372669,'he6kd7hocc3tcs0ax902',NULL,30,'prihvaćeno','2020-11-23 11:20:00'),(6384962,'85xb5y8f33ul3js2p1ru',NULL,30,'prihvaćeno','2020-12-05 11:01:00'),(6528239,'bcrsyf1mxjo17zliihka',NULL,10,'odbijeno','2020-10-10 14:22:00'),(6557019,'c42ya8o3koluw6lmszwg',NULL,25,'prihvaćeno','2020-02-28 09:00:00'),(6915804,'9knpj0b6vikyilvsgq77',42647,10,'prihvaćeno','2020-08-18 11:14:00'),(6936842,'9knpj0b6vikyilvsgq77',NULL,30,'odbijeno','2020-07-11 09:11:00'),(7147461,'5ave4fhjevf0pmetmfpw',27869,30,'odbijeno','2020-05-21 05:30:00'),(7163633,'0isncz1fz2c9y7op7dm5',NULL,10,'prihvaćeno','2020-10-15 10:40:00'),(7339340,'9knpj0b6vikyilvsgq77',16484,40,'prihvaćeno','2020-07-15 22:00:00'),(7558607,'hrxy4lh13pu7d5roonrg',27869,10,'prihvaćeno','2020-10-30 10:18:00'),(7649711,'c42ya8o3koluw6lmszwg',11767,20,'odbijeno','2020-04-28 11:42:00'),(7799780,'jtyz6mi34rv8e7tpqosi',64979,55,'na čekanju','2020-12-12 13:03:00'),(8076992,'8p0uj79n7ajq5e5wfutd',NULL,40,'prihvaćeno','2020-05-14 11:48:00'),(8405304,'74wa3x7e22tj2iq0nzqt',NULL,30,'na čekanju','2020-04-05 09:26:00'),(8510381,'8jmoiza5uhjxhktrfo66',NULL,30,'prihvaćeno','2020-12-11 11:11:00'),(8710868,'r4ivrk6ccbf4z4pyy9ce',42647,20,'na čekanju','2020-12-19 12:49:00'),(9034141,'pv4n1m3fxfnjwk0pw0x5',11767,10,'prihvaćeno','2020-10-19 09:41:00'),(9114179,'0c25n5d9mkzevqnv7hwo',16484,60,'prihvaćeno','2020-09-03 16:25:00'),(9122893,'a20w97n2jnksu5klryuf',42647,10,'odbijeno','2020-09-09 12:41:00'),(9243220,'uswmhm7gfqtvp6hc1oq4',NULL,20,'prihvaćeno','2020-08-15 08:20:00'),(9252683,'5ave4fhjevf0pmetmfpw',NULL,20,'prihvaćeno','2020-09-11 11:30:00'),(9380385,'6oyti67l58ip4d4vetsc',NULL,10,'odbijeno','2020-06-28 12:59:00'),(9453152,'jtyz6mi34rv8e7tpqosi',NULL,50,'prihvaćeno','2020-12-01 08:31:00'),(9478089,'jtyz6mi34rv8e7tpqosi',NULL,15,'odbijeno','2020-11-25 16:50:00'),(9886969,'ub7rtftx3vhnonq6bg1a',NULL,30,'prihvaćeno','2020-11-09 16:11:00');
/*!40000 ALTER TABLE `narudžbe` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER provjeriDostupnostKupona
BEFORE INSERT ON narudžbe
FOR EACH ROW
BEGIN
	 DECLARE porukaGreške varchar(255);
	 IF NEW.brojKupona NOT IN(
            SELECT k.brojKupona
            FROM kuponi k
            WHERE k.brojKupona = NEW.brojKupona 
            AND k.statusKupona = "aktivan"
        ) AND NEW.brojKupona IS NOT NULL
        THEN SET porukaGreške = 'Greška: ovaj kupon ne postoji ili nije aktivan!';
			 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = porukaGreške;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER izbrišiDetaljeNarudžbe
AFTER DELETE ON narudžbe
FOR EACH ROW
BEGIN
	DELETE FROM detalji_narudžbe
    WHERE idNarudžbe = OLD.idNarudžbe;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  KEY `cpidKategorije` (`idKategorije`),
  CONSTRAINT `cpidKategorije` FOREIGN KEY (`idKategorije`) REFERENCES `kategorije_proizvoda` (`idKategorije`) ON DELETE CASCADE
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

-- Dump completed on 2020-12-15 23:40:17

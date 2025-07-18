-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: pbl
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `courier`
--

DROP TABLE IF EXISTS `courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courier` (
  `courier_id` varchar(10) NOT NULL,
  `nama_kurir` varchar(100) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `jenis_kendaraan` varchar(50) DEFAULT NULL,
  `plat_nomor` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`courier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courier`
--

LOCK TABLES `courier` WRITE;
/*!40000 ALTER TABLE `courier` DISABLE KEYS */;
INSERT INTO `courier` VALUES ('K001','Kurir 1','081111111001','Motor','B 0001 AA','Tersedia'),('K002','Kurir 2','081111111002','Mobil Pickup','D 0002 BB','Dalam Pengiriman'),('K003','Kurir 3','081111111003','Truk','L 0003 CC','Tersedia'),('K004','Kurir 4','081111111004','Motor','B 0004 DD','Istirahat'),('K005','Kurir 5','081111111005','Mobil Pickup','D 0005 EE','Tersedia'),('K006','Kurir 6','081111111006','Motor','B 1006 ZZ','Tersedia'),('K007','Kurir 7','081111111007','Mobil Pickup','D 1007 YY','Tersedia'),('K008','Kurir 8','081111111008','Truk','L 1008 XX','Tersedia'),('K009','Kurir 9','081111111009','Motor','B 1009 WW','Tersedia'),('K010','Kurir 10','081111111010','Mobil Pickup','D 1010 VV','Tersedia'),('K011','Kurir 11','081111111011','Truk','L 1011 UU','Tersedia'),('K012','Kurir 12','081111111012','Motor','B 1012 TT','Tersedia'),('K013','Kurir 13','081111111013','Mobil Pickup','D 1013 SS','Tersedia'),('K014','Kurir 14','081111111014','Truk','L 1014 RR','Tersedia'),('K015','Kurir 15','081111111015','Motor','B 1015 QQ','Tersedia');
/*!40000 ALTER TABLE `courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cstracking`
--

DROP TABLE IF EXISTS `cstracking`;
/*!50001 DROP VIEW IF EXISTS `cstracking`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cstracking` AS SELECT 
 1 AS `customer_id`,
 1 AS `nama`,
 1 AS `alamat`,
 1 AS `kota`,
 1 AS `kode_pos`,
 1 AS `no_telepon`,
 1 AS `email`,
 1 AS `package_id`,
 1 AS `jenis_barang`,
 1 AS `berat_kg`,
 1 AS `asuransi`,
 1 AS `status_paket`,
 1 AS `tanggal_kirim`,
 1 AS `estimasi_tiba`,
 1 AS `biaya_pengiriman`,
 1 AS `shipment_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C0001','AL ADLHU SODRI NIWRAD','Jl. Singkong 51 Melayu Kota Piring','Tanjungpinang','29125','082170991926','asodriniwrad@gmail.com'),('C0002','AKBAR RIZKI LINGGA','Perumahan Jala Bestari Blok A No.3','Tanjungpinang','29125','081378167430','akbarlingga423@gmail.com'),('C0003','MUHAMMAD AL-FIKRY AKBAR','Perumahan Jala Bestari Blok A No.4','Tanjungpinang','29125','0895600258558','muhammadfikry757@gmail.com'),('C0004','DZAKY RIBAL FAIZ','Jl. Haji Ungar No.18','Tanjungpinang','29125','083188858175','fdzaky748@gmail.com'),('C0005','BAYU ADHANDIKA','Perumahan Kijang Kencana Blok. A No.2','Tanjungpinang','29125','089829742900','adhandikabayuu@gmail.com'),('C0006','FARHAN DWI SAPUTRA','Kijang','Tanjungpinang','29125','089039141301','dwisaputrafarhan@gmail.com'),('C0007','ABDUL HAFIZH','Kijang Kota','Tanjungpinang','29125','081371813748','abdulhafizh@gmail.com'),('C0008','OLAN MAULANA','Perumahan Griya Bestari Permai Blok F No.1','Tanjungpinang','29125','087637197468','olanolanmaulana@gmail.com'),('C0009','AZIZUL RIZKY MAHADI','Jl. Lembah Purnama Gg. Selayar 4 No. 9','Tanjungpinang','29123','082198498378','alongazizul06@gmail.com'),('C0010','ADIB FARHAN SIHOMBING','Perumahan Jala Bestari Blok A No.3','Tanjungpinang','29123','082391766489','adibfarhans@gmail.com'),('C0011','MUHAMMAD PANCAYANDRA','Jl. Ganet No. 10','Tanjungpinang','29123','083318478901','mpancayandra@gmail.com'),('C0012','MUHAMMAD AL FIKAR','Perumahan Palm Hill No. 10','Tanjungpinang','29120','083617839177','alfikar@gmail.com'),('C0013','PIKY ALPIANDY','Perumahan Graha Asri No. 15','Tanjungpinang','29120','081373307481','pikypiky22@gmail.com'),('C0014','KRISTIAN NUGROHO KELIAT','Perumahan Palm Hill No. 11','Tanjungpinang','29120','082391055706','kristiannugroho7@gmail.com'),('C0015','PITRIA','Perumahan Chinesee Square, No.5','Tanjungpinang','29120','082148920947','pitriaaaa@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `package_id` varchar(10) NOT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `berat_kg` decimal(5,2) DEFAULT NULL,
  `jenis_barang` varchar(50) DEFAULT NULL,
  `dimensi` varchar(30) DEFAULT NULL,
  `asuransi` varchar(10) DEFAULT NULL,
  `status_paket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`package_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `package_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES ('PKG001','C0001',2.50,'Elektronik','30x20x15','Ya','Dalam Proses'),('PKG002','C0002',5.00,'Pakaian','50x40x30','Tidak','Dikirim'),('PKG003','C0003',10.00,'Furnitur','120x80x60','Ya','Menunggu Pickup'),('PKG004','C0004',1.20,'Dokumen','25x15x5','Tidak','Diterima'),('PKG005','C0005',3.70,'Kosmetik','35x25x20','Ya','Dalam Perjalanan'),('PKG006','C0006',8.50,'Alat Olahraga','90x60x40','Ya','Dikirim'),('PKG007','C0007',0.50,'Perhiasan','10x5x5','Ya','Dalam Proses'),('PKG008','C0008',15.00,'Elektronik','150x80x70','Ya','Menunggu Pickup'),('PKG009','C0009',4.20,'Buku','40x30x25','Tidak','Diterima'),('PKG010','C0010',6.80,'Mainan','70x50x40','Ya','Dalam Perjalanan'),('PKG011','C0011',12.50,'Mebel','200x100x80','Ya','Dikirim'),('PKG012','C0012',0.80,'Aksesoris','20x10x10','Tidak','Dalam Proses'),('PKG013','C0013',7.30,'Pakaian','80x60x30','Ya','Menunggu Pickup'),('PKG014','C0014',2.00,'Makanan','25x20x15','Tidak','Diterima'),('PKG015','C0015',9.10,'Alat Musik','100x50x50','Ya','Dalam Perjalanan');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_cstracking`
--

DROP TABLE IF EXISTS `search_cstracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_cstracking` (
  `customer_id` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `package_id` varchar(10) NOT NULL,
  `jenis_barang` varchar(50) DEFAULT NULL,
  `berat_kg` decimal(5,2) DEFAULT NULL,
  `asuransi` varchar(10) DEFAULT NULL,
  `status_paket` varchar(50) DEFAULT NULL,
  `tanggal_kirim` date DEFAULT NULL,
  `estimasi_tiba` date DEFAULT NULL,
  `biaya_pengiriman` int DEFAULT NULL,
  `shipment_id` varchar(10) NOT NULL,
  KEY `idx_jenis_barang` (`jenis_barang`),
  KEY `idx_nama_customer` (`nama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_cstracking`
--

LOCK TABLES `search_cstracking` WRITE;
/*!40000 ALTER TABLE `search_cstracking` DISABLE KEYS */;
INSERT INTO `search_cstracking` VALUES ('C0001','AL ADLHU SODRI NIWRAD','Jl. Singkong 51 Melayu Kota Piring','Tanjungpinang','29125','082170991926','asodriniwrad@gmail.com','PKG001','Elektronik',2.50,'Ya','Dalam Proses','2023-10-01','2023-10-03',25000,'SH001'),('C0002','AKBAR RIZKI LINGGA','Perumahan Jala Bestari Blok A No.3','Tanjungpinang','29125','081378167430','akbarlingga423@gmail.com','PKG002','Pakaian',5.00,'Tidak','Dikirim','2023-10-02','2023-10-05',50000,'SH002'),('C0003','MUHAMMAD AL-FIKRY AKBAR','Perumahan Jala Bestari Blok A No.4','Tanjungpinang','29125','0895600258558','muhammadfikry757@gmail.com','PKG003','Furnitur',10.00,'Ya','Menunggu Pickup','2023-10-03','2023-10-07',120000,'SH003'),('C0004','DZAKY RIBAL FAIZ','Jl. Haji Ungar No.18','Tanjungpinang','29125','083188858175','fdzaky748@gmail.com','PKG004','Dokumen',1.20,'Tidak','Diterima','2023-10-04','2023-10-06',15000,'SH004'),('C0005','BAYU ADHANDIKA','Perumahan Kijang Kencana Blok. A No.2','Tanjungpinang','29125','089829742900','adhandikabayuu@gmail.com','PKG005','Kosmetik',3.70,'Ya','Dalam Perjalanan','2023-10-05','2023-10-08',35000,'SH005'),('C0006','FARHAN DWI SAPUTRA','Kijang','Tanjungpinang','29125','089039141301','dwisaputrafarhan@gmail.com','PKG006','Alat Olahraga',8.50,'Ya','Dikirim','2023-10-06','2023-10-10',90000,'SH006'),('C0007','ABDUL HAFIZH','Kijang Kota','Tanjungpinang','29125','081371813748','abdulhafizh@gmail.com','PKG007','Perhiasan',0.50,'Ya','Dalam Proses','2023-10-07','2023-10-09',20000,'SH007'),('C0008','OLAN MAULANA','Perumahan Griya Bestari Permai Blok F No.1','Tanjungpinang','29125','087637197468','olanolanmaulana@gmail.com','PKG008','Elektronik',15.00,'Ya','Menunggu Pickup','2023-10-08','2023-10-12',150000,'SH008'),('C0009','AZIZUL RIZKY MAHADI','Jl. Lembah Purnama Gg. Selayar 4 No. 9','Tanjungpinang','29123','082198498378','alongazizul06@gmail.com','PKG009','Buku',4.20,'Tidak','Diterima','2023-10-09','2023-10-11',18000,'SH009'),('C0010','ADIB FARHAN SIHOMBING','Perumahan Jala Bestari Blok A No.3','Tanjungpinang','29123','082391766489','adibfarhans@gmail.com','PKG010','Mainan',6.80,'Ya','Dalam Perjalanan','2023-10-10','2023-10-13',60000,'SH010'),('C0011','MUHAMMAD PANCAYANDRA','Jl. Ganet No. 10','Tanjungpinang','29123','083318478901','mpancayandra@gmail.com','PKG011','Mebel',12.50,'Ya','Dikirim','2023-10-11','2023-10-15',180000,'SH011'),('C0012','MUHAMMAD AL FIKAR','Perumahan Palm Hill No. 10','Tanjungpinang','29120','083617839177','alfikar@gmail.com','PKG012','Aksesoris',0.80,'Tidak','Dalam Proses','2023-10-12','2023-10-14',12000,'SH012'),('C0013','PIKY ALPIANDY','Perumahan Graha Asri No. 15','Tanjungpinang','29120','081373307481','pikypiky22@gmail.com','PKG013','Pakaian',7.30,'Ya','Menunggu Pickup','2023-10-13','2023-10-16',45000,'SH013'),('C0014','KRISTIAN NUGROHO KELIAT','Perumahan Palm Hill No. 11','Tanjungpinang','29120','082391055706','kristiannugroho7@gmail.com','PKG014','Makanan',2.00,'Tidak','Diterima','2023-10-14','2023-10-16',15000,'SH014'),('C0015','PITRIA','Perumahan Chinesee Square, No.5','Tanjungpinang','29120','082148920947','pitriaaaa@gmail.com','PKG015','Alat Musik',9.10,'Ya','Dalam Perjalanan','2023-10-15','2023-10-18',80000,'SH015');
/*!40000 ALTER TABLE `search_cstracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment` (
  `shipment_id` varchar(10) NOT NULL,
  `package_id` varchar(10) DEFAULT NULL,
  `courier_id` varchar(10) DEFAULT NULL,
  `tanggal_kirim` date DEFAULT NULL,
  `estimasi_tiba` date DEFAULT NULL,
  `biaya_pengiriman` int DEFAULT NULL,
  `status_pengiriman` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`shipment_id`),
  KEY `package_id` (`package_id`),
  KEY `courier_id` (`courier_id`),
  KEY `idx_status` (`status_pengiriman`),
  CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  CONSTRAINT `shipment_ibfk_2` FOREIGN KEY (`courier_id`) REFERENCES `courier` (`courier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES ('SH001','PKG001','K001','2023-10-01','2023-10-03',25000,'Dalam Perjalanan'),('SH002','PKG002','K002','2023-10-02','2023-10-05',50000,'Dikirim'),('SH003','PKG003','K003','2023-10-03','2023-10-07',120000,'Menunggu Pickup'),('SH004','PKG004','K004','2023-10-04','2023-10-06',15000,'Sampai Tujuan'),('SH005','PKG005','K005','2023-10-05','2023-10-08',35000,'Dalam Perjalanan'),('SH006','PKG006','K006','2023-10-06','2023-10-10',90000,'Dikirim'),('SH007','PKG007','K007','2023-10-07','2023-10-09',20000,'Dalam Proses'),('SH008','PKG008','K008','2023-10-08','2023-10-12',150000,'Menunggu Pickup'),('SH009','PKG009','K009','2023-10-09','2023-10-11',18000,'Sampai Tujuan'),('SH010','PKG010','K010','2023-10-10','2023-10-13',60000,'Dalam Perjalanan'),('SH011','PKG011','K011','2023-10-11','2023-10-15',180000,'Dikirim'),('SH012','PKG012','K012','2023-10-12','2023-10-14',12000,'Dalam Proses'),('SH013','PKG013','K013','2023-10-13','2023-10-16',45000,'Menunggu Pickup'),('SH014','PKG014','K014','2023-10-14','2023-10-16',15000,'Sampai Tujuan'),('SH015','PKG015','K015','2023-10-15','2023-10-18',80000,'Dalam Perjalanan');
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking`
--

DROP TABLE IF EXISTS `tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resi` varchar(50) DEFAULT NULL,
  `status_update` varchar(100) DEFAULT NULL,
  `lokasi_terkini` varchar(100) DEFAULT NULL,
  `waktu` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_resi` (`resi`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking`
--

LOCK TABLES `tracking` WRITE;
/*!40000 ALTER TABLE `tracking` DISABLE KEYS */;
INSERT INTO `tracking` VALUES (1,'PKG001','DI CURI MALING','Jl. Singkong 51 Melayu Kota Piring','2025-06-29 06:02:30'),(2,'PKG010','Diterima','Perumahan Jala Bestari Blok A No.3','2025-06-29 06:02:56'),(3,'PKG001','DI CURI MALING','Jl. Singkong 51 Melayu Kota Piring','2025-06-29 06:06:42'),(4,'PKG010','Diterima','Perumahan Jala Bestari Blok A No.3','2025-06-29 06:06:49'),(5,'PKG010','Diterima','Perumahan Jala Bestari Blok A No.3','2025-06-29 06:18:56'),(6,'PKG004','Diterima','Jl. Haji Ungar No.18','2025-06-29 06:36:03'),(7,'PKG010','Diterima','Perumahan Jala Bestari Blok A No.3','2025-06-29 06:58:28'),(8,'PKG007','Diterima','Kijang Kota','2025-06-29 07:16:26'),(9,'PKG001','DI CURI MALING','Jl. Singkong 51 Melayu Kota Piring','2025-06-29 07:20:21'),(10,'PKG005','Dalam Perjalanan','Perumahan Kijang Kencana Blok. A No.2','2025-06-29 07:23:50'),(11,'PKG005','Dalam Perjalanan','Perumahan Kijang Kencana Blok. A No.2','2025-06-29 07:24:08'),(12,'PKG012','Dalam Proses','Perumahan Palm Hill No. 10','2025-06-29 07:25:48'),(13,'PKG010','Diterima','Perumahan Jala Bestari Blok A No.3','2025-06-29 07:26:30'),(14,'PKG010','Diterima','Perumahan Jala Bestari Blok A No.3','2025-06-29 07:26:58'),(15,'PKG005','Dalam Perjalanan','Perumahan Kijang Kencana Blok. A No.2','2025-06-29 07:31:04'),(16,'PKG005','Dalam Perjalanan','Perumahan Kijang Kencana Blok. A No.2','2025-06-29 07:32:59'),(17,'PKG005','Dalam Perjalanan','Perumahan Kijang Kencana Blok. A No.2','2025-06-29 07:33:37'),(18,'PKG005','Dalam Perjalanan','Perumahan Kijang Kencana Blok. A No.2','2025-06-29 07:36:31'),(19,'PKG010','Diterima','Perumahan Jala Bestari Blok A No.3','2025-06-29 14:45:26'),(20,'PKG010','Diterima','Perumahan Jala Bestari Blok A No.3','2025-06-29 15:27:12'),(21,'PKG010','Diterima','Perumahan Jala Bestari Blok A No.3','2025-06-29 15:42:42'),(22,'PKG010','Dalam Perjalanan','Perumahan Jala Bestari Blok A No.3','2025-06-29 17:56:51'),(23,'PKG010','Dalam Perjalanan','Perumahan Jala Bestari Blok A No.3','2025-06-29 18:09:06'),(24,'PKG005','Dalam Perjalanan','Perumahan Kijang Kencana Blok. A No.2','2025-06-29 20:55:22'),(25,'PKG005','Dalam Perjalanan','Perumahan Kijang Kencana Blok. A No.2','2025-06-30 03:57:44'),(26,'PKG003','Menunggu Pickup','Perumahan Jala Bestari Blok A No.4','2025-06-30 16:00:48'),(27,'PKG006','Dikirim','Kijang','2025-07-04 14:05:54'),(28,'PKG015','paket sampai di tujuan','Perumahan Chinesee Square, No.5','2025-07-04 14:13:11'),(29,'PKG014','Diterima','Perumahan Palm Hill No. 11','2025-07-04 14:13:18'),(30,'PKG013','Menunggu Pickup','Perumahan Graha Asri No. 15','2025-07-04 14:13:24'),(31,'PKG012','Dalam Proses','Perumahan Palm Hill No. 10','2025-07-04 14:13:28'),(32,'PKG011','Dikirim','Jl. Ganet No. 10','2025-07-04 14:13:33'),(33,'PKG009','Diterima','Jl. Lembah Purnama Gg. Selayar 4 No. 9','2025-07-04 14:13:38'),(34,'PKG008','Menunggu Pickup','Perumahan Griya Bestari Permai Blok F No.1','2025-07-04 14:13:44'),(35,'PKG007','Dalam Proses','Kijang Kota','2025-07-04 14:13:47'),(36,'PKG006','Dikirim','Kijang','2025-07-04 14:13:52'),(37,'PKG005','Dalam Perjalanan','Perumahan Kijang Kencana Blok. A No.2','2025-07-04 14:13:56'),(38,'PKG004','Diterima','Jl. Haji Ungar No.18','2025-07-04 14:14:00'),(39,'PKG003','Menunggu Pickup','Perumahan Jala Bestari Blok A No.4','2025-07-04 14:14:05'),(40,'PKG002','Dikirim','Perumahan Jala Bestari Blok A No.3','2025-07-04 14:14:09');
/*!40000 ALTER TABLE `tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `cstracking`
--

/*!50001 DROP VIEW IF EXISTS `cstracking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cstracking` AS select `c`.`customer_id` AS `customer_id`,`c`.`nama` AS `nama`,`c`.`alamat` AS `alamat`,`c`.`kota` AS `kota`,`c`.`kode_pos` AS `kode_pos`,`c`.`no_telepon` AS `no_telepon`,`c`.`email` AS `email`,`p`.`package_id` AS `package_id`,`p`.`jenis_barang` AS `jenis_barang`,`p`.`berat_kg` AS `berat_kg`,`p`.`asuransi` AS `asuransi`,`p`.`status_paket` AS `status_paket`,`s`.`tanggal_kirim` AS `tanggal_kirim`,`s`.`estimasi_tiba` AS `estimasi_tiba`,`s`.`biaya_pengiriman` AS `biaya_pengiriman`,`s`.`shipment_id` AS `shipment_id` from ((`customer` `c` join `package` `p` on((`c`.`customer_id` = `p`.`customer_id`))) join `shipment` `s` on((`p`.`package_id` = `s`.`package_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-04 21:16:41

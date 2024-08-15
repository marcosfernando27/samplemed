-- MySQL dump 10.13  Distrib 8.3.0, for macos12.6 (arm64)
--
-- Host: localhost    Database: samplemed_blog
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id_category` int unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Notícias',NULL,NULL),(2,'Eventos',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keywords` (
  `id_keyword` int unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_08_14_204945_create_posts_table',1),(6,'2024_08_15_000026_create_categories_table',2),(7,'2024_08_15_001353_create_posts_categories_table',3),(8,'2024_08_15_124810_create_keywords_table',4),(9,'2024_08_15_124929_create_posts_keywords_table',5),(10,'2024_08_15_001354_create_posts_categories_table',6),(11,'2024_08_15_124930_create_posts_keywords_table',6),(12,'2024_08_14_204946_create_posts_table',7),(13,'2024_08_15_001355_create_posts_categories_table',8),(14,'2024_08_15_124931_create_posts_keywords_table',8),(15,'2024_08_15_001356_create_posts_categories_table',9),(16,'2024_08_15_124937_create_posts_keywords_table',9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (7,'App\\Models\\User',1,'auth_token','ec59086b054add79b465777392b123fbaf8b5191186e27038653bf3d0aa8f84e','[\"*\"]',NULL,NULL,'2024-08-15 18:54:22','2024-08-15 18:54:22'),(8,'App\\Models\\User',1,'auth_token','d86de224c3fb00f9ea96daf43a9e5caba6750e0e39fe8571171b15c51e212934','[\"*\"]',NULL,NULL,'2024-08-15 16:39:33','2024-08-15 16:39:33');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id_post` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_post`),
  KEY `posts_user_id_index` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (7,'O sonho da expansão internacional – realidade para o Grupo Samplemed','Trilhando um caminho empolgante de expansão internacional, anunciamos a abertura de novos escritórios estratégicos em Madrid, Espanha e Carolina do Norte, EUA. Este desenvolvimento é reflexo natural da participação ativa da insurtech s.360 life underwriting que vem recebendo destaque em eventos internacionais de renome, além de negócios já em vigor no mercado europeu e americano há mais de seis anos.\n\nEm sua mais recente aparição, o s.360 life underwriting conquistou o SEAL AWARDS 2024 de reconhecimento de impacto no mercado europeu na 10ª edição do Insurance World Challenges, sediado dentro de um estádio de futebol em Madrid no dia 24 de abril. Já no mês de Junho, a Samplemed subirá no palco do Digital Insurance Agenda em Amsterdam, evento mais proeminente do setor europeu, para levantar a energia da plateia com a tecnologia brasileira. Na agenda deste ano ainda está no mapa o CQCS Brasil, evento indispensável do setor nacional de seguros, e outros eventos americanos na Flórida e Las Vegas.\n\nFora dos palcos, nossas equipes e líderes estão sempre se atualizando – como a recente adesão do CEO Silas Kasahaya ao programa de imersão internacional promovido pela Escola de Negócios e Seguros em parceria com a University of Connecticut – para executivos de Seguros. Hoje a equipe possui três PhD e seis mestrados na liderança da empresa. Todo este investimento em aprendizado e ensino oferece oportunidades únicas de se envolver com líderes do setor, compartilhar insights, estabelecer parcerias estratégicas e promover a expertise da empresa em âmbito global.',1,'2024-08-15 17:07:03','2024-08-15 17:07:03'),(8,'s.360 vence prêmio no Insurance World Challenges 2024','O evento que ocorreu no dia 24 de abril de 2024 celebrou não apenas as conquistas individuais, mas também o espírito coletivo de inovação e excelência que impulsiona a indústria de seguros para o futuro. Este é o palco onde as ideias audaciosas se transformam em realidade e onde os líderes visionários são reconhecidos por seu papel na condução da transformação do setor.\n\nA Samplemed vem sendo notada e valorizada por sua inovação, excelência e impacto positivo na indústria. Ser finalista em uma premiação de renome é capaz de motivar e inspirar os funcionários, mostrando-lhes que seu trabalho está sendo reconhecido pela comunidade empresarial e pelos especialistas do setor.',1,'2024-08-15 17:07:24','2024-08-15 17:07:24'),(9,'Explorando o Manual de Subscrição Interativo do s.360','No contexto da análise médica de seguros — em especial os seguros de Vida e Saúde — diversas fontes de dados e informações estão interligadas em uma rede complexa. À medida que a tecnologia busca facilitar os processos e trâmites, sua meta não é substituir, e sim, complementar o trabalho realizado por profissionais.  \n\nSimone Melnick integrou o time em 2015 para realizar entrevistas médicas na casa dos proponentes de seguro de vida. Cerca de seis meses depois, foi contratada como subscritora, oferecendo também assessoria médica na área de subscrição. Simone é formada em Medicina pela UNIFESP e conta que o Manual é um projeto totalmente inovador e multidisciplinar.',1,'2024-08-15 17:09:18','2024-08-15 17:09:18'),(10,'Experts | Dra. Ana Villanueva (CMO MAPFRE Re) fala do futuro do Setor de Seguros em 2024','De destaque, Ana menciona a dinâmica e emocionante natureza do mercado de seguros, muitas vezes subestimada.\n\n    Estou ciente de que as pessoas podem achar que trabalhar com seguros não seja interessante, mas na verdade é, e estamos enfrentando novos desafios sob diferentes perspectivas. - Dra. Ana Villanueva, CMO Mapfre RE\n\nDra. Villanueva enfatizou que a transformação que setor está passando é impulsionada por avanços científicos, mudanças na legislação e, mais significativamente, pela digitalização.\n\n    Os avanços científicos, que nos proporciona uma visão diferente e nos ajuda a ver certas condições de risco médico que são importantes não apenas para Seguros de Vida, mas também para Seguros de Saúde. - Dra. Ana Villanueva, CMO Mapfre RE',1,'2024-08-15 17:11:09','2024-08-15 17:11:09'),(37,'Webinar - Futuro de la Suscripción de Riesgos para Seguros de Vida','Abrindo o ano com energia, já tivemos mais um webinar de sucesso marcando nossa presença como referência em inteligência de subscrição pela América Latina.\n\nOcorrido na última sexta-feira, o evento foi realizado em conjunto com a Escuela de Seguros de Chile, onde nossa equipe (nas figuras de Lancer Lucarelli e Mario J Pereira) teve a oportunidade de falar para mais de 120 profissionais de inumeros países latinos sobre o futuro da subscrição. Entre eles: Argentina, Brasil, Bolívia, Chile, Colômbia, Cuba, Equador, México, Paraguai, Uruguai e Panamá.\n\nConfira tudo que rolou abaixo! (ATENÇÃO: conteúdo em espanhol)',1,'2024-08-15 18:10:36','2024-08-15 18:10:36');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_categories`
--

DROP TABLE IF EXISTS `posts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_categories` (
  `id_post_category` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_post_category`),
  KEY `posts_categories_post_id_index` (`post_id`),
  KEY `posts_categories_category_id_index` (`category_id`),
  CONSTRAINT `posts_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id_category`) ON DELETE CASCADE,
  CONSTRAINT `posts_categories_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id_post`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_categories`
--

LOCK TABLES `posts_categories` WRITE;
/*!40000 ALTER TABLE `posts_categories` DISABLE KEYS */;
INSERT INTO `posts_categories` VALUES (1,7,2,NULL,NULL),(2,8,1,NULL,NULL),(3,9,2,NULL,NULL),(4,10,1,NULL,NULL),(19,37,1,NULL,NULL),(20,37,2,NULL,NULL);
/*!40000 ALTER TABLE `posts_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_keywords`
--

DROP TABLE IF EXISTS `posts_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_keywords` (
  `id_post_keyword` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int unsigned NOT NULL,
  `keyword_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_post_keyword`),
  KEY `posts_keywords_post_id_index` (`post_id`),
  KEY `posts_keywords_keyword_id_index` (`keyword_id`),
  CONSTRAINT `posts_keywords_keyword_id_foreign` FOREIGN KEY (`keyword_id`) REFERENCES `keywords` (`id_keyword`) ON DELETE CASCADE,
  CONSTRAINT `posts_keywords_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id_post`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_keywords`
--

LOCK TABLES `posts_keywords` WRITE;
/*!40000 ALTER TABLE `posts_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Marcos Fernando','marcosfernando7@gmail.com',NULL,'$2y$10$ktUzaXaE/uHFtc9kakt8xeqiPS5XKfHtNPkNCA/DdjSSO07uTnjG2',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'samplemed_blog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-15 15:20:30

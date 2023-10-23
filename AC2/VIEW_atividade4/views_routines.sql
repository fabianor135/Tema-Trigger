-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: views
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Temporary view structure for view `produtosabaixodominimo`
--

DROP TABLE IF EXISTS `produtosabaixodominimo`;
/*!50001 DROP VIEW IF EXISTS `produtosabaixodominimo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `produtosabaixodominimo` AS SELECT 
 1 AS `Nome`,
 1 AS `Estoque`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta1`
--

DROP TABLE IF EXISTS `consulta1`;
/*!50001 DROP VIEW IF EXISTS `consulta1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta1` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `marca`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `todosprodutos_fornecedores_marcas`
--

DROP TABLE IF EXISTS `todosprodutos_fornecedores_marcas`;
/*!50001 DROP VIEW IF EXISTS `todosprodutos_fornecedores_marcas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `todosprodutos_fornecedores_marcas` AS SELECT 
 1 AS `Nome_Produto`,
 1 AS `Nome_Fornecedor`,
 1 AS `Marca`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `produtosabaixodominimo`
--

/*!50001 DROP VIEW IF EXISTS `produtosabaixodominimo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `produtosabaixodominimo` AS select `p`.`nome` AS `Nome`,`p`.`qtd_estoque` AS `Estoque` from `produtos` `p` where (`p`.`qtd_estoque` < `p`.`estoque_minimo`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta1`
--

/*!50001 DROP VIEW IF EXISTS `consulta1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta1` AS select `produtos`.`id` AS `id`,`produtos`.`nome` AS `nome`,`marcas`.`marca` AS `marca` from (`produtos` join `marcas` on((`marcas`.`id` = `produtos`.`marca_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `todosprodutos_fornecedores_marcas`
--

/*!50001 DROP VIEW IF EXISTS `todosprodutos_fornecedores_marcas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `todosprodutos_fornecedores_marcas` AS select `p`.`nome` AS `Nome_Produto`,`f`.`nome` AS `Nome_Fornecedor`,`m`.`nome` AS `Marca` from ((`produtos` `p` join `fornecedores` `f` on((`p`.`id` = `f`.`id`))) join `marcas` `m` on((`p`.`marca_id` = `m`.`id`))) */;
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

-- Dump completed on 2023-10-16 18:05:59

-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: kwikmart
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Temporary view structure for view `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!50001 DROP VIEW IF EXISTS `employee_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_details` AS SELECT 
 1 AS `emp_id`,
 1 AS `role`,
 1 AS `store_id`,
 1 AS `store_address`,
 1 AS `phone`,
 1 AS `emp_name`,
 1 AS `emp_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `current_month_store_revenue`
--

DROP TABLE IF EXISTS `current_month_store_revenue`;
/*!50001 DROP VIEW IF EXISTS `current_month_store_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `current_month_store_revenue` AS SELECT 
 1 AS `store_id`,
 1 AS `store_detail`,
 1 AS `store_email`,
 1 AS `net_revenue_till_date`,
 1 AS `previous_day_revenue`,
 1 AS `total_bills_till_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `employee_details`
--

/*!50001 DROP VIEW IF EXISTS `employee_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_details` AS select `e`.`emp_id` AS `emp_id`,`r`.`role_name` AS `role`,`e`.`store_id` AS `store_id`,concat(`s`.`street_name`,', ',`s`.`city`) AS `store_address`,`e`.`emp_phone` AS `phone`,concat(`e`.`first_name`,' ',`e`.`last_name`) AS `emp_name`,`e`.`emp_address` AS `emp_address` from ((`employee` `e` join `role` `r` on((`r`.`role_id` = `e`.`role_id`))) join `store` `s` on((`s`.`store_id` = `e`.`store_id`))) where ((`e`.`is_working` = 1) and (`r`.`role_name` <> 'CEO')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `current_month_store_revenue`
--

/*!50001 DROP VIEW IF EXISTS `current_month_store_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `current_month_store_revenue` AS select `b`.`store_id` AS `store_id`,concat(`s`.`street_name`,' , ',`s`.`city`) AS `store_detail`,`s`.`email` AS `store_email`,sum((`bi`.`quantity` * `bi`.`net_price`)) AS `net_revenue_till_date`,if((`b`.`bill_date` = (curdate() - interval 1 day)),sum((`bi`.`quantity` * `bi`.`net_price`)),0) AS `previous_day_revenue`,count(distinct `b`.`bill_id`) AS `total_bills_till_date` from ((((`bill` `b` join `bill_items` `bi` on((`bi`.`bill_id` = `b`.`bill_id`))) join `store_item` `si` on(((`si`.`store_id` = `b`.`store_id`) and (`bi`.`item_id` = `si`.`item_id`)))) join `item` `i` on((`i`.`item_id` = `bi`.`item_id`))) join `store` `s` on((`s`.`store_id` = `b`.`store_id`))) where ((year(curdate()) = year(`b`.`bill_date`)) and (month(curdate()) = month(`b`.`bill_date`))) group by `b`.`store_id` order by `net_revenue_till_date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'kwikmart'
--

--
-- Dumping routines for database 'kwikmart'
--
/*!50003 DROP FUNCTION IF EXISTS `create_bill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `create_bill`(
store_id INT,
registered_phone varchar(12),
bill_date date
) RETURNS int
BEGIN

	declare bill_id INT;
    
    if registered_phone = '' then
		INSERT INTO bill
		(`store_id`,
		`bill_date`)
		VALUES
		(store_id,
		bill_date);

		SELECT bill.bill_id into bill_id
		from bill
		where bill.store_id = store_id
		and bill.registered_phone IS NULL
		and bill.bill_date = bill.bill_date
		order by bill.bill_id DESC
		LIMIT 1;
    
    else
    
		INSERT INTO bill
		(`store_id`,
		`registered_phone`,
		`bill_date`)
		VALUES
		(store_id,
		registered_phone,
		bill_date);

		SELECT bill.bill_id into bill_id
		from bill
		where bill.store_id = store_id
		and bill.registered_phone = registered_phone
		and bill.bill_date = bill.bill_date
		order by bill.bill_id DESC
		LIMIT 1;
	end if;
    
RETURN bill_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `overall_billing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `overall_billing`(
start_date DATE,
end_date DATE
) RETURNS int
BEGIN

	declare total numeric(8,2);
    
    
    SELECT SUM(bill_items.net_price * bill_items.quantity) INTO total 
    from bill_items where bill_items.bill_id in
    (SELECT bill.bill_id from bill
    where bill.bill_date >= start_date and bill.bill_date <= end_date);

RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `store_billing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `store_billing`(
store_id INT,
date_start DATE,
date_end DATE
) RETURNS decimal(8,2)
BEGIN

	declare total numeric(8,2);
    
    
    SELECT SUM(bill_items.net_price * bill_items.quantity) INTO total 
    from bill_items where bill_id in
    (SELECT bill.bill_id from bill
    where bill.bill_date >= date_start and bill.bill_date <= date_end
    and bill.store_id = store_id);

RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `update_discount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `update_discount`(
store_id INT,
item_id INT,
percent_off INT,
is_active tinyint(1) 
) RETURNS tinyint(1)
BEGIN

declare discount_exist tinyint(1);




if (select count(*) from store_item
where store_item.store_id = store_id 
and store_item.item_id = item_id) = 0 then
	return 0;
end if;


SELECT count(*) into discount_exist
from discount
where discount.store_id = store_id
and discount.item_id = item_id;

IF discount_exist > 0 THEN
	UPDATE discount
	SET
	`store_id` = store_id,
	`item_id` = item_id,
	`percent_off` = percent_off,
	`is_active` = is_active
	WHERE (discount.store_id = store_id 
    AND discount.item_id = item_id);

ELSE
	INSERT INTO discount
	(`store_id`,
	`item_id`,
	`percent_off`,
	`is_active`)
	VALUES
	(store_id,
	item_id,
	percent_off,
	is_active);

END IF;
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_item_to_cart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_item_to_cart`(
in bill_id INT,
in item_id INT,
in quantity INT
)
BEGIN
DECLARE discount_percent INT;
DECLARE item_price numeric(6, 2);
DECLARE discount_value numeric(6,2);

SELECT discount.percent_off INTO discount_percent from discount
where discount.store_id = (SELECT b.store_id FROM bill b WHERE b.bill_id = bill_id)
and discount.item_id = item_id;

SELECT store_item.unit_price INTO item_price
from store_item where 
store_item.store_id = (SELECT b.store_id FROM bill b WHERE b.bill_id = bill_id) and
store_item.item_id = item_id;


IF discount_percent is NULL THEN
	INSERT INTO bill_items
	(`bill_id`,
	`item_id`,
	`quantity`,
	`unit_price`,
	`discount_amount`,
	`net_price`)
	VALUES
	(bill_id,
	item_id,
	quantity,
	item_price,
	0,
	item_price);

ELSE
	INSERT INTO bill_items
	(`bill_id`,
	`item_id`,
	`quantity`,
	`unit_price`,
	`discount_amount`,
	`net_price`)
	VALUES
	(bill_id,
	item_id,
	quantity,
	item_price,
	item_price * (discount_percent/100),
	item_price * (1 - (discount_percent/100)));
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_bill_amount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_bill_amount`(
in bill_id INT
)
BEGIN



   declare total numeric(7,2);
    declare without_discount numeric(7,2);
    declare discount numeric(6,2);
    declare registered_phone varchar(12);
    declare isEmployee INT;
    
    SELECT item.name as item_name,
    bill_items.quantity as quantity,
    bill_items.unit_price as unit_price,
    bill_items.discount_amount as discount_amount,
    bill_items.net_price as net_price
    from item, bill_items
    where item.item_id = bill_items.item_id
    and bill_items.bill_id = bill_id;
    
    
    SELECT SUM(bill_items.net_price * bill_items.quantity) INTO total
    from bill_items WHERE bill_items.bill_id = bill_id;
    
    SELECT SUM(bill_items.unit_price * bill_items.quantity) INTO without_discount
    from bill_items WHERE bill_items.bill_id = bill_id;
    
    SELECT SUM(bill_items.discount_amount * bill_items.quantity) INTO discount
    from bill_items WHERE bill_items.bill_id = bill_id;
    
    SELECT bill.registered_phone INTO  registered_phone
    from bill where bill.bill_id = bill_id;
    
    SELECT COUNT(*) INTO isEmployee
    where registered_phone
    IN (
    SELECT employee.emp_phone from Employee
    where employee.is_working = 1);
    
    IF isEmployee >= 1 then
     SELECT total * (1 - 0.2);
     SELECT (total * (0.2) + discount);
    else
     SELECT total;
     SELECT discount;
    END IF;
    SELECT without_discount;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `item_store_check` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `item_store_check`(
in store_id INT,
in item_id INT
)
BEGIN
	SELECT si.store_id, si.item_id,  si.qty_in_stock,
	CONCAT(s.street_name,", ",s.city,", ",s.zip_code) address
	FROM store_item si
	JOIN store s ON s.store_id = si.store_id
	WHERE si.item_id = item_id AND s.store_id != store_id
		AND si.qty_in_stock >0
	ORDER BY ABS((SELECT zip_code FROM store ss WHERE ss.store_id = store_id)-s.zip_code)
	LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 22:23:38

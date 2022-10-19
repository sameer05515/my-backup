
-- use onlinestore;
DROP PROCEDURE IF EXISTS `GetAllProducts`;

DELIMITER ;;
CREATE PROCEDURE `GetAllProducts`()
BEGIN
SELECT count(*) 'Total Count'  FROM products;
END ;;
DELIMITER ;

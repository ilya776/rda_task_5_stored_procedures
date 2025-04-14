USE ShopDB;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)
BEGIN
    SELECT
        pi.ProductID,
        pi.WarehouseAmount
    FROM ShopDB.ProductInventory pi
    WHERE pi.ID = WarehouseID;
END //

DELIMITER ;

/*1:In the inventory table there are irregularity in the quantity order column, display warehouseid along side count of respective
quantity ordered, do a count to display the number of order each warehouse has*/
/*SELECT WarehouseID, COUNT(QuantityOnOrder) 
FROM INVENTORY
WHERE QuantityOnOrder > 0
GROUP BY WarehouseID;*/
/*2:Create  a repor that shows the warehouseid and their orders respectively in column.*/
SELECT WarehouseID, COUNT(QuantityOnOrder) AS QO, CONCAT('Warehouse', WarehouseID, 'HAS', COUNT(QuantityOnOrder)) AS REPORT
FROM INVENTORY
WHERE QuantityOnOrder > 0
GROUP BY WarehouseID;

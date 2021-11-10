SELECT *
FROM warehouse join inventory
On  warehouse.WarehouseID = inventory.WarehouseID
where QuantityOnHand != 0
order by Warehouse.WarehouseID, inventory.SKU;

SELECT SUM(ExtendedPrice) AS WaterSportsRevenue
FROM ORDER_ITEM
WHERE SKU IN (SELECT SKUFROM SKU_DATA WHERE Department = 'Water Sports');
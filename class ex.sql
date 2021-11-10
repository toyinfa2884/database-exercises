SELECT ROUND(SUM(Price)) AS FirstPriceSum,
ROUND(AVG(Price)) AS SeondPriceAvg,
ROUND(MIN(Price)) AS ThirdPriceMin,
ROUND(MAX(price)) AS FouthPriceMax
FROM ORDER_ITEM;
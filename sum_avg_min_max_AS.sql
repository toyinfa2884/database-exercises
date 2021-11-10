SELECT SUM(ExtendedPrice) AS OrderItemSum,
AVG(ExtendedPrice) AS OrderItemAvg,
MIN(ExtendedPrice) AS OrderItemMin,
Max(ExtendedPrice) AS OrderItemMax
FROM ORDER_ITEM;
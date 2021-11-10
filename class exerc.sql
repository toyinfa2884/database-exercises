SELECT OrderNumber, SKU, (Quantity * Price) AS ExtendedPrice
FROM ORDER_ITEM
ORDER BY OrderNumber, SKU;
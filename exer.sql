SELECT Department, COUNT(SKU) AS NumberOfCatalogItems
FROM CATALOG_SKU_2017
/*WHERE CatalogPage IS NOT NULL*/
GROUP BY Department;
/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg and Yoder											*/ 
/*  Database Processing (15th Edition) Chapter 02/10C							*/
/*																				*/
/*	Cape Codd Outdoor Sports Database - Create Tables							*/
/*																				*/
/*	These are the MySQL 5.7 SQL code solutions									*/
/*																				*/
/********************************************************************************/

USE cape_codd;

CREATE TABLE BUYER (
	BuyerName			Char(35)			NOT NULL,
	Department			Char(30)			NOT NULL,
	Position			Char(10)			NULL,
	Supervisor			Char(35)			NULL,
	CONSTRAINT			BUYER_PK			PRIMARY KEY(BuyerName),
	CONSTRAINT			BUYER_SUPERVISOR_FK	FOREIGN KEY(Supervisor)
							REFERENCES  BUYER(BuyerName)
	);

CREATE TABLE RETAIL_ORDER (
	OrderNumber       	Integer 	      	NOT NULL,
	StoreNumber       	Integer 	      	NULL,
	StoreZip          	Char (9)        	NULL,
	OrderMonth    	  	Char (12) 	    	NOT NULL,
	OrderYear     	  	Integer 	      	NOT NULL,
	OrderTotal   	    Numeric(9,2)    	NULL,
	CONSTRAINT 		    RETAIL_ORDER_PK 	PRIMARY KEY (OrderNumber)
	);

CREATE TABLE SKU_DATA (
	SKU   			    Integer 	      	NOT NULL,
	SKU_Description   	Char (35) 	    	NOT NULL,
	Department  	    Char (30)       	NOT NULL,
	Buyer  			    Char (35)       	NULL,
	CONSTRAINT 		    SKU_DATA_PK     	PRIMARY KEY (SKU),
    CONSTRAINT			SKU_DATA_EMP_FK		FOREIGN KEY (Buyer)
							REFERENCES  BUYER(BuyerName)
								ON UPDATE CASCADE
	);

CREATE TABLE ORDER_ITEM (
	OrderNumber  	    Integer  	       	NOT NULL,
	SKU  			    Integer 	       	NOT NULL,
	Quantity  		    Integer 	       	NOT NULL,
	Price  			    Numeric(9,2)     	NOT NULL,
	ExtendedPrice     	Numeric(9,2)     	NOT NULL,
	CONSTRAINT 		    ORDER_ITEM_PK 	 	PRIMARY KEY (SKU, OrderNumber),
	CONSTRAINT 		    ORDER_ITEM_SKU_FK 	FOREIGN KEY (SKU)
							REFERENCES  SKU_DATA (SKU),
	CONSTRAINT 		    RETAIL_ORDER_SKU_FK FOREIGN KEY (OrderNumber)
							REFERENCES  RETAIL_ORDER (OrderNumber)
	);

CREATE TABLE WAREHOUSE (
	WarehouseID		    Integer		       	NOT NULL,
	WarehouseCity	    Char(30)  	    	NOT NULL,
	WarehouseState	  	Char(2)		       	NOT NULL,
	Manager			    Char(35)	       	NULL,
	SquareFeet		    Integer		       	NULL,
	CONSTRAINT 		    WAREHOUSE_PK 	   	PRIMARY KEY (WarehouseID)
	);

CREATE TABLE INVENTORY (
	WarehouseID		    Integer  	       	NOT NULL,
	SKU   			    Integer 	       	NOT NULL,
	SKU_Description   	Char (35) 	     	NOT NULL,
	QuantityOnHand 	  	Integer  	       	NULL,
	QuantityOnOrder	  	Integer  	       	NULL,
	CONSTRAINT 		    INVENTORY_PK 	  	PRIMARY KEY (SKU, WarehouseID),
	CONSTRAINT 		    INV_SKU_DATA_FK	   	FOREIGN KEY (SKU)
							REFERENCES	SKU_DATA (SKU),
	CONSTRAINT 		    INV_WAREHOUSE_FK	FOREIGN KEY (WarehouseID)
							REFERENCES	WAREHOUSE (WarehouseID)
	);
    
CREATE TABLE CATALOG_SKU_2016 (
	CatalogID		Integer		NOT NULL AUTO_INCREMENT,
	SKU   			Integer 	NOT NULL,
	SKU_Description Char(35) 	NOT NULL,
	Department  	Char(30)  	NOT NULL,
	CatalogPage		Integer		NULL,
	DateOnWebSite	Date		NULL,
	CONSTRAINT 		CSKU16_PK 	PRIMARY KEY (CatalogID)
	);
    
ALTER TABLE CATALOG_SKU_2016 AUTO_INCREMENT = 20160001;
    

CREATE TABLE CATALOG_SKU_2017 (
	CatalogID		Integer		NOT NULL AUTO_INCREMENT,
	SKU   			Integer 	NOT NULL,
	SKU_Description Char(35) 	NOT NULL,
	Department  	Char(30)  	NOT NULL,
	CatalogPage		Integer		NULL,
	DateOnWebSite	Date		NULL,
	CONSTRAINT 		CSKU17_PK 	PRIMARY KEY (CatalogID)
	);

ALTER TABLE CATALOG_SKU_2017 AUTO_INCREMENT = 20170001;

CREATE TABLE CATALOG_SKU_2018 (
	CatalogID		Integer		NOT NULL AUTO_INCREMENT,
	SKU   			Integer 	NOT NULL,
	SKU_Description Char(35) 	NOT NULL,
	Department  	Char(30)  	NOT NULL,
	CatalogPage		Integer		NULL,
	DateOnWebSite	Date		NULL,
	CONSTRAINT 		CSKU18_PK 	PRIMARY KEY (CatalogID)
	);
    
ALTER TABLE CATALOG_SKU_2018 AUTO_INCREMENT = 20180001;
    
    
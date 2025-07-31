
-- SQL Schema: retail_orders

CREATE TABLE retail_orders (
    Order_ID            VARCHAR(20),
    Order_Date          DATE,
    Ship_Mode           VARCHAR(50),
    Customer_ID         VARCHAR(20),
    Customer_Name       VARCHAR(100),
    Segment             VARCHAR(50),
    City                VARCHAR(100),
    State               VARCHAR(100),
    Country             VARCHAR(100),
    Region              VARCHAR(50),
    Product_ID          VARCHAR(20),
    Category            VARCHAR(50),
    Sub_Category        VARCHAR(50),
    Product_Name        TEXT,
    Quantity            INT,
    Discount_Percent    DECIMAL(5,2),
    List_Price          DECIMAL(10,2),
    Cost_Price          DECIMAL(10,2),
    Sale_Price          DECIMAL(10,2), -- Optional derived column
    Profit              DECIMAL(10,2), -- Optional derived column

    PRIMARY KEY (Order_ID, Product_ID)
);



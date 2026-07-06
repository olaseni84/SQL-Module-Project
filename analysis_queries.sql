-- SECTION ONE --

-- Select all columns from the trendora table
SELECT * FROM trendora;

-- 2. Select only the CustomerID, ItemPurchased, and PurchaseAmount(USD)
SELECT CustomerID, ItemPurchased, PurchaseAmount AS `PurchaseAmount(USD)`
FROM trendora;

-- PurchaseAmount is strictly greater than 60.
SELECT *
FROM trendora
WHERE PurchaseAmount > 60;

-- 4. Retrieve all records where the Category is either 'Clothing' or 'Footwear'
SELECT *
FROM trendora
WHERE Category IN ('Clothing', 'Footwear');

-- 5. Retrieve all records where the Color is 'Gray' and the Size is 'M'
SELECT *
FROM trendora
WHERE Color = 'Gray' AND Size = 'M';

-- 6. Retrieve records where the PurchaseAmount is between 30 and 70
SELECT *
FROM trendora
WHERE PurchaseAmount BETWEEN 30 AND 70;

-- 7. Get all purchases made in the Spring or Summer seasons
SELECT *
FROM trendora
WHERE Season IN ('Spring', 'Summer');

-- 8. Find all purchases where the PaymentMethod is not 'Cash'
SELECT *
FROM trendora
WHERE PaymentMethod != 'Cash';

-- 9. Retrieve all female customers who bought items in the 'Clothing' category
SELECT *
FROM trendora
WHERE Gender = 'Female' AND Category = 'Clothing';

-- . Retrieve all customers who used a promo code and got a discount greater than 0
SELECT *
FROM trendora
WHERE PromoCodeUsed = 'Yes' AND DiscountValue > 0;


-- ==========================================================
-- SECTION 2: ORDER BY, LIMIT, OFFSET
-- ==========================================================

-- 1. List all purchases sorted by PurchaseAmount in descending order

SELECT *
FROM trendora
ORDER BY PurchaseAmount DESC;

-- 2. List the top 3 most expensive purchases
SELECT *
FROM trendora
ORDER BY PurchaseAmount DESC
LIMIT 3;

-- 3. Show the 2 least expensive purchases

SELECT *
FROM trendora
ORDER BY PurchaseAmount ASC
LIMIT 2;

-- 4. Display 5 records skipping the first 3 (use OFFSET)
SELECT *
FROM trendora
ORDER BY CustomerID
LIMIT 5 OFFSET 3;

 -- 5. Retrieve the first 5 customers who used 'Express' shipping
SELECT *
FROM trendora
WHERE ShippingType = 'Express'
ORDER BY CustomerID
LIMIT 5;
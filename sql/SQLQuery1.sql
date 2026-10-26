---- Q6. Find orders with amount greater than 1000
--SELECT *
--FROM dbo.[Amazon Sale Report]
--WHERE Amount > 1000;

---- Q7. Find orders with quantity greater than 2
--SELECT *
--FROM dbo.[Amazon Sale Report]
--WHERE Qty > 2;

---- Q8. Filter orders by category
--SELECT *
--FROM dbo.[Amazon Sale Report]
--WHERE Category = ' kurta';

---- Q9. Find orders with multiple conditions
--SELECT *
--FROM dbo.[Amazon Sale Report]
--WHERE Amount > 1000
--  AND Qty > 1;

---- Q10. Filter multiple order statuses
--SELECT *
--FROM dbo.[Amazon Sale Report]
--WHERE Status IN ('Shipped', 'Delivered');

---- Q11. Find amounts within a range
--SELECT *
--FROM dbo.[Amazon Sale Report]
--WHERE Amount BETWEEN 500 AND 2000;

---- Q12. Search for cities containing "Mumbai"
--SELECT *
--FROM dbo.[Amazon Sale Report]
--WHERE 'ship-city' LIKE '%Mumbai%';

---- Q13. Find records with missing amounts
--SELECT *
--FROM dbo.[Amazon Sale Report]
--WHERE Amount IS NULL;



USE amazon_sales;
GO

-- Q14. Highest-value orders
SELECT TOP 10 [Order ID], [Amount]
FROM dbo.[Amazon Sale Report]
ORDER BY [Amount] DESC;
GO

-- Q15. Most recent orders
SELECT TOP 10 [Order ID], [Date]
FROM dbo.[Amazon Sale Report]
ORDER BY [Date] DESC;
GO

-- Q16. Update missing city labels
UPDATE dbo.[Amazon Sale Report]
SET [ship-city] = 'Unknown'
WHERE [ship-city] IS NULL;
GO

-- Q17. Update missing courier status labels
UPDATE dbo.[Amazon Sale Report]
SET [Courier Status] = 'Unknown'
WHERE [Courier Status] IS NULL;
GO

-- Q18. Verify updates
SELECT *
FROM dbo.[Amazon Sale Report]
WHERE [ship-city] = 'Unknown'
   OR [Courier Status] = 'Unknown';
GO

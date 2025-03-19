-- SQL Project -- Bibigo dataset

-- create table
DROP TABLE IF EXISTS bibigo_india;
CREATE TABLE bibigo_india (
    Date DATE,
    Brand VARCHAR(50),
    Types_of_Products VARCHAR(255),
    Flavours VARCHAR(255),
    Ratings FLOAT,
    Review VARCHAR(255),
    Price_KRW FLOAT,
    Region VARCHAR(255),
    Category VARCHAR(255),
    Price_category VARCHAR(255),
	Rating_category VARCHAR(255)
);

-- EDA

select * from bibigo_india

select Types_of_products, ratings, count(ratings) as No_Rating from bibigo_india 
Group by Types_of_products, ratings 
order by ratings Desc

-- Add the new column
ALTER TABLE bibigo_india
ADD COLUMN sentiment_score INT;

UPDATE bibigo_india
SET sentiment_score = CASE
    WHEN Rating_Category = 'Excellent' THEN 1
    WHEN Rating_Category = 'Very Good' THEN 1
    WHEN Rating_Category = 'Good' THEN 0
    WHEN Rating_Category= 'Average' THEN 0
    WHEN Rating_Category = 'Below Average' THEN -1
    ELSE NULL -- Default value if no matching category is found
END;

-- Vertify the Data 

SELECT Rating_Category, sentiment_score
FROM bibigo_india
LIMIT 10; 

select * from bibigo_india

-- Add the new column
ALTER TABLE bibigo_india
ADD COLUMN state_mapping VARCHAR(255);


-- visualizing the reigon
UPDATE bibigo_india
SET state_mapping = 
    CASE region
        WHEN 'North' THEN 'Delhi'
        WHEN 'North' THEN 'Punjab'
        WHEN 'North' THEN 'Haryana'
        WHEN 'North' THEN 'Rajasthan'
        WHEN 'North' THEN 'Uttar Pradesh'
        WHEN 'North' THEN 'Uttarakhand'
        WHEN 'North' THEN 'Jammu & Kashmir'
        WHEN 'North' THEN 'Himachal Pradesh'
        
        WHEN 'South' THEN 'Tamil Nadu'
        WHEN 'South' THEN 'Kerala'
        WHEN 'South' THEN 'Karnataka'
        WHEN 'South' THEN 'Andhra Pradesh'
        WHEN 'South' THEN 'Telangana'
        
        WHEN 'East' THEN 'West Bengal'
        WHEN 'East' THEN 'Odisha'
        WHEN 'East' THEN 'Bihar'
        WHEN 'East' THEN 'Jharkhand'
        WHEN 'East' THEN 'Sikkim'
        
        WHEN 'West' THEN 'Maharashtra'
        WHEN 'West' THEN 'Gujarat'
        WHEN 'West' THEN 'Goa'
        WHEN 'West' THEN 'Madhya Pradesh'
        WHEN 'West' THEN 'Chhattisgarh'
        
        ELSE NULL  -- Keeps unmatched regions as NULL
    END;




























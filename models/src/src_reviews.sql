 WITH RAW_REVIEWS AS (
 SELECT * FROM 
              {{ source('airbnb','reviews') }}
 )
 SELECT 
     LISTING_ID,
     reviewer_name AS REVIEWER_NAME,
     DATE AS REVIEW_DATE,
     COMMENTS AS REVIEW_TEXT,
     SENTIMENT AS REVIEW_SENTIMENT
 FROM 
 RAW_REVIEWS
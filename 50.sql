SELECT FR.PRODUCT_ID, FR.PRODUCT_NAME, FR.PRICE*SUM(FO.AMOUNT) AS "TOTAL_SALES"
FROM FOOD_PRODUCT FR
JOIN FOOD_ORDER FO ON FR.PRODUCT_ID=FO.PRODUCT_ID
WHERE DATE_FORMAT(PRODUCE_DATE, "%Y-%m")='2022-05'
GROUP BY FR.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, FR.PRODUCT_ID;

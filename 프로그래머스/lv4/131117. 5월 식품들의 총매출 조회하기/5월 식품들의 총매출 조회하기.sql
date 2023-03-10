-- 코드를 입력하세요
SELECT FP.PRODUCT_ID, FP.PRODUCT_NAME, SUM(FO.AMOUNT)*FP.PRICE AS TOTAL_SALES 
FROM FOOD_PRODUCT FP
INNER JOIN FOOD_ORDER FO
ON FP.PRODUCT_ID = FO.PRODUCT_ID
WHERE YEAR(FO.PRODUCE_DATE) = 2022 AND MONTH(FO.PRODUCE_DATE) = 05 
GROUP BY FP.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, FP.PRODUCT_ID
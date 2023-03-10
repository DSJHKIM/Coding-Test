-- 코드를 입력하세요
SELECT RI.FOOD_TYPE, RI.REST_ID, RI.REST_NAME, RII.FAV
FROM REST_INFO RI
JOIN
    (SELECT FOOD_TYPE, MAX(FAVORITES) AS FAV
    FROM REST_INFO
    GROUP BY FOOD_TYPE) RII
ON RI.FOOD_TYPE = RII.FOOD_TYPE AND RI.FAVORITES = RII.FAV
ORDER BY RI.FOOD_TYPE DESC
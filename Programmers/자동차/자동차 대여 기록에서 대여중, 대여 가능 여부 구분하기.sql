SELECT CAR_ID,
CASE 
    WHEN MAX('2022-10-16' BETWEEN START_DATE AND END_DATE) THEN '대여중' 
    ELSE '대여 가능'
END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC
;

# <풀이>
# car_id 끼리 그룹화 후 case를 나눠주는데 그 그룹 내 하나라도 조건 만족 시 결과값을 나타내기 위해 
# MAX 함수를 사용

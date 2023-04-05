SELECT CAR_ID, ROUND(AVG(DATEDIFF(end_date, start_date)+1), 1) AS AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
HAVING AVERAGE_DURATION >= 7
ORDER BY AVERAGE_DURATION DESC, CAR_ID DESC;


# CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 평균 대여 기간이 7일 이상인 자동차들의 자동차 ID와 평균 대여 기간(컬럼명: AVERAGE_DURATION) 리스트를 출력하는 SQL문을 작성해주세요. 
# 평균 대여 기간은 소수점 두번째 자리에서 반올림하고, 결과는 평균 대여 기간을 기준으로 내림차순 정렬해주시고, 평균 대여 기간이 같으면 자동차 ID를 기준으로 내림차순 정렬해주세요.

# <풀이> 
# 평균 대여 기간이 7일 이상을 구하기 위해 CAR_ID로 GROUP 해준 뒤 END-START 값들의 평균을 구해준다. DATE STRING 값 차이를 구하기 위해 DATEDIFF(END, START) + 1 사용
# 1일에서 10일까지는 총 10일, DATEDIFF() + 1 해주는 이유

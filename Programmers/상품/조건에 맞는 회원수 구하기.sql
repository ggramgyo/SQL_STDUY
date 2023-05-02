SELECT count(*) as USERS
FROM USER_INFO
WHERE joined LIKE "2021%" AND age BETWEEN 20 AND 29
;


# <풀이>
# 조건 추리고 카운트
